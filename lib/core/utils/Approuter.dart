import 'package:gar_proj/features/Home/presentation/views/Contact_us_view.dart';
import 'package:gar_proj/features/Home/presentation/views/Home_view.dart';
import 'package:gar_proj/features/authentication/presentation/views/Auth_options_view.dart';
import 'package:gar_proj/features/authentication/presentation/views/Login_view.dart';
import 'package:gar_proj/features/authentication/presentation/views/sign_Up_view.dart';
import 'package:gar_proj/features/authentication/presentation/views/startUp_view.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/personal_profile_view.dart';
import 'package:gar_proj/features/profiles/presentation/views/Explore_Donation_view.dart';
import 'package:gar_proj/features/profiles/presentation/views/charity_profile_view.dart';
import 'package:gar_proj/features/profiles/presentation/views/explore_charity_view.dart';
import 'package:gar_proj/features/profiles/presentation/views/search_view.dart';
import 'package:gar_proj/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', //intial path default (/)
        builder: (context, state) => SplashView(),
      ),
      GoRoute(path: '/Homeview', builder: (context, state) => HomeView()),
      GoRoute(
        path: '/AuthOptionsView',
        builder: (context, state) => AuthOptionsView(),
      ),
      GoRoute(path: '/LoginView', builder: (context, state) => LoginView()),
      GoRoute(path: '/StartupView', builder: (context, state) => StartupView()),
      GoRoute(path: '/SignUpView', builder: (context, state) => SignUpView()),
      GoRoute(
        path: '/ExploreCharityView',
        builder: (context, state) => ExploreCharityView(),
      ),
      GoRoute(
        path: '/CharityProfileView',
        builder: (context, state) => CharityProfileView(),
      ),
      GoRoute(
        path: '/ContactUsView',
        builder: (context, state) => ContactUsView(),
      ),
      GoRoute(path: '/SearchView', builder: (context, state) => SearchView()),
      GoRoute(
        path: '/ExploreDonationView',
        builder: (context, state) => ExploreDonationView(),
      ),
      GoRoute(
        path: '/PersonalProfileView',
        builder: (context, state) => PersonalProfileView(),
      ),
    ],
  );
}
