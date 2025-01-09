import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/message_provider.dart';
import '../widgets/message_list_tile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Messages")),
      body: Consumer<MessageProvider>(
        builder: (context, messageProvider, _) {
          if (messageProvider.messages.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: messageProvider.messages.length,
            itemBuilder: (context, index) {
              return MessageListTile(message: messageProvider.messages[index]);
            },
          );
        },
      ),
    );
  }
}
