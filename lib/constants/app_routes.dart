import 'package:swastik/modules/extra/home_page.dart';
import 'package:swastik/modules/auth/login_screen.dart';
import 'package:swastik/modules/auth/signup_screen.dart';

import '../identity_card_view.dart';
import '../modules/extra/identity_card_view.dart';


class AppRoute {
  AppRoute._();
  static const String identityCard ='/identityCard';
  static const String login ='/login';
  static const String home ='/home';
  static const String signup ='/signup';

  static getAppRoutes() => {
    identityCard: (context) => const IdentityCardView(),
    home: (context) => const HomePage(),
    login: (context) => const LoginScreen(),
    signup: (context) => const SignupScreen(),
  };
}