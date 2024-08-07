import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:monble/core/l10n/app_localizations.dart';
import 'package:monble/core/navigation/routes.dart';
import 'package:monble/features/budgeting/providers/budget_provider.dart';
import 'package:monble/features/budgeting/widgets/budget_widget.dart';

final class BudgetListPage extends ConsumerWidget {
  const BudgetListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final budgets = ref.watch(budgetListProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.myBudgets ?? ""),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () => context.push(AppRoutes.budgetFormPage),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: budgets.length,
        separatorBuilder: (_, __) => const SizedBox(
          height: 16,
        ),
        itemBuilder: (context, index) {
          final budget = budgets.elementAt(index);

          return BudgetWidget(
            key: ValueKey(budget.id),
            budget: budget,
            onTap: () => context.push(AppRoutes.budgetPage),
          );
        },
      ),
    );
  }
}
