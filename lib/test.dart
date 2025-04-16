import 'package:flutter/material.dart';

import 'core/function/check_internet.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var res;

  initialData() async {
    res = await checkInternet();
    print(res);
  }

  @override
  void initState() {
    initialData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("test"), centerTitle: true),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(children: []),
      ),
    );
  }
}
