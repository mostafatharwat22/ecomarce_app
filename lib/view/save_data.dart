import 'package:eng_esraa_ecomarce/models/model2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state_provider/provider.dart';
import 'datils.dart';
class BuyStore extends StatelessWidget {
  BuyStore({required this.data, Key? key}) : super(key: key);
  final ModelData data;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          title: const Text(
            "Data",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Image.network(
                  data.image,
                  height: 300,
                  width: double.infinity,
                ),
                const SizedBox(
                  height: 20,
                ),
                Consumer<PeoviderIncrement>(
                  builder: (context, value, Widget? child) => Text(
                    '${value.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                      ),
                      onPressed: () {
                        Provider.of<PeoviderIncrement>(context, listen: false)
                            .incrementCounter();
                      },
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                      ),
                      onPressed: () {
                        Provider.of<PeoviderIncrement>(context, listen: false)
                            .decrementCounter();
                      },
                      child: const Icon(
                        Icons.minimize_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.greenAccent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: const Size(250, 40),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DetailScreen(todo: data,);
                    },));
                  },
                  child: const Text(
                    "Add to Card",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}