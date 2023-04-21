import 'package:flutter/material.dart';

import '../src/widgets/new_transactions.dart';
import '../src/widgets/user_transactions.dart';

import './widgets/transactions_list.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              right: 10,
              left: 10,
            ),
            child: Card(
              color: Colors.blue,
              elevation: 20,
              child: Text('Chart!'),
            ),
          ),
          UserTransaction(),
        ],
      ),
    );
  }
}
