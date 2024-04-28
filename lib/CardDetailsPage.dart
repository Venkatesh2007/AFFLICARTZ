import 'package:flutter/material.dart';
// import 'CardData.dart';

class CardDetailsPage extends StatelessWidget {
  final List<String> cardTitles;
  final List<String> cardImages;
  final List<int> cardNumbers;
  final List<String> cardUrls;
  final int numberOfCards;

  CardDetailsPage({
    required this.cardTitles,
    required this.cardImages,
    required this.cardNumbers,
    required this.cardUrls,
    required this.numberOfCards,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Card Details'),
      ),
      body: SingleChildScrollView(
    child: Center(
      child: Column(
        children: [
          // Add your image widget here
          Container(
    // width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage('assets/images/${cardImages[cardImages.length-1]}'),
              fit: BoxFit.contain,
            ),
          ),
          // Decrease size by specifying width and height
          width: 100,
          height: 150,
        ),
                SizedBox(height: 0), // Add space below the image
          // List of cards
          Column(
            children: List.generate(
              numberOfCards,
              (index) => Column(
                children: [
                  buildCard(context, cardTitles[index], cardImages[index], cardNumbers[index], cardUrls[index]),
                  SizedBox(height: 0), // Add space between cards
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  )
    );
  }

  Widget buildCard(BuildContext context, String title, String image, int number, String url) {
    return GestureDetector(
      onTap: () {
        // Navigate to details page if needed
      },
    child:Padding(
        padding: EdgeInsets.all(12), // Adjust the padding as needed
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Container(
            width: 320,
            height: 290,
            padding: EdgeInsets.all(1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/$image'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  flex: 1,
                  child: Text(
                    'On $title',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 2),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Get Cashback upto $number%',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 0),
                ElevatedButton(
                  onPressed: () {
                    // _launchWebsite(card.url);
                  },
                  style: ElevatedButton.styleFrom(
                    //  primary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Shop Now',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
