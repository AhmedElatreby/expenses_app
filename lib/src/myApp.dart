import 'package:flutter/material.dart';
import './transaction.dart';

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
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 50.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New Glasses',
      amount: 60.00,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
          Column(children: transactions.map((tx) {
            return Card(child: Text(tx.title),);
          }).toList(),),
        ],
      ),
    );
  }
}
