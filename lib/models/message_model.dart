class Message {
  final int id;
  final String text;
  final String sender;

  Message({required this.id, required this.text, required this.sender});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      text: json['text'],
      sender: json['sender'],
    );
  }
}
