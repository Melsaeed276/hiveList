import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HiveListPage extends StatelessWidget {
  const HiveListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime nowDate = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(nowDate);
    return Scaffold(
      appBar: AppBar(title: const Text("Add new object"),),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //TODO show a dialog that will add a new object
        },
        child: const Icon(
          Icons.add_comment_outlined,
        ),

      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10,
            vertical: 35),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              Random random = Random();
              int randomN = random.nextInt(100);
              return Card(
                elevation: 10,
                color: index==1?Colors.grey:Colors.white,
                child: ListTile(
                  title: const Text("object title"),
                  subtitle: Text("modified time:"+formattedDate),
                  leading: CircleAvatar(
                    //backgroundColor: ,
                    child: Text("$randomN",),),
                  trailing: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,child: IconButton(
                        icon:const Icon(Icons.edit,),
                        onPressed: (){
                          //TODO Add a dialog
                          //TODO edit the object
                        },
                      ),),
                      const SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: IconButton(
                          color: Colors.redAccent,
                          icon: const Icon(Icons.delete,
                          ),
                          onPressed: (){
                            //TODO Add a dialog
                            //TODO Delete the object
                          },
                        ),),
                    ],
                  ),
                ),
              );
            }

        ),
      ),
    );
  }
}
