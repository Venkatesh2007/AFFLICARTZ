import 'package:test1/DashboardPage.dart';
// import 'package:test1/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:test1/UpiPage.dart';

class BankAccountPage extends StatelessWidget {
  const BankAccountPage({super. key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 30.0),
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset('assets/images/Logo.png'),
                    ),
                    Text(
                      "Enter Your Account Details",
                      style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Account holder user name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.green.withOpacity(0.1),
                        filled: true,
                        prefixIcon: Icon(Icons.account_circle),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Account Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.green.withOpacity(0.1),
                        filled: true,
                        prefixIcon: Icon(Icons.account_balance),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Your IFS Code",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.green.withOpacity(0.1),
                        filled: true,
                        prefixIcon: Icon(Icons.account_balance),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Phone Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.green.withOpacity(0.1),
                        filled: true,
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                    SizedBox(height: 20)
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.green,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Continue with"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UpiPage()),
                        );
                      },
                      child: Text(
                        "UPI ID",
                        style: TextStyle(color: Color.fromARGB(255, 236, 143, 2)),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DashboardPage()),
                        );
                      },
                      child: Text(
                        "Skip now",
                        style: TextStyle(color: Color.fromARGB(255, 141, 141, 141)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
