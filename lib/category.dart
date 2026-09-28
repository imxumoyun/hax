import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vegetables"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                ),
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
              ),
            ),
            SizedBox(height: 42),
          ],
        ),
      ),
    );
  }
}