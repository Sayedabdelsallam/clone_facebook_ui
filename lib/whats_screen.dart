import 'package:flutter/material.dart';

class WhatsScreen extends StatelessWidget {
  const WhatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF168C4B),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/back.png'),
            ),
            SizedBox(width: 10),
            Text(
              "Sayed",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.videocam_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/back.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(8.0),
                  children: [
                    messageBubble("Hello", true),
                    messageBubble("Hello", false),
                    messageBubble("How are you?", true),
                    messageBubble("I'm good, thanks!", false),
                    messageBubble("Hello amr ", false),
                    messageBubble("Hello", false),
                    messageBubble(
                        "Hey! Have you ever thought"
                            " about how random moments"
                            " can sometimes turn into "
                            "the best memories? It’s like "
                            "the universe loves to surprise"
                            " us when we least expect it!",
                        true)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        autocorrect: true,
                        enableSuggestions: true,
                        textInputAction: TextInputAction.send,
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.send_outlined,
                              color: Colors.black,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                          hintText: "Type a Message ...",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xFF168C4B),
                      child: IconButton(
                        icon: Icon(Icons.mic_none_outlined,
                            color: Colors.white, size: 30),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget messageBubble(String message, bool isSentByMe) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 15),
        decoration: BoxDecoration(
          color: isSentByMe ? Color(0xFF232D36) : Color(0xFF168C4B),
          borderRadius: isSentByMe
              ? BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          )
              : BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

}
