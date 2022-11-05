import 'package:flutter/material.dart';

class RegisterMedPage extends StatefulWidget {
  const RegisterMedPage({super.key});

  @override
  State<RegisterMedPage> createState() => _RegisterMedPageState();
}

class _RegisterMedPageState extends State<RegisterMedPage> {
  Map<String, String> champs = {
    "nom": "",
    "postnom": "",
    "prenom": "",
    "num": "",
    "email": "",
    "mdp": ""
  };

  void submitChamps() {
    if (champs["nom"]?.isEmpty == false &&
        champs["postnom"]?.isEmpty == false &&
        champs["prenom"]?.isEmpty == false &&
        champs["num"]?.isEmpty == false &&
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
                  "Inscription / Médecin",
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
                Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(label: Text("postnom")),
                  onChanged: ((value) => {
                        setState(() {
                          this.champs["postnom"] = value;
                        })
                      }),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(label: Text("prenom")),
                  onChanged: ((value) => {
                        setState(() {
                          this.champs["prenom"] = value;
                        })
                      }),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(label: Text("num")),
                  onChanged: ((value) => {
                        setState(() {
                          this.champs["num"] = value;
                        })
                      }),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(label: Text("email")),
                  onChanged: ((value) => {
                        setState(() {
                          this.champs["email"] = value;
                        })
                      }),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10)),
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
                Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                ElevatedButton(
                    onPressed: submitChamps, child: Text("S'inscrire"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
