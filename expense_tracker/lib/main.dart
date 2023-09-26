import 'package:expense_tracker/expenses.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 2, 16, 143),
              Color.fromARGB(255, 13, 134, 247)
            ])),
        child: const Center(child: Expenses()),
      ),
    )));
