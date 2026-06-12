import 'package:flutter/material.dart';
import 'package:whats_app_clone/chat_summary_widget.dart';
import 'package:whats_app_clone/custom_search_widget.dart';
import 'package:whats_app_clone/models/chat_data_model.dart';
import 'package:whats_app_clone/screens/chat_details_screen.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({super.key});

  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  // القائمة الكاملة المحدثة بـ 6 محادثات
  List<ChatDataModel> chatList = [
    ChatDataModel(name: "Ali", imagePath: "assets/images/image_1.jpg", time: "10:30 ص", lastMessage: "", mssgCount: 4),
    ChatDataModel(name: "Said", imagePath: "assets/images/image_2.jpg", time: "09:20 ص", lastMessage: "", mssgCount: 1),
    ChatDataModel(name: "بابا", imagePath: "assets/images/image_1.jpg", time: "12:18 م", lastMessage: "", mssgCount: 2),
    ChatDataModel(name: "عمتي", imagePath: "assets/images/image_2.jpg", time: "02:47 م", lastMessage: "", mssgCount: 1),
    ChatDataModel(name: "المدير", imagePath: "assets/images/image_1.jpg", time: "04:45 م", lastMessage: "", mssgCount: 3),
    ChatDataModel(name: "مندوب الدفعة", imagePath: "assets/images/image_2.jpg", time: "06:25 م", lastMessage: "", mssgCount: 5),
  ];

  int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: CustomSearchWidget()),
        leadingWidth: 100,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Row(
            children: [
              Icon(Icons.more_vert, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.camera_alt_outlined, color: Colors.white)
            ],
          ),
        ),
        title: Container(
          padding: const EdgeInsets.only(right: 16.0),
          alignment: Alignment.centerRight,
          child: const Text(
            "واتساب",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          final userMessages = ChatDetailsScreen.getInitialMessages(chatList[index].name);
          final finalLastMessage = userMessages.isNotEmpty ? userMessages.last['message']! : chatList[index].lastMessage;
          final finalTime = userMessages.isNotEmpty ? userMessages.last['time']! : chatList[index].time;

          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChatDetailsScreen(
                            name: chatList[index].name,
                            imagePath: chatList[index].imagePath,
                          ))).then((_) {
                            setState(() {});
                          });
            },
            child: ChatSummaryWidget(
              name: chatList[index].name,
              lastMessage: finalLastMessage,
              time: finalTime,
              imagePath: chatList[index].imagePath,
              mssgCount: chatList[index].mssgCount,
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.green,
          backgroundColor: Colors.black,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "المكالمات"),
            BottomNavigationBarItem(icon: Icon(Icons.groups_3_outlined), label: "المجتمعات"),
            BottomNavigationBarItem(icon: Icon(Icons.refresh), label: "التحديثات"),
            BottomNavigationBarItem(icon: Icon(Icons.comment), label: "الدردشات"),
          ]),
    );
  }
}