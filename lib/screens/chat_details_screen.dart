import 'package:flutter/material.dart';

class ChatDetailsScreen extends StatefulWidget {
  const ChatDetailsScreen({super.key, required this.name, required this.imagePath});
  final String name;
  final String imagePath;

  static List<Map<String, String>> getInitialMessages(String userName) {
    String formattedName = userName.trim().toLowerCase();

    if (formattedName == "ali") {
      return [
        {"message": "أهلاً علي، كيف حالك وكيف أمورك؟", "time": "09:50 ص", "isMe": "true"},
        {"message": "الحمد لله بخير! مالتقينا فترة طويلة.", "time": "09:52 ص", "isMe": "false"},
        {"message": "هلا كيفك واخبارك", "time": "10:00 ص", "isMe": "false"},
        {"message": "متى ترجعوا من السفر؟", "time": "10:01 ص", "isMe": "false"},
        {"message": "والله شهر وراجعين وكذا", "time": "10:02 ص", "isMe": "true"},
        {"message": "الجو هنا روعة بصراحة، مطر وخير طول اليوم", "time": "10:06 ص", "isMe": "true"},
        {"message": "ما شاء الله، تتهنوا يا رب! لا تنسوا الصور أول بأول", "time": "10:07 ص", "isMe": "false"},
        {"message": "الله يحفظكم ويردكم بالسلامة يا رب", "time": "10:30 ص", "isMe": "false"},
      ];
    } 
    
    if (formattedName == "said") {
      return [
        {"message": "هلا سعيد،راجعت تحديثات المشروع اليوم؟", "time": "08:45 ص", "isMe": "true"},
        {"message": "اي  عملت آخر التعديلات على جهازي الحين.", "time": "08:50 ص", "isMe": "false"},
        {"message": "الأمور ممتازة والتعديلات اشتغلت بدون أي أخطاء برمجية", "time": "08:55 ص", "isMe": "false"},
        {"message": "الحمد لله تمام، الأوضاع مستقرة هنا والشغل ماشي تمام", "time": "09:16 ص", "isMe": "true"},
        {"message": "تواصل معي أول ما تفضى بالليل عشان نراجع الأكواد سوا", "time": "09:20 ص", "isMe": "false"},
      ];
    }

    if (formattedName == "بابا" || formattedName == "baba") {
      return [
        {"message": "السلام عليكم يا بابا، كيف حالك اليوم؟", "time": "12:00 م", "isMe": "true"},
        {"message": "وعليكم السلام ورحمة الله وبركاته يا ابني. الحمد لله أنا بخير وعافية", "time": "12:05 م", "isMe": "false"},
        {"message": "طمنيني عن دراستك وتطبيقك،  ماشية تمام؟", "time": "12:06 م", "isMe": "false"},
        {"message": "الحمد لله يا غالي، الشغل على التطبيق ممتاز والمهندس راضي عن الأكواد", "time": "12:10 م", "isMe": "true"},
        {"message": "ما شاء الله، الله يفتح عليك ويوفقك ويسهل أمرك دائماً يا رب", "time": "12:15 م", "isMe": "false"},
        {"message": "آمين يا رب، تسلم لي دعواتك يا أغلى ما أملك", "time": "12:18 م", "isMe": "true"},
      ];
    }

    if (formattedName == "عمتي" || formattedName == "amti") {
      return [
        {"message": "أهلاً يا عمتي، كيف صحتك؟ اشتقت لكِ كثيراً", "time": "02:30 م", "isMe": "true"},
        {"message": "أهلاً يا حبيبة عمتك، أنا بخير ونعمة الحمد لله، وأنا اشتقت لكم أكثر", "time": "02:35 م", "isMe": "false"},
        {"message": "متى بتزورونا البيت؟ ماما تسأل عنكِ دائماً", "time": "02:38 م", "isMe": "true"},
        {"message": "بإذن الله على نهاية الأسبوع بمر عليكم ونجلس سوا", "time": "02:45 م", "isMe": "false"},
        {"message": "تنورينا يا عمتي، ننتظركِ بفارغ الصبر إن شاء الله", "time": "02:47 م", "isMe": "true"},
      ];
    }

    if (formattedName == "المدير" || formattedName == "manager") {
      return [
        {"message": "السلام عليكم ، أرسلت لك تقرير أداء المشروع الأخير لمراجعته", "time": "04:15 م", "isMe": "true"},
        {"message": "وعليكم السلام والرحمة. أهلاً بكِ،  استلمت الملف وجلست الإطلاع عليه", "time": "04:30 م", "isMe": "false"},
        {"message": "مبدئياً الشغل ممتاز والتزامكم بالجدول الزمني واضح جداً، استمروا", "time": "04:32 م", "isMe": "false"},
        {"message": "شهادة نعتز بها يامدير، بنسلم المرحلة القادمة في موعدها إن شاء الله", "time": "04:40 م", "isMe": "true"},
        {"message": "بالتوفيق، إذا واجهتكم أي عقبات تقنية كلموني فوراً ", "time": "04:45 م", "isMe": "false"}
      ];
    }

    if (formattedName == "مندوب الدفعة" || formattedName == "مندوب الدفعه") {
      return [
        {"message": "يا هلا، بخصوص جدول الاختبارات النهائي، هل نزل شيء رسمي؟", "time": "06:10 م", "isMe": "true"},
        {"message": "أهلاً  نعم تواصلت مع القسم اليوم وأكدوا الجدول ننزله غداً", "time": "06:15 م", "isMe": "false"},
        {"message": "أول ما يرسلوه بأرسله لكم في مجموعة الدفعة مباشرة إن شاء الله", "time": "06:17 م", "isMe": "false"},
        {"message": "ممتاز جداً، يعطيك العافية على المتابعة المستمرة لجهود الدفعة", "time": "06:22 م", "isMe": "true"},
        {"message": "الله يعافيكِ ويسلمكِ، هذا واجبي بالتوفيق للجميع", "time": "06:25 م", "isMe": "false"}
      ];
    }

    return [];
  }

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  late List<Map<String, String>> chatMessages;

  @override
  void initState() {
    super.initState();
    chatMessages = ChatDetailsScreen.getInitialMessages(widget.name);
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return;

    setState(() {
      chatMessages.add({
        "message": _messageController.text.trim(),
        "time": "الآن",
        "isMe": "true",
      });
    });

    _messageController.clear();
    Future.delayed(const Duration(milliseconds: 100), () => _scrollToBottom());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        actions: [
          const Icon(Icons.call, color: Colors.white, size: 22),
          const SizedBox(width: 15),
          const Icon(Icons.more_vert, color: Colors.white, size: 22),
          const SizedBox(width: 15),
        ],
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              foregroundImage: AssetImage(widget.imagePath),
            ),
            const SizedBox(width: 10),
            Text(
              widget.name,
              style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 22),
        ),
        backgroundColor: const Color.fromARGB(255, 40, 44, 59),
      ),
      body: Container(
        color: const Color(0xFFECE5DD),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.all(16.0),
                itemCount: chatMessages.length,
                itemBuilder: (context, index) {
                  final msg = chatMessages[index];
                  bool isMe = msg['isMe'] == 'true';
                  String messageText = msg['message'] ?? '';

                  return Align(
                    alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.75,
                      ),
                      decoration: BoxDecoration(
                        color: isMe ? const Color(0xFFDCF8C6) : Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(12),
                          topRight: const Radius.circular(12),
                          bottomLeft: isMe ? const Radius.circular(12) : const Radius.circular(0),
                          bottomRight: isMe ? const Radius.circular(0) : const Radius.circular(12),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 1,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            messageText,
                            style: const TextStyle(fontSize: 16, color: Colors.black87),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            msg['time'] ?? '',
                            style: const TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 2,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 12),
                          const Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              controller: _messageController,
                              maxLines: null,
                              decoration: const InputDecoration(
                                hintText: "اكتب رسالة...",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const Icon(Icons.attach_file, color: Colors.grey),
                          const SizedBox(width: 10),
                          const Icon(Icons.camera_alt, color: Colors.grey),
                          const SizedBox(width: 12),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: _sendMessage,
                    child: const CircleAvatar(
                      radius: 23,
                      backgroundColor: Color(0xFF00A884),
                      child: Icon(Icons.send, color: Colors.white, size: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}