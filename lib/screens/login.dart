
import 'package:employees_app/screens/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  //const ({Key? key}) : super(key: key);
TextEditingController emcode = TextEditingController();
TextEditingController emname = TextEditingController();
TextEditingController emdes = TextEditingController();
TextEditingController emsal = TextEditingController();
TextEditingController emcomp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Container(
    margin: EdgeInsets.all(25),
    child: Column(
    children: [
    // Text("employee code"),
    SizedBox(height: 0,),
    TextField(
    controller: emcode,
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.qr_code_rounded,
    color: Colors.black26,
    size: 35,
    ),
    labelText: "Employee code",
    hintText: "Enter your employee code",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20)
    )
    ),
    ),
    SizedBox(height: 15,),
    //  Text("employee Name"),
    TextField(
controller: emname,
decoration: InputDecoration(
prefixIcon: Icon(Icons.man,
color: Colors.black26,
size: 35,
),
labelText: "Name of employee",
hintText: "Enter your name",
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(20)
)
),
),
// Text("Designation"),
SizedBox(height: 15,),
TextField(
controller: emdes,
decoration: InputDecoration(
prefixIcon: Icon(Icons.work,
color: Colors.black26,
size: 35,
),
labelText: "Designation",
hintText: "Enter your designation",
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(20)
)
),
),
// Text("salary"),
SizedBox(height: 15,),
TextField(
controller: emsal,
decoration: InputDecoration(
prefixIcon: Icon(Icons.money,
color: Colors.black26,
size: 35,
),
labelText: "Salary",
hintText: "Enter your salary",
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(20)
)
),
),
// Text("company name"),
SizedBox(height: 15,),
TextField(
controller: emcomp,
decoration: InputDecoration(
prefixIcon: Icon(Icons.workspaces,
color: Colors.black26,
size: 35,
),
labelText: "Company name",
hintText: "Enter your Company name",
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(20)
)
),
),
SizedBox(height: 25,),
SizedBox(
height: 60,
width: double.infinity,
child: RaisedButton(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20)
),
color: Colors.greenAccent,
onPressed: (){
var getEmpcode = emcode.text;
var getEmpname = emname.text;
var getEmpdes =emdes.text;
var getEmpsal= emsal.text;
var getEmpcomp = emcomp.text;
print(getEmpcode);
print(getEmpname);
print(getEmpdes);
print(getEmpsal);
print(getEmpcomp);

//print("You were successfully added");
},
child: Text("SUBMIT",
style: TextStyle(
color: Colors.white,
fontSize: 25
),
),
),
),
      SizedBox(height: 25,),
      SizedBox(
        height: 60,
        width: double.infinity,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          color: Colors.greenAccent,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewEmp()));
//print("You were successfully added");
          },
          child: Text("VIEW EMPLOYEES",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25
            ),
          ),
        ),
      ), 
],
),
),
);
  }
}
