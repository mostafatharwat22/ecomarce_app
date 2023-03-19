import 'package:eng_esraa_ecomarce/controller/logic_api.dart';
import 'package:eng_esraa_ecomarce/weidget/Coustom_card.dart';
import 'package:flutter/material.dart';

import '../models/model2.dart';

class PageStore extends StatelessWidget {
   const PageStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  "DrawerHeader",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dataset, size: 20,),
              title: Text('Data selected', style: TextStyle(fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.message, size: 20,),
              title: Text('message',  style: TextStyle(fontSize: 20),),
            ),
            ListTile(
              leading: Icon(Icons.settings, size: 20,),
              title: Text('settings', style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios, color: Colors.black, )),
        title: const Text(
          "Welcome to store",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
        body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16, top: 50),
        child: FutureBuilder<List<ModelData>>(
          future: ApiServises.getServise(),
            builder: (context,AsyncSnapshot<List<ModelData>> snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return const CircularProgressIndicator();
              }else if(snapshot.hasError){
                return Center(child: Text(snapshot.error.toString()));
              }
              if(snapshot.hasData){
                return GridView.builder(
                  itemCount: snapshot.data?.length,
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:1.1,
                    crossAxisSpacing:5,
                    mainAxisSpacing: 100,
                  ),
                  itemBuilder: (context, index) {
                    return CoustomCard(data: snapshot.data![index],);
                  },
                );
              } else{
                return const Center(
                  child: Text("No Data found"),
                );
              }
            },
        ),
      ),
    );
  }
}
