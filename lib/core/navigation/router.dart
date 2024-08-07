import 'package:go_router/go_router.dart';
import 'package:monble/core/navigation/routes.dart';
import 'package:monble/features/budgeting/pages/budget_form_page.dart';
import 'package:monble/features/budgeting/pages/budget_list_page.dart';
import 'package:monble/features/budgeting/pages/budget_page.dart';

final routerConfig = GoRouter(
  initialLocation: AppRoutes.budgetListPage,
  routes: [
    GoRoute(
      path: AppRoutes.budgetListPage,
      builder: (_, __) => const BudgetListPage(),
    ),
    GoRoute(
      path: AppRoutes.budgetPage,
      builder: (_, __) => const BudgetPage(),
    ),
    GoRoute(
      path: AppRoutes.budgetFormPage,
      builder: (_, __) => const BudgetFormPage(),
    ),
  ],
);
