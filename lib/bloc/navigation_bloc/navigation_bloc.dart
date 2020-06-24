import 'package:bloc/bloc.dart';
import 'package:fluttercustomsidebar/pages/home_page.dart';
import 'package:fluttercustomsidebar/pages/my_order_page.dart';
import 'package:fluttercustomsidebar/pages/myaccount_page.dart';




enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountPage();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield MyOrderPage();
        break;
    }
  }
}