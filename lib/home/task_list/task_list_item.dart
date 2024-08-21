import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/appcolores.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class TaskListItem extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var hight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(12),
      child: Slidable(
      // The start action pane is the one at the left or the top side.
          startActionPane: ActionPane(
            extentRatio:0.25,
            // A motion is a widget used to control how the pane animates.
            motion: const ScrollMotion(),


            children:  [
              // A SlidableAction can have an icon and/or a label.
              SlidableAction(
                borderRadius:   BorderRadius.circular(15),
                onPressed: (context){},
                backgroundColor: Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),

            ],
          ),
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
              color: Appcolores.whiteColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Appcolores.primaryColor,
              width: width*0.01,
              height:hight*0.2,
            ),
      
            Expanded(
              
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
      
                      Text('Title',style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 22,color: Appcolores.primaryColor
                ),),
                      Text('Desc')
                    ],
                
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
      
              ),
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.check,color: Appcolores.whiteColor,size: 35,),
              ),
            ),
          ],
        ),
      )
      )
      );

  }
}
