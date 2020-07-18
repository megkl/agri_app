import 'package:bloc/bloc.dart';
import 'package:agri/pages/homepage.dart';
import 'package:agri/pages/farms.dart';
import 'package:agri/pages/investments.dart';
import 'package:agri/pages/settings.dart';
import 'package:agri/pages/messages.dart';
import 'package:agri/pages/farmersportfolio.dart';
import 'package:agri/pages/transactions.dart';
import 'package:agri/pages/logout.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  FarmsPageClickedEvent,
  InvestmentsPageClickedEvent,
  TransactionPageClickedEvent,
  SettingsClickedEvent,
  MessagesClickedEvent,
  FarmersPortfolioClickedEvent,
  LogoutClickedEvent,
}

abstract class NavigationState {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationState> {
  @override
  NavigationState get initialState => HomePage();

  @override
  Stream<NavigationState> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.FarmsPageClickedEvent:
        yield FarmsPage();
        break;
      case NavigationEvents.InvestmentsPageClickedEvent:
        yield InvestmentsPage();
        break;
      case NavigationEvents.SettingsClickedEvent:
        yield Settings();
        break;
      case NavigationEvents.FarmersPortfolioClickedEvent:
        yield FarmersPortfolio();
        break;
      case NavigationEvents.MessagesClickedEvent:
        yield Messages();
        break;
      case NavigationEvents.TransactionPageClickedEvent:
        yield TransactionPage();
        break;
      case NavigationEvents.LogoutClickedEvent:
        yield Logout();
        break;

    }
  }
}
