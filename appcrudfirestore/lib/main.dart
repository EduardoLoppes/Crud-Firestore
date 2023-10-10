import 'package:appcrudfirestore/screens/lojas.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBjAGNlAsas8uvEjsUq5SF_5juhvpMm2P4",
        authDomain: "bdfirestore-a6dae.firebaseapp.com",
        projectId: "bdfirestore-a6dae",
        storageBucket: "bdfirestore-a6dae.appspot.com",
        messagingSenderId: "931728607660",
        appId: "1:931728607660:web:87bd8a155d9c1e43085209"),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Menu Drawer - Hamburguer',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fire Clothing')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountEmail: Text("FireClothing@gmail.com"),
              accountName: Text("FireClothing"),
              currentAccountPicture: CircleAvatar(
                child: Text("Fire's"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text("Minha Área"),
              onTap: () {
                /*Navigator.push( 

                    context, 

                    MaterialPageRoute( 

                      builder: (context) => Login(), 

                    ), 

                  ); 

                */
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Lojas"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));

                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Contato"),
              onTap: () {
                Navigator.pop(context);

                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Perfil"),
              onTap: () {
                Navigator.pop(context);

                //Navegar para outra página
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            'images/Fire Clothing.png',
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
