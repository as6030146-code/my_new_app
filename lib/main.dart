import 'package:flutter/material.dart';
import 'theme.dart';
import 'pages/الصفحةالرئيسية.dart';
import 'pages/صفحةالسوق.dart';
import 'pages/صفحةالذكاءالاصطناعي.dart';
import 'pages/صفحةالتحليلات.dart';
import 'pages/صفحةالأخبار.dart';

void main() {
  runApp(AlphaTrustApp());
}

class AlphaTrustApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: HomeNavigator(),
    );
  }
}

class HomeNavigator extends StatefulWidget {
  @override
  _HomeNavigatorState createState() => _HomeNavigatorState();
}

class _HomeNavigatorState extends State<HomeNavigator> {
  int _currentIndex = 0;
  final List<Widget> _الصفحات = [
    الصفحةالرئيسية(),
    صفحةالسوق(),
    صفحةالذكاءالاصطناعي(),
    صفحةالتحليلات(),
    صفحةالأخبار(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _الصفحات[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: AppTheme.ذهبي,
        unselectedItemColor: AppTheme.رماديفاتح,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: 'السوق'),
          BottomNavigationBarItem(icon: Icon(Icons.smart_toy), label: 'الذكاء الاصطناعي'),
          BottomNavigationBarItem(icon: Icon(Icons.analytics), label: 'التحاليل'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'الأخبار'),
        ],
      ),
    );
  }
}