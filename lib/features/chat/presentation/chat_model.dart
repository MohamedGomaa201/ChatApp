class ChatModel {
  final String name;
  final String image;
  final List msgs;
  ChatModel({required this.name, required this.image, required this.msgs});

  factory ChatModel.fromJson(jsonData) {
    return ChatModel(
      name: jsonData["name"],
      image: jsonData["image"],
      msgs: jsonData["msgs"],
    );
  }
}
