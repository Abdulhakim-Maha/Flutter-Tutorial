import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:expenses/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  final Function deleteTx;

  TransactionList(this.transaction, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: transaction.isEmpty
          ? Column(
              children: [
                Text(
                  'No Transaction yet!',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 5,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColorDark,
                      radius: 30,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: FittedBox(
                            child: Text(
                          '฿${transaction[index].amount}',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                    title: Text(transaction[index].title,
                        style: Theme.of(context).textTheme.headline6),
                    subtitle: Text(
                        DateFormat.yMMMd().format(transaction[index].date)),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      color: Theme.of(context).errorColor,
                      onPressed: () => deleteTx(transaction[index].id),
                    ),
                  ),
                );
              },
              itemCount: transaction.length,
              // children: transaction.map((tx) {}).toList(),
            ),
    );
  }
}
