   M S B A M L   `   `   `  ����C  ?ChatFeed, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:ChatFeedChatFeed  5   	       ChatFeed.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:ChatFeed     5   	     � Title$  
MainWindow��5   	   $	��600��6   $	��300��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      �� 5      $��25 �6    � ColumnDefinitions 5   
   �� 5      $��50 �6   �� 5      �� 5      $��40 �6   .+�5   
   �� $��1��6   $��0��6!   $��Message:��61   $��Center=�6A   $��Center=�6\   �� 5   
   $��1��6   $��1��6   $��Center=�6/   $��3q�6`   ��6J   �� *Text+6m   �� 5   
   $��1��6   $��3��6   $��Enviar��6.   $��3q�6a   ��6?   �� *EnviarCommand+6n   �� 5   
   $��0��6   $��3��6    ��64   �� *
Messages+��5      �� 5      .R�5      � .+�5      �� ��6$   �� *Author+�� 5      $��: ��6$   �� 5      ��6$   �� *Text+5      5      5       5!      5"      