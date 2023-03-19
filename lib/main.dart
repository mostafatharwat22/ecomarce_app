
import 'package:eng_esraa_ecomarce/controller/local_database.dart';
import 'package:eng_esraa_ecomarce/state_provider/provider.dart';
import 'package:eng_esraa_ecomarce/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await MyCache.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) =>PeoviderIncrement(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home:  const HomePage(),
      ),
    );
  }
}
