
import 'package:flutter/material.dart';
import 'package:studysync/navagation%20pages/calender_tab.dart';
import 'package:studysync/navagation%20pages/goals_tab.dart';
import 'package:studysync/navagation%20pages/home_tab.dart';
import 'package:studysync/navagation%20pages/todolist_tab.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;



  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
   UserHome(),
   ToDoList(),
   UserCalendaer(),
   UserGoals(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'To Do'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month), label: 'Calander'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.incomplete_circle), label: 'Goals'
          ),
        ],
      ),
    );
  }
}
