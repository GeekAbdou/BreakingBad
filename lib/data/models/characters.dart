class Characters {
  late int charId;
  late String name;
  late String birthday;
  late List<String> occupation;
  late String img;
  late String status;
  late String nickname;
  late List<int> appearance;
  late String actorName;
  late String category;
  late List<dynamic> betterCallSaulAppearance;

  Characters.fromJson(Map<String, dynamic> json) {
    charId = json['char_id'];
    name = json['name'];
    birthday = json['birthday'];
    occupation = json['occupation'].cast<String>();
    img = json['img'];
    status = json['status'];
    nickname = json['nickname'];
    appearance = json['appearance'].cast<int>();
    actorName = json['portrayed'];
    category = json['category'];
    betterCallSaulAppearance = json['better_call_saul_appearance'] ;
    }
}
