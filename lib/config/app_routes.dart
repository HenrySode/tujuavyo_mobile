import 'package:tujuavyo/pages/account_page.dart';
import 'package:tujuavyo/pages/chat_page.dart';
import 'package:tujuavyo/pages/events_news.dart';
import 'package:tujuavyo/pages/home.dart';
import 'package:tujuavyo/pages/home_pages/books_page.dart';
import 'package:tujuavyo/pages/home_pages/courses_page.dart';
import 'package:tujuavyo/pages/home_pages/expert_page.dart';
import 'package:tujuavyo/pages/main_page.dart';
import 'package:tujuavyo/pages/onboarding.dart';
import 'package:tujuavyo/pages/sign_in.dart';
import 'package:tujuavyo/pages/sign_up.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => const Onboarding(),
    '/signin': (context) => const SignInPage(),
    '/signup': (context) => const SignUpPage(),
    '/main': (context) => const MainPage(),
    '/home': (context) => HomePage(),
    '/events': (context) => const EventsNewsPage(),
    '/chat': (context) => const ChatPage(),
    '/account': (context) => const AccountPage(),
    '/expert': (context) => ExpertPage(),
    '/books': (context) => const BooksPage(),
    '/courses': (context) => const CoursesPage(),
  };

  static const onboarding = '/';
  static const signin = '/signin';
  static const signup = '/signup';
  static const main = '/main';
  static const home = '/home';
  static const events = '/events';
  static const chat = '/chat';
  static const account = '/account';
  static const expert = '/expert';
  static const books = '/books';
  static const courses = '/courses';
}
