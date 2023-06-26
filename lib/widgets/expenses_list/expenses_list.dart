import 'package:flutter/cupertino.dart';
import 'package:new_app/models/expense.dart';
import 'package:new_app/widgets/expenses_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({Key? key, required this.expenses}) : super(key: key);

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) =>ExpenseItem(expenses[index]),
    );
  }
}
