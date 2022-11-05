import 'package:flutter/material.dart';
import 'package:teleconsult/auth/login.dart';
import 'package:teleconsult/auth/register.dart';
import 'package:teleconsult/auth/register_med.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.grey.shade800,
        accentColor: Colors.yellow.shade800,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue.shade800),
          padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 20, horizontal: 18)),elevation: MaterialStatePropertyAll(0.0))
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 7),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300)),
          labelStyle: TextStyle(color: Colors.grey.shade400),
          fillColor: Colors.grey.shade100,
        ),
      ),
      home: StartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Téléconsultation", style: theme.textTheme.titleLarge),
          Padding(padding: EdgeInsets.symmetric(vertical: 15)),
          Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => LoginPage()));
                  },
                  child: Text("Se connecter")),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => RegisterClientPage()));
                  },
                  child: Text("Inscription / Patient")),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => RegisterMedPage()));
                  },
                  child: Text("Inscription / Médecin")),
            ],
          )
        ],
      ),
    ));
  }
}
