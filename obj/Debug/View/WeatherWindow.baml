   M S B A M L   `   `   `  ����E  AWeatherApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WeatherApp.ViewWeatherApp.View  5   	   ;"clr-namespace:WeatherApp.ViewModelWeatherApp.ViewModel  5   	   [2clr-namespace:WeatherApp.ViewModel.ValueConverters$WeatherApp.ViewModel.ValueConverters  5   	   #    WeatherApp.View.WeatherWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WeatherApp.View     5   	   1vm"clr-namespace:WeatherApp.ViewModel     5   	   I
convertors2clr-namespace:WeatherApp.ViewModel.ValueConverters     5   	     � Title$  WeatherWindow��5
   	   $	��500��6   $	��450��6,    � 	Resources 5      $   WeatherApp.ViewModel.WeatherVM   vm>   8WeatherApp.ViewModel.ValueConverters.BoolToRainConverter  
boolToRain��%:   &	        &	        5   
   6     5   
   6)   5      .��5      �  � DataContext# [  6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��20q�6   .+�5      �� $��Search for a city:��6   �� 5      ��6   �� *Query+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� 5      $
��0,10q�6   $��Search��5      ��5      �� *SearchCommand+��5      �� *Query+5      �� 5      ��6   �� *Cities+ �� SelectedValue 5      �� *SelectedCity+��5       �� 5!      .R�5"      � .+�5#      �� ��6(   �� *LocalizedName+5$      5%      5'      5(      � 5)   
   $��1��6   ���#4392f1 5+      �� *CurrentConditions+ � ColumnDefinitions 5,      �� 5-      $��* �6#   �� 5.      $
��Auto �6#   .+�50      �� $
��0,10q�6   .+�51      �� # [  6   ���#f4f4f8$��20(�54      $
��20,0q�55      ��52      �� *SelectedCity.LocalizedName+55      �� 56      ���#f4f4f8$��18(�58      $
��20,0q�59      ��56      �� *WeatherText+59      �� 5:      ���#f4f4f8$��16(�5<      $
��20,0q�5=      ��5:      �� *HasPrecipitation+ �� 	Converter# [ 5=      5>      �� 5?      $��1��6   $��Center=�5A      ���#f4f4f8$��30(�5C      $
��20,0q�5D      ��5@      �� *Temperature.Metric.Value+	 �� StringFormat$	 {0}°C��5D      5E      5F      5G      