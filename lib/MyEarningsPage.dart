import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Earnings',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyEarningsPage(),
    );
  }
}

class MyEarningsPage extends StatefulWidget {
  @override
  _MyEarningsPageState createState() => _MyEarningsPageState();
}

class _MyEarningsPageState extends State<MyEarningsPage> {
  double earnings = 0.0;
  String selectedOption = "Option 1";
  bool isWidgetVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Total Earnings:',
                          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$earnings\u20B9',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Total Cashback Earnings:',
                          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '0.0\u20B9',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Total Reward Earnings:',
                          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '0.0\u20B9',
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Image.asset('assets/images/Logo.png', height: 150),
                ],
              ),
            ),
            SizedBox(height: 20),
            ExpansionTile(
              title: Text("My Recent Links"),
              children: [
                ListTile(
                  title: Text("Recent link 1"),
                ),
                ListTile(
                  title: Text("Recent link 2"),
                ),
                // Add more ListTile widgets for other recent links
              ],
            ),
            SizedBox(height: 15),
            ExpansionTile(
              title: Text("My Recent Orders"),
              children: [
                ListTile(
                  title: Text("Recent order 1"),
                ),
                ListTile(
                  title: Text("Recent order 2"),
                ),
                //Add more ListTile widgets for other recent orders
              ],
            ),
            SizedBox(height: 15,),
            ExpansionTile(
              title: Text("Add Bank account details+"),
                childrenPadding: const EdgeInsets.symmetric(horizontal: 20),
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
                    SizedBox(height: 30),
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
                    SizedBox(height: 30),
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
                    SizedBox(height: 30),
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
                    SizedBox(height: 20),
                    ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
                  ],
            ),
          ],
        ),
      ),
    );
  }

  void _showWithdrawDialog(BuildContext context) {
    // Implement your withdraw dialog here
  }
}
