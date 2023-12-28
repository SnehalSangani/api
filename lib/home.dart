import 'package:api/controller.dart';
import 'package:api/modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Homecontroller homecontroller=Get.put(Homecontroller());
  @override
  void initState() {
    super.initState();
    homecontroller.callapi();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: FutureBuilder(
        future: homecontroller.callapi(),
        builder: (context, snapshot) {
          if(snapshot.hasError)
            {
              return Text("${snapshot.error}");
            }
          else if(snapshot.hasData)
            {
              Textmodel? textmodel=snapshot.data;
              return ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${textmodel.data.languages[index].language}"),
                );

              },itemCount: textmodel!.data.languages.length,);
            }
          return CircularProgressIndicator();
        },
      ),

    ));
  }
}
