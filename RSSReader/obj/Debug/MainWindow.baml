   M S B A M L   `   `   `  ����D  @RSSReader, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:RSSReader	RSSReader  5   	       RSSReader.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:RSSReader     5   	   -   5          � Title$  Info Reader��5   	   $	��550��6   $	��525��6*    � WindowState$ 	Maximized=�66    � 	Resources 5	      $   RSSReader.SearchHistoryDataSet   searchHistoryDataSet  historyViewSource �� Source �� Source��%X   &	        &	      7     5
   
   6%   �� 5   
    69   �� *	History+8   5      .��5      �  � DataContext# [ 6    � RowDefinitions 5   
   �� 5      $	��85* �6   �� 5      $
��252* �6   .+�5   
   ]� $��Stretch=�6   $	��111��62   ��.  $��	10,10,0,0q�6U   $	��Top=�6h   �� 5   
   -   5         ��Name$ 	textBlock��5      $
��Left=�6'   $��65��6B   $��	10,36,0,0q�6N   $
��Wrap=�6a   $��
RSS Reader��6u   $��58(�6�   $	��Top=�6�   $	��336��6�   �� 5   
   $.��(/RSSReader;component/rss-icon-vector.png��6   $	��200��6B   $��317,10,0,10q�6N   6e   �� 5   
   -   5         ��Name$ 
tabControl��5      $��Stretch=�6)   $��	10,10,0,0q�6G   $��1��6Z   $��Stretch=�6g   .@�5      �� $��Search Feeds��6   .��5      ]� -   5        $��
searchDock��5      .+�5      �� 	 �� Orientation$	 
Horizontal=�6!   $	��Top=�6:   .+�5      �� $��Search Term:��6$   $��5q�68   $��Center=�6C   �� 5      -   5        
 ��Name$
 
searchText��5   @   $	��120��6"   $��25��61   $��Center=�6T   �� 5      -   5        $��searchBingButton��5   !   $��Search Bing��5   !   $��Center=�67   $��5q�6R   $��30��6]   5   9   �� 5      -   5        $��searchAsRssButton��5   M   $��Get RSS��6!   $��5q�63   $��30��6>   6f   5      (  "System.Windows.Controls.WebBrowser  5!      -   5        $��browser��5!   !   5"      5#      �� 5$      $��History��6   .��5%      �� -	   5        $��historyLstBox��5%      $��40q�6/    �� DisplayMemberPath$ 
SearchText��6;    �� SelectedValuePath$ 	HistoryID��6r   ��6Z   �� 6r   5&      5'      5(      5)      