import 'package:monble/core/persistance/repository/repositories.dart';
import 'package:monble/core/persistance/schema/schema.dart';
import 'package:monble/injection_container.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'budget_provider.g.dart';

@riverpod
class BudgetList extends _$BudgetList {
  @override
  List<Budget> build() {
    return [
      Budget(
        startDate: DateTime.now(),
        endDate: DateTime.now(),
      ),
      Budget(
        startDate: DateTime.now(),
        endDate: DateTime.now(),
      ),
    ];
  }

  void addBudget(Budget budget) {
    final savedBudget = find<BudgetRepository>().save(budget);
    state = [savedBudget, ...state];
  }

  void removeBudget(int budgetId) {
    final deleted = find<BudgetRepository>().delete(budgetId);
    if (deleted) {
      state.removeWhere((budget) => budget.id == budgetId);
    }
  }

  void updateBudget(Budget budget) {
    final updatedBudget = find<BudgetRepository>().save(budget);
    state = state.map((b) => b.id == updatedBudget.id ? updatedBudget : b).toList();
  }
}
