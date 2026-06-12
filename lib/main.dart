import 'package:flutter/material.dart';
import 'package:whats_app_clone/whats_app_home.dart';

void main() {
  // debugPaintSizeEnabled = true;
  
  runApp(
    // تغليف التطبيق بالكامل لتوجيه النصوص من اليمين إلى اليسار تلقائياً ودعم العربي
    const Directionality(
      textDirection: TextDirection.rtl, // تحديد اتجاه المشروع كاملاً من اليمين لليسار
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WhatsApp Clone',
        home: WhatsAppHome(), // تشغيل شاشة الهوم الخاصة بالمهندس بسلام
      ),
    ),
  );
}