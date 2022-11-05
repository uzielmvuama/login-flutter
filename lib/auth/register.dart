import 'package:flutter/material.dart';

class RegisterClientPage extends StatefulWidget {
  const RegisterClientPage({super.key});

  @override
  State<RegisterClientPage> createState() => _RegisterClientPageState();
}

class _RegisterClientPageState extends State<RegisterClientPage> {
  Map<String, dynamic> champs = {
    "nom": "",
    "postnom": "",
    "prenom": "",
    "age": "",
    "email": "",
    "mdp": ""
  };
  void submitChamps() {
    if (champs["nom"]?.isEmpty == false &&
        champs["postnom"]?.isEmpty == false &&
        champs["prenom"]?.isEmpty == false &&
        champs["age"]?.isEmpty == false &&
        champs["email"]?.isEmpty == false &&
        champs["mdp"]?.isEmpty == false) {
      print("Les champs ne sont pas vides");
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
          child: Center(
            child: Column(
              children: [
                Text(
                  "Inscription / Patient",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(label: Text("nom")),
                  onChanged: ((value) => {
                        setState(() {
                          this.champs["nom"] = value;
                        })
                      }),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(label: Text("postnom")),
                  onChanged: ((value) => {
                        setState(() {
                          this.champs["postnom"] = value;
                        })
                      }),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(label: Text("prenom")),
                  onChanged: ((value) => {
                        setState(() {
                          this.champs["prenom"] = value;
                        })
                      }),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(label: Text("age")),
                  onChanged: ((value) => {
                        setState(() {
                          this.champs["age"] = value;
                        })
                      }),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(label: Text("email")),
                  onChanged: ((value) => {
                        setState(() {
                          this.champs["email"] = value;
                        })
                      }),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(label: Text("Mot de passe")),
                  onChanged: ((value) => {
                        setState(() {
                          this.champs["mdp"] = value;
                        })
                      }),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 7)),
                ElevatedButton(onPressed: submitChamps, child: Text("S'inscrire"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
