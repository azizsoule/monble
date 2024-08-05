import 'package:isar/isar.dart';
import 'package:monble/core/persistance/schema/schema.dart';

part 'transaction_category.g.dart';

@collection
class TransactionCategory extends Model {
  final String icon;

  final String label;

  final String description;

  final double limit;

  final IsarLinks<TransactionCategory> children;

  TransactionCategory({
    this.label = "",
    this.description = "",
    this.icon = "💰",
    this.limit = 0,
    List<TransactionCategory> children = const [],
  })  : children = IsarLinks()..addAll(children),
        super();
}
