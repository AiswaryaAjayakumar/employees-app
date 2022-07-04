


import 'package:flutter/material.dart';

class ViewEmp extends StatelessWidget {
//  const ViewEmp({Key? key}) : super(key: key);
 var name=["Kiran","Sathya","Bibil","Karthik","Balu","Pradeep","Bhaskar","Jijo","Arun","Jay"];
 var code=[012,214,547,280,204,125,222,369,241,147];
 var des=["Engineer","Electrician","Mechanic","Engineer","Engineer","Electrician","Engineer","Mechanic","Engineer","Electrician"];
 var sal=[100000,80000,75000,100000,100000,80000,100000,75000,100000,80000];
 var ph=[9874562147,9872563014,7845923610,9871032458,8456971204,9856301478,7639428780,9786304152,8796347896,7803964152];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent,
          title: Text("VIEW EMPLOYEES",
            style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 35
            ),
          ),
        ),
        body: Container(
         child:
             ListView.builder(
               shrinkWrap: true,
                 itemCount: name.length,
                 itemBuilder: (context,index){
                   return Card(
                     child: ListTile(
                       leading: Icon(Icons.account_circle_rounded,
                         color:Colors.black26,
                         size: 40,
                       ),
                       trailing: Icon(Icons.delete,
                         color: Colors.black26,
                         size: 40,
                       ),
                       title: Text(name[index],
                         style: TextStyle(
                             color: Colors.indigoAccent,
                             fontSize: 25

                         ),
                       ),
                       subtitle: Text("Code : " + code[index].toString()+"\n"+"Designation : " + des[index].toString()+"\n"+"Salary : " + sal[index].toString()+"\n"+"Phone no: : " + ph[index].toString(),
                         style: TextStyle(
                             color: Colors.indigo,
                             fontSize: 18
                         ),
                       ),
                     ),
                   );

                 }

             ),









          ),


        ),
      );

  }
}
