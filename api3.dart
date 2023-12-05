import 'dart:convert';

String data = """[
  {"id": 1, "name": "Ram"},
  {"id": 2, "name": "Shyam"},
  {"id": 3, "name": "Har"}
]""";

class DataModel {
  int id;
  String name;
  DataModel({required this.id, required this.name});
}

void main() {
  List<dynamic> list = jsonDecode(data);
  List<DataModel> dataModel = [];
  for (int i = 0; i < list.length; i++) {
    dataModel.add(DataModel(id: list[i]["id"], name: list[i]["name"]));
  }
  print("Data Model: ");
  for (int i = 0; i < dataModel.length; i++) {
    print("""
    id: ${dataModel[i].id}
    name: ${dataModel[i].name}

    """);
  }
}
