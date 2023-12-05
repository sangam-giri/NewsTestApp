import 'dart:convert';

String testApi = """[
  {"id": 1, "name": "Ram"},
  {"id": 2, "name": "Shyam"},
  {"id": 3, "name": "Hari"},
  {"id": 4, "name": "Babita"}
]""";

void main() {
  List<dynamic> myList = jsonDecode(testApi);
  for (int i = 0; i < myList.length; i++) {
    print("""

Id: ${myList[i]["id"]}
Name: ${myList[i]["name"]}

""");
  }
}
