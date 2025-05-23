import 'package:apps/config/theme/app_theme.dart';
import 'package:apps/presentations/providers/chat_providers.dart';
import 'package:apps/presentations/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).theme(),
        title: 'Yes No App',
        home: ChatScreen(),
      ),
    );
  }
}
