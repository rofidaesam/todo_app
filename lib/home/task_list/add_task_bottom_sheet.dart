
import 'package:flutter/material.dart';

import '../../appcolores.dart';

class AddTaskBottomSheet extends StatefulWidget {
  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  var selectedDate = DateTime.now();
  String title = '';
  String description = '';
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add New Task',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          Form(
            key: formKey,
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                  onChanged: (text)
              {
              title= text;
              },
                validator: (text){
                  if(text == null|| text.isEmpty)
                  {
                    return'please enter task description';
                  }
                  return null;
                },
                decoration: InputDecoration(hintText: "Enter Task Title"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: (text)
                {
                  description= text;
                },
                validator: (text){
                  if(text == null || text.isEmpty)
                    {
                    return'please enter task title';
                    }
                  return null;
                },
                decoration: InputDecoration(hintText: "Enter Task Description"),
                maxLines: 4,
              ),
              Text(
               'Select Date',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              InkWell(
                onTap: ()
                  {
                    showCalender();
                  },
                  child: Text(
                      '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              )),
              IconButton(
                  onPressed: () {
                    addTask();
                  },
                  icon: Container(

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Appcolores.primaryColor,
                      ),
                    child: Icon(
                      size:30,
                        Icons.check,
                        color: Appcolores.whiteColor,
                      )))
            ],
          ))
        ],
      ),
    );
  }

  void showCalender() async{
   var chosenDate = await showDatePicker(

      barrierColor: Appcolores.primaryColor,
        context: context, firstDate: DateTime.now(), lastDate:DateTime.now().add(Duration(days: 365)) ,
    initialDate: DateTime.now(),

       );
   selectedDate = chosenDate??selectedDate;
   setState(() {

   });
  }

  void addTask() {
    if(formKey.currentState?.validate()== true)
    {

    }
  }
}
