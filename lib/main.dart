import 'package:flutter/material.dart';
import 'theme.dart';
import 'pages/home_page.dart';
import 'pages/market_page.dart';
import 'pages/ai_page.dart';
import 'pages/analytics_page.dart';
import 'pages/news_page.dart';

void main() {
  runApp(const AlphaTrustApp());
}

class AlphaTrustApp extends StatelessWidget {
  const AlphaTrustApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlphaTrust',
      theme: AlphaTrustTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    MarketPage(),
    AIPage(),
    AnalyticsPage(),
    NewsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: AlphaTrustTheme.accentColor,
        unselectedItemColor: AlphaTrustTheme.secondaryTextColor,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: 'السوق'),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_toy),
            label: 'الذكاء الاصطناعي',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'التحاليل',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'الأخبار'),
        ],
      ),
    );
  }
}
