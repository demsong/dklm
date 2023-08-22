class Clients {
  final int nom;
  final String prenom;
  final String commune;
  final String profession;
  final String sexe;
  final String typeVisa;

  static final columns = [
  "nom",
  "prenom",
  "commune",
  "profession",
  "sexe",
  "typeVisa",
  ];
  Clients(
  this.nom,
  this.prenom,
  this.commune,
  this.profession,
  this.sexe,
  this.typeVisa,
      );

  factory Clients.fromMap(Map<String, dynamic> data) {
    return Clients(
      data ['nom'],
    data ['prenom'],
    data ['commune'],
      data ['profession'],
      data ['sexe'],
      data  ['typeVisa'],
    );
  }

  Map<String, dynamic> toMap() => {
    "nom":nom,
    "prenom":prenom,
    "commune":commune,
    "profession":profession,
    "sexe":sexe,
    "typeVisa":typeVisa,
  };
}