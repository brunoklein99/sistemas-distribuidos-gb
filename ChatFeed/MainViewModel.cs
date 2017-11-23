using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Input;
using ChatMessage;
using EasyNetQ;

namespace ChatFeed
{
    public class MainViewModel
    {
        private readonly IBus _bus;
        private readonly string _user;

        public ICommand EnviarCommand { get; }
        public string Text { get; set; }
        public ObservableCollection<FeedMessage> Messages { get; set; }

        public MainViewModel(IBus bus, string user)
        {
            _bus = bus;
            _bus.Subscribe<FeedMessage>(user, OnMessage);
            _user = user;
            Messages = new ObservableCollection<FeedMessage>();
            EnviarCommand = new RelayCommand(Enviar);
        }

        private void OnMessage(FeedMessage obj)
        {
            Application.Current.Dispatcher.Invoke(() =>
            {
                Messages.Add(obj);
            });
        }

        private void Enviar()
        {
            _bus.Publish(new FeedMessage()
            {
                Author = _user,
                Text = Text
            });
        }
    }
}