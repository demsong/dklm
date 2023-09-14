class Clients {
  final String nom;
  final String prenom;
  final String commune;
  final String profession;
  final String sexe;
  final String typeVisa;
  final String consultation;
  final String statutMatrimonial;
  final String passport;
  final String datePasseport;
  final String casier;
  final String sante;
  final String enfant;
  final String ageEnfant;
  final String niveauConcerne;
  final String anneeExperienceConcerne;
  final String emploievalide;
  final String niveauCompagnons;
  final String domaineCompagnon;
  final String ageConcerne;
  final String francais;
  final String anglais;
  final String niveauEnfant;
  final String niveauSolaireEnfant;



  final String raison;
  final String dureSejour;
  final String visiteAnterieur;
  final String vieAnterieur;
  final String province;
  final String compage;



  final String domaineTravail;
  final String tempExerce;
  final String attestationTravail;
  final String preProcedure;
  final String datePreProcedure;
  final String programmePreProcedure;
  final String offreEmploieCanadien;
  final String diplomeEtude;
  final String anneeDiplome;

  final String familleAcceuil;
  final String compagneImmigration;
  final String langueQuestion;
  final String tcl;


  static final columns = [
  "nom",
  "prenom",
  "commune",
  "profession",
  "sexe",
  "typeVisa",
  "consultation",
  "statutMatrimonial",
  "passport",
  "datePasseport",
  "casier",
  "sante",
  "enfant",
  "ageEnfant",
  "niveauConcerne",
  "anneeExperienceConcerne",
  "emploievalide",
  "niveauCompagnons",
  "domaineCompagnon",
  "ageConcerne",
  "francais",
  "anglais",
  "niveauEnfant",
  "niveauSolaireEnfant",



  "raison",
  "dureSejour",
  "visiteAnterieur",
  "vieAnterieur",
  "province",
  "compage",



  "domaineTravail",
  "tempExerce",
  "attestationTravail",
  "preProcedure",
  "datePreProcedure",
  "programmePreProcedure",
  "offreEmploieCanadien",
  "diplomeEtude",
  "anneeDiplome",

  "familleAcceuil",
  "compagneImmigration",
  "langueQuestion",
  "tcl",
  ];
  Clients(
  this.nom,
  this.prenom,
  this.commune,
  this.profession,
  this.sexe,
  this.typeVisa,
  this.consultation,
  this.statutMatrimonial,
  this.passport,
  this.datePasseport,
  this.casier,
  this.sante,
  this.enfant,
  this.ageEnfant,
  this.niveauConcerne,
  this.anneeExperienceConcerne,
  this.emploievalide,
  this.niveauCompagnons,
  this.domaineCompagnon,
  this.ageConcerne,
  this.francais,
  this.anglais,
  this.niveauEnfant,
  this.niveauSolaireEnfant,



  this.raison,
  this.dureSejour,
  this.visiteAnterieur,
  this.vieAnterieur,
  this.province,
  this.compage,



  this.domaineTravail,
  this.tempExerce,
  this.attestationTravail,
  this.preProcedure,
  this.datePreProcedure,
  this.programmePreProcedure,
  this.offreEmploieCanadien,
  this.diplomeEtude,
  this.anneeDiplome,

  this.familleAcceuil,
  this.compagneImmigration,
  this.langueQuestion,
  this.tcl,
      );

  factory Clients.fromMap(Map<String, dynamic> data) {
    return Clients(
    data ['nom'],
    data ['prenom'],
    data ['commune'],
    data ['profession'],
    data ['sexe'],
    data  ['typeVisa'],
    data ["consultation"],
    data ["tatutMatrimonial"],
    data ["passport"],
    data ["datePasseport"],
    data ["casier"],
    data ["sante"],
    data ["enfant"],
    data ["ageEnfant"],
    data ["niveauConcerne"],
    data ["anneeExperienceConcerne"],
    data ["emploievalide"],
    data ["niveauCompagnons"],
    data ["domaineCompagnon"],
    data ["ageConcerne"],
    data ["francais"],
    data ["anglais"],
    data ["niveauEnfant"],
    data ["niveauSolaireEnfant"],



    data ["raison"],
    data ["dureSejour"],
    data ["visiteAnterieur"],
    data ["vieAnterieur"],
    data ["province"],
    data ["compage"],



    data ["domaineTravail"],
    data ["tempExerce"],
    data ["attestationTravail"],
    data ["preProcedure"],
    data ["datePreProcedure"],
    data ["programmePreProcedure"],
    data ["offreEmploieCanadien"],
    data ["diplomeEtude"],
    data ["anneeDiplome"],

    data ["familleAcceuil"],
    data ["compagneImmigration"],
    data ["langueQuestion"],
    data ["tcl"],
    );
  }

  Map<String, dynamic> toMap() => {
    "nom":nom,
    "prenom":prenom,
    "commune":commune,
    "profession":profession,
    "sexe":sexe,
    "typeVisa":typeVisa,
    "consultation":consultation ,
    "statutMatrimonial": statutMatrimonial,
    "passport":passport ,
    "datePasseport": datePasseport,
    "casier":casier ,
    "sante": sante,
    "enfant": enfant,
    "ageEnfant":ageEnfant ,
    "niveauConcerne":niveauConcerne ,
    "anneeExperienceConcerne":anneeExperienceConcerne ,
    "emploievalide": emploievalide,
    "niveauCompagnons": niveauCompagnons,
    "domaineCompagnon":domaineCompagnon ,
    "ageConcerne":ageConcerne ,
    "francais":francais ,
    "anglais":anglais ,
    "niveauEnfant": niveauEnfant,
    "niveauSolaireEnfant":niveauSolaireEnfant ,



    "raison": raison,
    "dureSejour": dureSejour,
    "visiteAnterieur": visiteAnterieur,
    "vieAnterieur":vieAnterieur ,
    "province":province ,
    "compage": compage,



    "domaineTravail": domaineTravail,
    "tempExerce":tempExerce ,
    "attestationTravail": attestationTravail,
    "preProcedure": preProcedure,
    "datePreProcedure":datePreProcedure ,
    "programmePreProcedure":programmePreProcedure ,
    "offreEmploieCanadien":offreEmploieCanadien ,
    "diplomeEtude":diplomeEtude ,
    "anneeDiplome": anneeDiplome,

    "familleAcceuil": familleAcceuil,
    "compagneImmigration": compagneImmigration,
    "langueQuestion":langueQuestion ,
    "tcl": tcl,
  };
}