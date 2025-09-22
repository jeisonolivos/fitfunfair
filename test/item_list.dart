// lib/item_list.dart
import 'package:flutter/material.dart';

class ItemListPage extends StatelessWidget {
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Example list of items
    final List<String> items = [
      'Apple',
      'Banana',
      'Cherry',
      'Date',
      'Elderberry',
      'Fig',
      'Grape'
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Item List')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(items[index][0])),
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}