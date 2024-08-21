import 'package:flutter/material.dart';
import 'package:to_do/appcolores.dart';
import 'package:to_do/home/settings/settings_tab.dart';
import 'package:to_do/home/task_list/add_task_bottom_sheet.dart';
import 'package:to_do/home/task_list/task_list.dart';

class HomeScreen extends StatefulWidget {
static const routeName ='HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height*0.2,
        title: Text('To Do List', style: Theme.of(context).textTheme.titleLarge,
      ),
    ),
      body: widgets[selectedIndex],
      bottomNavigationBar:  BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        child: BottomNavigationBar(
          currentIndex: selectedIndex ,
          onTap: (index){
            selectedIndex = index;
            setState(() {
        
            });
        
          },
          items: [
            BottomNavigationBarItem(icon:Icon (Icons.list),label: "Task list"),
            BottomNavigationBarItem(icon:Icon (Icons.settings),label: "settings")
        
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showaddtaskbottomsheet();
      },
      child: Container(decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(50)
      ),
        child: Icon(Icons.add,color: Appcolores.whiteColor,size: 35,)),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
  var widgets ={1:SettingsTab(),0:TaskList()};

  void showaddtaskbottomsheet() {
    showModalBottomSheet(context: context, builder: (context) => AddTaskBottomSheet() );
  }

}
