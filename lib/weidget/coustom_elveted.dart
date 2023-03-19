import 'package:eng_esraa_ecomarce/view/page_store.dart';
import 'package:flutter/material.dart';
import '../controller/Enum.dart';
import '../controller/local_database.dart';

class CoustomElveated extends StatelessWidget {
  const CoustomElveated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController(
        text: MyCache.getString(key: MyCacheKeys.email)
    );
    TextEditingController passwordController = TextEditingController(
        text: MyCache.getString(key: MyCacheKeys.password)
    );
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(300, 40),
      ),
      onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) =>  PageStore(),));
          MyCache.putString(key: MyCacheKeys.email, value: emailController.text);
          MyCache.putString(key: MyCacheKeys.password, value: passwordController.text);
      },
      child: const Text(
        "Login",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
