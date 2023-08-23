import 'package:smart_admin_dashboard/core/constants/color_constants.dart';
import 'package:smart_admin_dashboard/responsive.dart';

import 'package:smart_admin_dashboard/screens/dashboard/components/mini_information_card.dart';

import 'package:smart_admin_dashboard/screens/dashboard/components/recent_forums.dart';
import 'package:smart_admin_dashboard/screens/dashboard/components/recent_users.dart';
import 'package:smart_admin_dashboard/screens/dashboard/components/user_details_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/app_button_widget.dart';
import '../../../core/widgets/input_widget.dart';
import '../../dashboard/components/header.dart';

class EnregistrerClientContenu extends StatefulWidget {
  @override
  State<EnregistrerClientContenu> createState() => _EnregistrerClientContenuState();
}

class _EnregistrerClientContenuState extends State<EnregistrerClientContenu> {
  late bool selected;
  late List<String> check;
  late List<String> statutMatrimonial;
  late List<String> passportValide;
  late List<String> casieJudiciaire;

  late List<String> sante;
  late List<String> enfant;
  late List<String> emploie;
  late List<String> francais;
  late List<String> anglais;
  late List<String> visitecanada;
  late List<String> residentpermanent;
  late List<String> compagnie;
  late List<String> atestationwork;
  late List<String> startprocedure;
  late bool enabled;

  late String dropdownVal;
  late String dropdownVa;
  late String dropdownValu;
  late String dropdownValue;
  late String dropdownValues;
  late List<String> sexe;
  late List<String> typeVisa;
  TextEditingController emailEditingController=TextEditingController();

  @override
  void initState() {
    selected = false;
    check = ['oui','non'];

    passportValide = ['oui mon passport est valide','Non mon passport est invalide'];
    dropdownVa="oui mon passport est valide";
    if (dropdownVa=="oui je suis parent"){
      enabled = true;
    }
    else{
      enabled = false;
    }
    super.initState();


    casieJudiciaire = ['Oui','Non'];
    sante = ['Oui','Non'];


    enfant = ['oui je suis parent','Non je ne suis pas erent'];
    dropdownValues="oui je suis parent";
    if (dropdownValues=="oui je suis parent"){
      enabled = true;
    }
    else{
      enabled = false;
    }
    super.initState();


    dropdownValue = 'oui';

    if (dropdownValue=="oui"){
      enabled = true;
    }
    else{
      enabled = false;
    }
    super.initState();


    dropdownValu="Oui emploie valide";
    emploie = ['Oui emploie valide','Non pas emploie valide'];


    francais = ['Bas','Moyen','Elévé'];
    anglais = ['Bas','Moyen','Elévé'];
    visitecanada = ['Oui','Non'];
    residentpermanent = ['Oui','Non'];
    compagnie = ['Oui','Non'];
    atestationwork = ['Oui','Non'];
    startprocedure = ['Oui','Non'];
    dropdownVal="Celibataire";
    statutMatrimonial = ['Marié', 'Celibataire', 'Veuve / Veuf'];
    sexe = ['Feminin', 'Masculin'];
    typeVisa = ['Visa Etudiant', 'Visa Travailleur', 'Visa Visiteur','Residence permanante'];

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        //padding: EdgeInsets.all(defaultPadding),
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header(),
              SizedBox(height: defaultPadding),
            Card(
              color: secondaryColor,
              elevation: 5,
              margin: EdgeInsets.fromLTRB(32, 32, 64, 32),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Form(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              // enabled:enabled,
                              kController: emailEditingController,
                            keyboardType: TextInputType.emailAddress,
                            onSaved: (String? value) {
                              // This optional block of code can be used to run
                              // code when the user saves the form.
                            },
                            onChanged: (String? value) {
                                print(emailEditingController.text);
                              // This optional block of code can be used to run
                              // code when the user saves the form.
                            },
                            validator: (String? value) {
                              return (value != null && value.contains('@'))
                                  ? 'Do not use the @ char.'
                                  : null;
                            },

                            topLabel: "Noms",

                            hintText: "Enter vos Noms",
                            // prefixIcon: FlutterIcons.chevron_left_fea,
                          ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              // enabled:enabled,
                              kController: emailEditingController,
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(emailEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              validator: (String? value) {
                                return (value != null && value.contains('@'))
                                    ? 'Do not use the @ char.'
                                    : null;
                              },

                              topLabel: "Prenoms",

                              hintText: "Entrer vos Prenoms",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),),
                        ],
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              // enabled:enabled,
                              kController: emailEditingController,
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(emailEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              validator: (String? value) {
                                return (value != null && value.contains('@'))
                                    ? 'Do not use the @ char.'
                                    : null;
                              },

                              topLabel: "Commune",

                              hintText: "A quelle Commune appartenez vous?",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            flex: 2,
                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                labelText: 'Quelle est votre sexe?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {                                },
                                items: sexe
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ), // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              // enabled:enabled,
                              kController: emailEditingController,
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(emailEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              validator: (String? value) {
                                return (value != null && value.contains('@'))
                                    ? 'Do not use the @ char.'
                                    : null;
                              },

                              topLabel: "Profession",

                              hintText: "Entrer votre profession",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            flex: 2,
                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                // enabled: enabled,
                                labelText: 'Quelle est votre type de visa?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),

                              onChanged: (String? newValue) {                                },
                              items: typeVisa
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),
                          ),
                         ],
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      // bouton pur cocher
                      // Checkbox(value: selected, onChanged: (value){
                      //   setState(() {
                      //     selected =!selected;
                      //   });
                      // }),


                      SizedBox(height: 24.0),
                      AppButton(
                        type: ButtonType.PRIMARY,
                        text: "Envoyer",
                      ),
                      SizedBox(height: 24.0),


                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Consultation payé?',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          contentPadding: EdgeInsets.all(10),
                        ),
                    value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(
                          color: Colors.deepPurple
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          if(newValue=="oui"){
                            enabled = true;
                          } else{
                            enabled= false;
                          }
                          dropdownValue = newValue!;
                        });
                      },
                      items: check
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      })
                      .toList(),
                  ),
                      SizedBox(height: 24.0),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                labelText: 'Quelle est votre statut matrimoniale?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              // enableFeedback: enabled,
                              value: dropdownVal,
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),

                              onChanged: (String? newValue) {
                                setState(() {
                                if(newValue=="celibataire"){
                                  enabled = true;
                                } else{
                                  enabled= false;
                                }
                                dropdownVal = newValue!;
                              });                           },
                              items: statutMatrimonial
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),

                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            flex: 2,
                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                labelText: 'Votre passport est-il valide?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              value: dropdownVa,
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  if(newValue=="oui mon passport est valide"){
                                    enabled = true;
                                  } else{
                                    enabled= false;
                                  }
                                  dropdownVa = newValue!;
                                });
                              },
                              items: passportValide
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),

                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              // enabled:enabled,
                              kController: emailEditingController,
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(emailEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              validator: (String? value) {
                                return (value != null && value.contains('@'))
                                    ? 'Do not use the @ char.'
                                    : null;
                              },
                              topLabel: "Quelle est la date d'expiration?",
                              // hintText: "Entrer votre profession",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),

                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            flex: 2,
                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                labelText: 'Avez vous un cassier judiciaire?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),
                              onChanged: (String? newValue) {                                },
                              items: casieJudiciaire
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),

                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),

                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            // child:  InputWidget(
                            //   enabled:enabled,
                            //   kController: emailEditingController,
                            //   keyboardType: TextInputType.emailAddress,
                            //   onSaved: (String? value) {
                            //     // This optional block of code can be used to run
                            //     // code when the user saves the form.
                            //   },
                            //   onChanged: (String? value) {
                            //     print(emailEditingController.text);
                            //     // This optional block of code can be used to run
                            //     // code when the user saves the form.
                            //   },
                            //   validator: (String? value) {
                            //     return (value != null && value.contains('@'))
                            //         ? 'Do not use the @ char.'
                            //         : null;
                            //   },
                            //
                            //   topLabel: "Commune",
                            //
                            //   hintText: "A quelle Commune appartenez vous?",
                            //   // prefixIcon: FlutterIcons.chevron_left_fea,
                            // ),

                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                labelText: 'Avez vous des problemes de santé?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),

                              onChanged: (String? newValue) {                                },
                              items: sante
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),

                        ],
                      ),
                      SizedBox(height: 24.0),

                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                labelText: 'Avez vous des enfants?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              value: dropdownValues,
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  if(newValue=="oui je suis parent"){
                                    enabled = true;
                                  } else{
                                    enabled= false;
                                  }
                                  dropdownValues = newValue!;
                                });
                              },
                              items: enfant
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              // enabled:enabled,
                              kController: emailEditingController,
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(emailEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              validator: (String? value) {
                                return (value != null && value.contains('@'))
                                    ? 'Do not use the @ char.'
                                    : null;
                              },

                              topLabel: "Quelle est l'age de vos des enfants?",

                              hintText: "Entrer le(s) age(s)",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              // enabled:enabled,
                              kController: emailEditingController,
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(emailEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              validator: (String? value) {
                                return (value != null && value.contains('@'))
                                    ? 'Do not use the @ char.'
                                    : null;
                              },
                              topLabel: "Niveau de scolarite",

                              hintText: "Entrer leurs niveaux",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              // enabled:enabled,
                              kController: emailEditingController,
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(emailEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              validator: (String? value) {
                                return (value != null && value.contains('@'))
                                    ? 'Do not use the @ char.'
                                    : null;
                              },
                              topLabel: "Quelle est le nombres d'années professionel?",
                              hintText: "Entrer une reponse",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      Row(
                        children: [
                          Expanded(
                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                labelText: 'Disposez vous un emploie, une offre validée?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              value: dropdownValu,
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),

                              onChanged: (String? newValue) {
                                setState(() {
                                  if(newValue=="oui j'ai un emploie valide"){
                                    enabled = true;
                                  } else{
                                    enabled= false;
                                  }
                                  dropdownValu = newValue!;
                                });
                              },
                              items: emploie
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,),
                        ],
                      ),
                      SizedBox(height: 24.0),
                    ],
                  ) ,
                ),

              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
