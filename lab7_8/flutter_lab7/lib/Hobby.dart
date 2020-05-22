class Hobby {
  int id;
  String name;
  Hobby(this.id, this.name);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'name': name,
    };
    return map;
  }

  Hobby.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
  }
}