   M S B A M L   `   `   `  ????G  CDemoPractice, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:DemoPractice.WindowsDemoPractice.Windows  5   	   %    DemoPractice.Windows.UserWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:DemoPractice.Windows     5   	     ? Title$  OOO Parfumer??5   
   $	??600??6   $	??550??6,   $	??800??6<   $	??750??6H    ? 	Resources 5
       ?? 
TargetType   TextBlockStyle ?? Property ?? Value  TextBoxStyle  ButtonStyle??%4  &	        &	 ?     &	 ?    ?? 5      " ??6
   .?5      ??  ? ??$ 40(?6    6-   ?? 5       ? ??$ Normal$?6!   62   ?? 5       ? ??$ Candara)?6"   64   ?? 5       ? ??$ 10q?6   6+   5      ?? 5      " ??6
   .?5      ??  ? ??$ 40(?6    6-   ?? 5       ? ??$ Normal$?6!   62   ?? 5       ? ??$ Candara)?6"   64   ?? 5       ? ??$ 20q?6   6+   ?? 5       ? ??$ 50??6   6+   ?? 5       ? ??$	 300??6   6+   5      ?? 5      " ??6
   .?5      ??  ? ??$ 20(?6    6-   ?? 5       ? ??$ Normal$?6!   62   ?? 5       ? ??$ Candara)?6"   64   ?? 5       ? ??$ 10q?6   6+   ?? 5        ? ?? ?#A5E88764   ?? 5!       ? ??
 ?????62   5"      5#      .??5%      ?  ? ColumnDefinitions 5&      ?? 5'      $??* ?6   6"   ?? 5(      $??3* ?6   6#    ? RowDefinitions 5+      ?? 5,      $??50 ?6   6!   ?? 5-      6   .+?50      ?? $??Center=?6   $??0??6,   $??2??6<   .+?51      ?? #??[  6   
Меню53      ?? 55      -   5        $??
MainWindow??55      #??[ 67   .??6\   Главный экран57      ?? 59      -   5        $
??Exit??59      #??[ 6+   .??6P   
Выход5;      5<      ?? 5>      -   5        $??UserName??5>   G   $??Right=?6   $??2??6*   $??0??6:   #??[  6W   6?   &   System.Windows.Controls.DataGrid  5@      -   5        $??DataGridProduct??5@         
IsReadOnly .    AutoGenerateColumns .  $??1??6R   $??1??6b   	   Columns	 5A      4  .System.Windows.Controls.DataGridTemplateColumn  5B      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Image??6      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToCells 5D         
IsReadOnly .    CellTemplate 5H      ?? 5I      .R?5J   	   ?? ??6   ?? *Image+5K   	   5M      0  *System.Windows.Controls.DataGridTextColumn  5O      $
 Наименование??6   $ * 6/   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   ?? *Name+  5P      $
 Описание??6   $ * 6+    65   ?? *Description+  5Q      $ 
 Производитель??6   $ * 60    6:   ?? *
Manufacter+  5R      $
 Цена??6   $ * 6'    61   ?? *Price+  5S      $
 Размер скидки??6   $ * 60    6:   ?? *
Discount+5U      5V      5W      