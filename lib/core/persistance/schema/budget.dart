import 'package:isar/isar.dart';
import 'package:monble/core/persistance/schema/schema.dart';

part 'budget.g.dart';

@collection
class Budget extends Model {
  final String label;

  final String description;

  final double amount;

  final DateTime startDate;

  final DateTime endDate;

  final IsarLinks<Transaction> transactions;

  final IsarLinks<TransactionCategory> transactionsCategories;

  Budget({
    required this.startDate,
    required this.endDate,
    this.label = "",
    this.description = "",
    this.amount = 0,
    List<Transaction> transactions = const [],
    List<TransactionCategory> transactionsCategories = const [],
  })  : transactions = IsarLinks()..addAll(transactions),
        transactionsCategories = IsarLinks()..addAll(transactionsCategories),
        super();
}
