import 'package:eng_esraa_ecomarce/weidget/coustom_elveted.dart';
import 'package:eng_esraa_ecomarce/weidget/coustom_stack.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 1,
        title: const Text(
          "Ecomerce_App",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           CoustomStack(),
            const SizedBox(height: 70,),
           const CoustomElveated(),
          ],
        ),
      ),
    );
  }
}
