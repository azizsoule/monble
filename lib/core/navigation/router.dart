import 'package:go_router/go_router.dart';
import 'package:monble/core/navigation/routes.dart';
import 'package:monble/features/home/pages/home_page.dart';
import 'package:monble/features/transaction/pages/transaction_stats_page.dart';

final routerConfig = GoRouter(
  initialLocation: AppRoutes.homePage,
  routes: [
    GoRoute(
      path: AppRoutes.homePage,
      builder: (_, __) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutes.statisticsPage,
      builder: (_, __) => const TransactionStatsPage(),
    ),
  ],
);
