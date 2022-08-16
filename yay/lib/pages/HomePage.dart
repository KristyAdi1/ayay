import 'package:flutter/material.dart';
import 'package:yay/Dashboard.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super (key : key);

  @override
State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override 
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 107, 7),
      body: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 5, width: 7,),
              
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Container(decoration: BoxDecoration(
                  color: Colors.orange.shade600,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(10),
                child:IconButton(icon:Icon(Icons.arrow_back, color: Colors.white,),
                onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const Dashboard()));
        }   
                ), 
                ),
              ),
              SizedBox(width: 10),
              Text('Borrowed Items',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 25),
              
            ],
          ),
          SizedBox(height: 70),

          Container(
            height: 703,
            width: 500,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            color: Colors.grey.shade200,
            ),
            child: Column(
              children: [
                Container(
                margin: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
                ),
          //color: Colors.orangeAccent,
          height: 160,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container( 
                height: 150,
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.orange.shade600,
                ),
              ),
            ],
          ),
          ),     
              ],
            ),
          ),
          


        ]
        ),
      ),
    );
  }
}