   M S B A M L   `   `   `  ����L  HYacode_TestClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Yacode_TestClient.Views.WindowsYacode_TestClient.Views.Windows  5      0    *Yacode_TestClient.Views.Windows.MainWindow   5      W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ?local-clr-namespace:Yacode_TestClient.Views.Windows     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      M IWpf.Ui, Version=4.0.0.0, Culture=neutral, PublicKeyToken=11f9f5cc97b3ffd6/ui&http://schemas.lepo.co/wpfui/2022/xaml  5      $
��1100��5
      $	��650��5         ApplicationBackgroundBrush  Wpf.Ui.Markup.Design    
Background#  �   5        TextFillColorPrimaryBrush   
Foreground# �  5      "  Wpf.Ui.Controls.FluentWindow!   ExtendsContentIntoTitleBar$
 True��5      #���  5         WindowBackdropType$
 Mica=�5         WindowCornerPreference$ Round=�5       � WindowStartupLocation$ CenterScreen=�5       � Title 5	      �� *ViewModel.ApplicationTitle+ �� Mode$ OneWay=� J� InputBindings 5      �� 5   
   
	 �� Key$	 F��5      
 �� 	Modifiers$
 Controlf�5       �� Command 5      ��  �� ElementName$ AutoSuggestBox�� �� Path$ FocusCommand�5      .��5      � .+�5    
     Wpf.Ui.Controls.TitleBar  -   5          Name$ TitleBar��5!      $��0��5#      %   CloseWindowByDoubleClickOnIcon$
 True��5$         Title 5"      �� *ViewModel.ApplicationTitle+   Icon 5%        Wpf.Ui.Controls.ImageIcon  5&         Source$6 0pack://application:,,,/Assets/wpfui-icon-256.png��6   5(      $  Wpf.Ui.Controls.NavigationView  5*   
   -   5          Name$ RootNavigation��5+      $��	42,0,42,0q�5,         FrameMargin$ 0q�5/         IsBackButtonVisible$ Visible=�50         IsPaneToggleVisible$
 True��51         OpenPaneLength$	 310Q�53         PaneDisplayMode$
 Left=�54         BreadcrumbBar 5-      �� $ BreadcrumbBar��   FooterMenuItemsSource 5.      �� *ViewModel.FooterMenuItems+$ OneWay=�   MenuItemsSource 52      �� *ViewModel.MenuItems+$ OneWay=�   TitleBar 55      �� $ TitleBar��$ OneWay=�   Header 56      #  Wpf.Ui.Controls.BreadcrumbBar  57      -   5          Name$ BreadcrumbBar��57   #   $��42,32,42,20q�6:      AutoSuggestBox 59      $  Wpf.Ui.Controls.AutoSuggestBox  5:      -   5           Name$  AutoSuggestBox��5:   $   !   PlaceholderText$! Search��6<   "   Icon" 5;      '  !Wpf.Ui.Controls.IconSourceElement  5<      #   
IconSource.# 5=      &	   Wpf.Ui.Controls.SymbolIconSource	  $ 	  Symbol$$ Search24=�62   5>      5@      %   ContentOverlay% 5B      � 5C      .+�5D      '
  !Wpf.Ui.Controls.SnackbarPresenter
  -   5        & 
 Name$& SnackbarPresenter��5D   +   5E      5G      �� 5I   
   -   5        ' ��Name$' RootContentDialog��5I      $��0��66   5J      5K      