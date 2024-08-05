import 'package:isar/isar.dart';
import 'package:monble/core/persistance/schema/schema.dart';

part 'project.g.dart';

@collection
class Project extends Model {
  final String label;

  final String description;

  final DateTime startDate;

  final DateTime endDate;

  final double targetAmount;

  final IsarLinks<Transaction> transactions;

  Project({
    required this.startDate,
    required this.endDate,
    this.label = "",
    this.description = "",
    this.targetAmount = 0,
    List<Transaction> transactions = const [],
  })  : transactions = IsarLinks()..addAll(transactions),
        super();
}
