import 'package:flutter/material.dart';
import 'quote.dart';

class Quote_Card extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  Quote_Card({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 2.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8.0),
            TextButton.icon(
                onPressed: delete,
                label: Text('Delete Quote'),
                icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}