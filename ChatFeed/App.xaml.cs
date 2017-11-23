using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using EasyNetQ;

namespace ChatFeed
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);

            ShutdownMode = ShutdownMode.OnExplicitShutdown;

            var settings = new SettingsWindow();

            var settingsVm = new SettingsViewModel();

            settings.DataContext = settingsVm;

            var result = settings.ShowDialog();

            if (result.HasValue && result.Value)
            {
                var window = new MainWindow();

                var bus = RabbitHutch.CreateBus($"host={settingsVm.Host}");

                var mainVm = new MainViewModel(bus, settingsVm.User);

                window.DataContext = mainVm;

                window.ShowDialog();
            }
        }
    }
}
