import 'package:flutter/material.dart';
import 'package:olshop_app/login.dart';

class AkunPage extends StatefulWidget {
  const AkunPage({Key key}) : super(key: key);


  @override
  State<AkunPage> createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Akun"),
      ),
      body:  Center(
        child:
        RaisedButton(
          onPressed: (){
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Login())
            );
          },
          child: Text("Keluar"),
        )
      ),
    );
  }
}
