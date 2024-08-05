import 'package:isar/isar.dart';
import 'package:monble/core/persistance/schema/schema.dart';

part 'income_source.g.dart';

@collection
class IncomeSource extends Model {
  final String label;

  final String description;

  final double amount;

  IncomeSource({
    this.label = "",
    this.description = "",
    this.amount = 0,
  }) : super();
}
