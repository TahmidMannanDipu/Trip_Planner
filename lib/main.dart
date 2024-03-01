import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.travel_explore_rounded),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: 'Community',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            selectedItemColor: const Color(0xFF555BD9),
            unselectedItemColor: Colors.grey,
            currentIndex: 0,

          ),
          backgroundColor: const Color(0xFFF6FAFF),
          body: Column(
            children: [
              // profile avater, Title and Search Icon section
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                        radius: 22,
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=3174&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        )),
                    Text(
                      'TripPlanner',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff404040)),
                    ),
                    Icon(
                      Icons.search_sharp,
                      size: 35,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              // Image and Text Information Section
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                child: Stack(
                  children: [
                    // Image Section
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1634142676406-8f480d2ced03?q=80&w=3280&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Replace with the URL of your network image
                        fit: BoxFit.cover, // Adjust the fit as needed
                      ),
                    ),
                    // Top left Text section
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Container(
                        width: 120,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xFF555BD9),
                        ),
                        child: const Center(
                          child: Text(
                            'Perfect for you',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Top right Text and Icon Section
                    const Positioned(
                      right: 55,
                      top: 23,
                      child: Text(
                        'What to do',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    //Bottom text title and info text section
                    const Positioned(
                        right: 25,
                        top: 25,
                        child: Icon(
                          Icons.arrow_circle_right_sharp,
                          color: Colors.white,
                        )),
                    const Positioned(
                      bottom: 20,
                      left: 10,
                      child: SizedBox(
                        width: 350,
                        child: ListTile(
                          title: Text(
                            'Niagara Falls',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Canada, province of Alberta and Northwest Territories, near the town of fort Smith',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                            maxLines: 2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              // Bottom container section
              Expanded(
                child: Stack(
                  children: [
                    Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color(0xffd7e7fa),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32),
                              topRight: Radius.circular(32),
                            ),
                            boxShadow: [BoxShadow(color: Colors.black)])),
                    const Positioned(
                        left: 16,
                        top: 20,
                        child: Row(
                          children: [
                            Text(
                              'Categories',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xff404040),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 160,
                            ),
                            Text(
                              'See all',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_circle_right_sharp,
                              color: Colors.black87,
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 32,
                    ),
                    //horizontal scrolling section
                    Positioned(
                      left: 16,
                      top: 70,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1614247716119-16791852355b?q=80&w=3282&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                'Mountain',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.asset(
                                  'images/camp.jpg',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                'Camp',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.asset(
                                  'images/park.png',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                'Park',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.asset(
                                  'images/museum.jpg',
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text(
                                'Museum',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
