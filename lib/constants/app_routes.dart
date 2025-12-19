import '../modules/auth/login_screen.dart';
import '../modules/auth/signup_screen.dart';
import '../modules/extra/home_page.dart';
import '../modules/extra/identity_card_view.dart';

class AppRoute {
  AppRoute._();

  static const String login = '/';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String identityCard = '/identityCard';

  static getAppRoutes() => {
    login: (context) => const LoginScreen(),
    signup: (context) => const SignupScreen(),
    home: (context) => const HomePage(),
    identityCard: (context) => const IdentityCardView(),
  };
}
