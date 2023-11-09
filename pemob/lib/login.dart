import 'package:flutter/material.dart';
import 'package:pemob/signup.dart';
import 'constans.dart';
import 'package:pemob/home.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.white,
      appBar:  AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed:() {
        Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios,
        size: 20,
        color: Colors.black,),
    ),
    ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOGIN", 
            style: textTextStyle.copyWith(
              fontSize: 30, 
              fontWeight: bold
              ),
            ),
            SizedBox(
              height: 11
              ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor", 
              style: secondaryTextStyle.copyWith(
                fontSize: 12),
              textAlign:  TextAlign.center,
              ),
            SizedBox(
              height: 64,
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Email", 
                style: textTextStyle.copyWith(
                  fontSize: 12, 
                  fontWeight: bold
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "freza12321@gmail.com",
                      hintStyle: textTextStyle.copyWith(fontSize: 12, color: textColor.withOpacity(0.6)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17)
                    ),
                  ),
                ),
                SizedBox(height: 15),
                 Text(
                  "Password", 
                style: textTextStyle.copyWith(
                  fontSize: 12, 
                  fontWeight: bold
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                      suffixIcon: Icon(Icons.visibility_off)
                    ),
                  ),
                ),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Tidak Memiliki Akun? "),
                Text("Buat Akun! ", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),)
              ],
            ),
            // SizedBox(height: 20,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            // Row(
            //   children: [
            //     Container(
            //       width: 24,
            //       height: 24,
            //       decoration: BoxDecoration(
            //         color: buttonColor,
            //         borderRadius: BorderRadius.circular(5),
            //       ),
            //     ),
            //     SizedBox(width: 15,),
            //     Text("Remember me", style: greyTextStyle.copyWith(fontSize: 12),)
            //   ],
            // ),
            // Text("Forgot Password?", style: textTextStyle.copyWith(fontSize: 12),)
            //   ],
            // ),
            SizedBox(
              height: 32,
            ),
            SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                    },
                    color: Color(0xFF0095FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                    },
                    color: Color(0xFF0095FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),
                    ),
                  )
            // Container(
            //   width: double.infinity,
            //   height: 50,
            //   margin: EdgeInsets.symmetric(horizontal: 20,),
            //   child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       primary: buttonColor,
            //     ) ,
            //   onPressed: (){}, 
            //   child: Text("Sign in with Google", style: textTextStyle.copyWith(fontWeight: bold),),
            //   ),
            // ),
          ],
        ),
      ),
      ),
    );
  }
}
