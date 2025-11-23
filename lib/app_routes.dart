import 'package:swastik/home_page.dart';
import 'package:swastik/login_screen.dart';

import 'identity_card_view.dart';

class AppRoute {
  AppRoute._();
  static const String identityCard ='/identityCard';
  static const String login ='/login';
  static const String home ='/home';
  static getAppRoutes() => {
    identityCard: (context) => const IdentityCardView(),
    home: (context) => const HomePage(),
    login: (context) => const LoginScreen(),
  };

}