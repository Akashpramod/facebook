import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String userImages;
  final String userName;

  const ChatPage({required this.userImages, required this.userName});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<String> _messages = [];
  TextEditingController _textEditingController = TextEditingController();

  void _sendMessage(String message) {
    if (message.isNotEmpty) {
      setState(() {
        _messages.add(message);
      });
      _textEditingController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            
            CircleAvatar(
              backgroundImage: NetworkImage(widget.userImages),
              radius: 13,
                        ),
            SizedBox(width: 8.0,),
            Text(widget.userName, style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15),),
          
          ],  
        ),
        actions: [
          IconButton(onPressed: () {} , icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call))
        ],
        
        
      ),
      body: Column(
        children: [
        
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    _sendMessage(_textEditingController.text);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
