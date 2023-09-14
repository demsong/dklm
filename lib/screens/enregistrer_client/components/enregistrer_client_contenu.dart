import 'dart:html';

import 'package:intl/intl.dart';
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
  int _index =0;
  bool visible=true;
  late bool enabled;
  late bool selected;
  late String dropdownVal;
  late String dropdownVa;
  late String consultationPayeValue;
  late String passportValideValue;
  late String enfantsValue;
  late String permisEtudeValue;
  late String dropdown;
  late String dropdownValues;
  late String typeVisa;
  late String preProcess;
  late List<String> consultationPayeItems;
  late List<String> checknext;
  late List<String> visa;
  late List<String> check2;
  late List<String> enfant2;
  late List<String> statutMatrimonial;
  late List<String> passportValideItems;
  late List <String> permisEtudeItems;
  late List <String> enfantsItems;
  late List<String> casier;
  late List<String> sante;
  late List<String> enfant;
  late List<String> emploie;
  late List<String> emploieok;
  late List<String> francais;
  late List<String> anglais;
  late List<String> visitecanada;
  late List<String> residentpermanent;
  late List<String> compagnie;
  late List<String> atestationwork;
  late List<String> startprocedure;
  late List<String> sexe;
  late List <String> domaineEtude;
  late List <String> permisEtude;
  late List <String> preinscrip;
  late List <String> accompagnateur;
  late List <String> langue;
  late List <String> testLangue;
  late List <String> visiteAnterieur;
  late List <String> vieAnterieur;
  late List <String> compagne;
  late List <String> attestationTravail;
  late List <String> preProcedure;
  late List <String> offreEmploieCanadien;
  late List <String> diplomeEtude;
  late List <String> familleAcceuil;
  late List <String> compagneImmigration;
  late List <String> langueQuestion;
  late List <String> tcl;
  // late List<String> typeVisa;

  //creation des controller qui von recuperer les variable saisie

        // debut controller texte
  TextEditingController emailEditingController=TextEditingController();

  TextEditingController nomEditingController=TextEditingController();
  TextEditingController prenomEditingController=TextEditingController();
  TextEditingController communeEditingController=TextEditingController();
  TextEditingController professionEditingController=TextEditingController();
  TextEditingController sexeEditingController=TextEditingController();
  TextEditingController domaineEtudeEditingController= TextEditingController();
  TextEditingController permisEtudeEditingController= TextEditingController();
  TextEditingController preinscripEditingContoller =TextEditingController();
  TextEditingController nomEcoleEditingController =TextEditingController();
  TextEditingController priviceEtudeEditingController= TextEditingController();
  TextEditingController garantEditingController=TextEditingController();
  TextEditingController nomGarantEditingController =TextEditingController();
  TextEditingController dateEditingController=TextEditingController();
  TextEditingController ageEnfantEditingController=TextEditingController();
  TextEditingController EditingController=TextEditingController();
  TextEditingController niveauEnfantEditingController=TextEditingController();
  TextEditingController anneeExperienceEditingController=TextEditingController();
  TextEditingController langeParlerEditingController= TextEditingController();
  TextEditingController niveauCompagnonEditingController=TextEditingController();
  TextEditingController nomEnfantEditingController = TextEditingController();
  TextEditingController domaineConcerneEditingController=TextEditingController();
  TextEditingController ageCompagneEditingController=TextEditingController();
  TextEditingController raisonEditingController=TextEditingController();
  TextEditingController dureeSejourEditingController=TextEditingController();
  TextEditingController provinceDestinationEditingController=TextEditingController();
  TextEditingController domaineTravailEditingController=TextEditingController();
  TextEditingController tempExerceEditingController=TextEditingController();
  TextEditingController datePreProcedureEditingController=TextEditingController();
  TextEditingController programmePreProcedureEditingController=TextEditingController();
  TextEditingController anneeDiplomeEditingController=TextEditingController();
  //fin controller texte

  //debut controller select

  //fin controller select
  //fin de creationdes controller
  @override
  void initState() {
    consultationPayeItems = ['oui','non'];
    passportValideItems = ['Oui','Non'];
    permisEtudeItems=['Oui','Non'];
    checknext = ['oui','non'];
    check2 = ['oui','non'];
    enfantsItems =["Oui","Non"];
    francais=['Bas','Intermediaire', 'Eleve'];
    anglais=['Bas','Intermediaire', 'Eleve'];
    emploie = ['Oui emploie valide','Non pas emploie valide'];
    casier=["oui un casier jusdiciaire","non j'ai aucun casier judiciaire"];
    visitecanada = ['Oui','Non'];
    residentpermanent = ['Oui','Non'];
    compagnie = ['Oui','Non'];
    atestationwork = ['Oui','Non'];
    startprocedure = ['Oui','Non'];
    dropdownVal="Celibataire";
    emploieok =["oui j'ai un emploie valide","non je n'est aucun emploie"];
    statutMatrimonial = ['Marié', 'Celibataire', 'Veuve / Veuf'];
    sexe = ['Feminin', 'Masculin'];
    domaineEtude =['oui','non'];
    permisEtude=['oui','non'];
    permisEtude=['oui', 'non'];
    preinscrip=['oui','non'];
    accompagnateur=['oui','oui'];
    langue=['oui', 'non'];
    testLangue=['oui','non'];
    visiteAnterieur=['oui','non'];
    vieAnterieur =['oui','non'];
    compagne = ['oui','non'];
    attestationTravail=['oui','non'];
    preProcedure=['Oui','non'];
    offreEmploieCanadien =['oui','non'];
    diplomeEtude=['oui','non'];
    familleAcceuil=['oui','non'];
    compagneImmigration=['seul','en famille','accompagne'];
    langueQuestion=['oui','non'];
    tcl=['oui','non'];
    visa = ['Visa Etudiant', 'Visa Travailleur Permanent', 'Visa Visiteur','visa Travailleur Temporaire'];
    sante = ["Oui j'ai des probleme de sante",'Non aucun probleme de sante'];
    enfantsItems = ["Oui","Non"];



    // selected = false;
    // if (dropdownValue=="oui payer"){
    //   enabled = true;
    // }
    // else{
    //   enabled = false;
    // }
    enfantsValue=enfantsItems[1];
    preProcess=preProcedure[1];
    super.initState();
    permisEtudeValue=permisEtudeItems[1];
    super.initState();
    passportValideValue=passportValideItems[1];
    super.initState();
    consultationPayeValue = consultationPayeItems[1];
    super.initState();
    passportValideValue=passportValideItems[1];

    // if (dropdownVa=="oui je suis parent"){
    //   enabled = true;
    // }
    // else{
    //   enabled = false;
    // }
    // super.initState();

    enfantsValue=enfantsItems[1];

    typeVisa = 'Visa Etudiant';
    // if (typeVisa=="Visa Etudiant"){
    //   enabled = true;
    // }
    // else{
    //   enabled = false;
    // }
    // super.initState();


    consultationPayeValue = 'oui';
    // if (dropdownValue=="oui" && typeVisa=="visa permanant" ){
    //   enabled = true;
    // }
    // else{
    //   enabled = false;
    // }
    // super.initState();





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
            Container(
              width: double.infinity,
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height -0.0
              ),
              child: Stepper(
                controlsBuilder:(BuildContext context, ControlsDetails details){
                  return Row(
                  children:[
                    Visibility(
                      visible: details.currentStep>1?false:true,
                      child: TextButton(
                        onPressed:details.onStepContinue,
                        child : Text("Suivant"),
                            ),
                    ),
                    Visibility(
                      visible: details.currentStep==0?false:true,
                      child: TextButton(
                        onPressed:details.onStepCancel,
                        child : Text("Retour"),
                        ),
                    ),
                    TextButton(
                      onPressed:(){

                      },
                      child : Text("Eregistré"),
                    )
                  ],
                  );
              },
                type: StepperType.vertical,
                currentStep: _index,
                  onStepCancel: (){
                  if(_index==1){
                    setState(() {
                      _index-=1;
                    });
                  }else if(_index>1){
                    setState(() {
                      _index=1;
                    });
                  }
                  },
                onStepContinue: (){
                  if(_index==0 && consultationPayeValue=="oui"){
                    setState(() {
                      _index +=1;
                    });
                  }else if (_index==1){
                    switch (typeVisa){
                      case "Visa Etudiant":
                        setState(() {
                          _index =2;
                        });
                        break;
                      case "Visa Travailleur Permanent":
                        setState(() {
                          _index =3;
                        });
                        break;
                      case "Visa Visiteur":
                        setState(() {
                          _index =4;
                        });
                        break;
                      case "visa Travailleur Temporaire":
                        setState(() {
                          _index =5;
                        });
                        break;
                    }
                  }else if (_index==0 && consultationPayeValue=="non"){
                    print("veillé payer la consultation");
                  }
                },
                onStepTapped: (int index){
                  if(index==0){
                    setState(() {
                      _index=index;
                    });
                  }else if(index==1 && consultationPayeValue=="oui"){
                    setState(() {
                      _index=1;
                    });
                  }else if(index>1 && consultationPayeValue=="oui"){
                    switch (typeVisa){
                      case "Visa Etudiant":
                        if (index==2){
                          setState(() {
                            _index =2;
                          });
                        }else(
                        print("cette rubrique ne correspond pas a votre type de visa!")
                        );
                        break;
                      case "Visa Travailleur Permanent":
                        if (index==3){
                          setState(() {
                            _index =3;
                          });
                        }else(
                            print("cette rubrique ne correspond pas a votre type de visa!")
                        );
                        break;
                      case "Visa Visiteur":
                        if (index==4){
                          setState(() {
                            _index =4;
                          });
                        }else(
                            print("cette rubrique ne correspond pas a votre type de visa!")
                        );
                        break;
                      case "visa Travailleur Temporaire":
                        if (index==5){
                          setState(() {
                            _index =5;
                          });
                        }else(
                            print("cette rubrique ne correspond pas a votre type de visa!")
                        );
                        break;
                    }
                  }
                },

                steps: <Step>[
                  //niveau d'information basique
                  Step(title: Text("Information Obligatoire"),
                      content:   Card(
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
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "INFORMATION BASIQUE",
                                          style: Theme.of(context).textTheme.headline6,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 24.0),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child:  InputWidget(
                                        // ////////enabled:enabled,
                                        kController: nomEditingController,
                                        keyboardType: TextInputType.text,
                                        onSaved: (String? value) {
                                          // This optional block of code can be used to run
                                          // code when the user saves the form.
                                        },
                                        onChanged: (String? value) {
                                          print(nomEditingController.text);
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
                                        // ////////enabled:enabled,
                                        kController:prenomEditingController,
                                        keyboardType: TextInputType.text,
                                        onSaved: (String? value) {
                                          // This optional block of code can be used to run
                                          // code when the user saves the form.
                                        },
                                        onChanged: (String? value) {
                                          print(prenomEditingController.text);
                                          // This optional block of code can be used to run
                                          // code when the user saves the form.
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
                                        // ////////enabled:enabled,
                                        kController:communeEditingController,
                                        keyboardType: TextInputType.text,
                                        onSaved: (String? value) {
                                          // This optional block of code can be used to run
                                          // code when the user saves the form.
                                        },
                                        onChanged: (String? value) {
                                          print(communeEditingController.text);
                                          // This optional block of code can be used to run
                                          // code when the user saves the form.
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
                                        // ////////enabled:enabled,
                                        kController: professionEditingController,
                                        keyboardType: TextInputType.text,
                                        onSaved: (String? value) {
                                          // This optional block of code can be used to run
                                          // code when the user saves the form.
                                        },
                                        onChanged: (String? value) {
                                          print(professionEditingController.text);
                                          // This optional block of code can be used to run
                                          // code when the user saves the form.
                                        },

                                        topLabel: "Profession",

                                        hintText: "Entrer votre profession",
                                        // prefixIcon: FlutterIcons.chevron_left_fea,
                                      ),
                                    ),
                                    SizedBox(
                                      width: defaultPadding,
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
                                DropdownButtonFormField<String>(
                                  decoration: InputDecoration(
                                    labelText: 'Consultation payé?',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0)),
                                    contentPadding: EdgeInsets.all(10),
                                  ),
                                  value: consultationPayeValue,
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
                                      consultationPayeValue = newValue!;
                                    });
                                  },
                                  items: consultationPayeItems
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  })
                                      .toList(),
                                ),
                                SizedBox(height: 24.0),
                                // AppButton(
                                //   type: ButtonType.PRIMARY,
                                //   text: "Envoyer",
                                // ),
                                // SizedBox(height: 24.0),

                                //FIN DU DEUXIEME FORMULAIRE
                              ],
                            ) ,
                          ),
                        ),
                      ),
                    isActive: _index==0?true:false
                  ),
                  // les informations commune
                  Step(title: Text("Informations Communes"),
                      content:   Card(
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
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "INFORMATION COMMUNE",
                                          style: Theme.of(context).textTheme.headline6,
                                        ),
                                      ],
                                    ),
                                  ],
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
                                        onChanged: (String? newValue) {
                                        },
                                        items: casier
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
                                SizedBox(height: 24.0),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child:  DropdownButtonFormField <String>(
                                        decoration: InputDecoration(
                                          labelText: 'Votre passport est-il valide?',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(5.0)),
                                          contentPadding: EdgeInsets.all(10),
                                        ),
                                        value: passportValideValue,
                                        icon: const Icon(Icons.arrow_downward),
                                        iconSize: 24,
                                        elevation: 16,
                                        style: const TextStyle(
                                            color: Colors.deepPurple
                                        ),
                                        onChanged: (String? newValue) {
                                          print(newValue);
                                          setState(() {
                                            passportValideValue = newValue!;
                                          });
                                        },
                                        items: passportValideItems
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
                                    Visibility(
                                      visible: passportValideValue=="Oui"?true:false,
                                      child: Expanded(
                                        flex: 2,
                                        child:  InputWidget(
                                          // ////////enabled:enabled,
                                          kController:dateEditingController,
                                          keyboardType: TextInputType.datetime,
                                          onSaved: (String? value) {
                                            // This optional block of code can be used to run
                                            // code when the user saves the form.
                                          },

                                          onChanged: (String? value) {
                                            print(dateEditingController.text);
                                            // This optional block of code can be used to run
                                            // code when the user saves the form.
                                          },
                                          topLabel: "Quelle est la date d'expiration?",
                                          // hintText: "Entrer votre profession",
                                          // prefixIcon: FlutterIcons.chevron_left_fea,
                                        ),

                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(
                                  width: defaultPadding,
                                ),
                                SizedBox(height: 24.0),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,

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
                                    Expanded(
                                      flex: 2,
                                      child:  DropdownButtonFormField<String>(
                                        decoration: InputDecoration(
                                          labelText: 'Avez vous des enfants?',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(5.0)),
                                          contentPadding: EdgeInsets.all(10),
                                        ),
                                        value: enfantsValue,
                                        icon: const Icon(Icons.arrow_downward),
                                        iconSize: 24,
                                        elevation: 16,
                                        style: const TextStyle(
                                            color: Colors.deepPurple
                                        ),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            enfantsValue = newValue!;
                                          });
                                        },
                                        items: enfantsItems
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
                                SizedBox(height: 24.0),
                                Visibility(
                                    visible:enfantsValue=="Oui"?true:false,
                                  child: Expanded(
                                    flex: 2,
                                    child: InputWidget(
                                                // ////////enabled:enabled,
                                      kController: ageEnfantEditingController,
                                      keyboardType: TextInputType.number,
                                      onSaved: (String? value) {
                                        // This optional block of code can be used to run
                                        // code when the user saves the form.
                                      },
                                      onChanged: (String? value) {
                                        print(ageEnfantEditingController.text);
                                        // This optional block of code can be used to run
                                        // code when the user saves the form.
                                      },
                                      topLabel: "Quelle est l'age de vos des enfants?",
                                      hintText: "Entrer son age",
                                      // prefixIcon: FlutterIcons.chevron_left_fea,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 24.0),
                                Row(
                                    children: [
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
                                          value: typeVisa,
                                          icon: const Icon(Icons.arrow_downward),
                                          iconSize: 24,
                                          elevation: 16,
                                          style: const TextStyle(
                                              color: Colors.deepPurple
                                          ),

                                          onChanged: (String? newValue) {
                                            setState((){
                                              if(newValue=="visa permanant"){
                                                enabled=true;
                                              }else{
                                                enabled=false;
                                              }
                                              typeVisa=newValue!;
                                            });
                                          },
                                          items: visa
                                              .map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          })
                                              .toList(),
                                        ),
                                      ),
                                    ]
                                )
                                // bouton pur cocher
                                // Checkbox(value: selected, onChanged: (value){
                                //   setState(() {
                                //     selected =!selected;
                                //   });
                                // }),

                                // AppButton(
                                //   type: ButtonType.PRIMARY,
                                //   text: "Envoyer",
                                // ),
                                // SizedBox(height: 24.0),

                                //FIN DU DEUXIEME FORMULAIRE
                              ],
                            ) ,
                          ),
                        ),
                      ),
                      isActive: _index==1?true:false
                  ),
                  //VISA ETUDIANT
                  Step(title: Text("information specifique a la procedure de visa etudiant"),
                      content: Column(
                        children: [
                          Visibility(
                              visible: typeVisa=="Visa Etudiant",
                              child:Card(
                                color: secondaryColor,
                                elevation: 5,
                                margin: EdgeInsets.fromLTRB(32, 32, 64, 32),
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Form(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 24.0),
                                        Row(
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "FORMULAIRE VISA ETUDIANTS",
                                                  style: Theme.of(context).textTheme.headline6,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 24.0),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child:  InputWidget(
                                                // ////////enabled:enabled,
                                                kController: nomEditingController,
                                                keyboardType: TextInputType.text,
                                                onSaved: (String? value) {
                                                  // This optional block of code can be used to run
                                                  // code when the user saves the form.
                                                },
                                                onChanged: (String? value) {
                                                  print(nomEditingController.text);
                                                },

                                                topLabel: "Niveau d'etude",

                                                hintText: "Enter votre Niveau d'etude",
                                                // prefixIcon: FlutterIcons.chevron_left_fea,
                                              ),
                                            ),
                                            SizedBox(
                                              width: defaultPadding,
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child:  InputWidget(
                                                // ////////enabled:enabled,
                                                kController:prenomEditingController,
                                                keyboardType: TextInputType.text,
                                                onSaved: (String? value) {
                                                  // This optional block of code can be used to run
                                                  // code when the user saves the form.
                                                },
                                                onChanged: (String? value) {
                                                  print(prenomEditingController.text);
                                                  // This optional block of code can be used to run
                                                  // code when the user saves the form.
                                                },
                                                topLabel: "Domaine d'Etude",
                                                hintText: "Entrer votre Domaine d'Etude",
                                                // prefixIcon: FlutterIcons.chevron_left_fea,
                                              ),),
                                          ],
                                        ),
                                        SizedBox(height: 24.0),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child:  DropdownButtonFormField <String>(
                                                decoration: InputDecoration(
                                                  labelText: 'Allez Vous Etudiez dans le meme Domaine?',
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
                                                items: domaineEtude
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
                                                  labelText: "Avez vous fait une demande  de permis d'etude?",
                                                  border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(5.0)),
                                                  contentPadding: EdgeInsets.all(10),
                                                ),
                                                value: permisEtudeValue,
                                                icon: const Icon(Icons.arrow_downward),
                                                iconSize: 24,
                                                elevation: 16,
                                                style: const TextStyle(
                                                    color: Colors.deepPurple
                                                ),
                                              onChanged: (String? newValue) {
                                                print(newValue);
                                                setState(() {
                                                  permisEtudeValue = newValue!;
                                                });
                                              },
                                                items: permisEtudeItems
                                                    .map<DropdownMenuItem<String>>((String value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                })
                                                    .toList(),
                                              ), // prefixIcon: FlutterIcons.chevron_left_fea,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 24.0),
                                        Visibility(
                                            visible:permisEtudeValue=="Oui"?true:false,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child:  InputWidget(
                                                  // ////////enabled:enabled,
                                                  kController: nomEcoleEditingController,
                                                  keyboardType: TextInputType.text,
                                                  onSaved: (String? value) {
                                                    // This optional block of code can be used to run
                                                    // code when the user saves the form.
                                                  },
                                                  onChanged: (String? value) {
                                                    print(nomEcoleEditingController.text);
                                                  },

                                                  topLabel: " si oui quel es le noms de cet etablissement?",

                                                  hintText: "ENSPD",
                                                  // prefixIcon: FlutterIcons.chevron_left_fea,
                                                ),
                                              ),
                                              SizedBox(
                                                width: defaultPadding,
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child:  InputWidget(
                                                  // ////////enabled:enabled,
                                                  kController: priviceEtudeEditingController,
                                                  keyboardType: TextInputType.text,
                                                  onSaved: (String? value) {
                                                    // This optional block of code can be used to run
                                                    // code when the user saves the form.
                                                  },
                                                  onChanged: (String? value) {
                                                    print(priviceEtudeEditingController.text);
                                                  },

                                                  topLabel: "Dans quelle prvince allez vous etudie?",

                                                  hintText: "Quebec",
                                                  // prefixIcon: FlutterIcons.chevron_left_fea,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        // bouton pur cocher
                                        // Checkbox(value: selected, onChanged: (value){
                                        //   setState(() {
                                        //     selected =!selected;
                                        //   });
                                        // }),
                                        SizedBox(height: 24.0),
                                        Row(
                                          children: [
                                            Expanded(
                                            flex: 2,
                                            child:
                                            InputWidget(
                                              // ////////enabled:enabled,
                                              kController: garantEditingController,
                                              keyboardType: TextInputType.text,
                                              onSaved: (String? value) {
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              onChanged: (String? value) {
                                                print(garantEditingController.text);
                                              },
                                              topLabel: "Qui paiera vos frais de scolarité et de subsistance?",

                                              hintText: "Monsieur DEMSONG",
                                              // prefixIcon: FlutterIcons.chevron_left_fea,
                                            ),
                                          ),
                                            SizedBox(
                                              width: defaultPadding,
                                            ),
                                           Expanded(
                                             flex:2,
                                             child: InputWidget(
                                               // ////////enabled:enabled,
                                               kController: nomGarantEditingController,
                                               keyboardType: TextInputType.text,
                                               onSaved: (String? value) {
                                                 // This optional block of code can be used to run
                                                 // code when the user saves the form.
                                               },
                                               onChanged: (String? value) {
                                                 print(nomGarantEditingController.text);
                                               },
                                               topLabel: "Quel est sont Nom, sa profession et son pays de residence?",

                                               hintText: "Monsieur DEMSONG , C-SAF A Bafia, Cameroun",
                                               // prefixIcon: FlutterIcons.chevron_left_fea,
                                             ),
                                           )
                                          ],
                                        ),
                                        SizedBox(height: 24.0),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child:  DropdownButtonFormField <String>(
                                                decoration: InputDecoration(
                                                  labelText: 'Serez vous accompagné par un membre de votre famille ?',
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
                                                items: accompagnateur
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
                                                  labelText: "Parlez vous d'autres langues ?",
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
                                                items: langue
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
                                        SizedBox(height: 24.0),
                                        // Row(
                                        //   children: [
                                        //     Expanded(
                                        //       flex: 2,
                                        //       child:  InputWidget(
                                        //         // ////////enabled:enabled,
                                        //         kController:langeParlerEditingController,
                                        //         keyboardType: TextInputType.text,
                                        //         onSaved: (String? value) {
                                        //           // This optional block of code can be used to run
                                        //           // code when the user saves the form.
                                        //         },
                                        //         onChanged: (String? value) {
                                        //           print(langeParlerEditingController.text);
                                        //           // This optional block of code can be used to run
                                        //           // code when the user saves the form.
                                        //         },
                                        //         topLabel: "Quelle es cette langue?",
                                        //         hintText: "Francais et Yemba",
                                        //         // prefixIcon: FlutterIcons.chevron_left_fea,
                                        //       ),),
                                        //
                                        //     SizedBox(
                                        //       width: defaultPadding,
                                        //     ),
                                        //     Expanded(
                                        //       flex: 2,
                                        //       child:  DropdownButtonFormField <String>(
                                        //         decoration: InputDecoration(
                                        //           labelText: 'Avez vous déjà fait un test de connaissances linguistiques ?',
                                        //           border: OutlineInputBorder(
                                        //               borderRadius: BorderRadius.circular(5.0)),
                                        //           contentPadding: EdgeInsets.all(10),
                                        //         ),
                                        //         icon: const Icon(Icons.arrow_downward),
                                        //         iconSize: 24,
                                        //         elevation: 16,
                                        //         style: const TextStyle(
                                        //             color: Colors.deepPurple
                                        //         ),
                                        //         onChanged: (String? newValue) {                                },
                                        //         items: testLangue
                                        //             .map<DropdownMenuItem<String>>((String value) {
                                        //           return DropdownMenuItem<String>(
                                        //             value: value,
                                        //             child: Text(value),
                                        //           );
                                        //         })
                                        //             .toList(),
                                        //       ), // prefixIcon: FlutterIcons.chevron_left_fea,
                                        //
                                        //
                                        //     ),
                                        //   ],
                                        // ),
                                        //FIN DU DEUXIEME FORMULAIRE
                                      ],
                                    ) ,
                                  ),
                                ),
                              ),)
                        ],
                      ),
                      isActive: _index==2?true:false
                  ),
                  Step(title: Text(" Information propre a la procedure de visa travailleur Qualifier avec residence permanente"),
                      content: Column(
                        children: [
                          Visibility(
                            visible: typeVisa=="Visa Travailleur Permanent",
                            child:Card(
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
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "FORMULAIRE VISA TRAVAILLEUR QUALIFIER AVEC RESIDENCE PERMANENTE",
                                                style: Theme.of(context).textTheme.headline6,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 24.0),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child:  InputWidget(
                                              ////////enabled:enabled,
                                              kController: niveauEnfantEditingController,
                                              keyboardType: TextInputType.text,
                                              onSaved: (String? value) {
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              onChanged: (String? value) {
                                                print(niveauEnfantEditingController.text);
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              topLabel: "Quel est le niveau scolaire de vos enfants?",

                                              hintText: "Cep, Bacc, Master 2 et doctorat",
                                              // prefixIcon: FlutterIcons.chevron_left_fea,
                                            ),
                                          ),
                                          SizedBox(
                                            width: defaultPadding,
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child:  InputWidget(
                                              ////////enabled:enabled,
                                              kController: anneeExperienceEditingController,
                                              keyboardType: TextInputType.number,
                                              onSaved: (String? value) {
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              onChanged: (String? value) {
                                                print(anneeExperienceEditingController.text);
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              topLabel: "Quelle est le nombres d'années d'experience professionel?",
                                              hintText: "10 ans",
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
                                              // value: emploieok,
                                              icon: const Icon(Icons.arrow_downward),
                                              iconSize: 24,
                                              elevation: 16,
                                              style: const TextStyle(
                                                  color: Colors.deepPurple
                                              ),

                                              onChanged: (String? newValue) {
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
                                      //caracteristique de l'epoux....
                                      Row(
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "CONJOINT/ EPOUX/ EPOUSE  ",
                                                style: Theme.of(context).textTheme.headline6,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 24.0),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child:  InputWidget(
                                              ////////enabled:enabled,
                                              kController: niveauCompagnonEditingController,
                                              keyboardType: TextInputType.text,
                                              onSaved: (String? value) {
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              onChanged: (String? value) {
                                                print(niveauCompagnonEditingController.text);
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              topLabel: "Quel est son niveau de scolarité de votre compagnons? ?",
                                              hintText: "Licence en informatique",
                                              // prefixIcon: FlutterIcons.chevron_left_fea,
                                            ),
                                          ),
                                          SizedBox(
                                            width: defaultPadding,),
                                          Expanded(
                                            flex: 2,
                                            child:  InputWidget(
                                              ////////enabled:enabled,
                                              kController: domaineConcerneEditingController,
                                              keyboardType: TextInputType.text,
                                              onSaved: (String? value) {
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              onChanged: (String? value) {
                                                print(domaineConcerneEditingController.text);
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              topLabel: "Quel est le domaine de formation de votre compagnons?",
                                              hintText: "Informatique option logiciel",
                                              // prefixIcon: FlutterIcons.chevron_left_fea,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 24.0),

                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child:  InputWidget(
                                              ////////enabled:enabled,
                                              kController: ageCompagneEditingController,
                                              keyboardType: TextInputType.text,
                                              onSaved: (String? value) {
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              onChanged: (String? value) {
                                                print(ageCompagneEditingController.text);
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              topLabel: "Quel est votre l'âge de votra compagnons ?",
                                              hintText: "26 ans",
                                              // prefixIcon: FlutterIcons.chevron_left_fea,
                                            ),
                                          ),
                                          SizedBox(
                                            width: defaultPadding,),
                                        ],
                                      ),
                                      SizedBox(height: 24.0),
                                      //connaissance linguistique
                                      Row(
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "CONNAISSANCES LINGUISTIQUES  ",
                                                style: Theme.of(context).textTheme.headline6,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 24.0),
                                      Row(
                                        children: [
                                          Expanded(
                                            child:  DropdownButtonFormField <String>(
                                              decoration: InputDecoration(
                                                labelText: 'Quel est votre niveau en francais',
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

                                              onChanged: (String? newValue) {
                                              },
                                              items: francais
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
                                          Expanded(
                                            child:  DropdownButtonFormField <String>(
                                              decoration: InputDecoration(
                                                labelText: 'Quel est votre niveau en anglais',
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

                                              onChanged: (String? newValue) {                              },
                                              items: anglais
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
                                      // AppButton(
                                      //   type: ButtonType.PRIMARY,
                                      //   text: "Envoyer",
                                      // ),
                                      // SizedBox(height: 24.0),

                                      //FIN DU DEUXIEME FORMULAIRE
                                    ],
                                  ) ,
                                ),
                              ),
                            ),)
                        ],
                      ),
                      isActive: _index==3?true:false
                      ),
                  Step(title: Text("Information specifique a la procedure de visa visiteur"),
                      content: Column(
                        children: [
                          Visibility(
                            visible: typeVisa=="Visa Visiteur",
                            child:Card(
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
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "FORMULAIRE VISA VISITEUR",
                                                style: Theme.of(context).textTheme.headline6,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 24.0),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child:  InputWidget(
                                              ////////enabled:enabled,
                                              kController: raisonEditingController,
                                              onSaved: (String? value) {
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              onChanged: (String? value) {
                                                print(raisonEditingController.text);
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },

                                              topLabel: "Quelle est la raison de  votre voyage ?",

                                              hintText: "je part me detendre",
                                              // prefixIcon: FlutterIcons.chevron_left_fea,
                                            ),
                                          ),
                                          SizedBox(
                                            width: defaultPadding,
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child:  InputWidget(
                                              ////////enabled:enabled,
                                              kController: dureeSejourEditingController,
                                              keyboardType: TextInputType.emailAddress,
                                              onSaved: (String? value) {
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              onChanged: (String? value) {
                                                print(dureeSejourEditingController.text);
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              topLabel: "Pendant combien de temps comptez vous rester au Canada ? ",
                                              hintText: "3 mois",
                                              // prefixIcon: FlutterIcons.chevron_left_fea,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 24.0),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child:  DropdownButtonFormField <String>(
                                              decoration: InputDecoration(
                                                labelText: 'Avez vous déjà visité le Canada ? ',
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
                                              items: visiteAnterieur
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
                                                labelText: 'Avez vous déjà vécu au Canada en tant que résident permanent ?',
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
                                              items: vieAnterieur
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
                                      SizedBox(height: 24.0),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child:  InputWidget(
                                              ////////enabled:enabled,
                                              kController: provinceDestinationEditingController,
                                              keyboardType: TextInputType.emailAddress,
                                              onSaved: (String? value) {
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              onChanged: (String? value) {
                                                print(provinceDestinationEditingController.text);
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              topLabel: "Quel est votre province de destination ? ",

                                              hintText: "Quebec",
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
                                                labelText: "Serez vous accompagné au canada par quelqu'un ?",
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
                                              items: compagne
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

                                    ],
                                  ) ,
                                ),
                              ),
                            ),)
                        ],
                      ),
                      isActive: _index==4?true:false
                  ),
                  Step(title: Text("Information specifique a la procedure visa travailleur temporaire"),
                      content: Column(
                        children: [
                          Visibility(
                            visible: typeVisa=="visa Travailleur Temporaire",
                            child:Card(
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
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "FORMULAIRE VISA TRAVAILLEUR TEMPORAIRE",
                                                style: Theme.of(context).textTheme.headline6,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 24.0),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child:  InputWidget(
                                              // ////////enabled:enabled,
                                              kController: domaineTravailEditingController,
                                              keyboardType: TextInputType.text,
                                              onSaved: (String? value) {
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              onChanged: (String? value) {
                                                print(domaineTravailEditingController.text);
                                              },

                                              topLabel: "Quel est votre profession/domaine de travail ?",

                                              hintText: "Informaticient",
                                              // prefixIcon: FlutterIcons.chevron_left_fea,
                                            ),
                                          ),
                                          SizedBox(
                                            width: defaultPadding,
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child:  InputWidget(
                                              // ////////enabled:enabled,
                                              kController:tempExerceEditingController,
                                              keyboardType: TextInputType.text,
                                              onSaved: (String? value) {
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              onChanged: (String? value) {
                                                print(tempExerceEditingController.text);
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              topLabel: "Depuis combien de temps ?",
                                              hintText: "6  mois",
                                              // prefixIcon: FlutterIcons.chevron_left_fea,
                                            ),),
                                        ],
                                      ),
                                      SizedBox(height: 24.0),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                              child:  DropdownButtonFormField <String>(
                                                decoration: InputDecoration(
                                                  labelText: 'Avez vous une attestation de travail, bulletin de salaire et tous les autres documents relatifs à votre emploi?',
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
                                                items: attestationTravail
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
                                                labelText: "Avez vous déjà entamé une procédure d'immigration au Canada ?",
                                                border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(5.0)),
                                                contentPadding: EdgeInsets.all(10),
                                              ),
                                              value: preProcess,
                                              icon: const Icon(Icons.arrow_downward),
                                              iconSize: 24,
                                              elevation: 16,
                                              style: const TextStyle(
                                                  color: Colors.deepPurple
                                              ),
                                              onChanged: (String? newValue) {
                                                print(newValue);
                                                setState(() {
                                                  preProcess = newValue!;
                                                });
                                              },
                                              items: preProcedure
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
                                      SizedBox(height: 24.0),

                                      Visibility(
                                          visible:preProcess=="Oui"?true:false,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child:  InputWidget(
                                              // enabled:enabled,
                                                kController: datePreProcedureEditingController,
                                                keyboardType: TextInputType.text,
                                                onSaved: (String? value) {
                                                  // This optional block of code can be used to run
                                                  // code when the user saves the form.
                                                },
                                                onChanged: (String? value) {
                                                  print(datePreProcedureEditingController.text);
                                                  // This optional block of code can be used to run
                                                  // code when the user saves the form.
                                                },

                                                topLabel: "Si oui depuis quand ?",

                                                hintText: "depuis 3 ans",
                                                // prefixIcon: FlutterIcons.chevron_left_fea,
                                              ),
                                            ),
                                            SizedBox(
                                              width: defaultPadding,
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child:  InputWidget(
                                                // ////////enabled:enabled,
                                                kController: programmePreProcedureEditingController,
                                                keyboardType: TextInputType.text,
                                                onSaved: (String? value) {
                                                  // This optional block of code can be used to run
                                                  // code when the user saves the form.
                                                },
                                                onChanged: (String? value) {
                                                  print(programmePreProcedureEditingController.text);
                                                  // This optional block of code can be used to run
                                                  // code when the user saves the form.
                                                },

                                                topLabel: "Quel programme et quelle a été la décision ?",

                                                hintText: "visa etudiant",
                                                // prefixIcon: FlutterIcons.chevron_left_fea,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 24.0),

                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child:  DropdownButtonFormField <String>(

                                              decoration: InputDecoration(
                                                labelText: "Avez vous une offre d'emploi d'un employeur Canadien ?",
                                                border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(5.0)),
                                                contentPadding: EdgeInsets.all(10),
                                              ),
                                              // enableFeedback: enabled,
                                              icon: const Icon(Icons.arrow_downward),
                                              iconSize: 24,
                                              elevation: 16,
                                              style: const TextStyle(
                                                  color: Colors.deepPurple
                                              ),
                                              onChanged: (String? newValue) {  },

                                              items: offreEmploieCanadien
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
                                                labelText: "Avez vous un diplôme d'études (secondaire, professionnel, universitaire ) ?",
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
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                });
                                              },
                                              items: diplomeEtude
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
                                              ////////enabled:enabled,
                                              kController:anneeDiplomeEditingController,
                                              keyboardType: TextInputType.datetime,
                                              onSaved: (String? value) {
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              onChanged: (String? value) {
                                                print(anneeDiplomeEditingController.text);
                                                // This optional block of code can be used to run
                                                // code when the user saves the form.
                                              },
                                              topLabel: "Si oui, quelle est l'année d'obtention du diplôme ? ",
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
                                                labelText: 'Avez vous un membre de votre famille déjà au Canada?',
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
                                              onChanged: (String? newValue) {
                                              },
                                              items: familleAcceuil
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

                                            child:  DropdownButtonFormField <String>(
                                              decoration: InputDecoration(
                                                labelText: 'Comptez vous immigrer seul(e) ou en famille ?',
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
                                              items: compagneImmigration
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
                                                labelText: "Parlez vous d'autres langues à part le français?",
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
                                              onChanged: (String? newValue) {
                                              },
                                              items: langueQuestion
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
                                            child:  DropdownButtonFormField<String>(
                                              decoration: InputDecoration(
                                                labelText: "Avez vous fait un test de connaissances linguistiques?",
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
                                              onChanged: (String? newValue) {
                                              },
                                              items: tcl
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
                                    ],
                                  ) ,
                                ),
                              ),
                            ),)
                        ],
                      ),
                      isActive: _index==5?true:false
                  ),
                ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
