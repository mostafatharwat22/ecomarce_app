import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/model2.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({
    Key? key,
    required this.todo,
  }) : super(key: key);
  final ModelData todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Data Selacted",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Image.network(
              todo.image,
              height: 50,
              width: 100,
            ),
            title: Text(todo.title),
            subtitle: Text('${todo.price}'),
          ),
        ],
      ),
    );
  }
}
