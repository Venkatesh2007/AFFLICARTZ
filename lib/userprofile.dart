import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

// import 'package:test1/ProfilePage.dart';

void main() {
  runApp(userprofile());
}

class userprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
          
        // ),
        body: UserProfile(),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 10),
          CircleAvatar(
            radius: 80,
            child: Icon(
              Icons.person, // Replace with the icon you want to use
              size: 100, // Adjust the size of the icon as needed
              color: Colors.white, // Adjust the color of the icon as needed
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Hello, User Name',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text(
                'My Earnings:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '0.0',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
            ]
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text(
                'My rewards:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '0.0',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
            ]
            )
          ]
        ),
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
            UserInfoItem(
                icon: Icons.email,
                label: 'Email :',
                value: 'ABCD@example.com',
              ),
                UserInfoItem(
                  icon: Icons.phone,
                  label: 'Phone:',
                  value: '+1234567890',
                ),
                SizedBox(height:10),
                Text(
                  "Bank details :",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height:10),
                UserInfoItem(
                  icon: Icons.account_balance,
                  label: 'Account no:',
                  value: '1234 5678 9012 3456',
                ),
                SizedBox(height:10),
                UserInfoItem(
                  icon: Icons.account_balance,
                  label: 'IFSC code:',
                  value: 'XXXXXXXXXXXXXXXX',
                ),
                SizedBox(height:10),
                UserInfoItem(
                  icon: Icons.account_balance,
                  label: 'UPI ID:',
                  value: 'XXXXXXXXXXXXXXXX',
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ()),
                // );
              },
              child: Text('Logout'),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => EditProfilePage()),
                // );
              },
              child: Text('Edit Profile'),
            ),
          ),
        ],
      ),
    );
  }
}

class UserInfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const UserInfoItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 10),
          Text(
            value,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}