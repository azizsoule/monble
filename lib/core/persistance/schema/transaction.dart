import 'package:isar/isar.dart';
import 'package:monble/core/persistance/schema/schema.dart';

part 'transaction.g.dart';

@collection
class Transaction extends Model {
  final String label;

  final String description;

  final DateTime date;

  final double amount;

  @Enumerated(EnumType.name)
  final TransactionType type;

  final IsarLink<TransactionCategory> category;

  Transaction({
    required this.date,
    this.label = "",
    this.description = "",
    this.amount = 0,
    this.type = TransactionType.expense,
    TransactionCategory? category,
  })  : category = IsarLink()..value = category,
        super();
}
