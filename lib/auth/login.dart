import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Map<String, String> champs = {"username": "", "mdp": ""};

  void submitChamps() {
    if (champs["username"]?.isEmpty == false &&
        champs["mdp"]?.isEmpty == false) {
      // Ecrire le code à faire apres la verification
    } else {
      print("Tous les champs doivent etre remplis");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(13),
          child: Column(
            children: [
              Text("Connexion", style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              TextField(
                keyboardType: TextInputType.text,
                decoration:
                    InputDecoration(label: Text("Nom d'utilisateur ou email")),
                onChanged: ((value) => {
                      setState(() {
                        champs["username"] = value;
                      })
                    }),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 7)),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(label: Text("Mot de passe")),
                onChanged: ((value) {
                  setState(() {
                    champs["mdp"] = value;
                  });
                  print(value);
                }),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 7)),
              ElevatedButton(onPressed: submitChamps, child: Text("Se connecter"))
            ],
          ),
        ),
      ),
    );
  }
}
