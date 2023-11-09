import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget{
  var height, width;
  @override
  Widget build(BuildContext context){
    height= MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        height: height*0.75,
        width: width,
        child: Column(
            children: [
              Container(
                decoration: BoxDecoration(),
                height: height*0.25,
                width: width,
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 35,
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Icon(Icons.sort, color: Colors.white,
                          size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 15,
                      right: 15,
                    ),
                    child:Column(
                      children: [
                        Text(
                          "Dashboard",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "9 november 2023",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white54,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    ),
                ],),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                height: height*0.50 ,
                width: width,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                    mainAxisSpacing: 25,
                  ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 1,
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                ),
              ),
            ],
          ),
      ),
      );
  }
}