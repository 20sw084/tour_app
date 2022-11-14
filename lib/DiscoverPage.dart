import 'package:flutter/material.dart';
import 'package:tour_app/ViewPlace.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
                bottom: 5.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    "Discover",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: null,
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.notifications_none),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Explore the best places",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'Search destination ',
                ),
              ),
            ),
            Wrap(
              spacing: 8,
              children: const [
                Chip(
                  label: Text('All'),
                ),
                Chip(
                  label: Text('Trending'),
                ),
                Chip(
                  label: Text('Recomended'),
                ),
                Chip(
                  label: Text('Popular'),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Popular Places",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View More",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 225,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      child: buildCard(
                          "scene1.png", "Myconos BlueLake", "Switerland", 350),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlace(
                              "scene1.png",
                              "Myconos BlueLake",
                              "Switerland",
                              350,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child: buildCard(
                        "scene2.png",
                        "Snow Land",
                        "Ireland",
                        300,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlace(
                              "scene2.png",
                              "Snow Land",
                              "Ireland",
                              300,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child: buildCard(
                          "scene1.png", "Myconos BlueLake", "Switerland", 350),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlace(
                              "scene1.png",
                              "Myconos BlueLake",
                              "Switerland",
                              350,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child:
                          buildCard("scene2.png", "Snow Land", "Ireland", 300),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlace(
                              "scene2.png",
                              "Snow Land",
                              "Ireland",
                              300,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child: buildCard(
                          "scene1.png", "Myconos BlueLake", "Switerland", 350),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlace(
                              "scene1.png",
                              "Myconos BlueLake",
                              "Switerland",
                              350,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child:
                          buildCard("scene2.png", "Snow Land", "Ireland", 300),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlace(
                              "scene2.png",
                              "Snow Land",
                              "Ireland",
                              300,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child: buildCard(
                          "scene1.png", "Myconos BlueLake", "Switerland", 350),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlace(
                              "scene1.png",
                              "Myconos BlueLake",
                              "Switerland",
                              350,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child:
                          buildCard("scene2.png", "Snow Land", "Ireland", 300),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlace(
                              "scene2.png",
                              "Snow Land",
                              "Ireland",
                              300,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child: buildCard(
                          "scene1.png", "Myconos BlueLake", "Switerland", 350),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlace(
                              "scene1.png",
                              "Myconos BlueLake",
                              "Switerland",
                              350,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child:
                          buildCard("scene2.png", "Snow Land", "Ireland", 300),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlace(
                              "scene2.png",
                              "Snow Land",
                              "Ireland",
                              300,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child: buildCard(
                          "scene1.png", "Myconos BlueLake", "Switerland", 350),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlace(
                              "scene1.png",
                              "Myconos BlueLake",
                              "Switerland",
                              350,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child:
                          buildCard("scene2.png", "Snow Land", "Ireland", 300),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlace(
                              "scene2.png",
                              "Snow Land",
                              "Ireland",
                              300,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child: buildCard(
                          "scene1.png", "Myconos BlueLake", "Switerland", 350),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlace(
                              "scene1.png",
                              "Myconos BlueLake",
                              "Switerland",
                              350,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      child:
                          buildCard("scene2.png", "Snow Land", "Ireland", 300),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewPlace(
                              "scene2.png",
                              "Snow Land",
                              "Ireland",
                              300,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Best Offers",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View More",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              child: Card(
                child: ListTile(
                  title: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 100,
                          child: Container(
                            width: 80,
                            height: 100,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/images/scene2.png"),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                              color: Colors.yellow,
                            ),
                            // child: const Icon(Icons.favorite),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Text(
                                    'GreyBlu Lake',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Icon(Icons.favorite_border),
                                ],
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(Icons.location_on),
                                Text(
                                  'Northeastern Union',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  '250\$\t',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("/person"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Stack(
          children: [
            Container(
              height: 60,
            ),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const [
                BottomNavigationBarItem(
                  label: 'home',
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: 'Fvourites',
                  icon: Icon(Icons.favorite_outline_sharp),
                ),
                BottomNavigationBarItem(
                  label: 'Browse',
                  icon: Icon(Icons.navigation),
                ),
                BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Icon(Icons.account_circle),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(String img, String place, String country, int price) =>
      Stack(
        children: [
          Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage("assets/images/$img"),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(
                30.0,
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      place,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$ $price",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.location_on_sharp),
                        Text(country),
                      ],
                    ),
                    const Text("/person"),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
}
