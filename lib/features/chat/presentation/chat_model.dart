class ChatModel {
  final String name;
  final String image;
  final String text;
  ChatModel(this.text, this.name, this.image);

  factory ChatModel.fromJson(jsonData) {
    return ChatModel(
        jsonData["image"], jsonData["name"], jsonData["msgs"][0]["txt"]);
  }
}
