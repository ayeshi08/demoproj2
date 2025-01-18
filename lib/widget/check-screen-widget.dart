import 'package:flutter/material.dart';

class CheckScreenWidget extends StatelessWidget {
final String taskName;
final bool  taskCompleted;
Function (bool?)? onChanged;
   CheckScreenWidget({super.key,required this.taskName,required this.taskCompleted,required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
      child: Container(decoration: BoxDecoration(color:Colors.red.shade100 ,borderRadius: BorderRadius.circular(13)),
        child: Row(
        children: [
          Checkbox(value: taskCompleted, onChanged: onChanged),
          Text(taskName,style: TextStyle(fontSize: 18,color: Colors.red.shade900,fontWeight: FontWeight.w800),),
        ],
      ),),
    );
  }
}
