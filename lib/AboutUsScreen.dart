import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  final TextEditingController termAndConditionController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('About Us'),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white, // Set page background color to grey
        // appBar: buildAppBar(context),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                children: [
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Padding(
                  //     padding: EdgeInsets.only(left: 119),
                  //     child: Text(
                  //       "About Us",
                  //       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 9),
                  Container(
                    width: 368,
                    margin: EdgeInsets.only(left: 11, right: 15),
                    decoration: BoxDecoration(
                      color: Colors
                          .white, // Set text box background color to white
                      borderRadius: BorderRadius.circular(20),
                      border:
                          Border.all(color: Colors.black), // Add black border
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Welcome to Afflicartz, your go-to destination for exclusive cashback",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  buildOurMission(
                    context,
                    whatSetsUs: "Our Mission",
                    description:
                        "At AfflicartZ, we are dedicated to making online shopping more rewarding for students. Our mission is to provide a seamless platform where students can earn cashback on every purchase they make through our partnered websites.",
                  ),
                  SizedBox(height: 18),
                  buildOurMission(
                    context,
                    whatSetsUs: "What Sets Us Apart",
                    description:
                        "Unlike traditional cashback platforms, we prioritize the needs and preferences of students. Our user-friendly interface, curated selection of partner websites, and exclusive cashback offers are tailored to enhance the student shopping experience.",
                  ),
                  SizedBox(height: 18),
                  buildWhyChooseUs(context),
                  SizedBox(height: 18),
                  buildOurMission(
                    context,
                    whatSetsUs: "Get in Touch",
                    description:
                        "We love hearing from our users! If you have any questions, feedback, or suggestions, please don\'t hesitate to contact us at afflicartz@gmail.com.",
                  ),
                  SizedBox(height: 18),
                  buildThankYouFor(context),
                  SizedBox(height: 18),
                  Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      child: const Text(
                        "Terms and Conditions",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(148, 4, 90, 161),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        backgroundColor: Colors.white,
                        side: BorderSide(
                            color: Colors.black), // Add black border to button
                        elevation: 5, // Add shadow to button
                      ),
                    ),
                  ),
                  SizedBox(height: 18),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return AppBar(
      title: Text("About Us"),
      // You can customize the app bar further as needed
    );
  }

  Widget buildWhyChooseUs(BuildContext context) {
    return Container(
      width: 396,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 21),
      decoration: BoxDecoration(
        color: Colors.white, // Set text box background color to white
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black), // Add black border
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Why Choose Us",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(
            "Unlike traditional cashback platforms, we prioritize the needs and preferences of students. Our user-friendly interface, curated selection of partner websites, and exclusive cashback offers are tailored to enhance the student shopping experience. Your privacy and security are our top priorities. We adhere to stringent data protection standards to ensure that your personal information is safe and secure.",
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget buildThankYouFor(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 33),
      decoration: BoxDecoration(
        color: Colors.white, // Set text box background color to white
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black), // Add black border
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: SizedBox(
        width: 345,
        child: Text(
          "Thank you for choosing Afflicartz for all your cashback needs!",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget buildOurMission(BuildContext context,
      {required String whatSetsUs, required String description}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23, vertical: 21),
      decoration: BoxDecoration(
        color: Colors.white, // Set text box background color to white
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black), // Add black border
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            whatSetsUs,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 17),
          Text(
            description,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 4),
        ],
      ),
    );
  }
}
