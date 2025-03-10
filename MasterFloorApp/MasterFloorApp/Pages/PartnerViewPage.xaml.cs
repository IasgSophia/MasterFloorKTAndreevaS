﻿using System;
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

namespace MasterFloorApp.Pages
{
    /// <summary>
    /// Логика взаимодействия для PartnerViewPage.xaml
    /// </summary>
    public partial class PartnerViewPage : Page
    {
        public PartnerViewPage()
        {
            InitializeComponent();
            Init();
        }
        public void Init()
        {
            PartnerListView.ItemsSource = Data.databaseEntities.GetContext().Partner.ToList();

        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            //Classes.Manager.MainFrame.Navigate(new Pages.AddEditPage(null));
            Classes.Manager.MainFrame.Navigate(new Pages.AddEditPage());
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            //Classes.Manager.MainFrame.Navigate(new Pages.AddEditPage(sender as Button).DataContext as Data.Partner);
            Classes.Manager.MainFrame.Navigate(new Pages.AddEditPage());
        }
    }
}
