import 'package:bhumisana/core/navigation/app_router.dart';
import 'package:bhumisana/features/authentication/authentication.dart';
import 'package:bhumisana/features/home/presentation/presentation.dart';
import 'package:bhumisana/features/main/main_screen.dart';
import 'package:bhumisana/features/profile/presentation/presentation.dart';
import 'package:flutter/material.dart';

class ApplicationRoot {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouter.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case AppRouter.register:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );

      case AppRouter.main:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
        );

      case AppRouter.username:
        return MaterialPageRoute(
          builder: (context) => UsernameScreen(),
        );

      case AppRouter.age:
        return MaterialPageRoute(
          builder: (context) => const AgeScreen(),
        );

      case AppRouter.gender:
        return MaterialPageRoute(
          builder: (context) => GenderScreen(),
        );

      case AppRouter.address:
        return MaterialPageRoute(
          builder: (context) => AddressScreen(),
        );

      case AppRouter.rewards:
        return MaterialPageRoute(
          builder: (context) => const RewardsScreen(),
        );

      case AppRouter.leaderboard:
        return MaterialPageRoute(
          builder: (context) => const LeaderBoardScreen(),
        );

      case AppRouter.scanWaste:
        return MaterialPageRoute(
          builder: (context) => ScanWasteScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
  }
}
