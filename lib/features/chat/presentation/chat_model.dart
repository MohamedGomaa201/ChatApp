final Map<int, List<Map<String, String>>> chatData = {
  0: [
    {"name": "Mohamed Gamal", "msg": "bla bla bla"}
  ],
  1: [
    {"name": "Ahmed Adel", "msg": "bla bla bla"}
  ],
  2: [
    {"name": "Abdo Amr", "msg": "bla bla bla"}
  ],
  3: [
    {"name": "Sokkar", "msg": "bla bla bla"}
  ],
  4: [
    {"name": "Gemy", "msg": "bla bla bla"}
  ],
};

class ChatModel {
  final String text;
  ChatModel(this.text);

  factory ChatModel.fromJson(jsonData) {
    return ChatModel(jsonData["image"]);
  }
}
