import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Column(
        children: [
          Text(
            expense.title,
            // style: const TextStyle(
            //   fontSize: 20,
            //   fontWeight: FontWeight.bold,
            // ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text('\$${expense.amount.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )),
              const Spacer(),
              Row(
                children: [
                  Icon(categoryIcons[expense.category]),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    expense.formatDate,
                  )
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
