import 'package:flutter/material.dart';
import 'package:monble/core/persistance/schema/schema.dart';

class BudgetWidget extends StatelessWidget {
  final Budget budget;
  final void Function() onTap;

  const BudgetWidget({
    super.key,
    required this.budget,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(budget.label),
        ],
      ),
    );
  }
}
