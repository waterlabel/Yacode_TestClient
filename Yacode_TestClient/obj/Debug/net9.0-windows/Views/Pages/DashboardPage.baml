   M S B A M L   `   `   `  ����L  HYacode_TestClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullM+clr-namespace:Yacode_TestClient.Views.PagesYacode_TestClient.Views.Pages  5      1    +Yacode_TestClient.Views.Pages.DashboardPage   5      W SPresentationCore, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=9.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      =local+clr-namespace:Yacode_TestClient.Views.Pages     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      3ui$http://schemas.lepoco.dev/wpfui/2023     5      M IWpf.Ui, Version=4.0.0.0, Culture=neutral, PublicKeyToken=11f9f5cc97b3ffd63markup&http://schemas.lepo.co/wpfui/2022/xaml  5	        N� Title$  DashboardPage��5
         ApplicationBackgroundBrush  Wpf.Ui.Markup.Design   
Background# �   5        TextFillColorPrimaryBrush   
Foreground# �  5       N� 
Foreground# �  5      .��5      �� $
��Auto=�6   .��5   
   �� $��20q�6   .+�5      �� $��24(�5      $
��Bold"�5      $��Yacode 프린터 제어��5      $��0,0,0,20q�5        Wpf.Ui.Controls.Card  5      $��0,0,0,20q�6   .��5      �� .+�5       �� $��18(�5!      $��SemiBold"�5"      $��프린터 연결 설정��5#      $��0,0,0,15q�5$      � 5'      $��0,0,0,15q�6    � ColumnDefinitions 5(      �� 5)      $
��Auto �6/   �� 5*      $��* �6/   .+�5-      �� $��0��5.      $��0,0,10,0q�5/      $��Center=�50      $��
IP 주소:��51        Wpf.Ui.Controls.TextBox  53      $��1��54      ��55      �� *ViewModel.PrinterIpAddress+ �� Mode$ TwoWay=�56      �� 59       �� Orientation$ 
Horizontal=�6!   $��0,0,0,15q�6:   .+�5:      �� $��연결 상태:��6$   $��Center=�62   $��0,0,10,0q�6M     Wpf.Ui.Controls.Badge  5;      ��5<      �� *ViewModel.ConnectionStatus+   
Appearance 5=      �� *ViewModel.IsConnected+  BoolToAppearanceConverter �� 	Converter# [ 5>      �� 5A      $ 
Horizontal=�6!   .+�5B        Wpf.Ui.Controls.Button  $��연결��5D      	   Icon*  $Wpf.Ui.Controls.IconElementConverter$	 PlugConnected24 5E      
   
Appearance$
 Primary=�5F      $��0,0,10,0q�5H      ��5C      �� *#!ViewModel.ConnectToPrinterCommand+{�5G      �� *ViewModel.IsConnected+  BoolNegationConverter# [ 5H        5J      $��연결 해제��5L      $	 PlugDisconnected24 5M      $
 	Secondary=�5N      ��5K      �� *(&ViewModel.DisconnectFromPrinterCommand+{�5O      �� *ViewModel.IsConnected+5P      5Q      5R        5U      $��0,0,0,20q�6   .��5V      �� .+�5W      �� $��18(�5X      $��SemiBold"�5Y      $��프린터 제어��5Z      $��0,0,0,15q�5[      � 5^      .+�5_        $��시스템 상태��5a      $	 Info24 5b      $��	0,0,10,10q�5c      ��5`      �� *" ViewModel.GetSystemStatusCommand+{�5d      �� *ViewModel.IsConnected+  5f      $��인쇄 상태��5h      $	 Print24 5i      $��	0,0,10,10q�5j      ��5g      �� *$"ViewModel.GetPrintingStatusCommand+{�5k      �� *ViewModel.IsConnected+  5m      $��테스트 정보��5o      $	 TestBeaker24 5p      $��	0,0,10,10q�5q      ��5n      �� *%#ViewModel.GetTestInformationCommand+{�5r      �� *ViewModel.IsConnected+�� 5t      $&�� 문서 메타정보 가져오기��6!   $��5q�5v   !   $
��10,5q�5w   !   ��5u   !   �� *'%ViewModel.LoadTemplateMetaInfoCommand+5w   !   5x        5{      $��	0,10,0,10q�5}      $��40��5~      ��5|      �� *ViewModel.PrintMessage+ �� UpdateSourceTrigger$ PropertyChanged=�5~      �� 5�      $ 
Horizontal=�6!   $��0,0,0,10q�6:   .+�5�         �� 
IsReadOnly$
 True��5�      $	��260��5�      $��0,0,10,0q�5�      ��5�      �� *ImageFilePath+$ PropertyChanged=�5�        5�      $��이미지 선택��6(   ��69   �� *ViewModel.SelectImageCommand+5�        5�      $��프린터로 전송��5�      $��40��5�      $
 Primary=�5�      ��5�      �� * ViewModel.SendToPrinterCommand+5�      5�      5�        Wpf.Ui.Controls.InfoBar  5�         
IsClosable$
 True��5�      $��0,0,0,10q�5�         IsOpen 5�      �� *ShowResultInfo+$ TwoWay=�   Title 5�      �� *ResultMessage+   Severity 5�      �� *ResultSeverity+5�        5�      .��5�      �� .+�5�      �� $ 
Horizontal=�6!   $��0,0,0,15q�6:   .+�5�      �� $��18(�5�      $��SemiBold"�5�      $��응답 로그��5�      $��0,0,10,0q�5�        5�      $��로그 지우기��5�      $	 Delete24 5�      $
 Danger=�5�      $��12(�5�      $	��8,4q�5�      ��5�      �� *ViewModel.ClearLogCommand+5�      5�      �� 5�      $��0,0,0,15q�6!   .+�5�      �� $��마지막 응답:��6$   $��Medium"�63   $��0,0,0,5q�6G     5�      $
 True��5�       �� TextWrapping$
 Wrap=�5�       �� MaxLines$ 3��5�      ��5�      �� *ViewModel.LastResponse+$ OneWay=�5�      5�      �� 5�      .+�5�      �� $��로그 메시지:��6$   $��Medium"�63   $��0,0,0,5q�6G   �� 5�      $	��200��6'   $
��Auto=�64   .��5�        $
 True��5�   !   $
 Wrap=�5�   !   $��Stretch=�5�   !    �� AcceptsReturn$
 True��5�   !   ��5�   !   �� *ViewModel.LogMessages+$ OneWay=�5�   !   5�      5�      5�      5�      �� 5�      $ 
Horizontal=�6   $��0,10,0,0q�62   $��Center=�6D   .+�5�      �� $��생산 카운터: ��6   $��SemiBold"�5�      $��Center=�5�      $��0,0,5,0q�5�      �� 5�      $
��Bold"�5�      
����  �$��Center=�5�      ��5�      �� *ViewModel.PrintYield+ �� StringFormat$ {0:N0}��5�      5�      5�      5�      5�      