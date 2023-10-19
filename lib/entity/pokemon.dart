class Pokemon {
  late int id;
  late Name name;
  late List<String> type;
  late Base base;

  Pokemon({
    required this.id,
    required this.name,
    required this.type,
    required this.base,
  });

  Pokemon.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = Name.fromJson(json["name"]);
    type = List<String>.from(json["type"]);
    base = Base.fromJson(json["base"]);
  }
}

class Base {
  late int hp;
  late int attack;
  late int defense;
  late int spAttack;
  late int spDefense;
  late int speed;

  Base({
    required this.hp,
    required this.attack,
    required this.defense,
    required this.spAttack,
    required this.spDefense,
    required this.speed,
  });

  Base.fromJson(Map<String, dynamic> json) {
    hp = json["HP"];
    attack = json["Attack"];
    defense = json["Defense"];
    spAttack = json["Sp. Attack"];
    spDefense = json["Sp. Defense"];
    speed = json["Speed"];
  }
}

class Name {
  late String english;
  late String japanese;
  late String chinese;
  late String french;

  Name({
    required this.english,
    required this.japanese,
    required this.chinese,
    required this.french,
  });

  Name.fromJson(Map<String, dynamic> json) {
    english = json["english"];
    japanese = json["japanese"];
    chinese = json["chinese"];
    french = json["french"];
  }
}
