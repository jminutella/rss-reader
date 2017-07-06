using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Net;

namespace RSSReader
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void searchBingButton_Click(object sender, RoutedEventArgs e)
        {
            SendToBing(false);
        }

        private void searchAsRssButton_Click(object sender, RoutedEventArgs e)
        {
            SendToBing(showAsRss: true);
        }

        private void SendToBing(bool showAsRss)
        {
            if (string.IsNullOrEmpty(searchText.Text))
            {
                MessageBox.Show("Please enter a search term.", "Search Error");
            }

            // Update the bound data...
            ta.InsertQuery(searchText.Text);
            ta.Fill(ds.History);

            var wc = new WebClient();

            // Fires when we get results from Bing...
            wc.DownloadStringCompleted += new DownloadStringCompletedEventHandler(Wc_DownloadStringCompleted);

            string url;

            // If Show As RSS, use search as RSS feed
            if (showAsRss)
            {
                url = String.Format("http://www.bing.com/search?format=rss&q={0}", searchText.Text);
            }
            else
            {
                url = String.Format("http://www.bing.com/search?q={0}", searchText.Text);
            }

            // Download the results as a string. Use as a background thread so we dont block the UI...
            wc.DownloadStringAsync(new Uri(url));


        }

        private void Wc_DownloadStringCompleted(object sender, DownloadStringCompletedEventArgs e)
        {
            // set browser to navigate from string
            browser.NavigateToString(e.Result);
        }

        // add to class level because we're going to use it elsewhere
        SearchHistoryDataSet ds;
        SearchHistoryDataSetTableAdapters.HistoryTableAdapter ta;


        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            ds = ((SearchHistoryDataSet)(this.FindResource("searchHistoryDataSet")));
            ta = new SearchHistoryDataSetTableAdapters.HistoryTableAdapter();
            ta.Fill(ds.History);

            CollectionViewSource cvs = ((CollectionViewSource)(this.FindResource("historyViewSource")));
            cvs.View.MoveCurrentToFirst();
        }
    }
}
