import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Choco'),
        ),
        body: ListView.builder(
          itemCount: 20, // Number of items in the list
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Item $index'), // Item title
              subtitle: Text('Subtitle for item $index'), // Item subtitle
              leading: const Icon(Icons.star), // Leading icon for the item
              trailing:
                  const Icon(Icons.arrow_forward), // Trailing icon for the item
              onTap: () {
                // Action to perform when the item is tapped
                // ignore: avoid_print
                print('Tapped item $index');
              },
            );
          },
        ),
      ),
    );
  }
}