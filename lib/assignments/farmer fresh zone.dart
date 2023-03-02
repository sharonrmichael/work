import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Freshzone(),
  ));
}

class Freshzone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            backgroundColor: const Color(0xff55AE3A),
            title: const Text(
              "Farmers Fresh Zone",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            floating: true,
            pinned: true,
            actions: const [
              Padding(
                padding: EdgeInsets.only(left: 10, right: 5),
                child: Icon(Icons.location_on),
              ),
              Center(
                  child: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text("Kochi"),
                  ))
            ],
            bottom: AppBar(
              elevation: 0,
              backgroundColor: const Color(0xff55AE3A),
              title: Container(
                height: 30,
                color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: "Search for Vegetables, Fruits ..,",
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.green.shade400)),
                        child: const Center(
                            child: Text(
                              "VEGETABLES",
                              style: (TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff025839),
                                  fontWeight: FontWeight.w900)),
                            )),
                      ),
                      Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.green.shade400)),
                        child: const Center(
                            child: Text(
                              "FRUITS",
                              style: (TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff025839),
                                  fontWeight: FontWeight.w900)),
                            )),
                      ),
                      Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.green.shade400)),
                        child: const Center(
                            child: Text(
                              "EXOTIC",
                              style: (TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff025839),
                                  fontWeight: FontWeight.w900)),
                            )),
                      ),
                      Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.green.shade400)),
                        child: const Center(
                            child: Text(
                              "FRESH CUTS",
                              style: (TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff025839),
                                  fontWeight: FontWeight.w900)),
                            )),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    CarouselSlider(
                        items: [
                          Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/10/09/19/29/eat-2834549__480.jpg",
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2017/11/12/19/17/vegetables-landscape-2943500__480.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2015/05/30/01/18/vegetables-790022_1280.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                        options: CarouselOptions(
                          viewportFraction: 1,
                          enlargeFactor: 0.5,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          autoPlayCurve: Curves.easeOutCirc,
                          autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                          enableInfiniteScroll: true,
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 15, bottom: 5),
                                child: Image.network(
                                  "https://cdn-icons-png.flaticon.com/512/5378/5378186.png",
                                  width: 25,
                                  height: 25,
                                )),
                            const Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 10),
                              child: Text(
                                "30 MINS POLICY",
                                style:
                                TextStyle(fontSize: 10, color: Colors.black54,fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 15, bottom: 5),
                                child: Image.network(
                                  "https://cdn-icons-png.flaticon.com/512/4862/4862389.png",
                                  width: 25,
                                  height: 25,
                                )),
                            const Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 10),
                              child: Text(
                                "TRACEABILITY",
                                style:
                                TextStyle(fontSize: 10, color: Colors.black54,fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 15, bottom: 5),
                                child: Image.network(
                                  "https://cdn-icons-png.flaticon.com/512/2654/2654068.png",
                                  width: 25,
                                  height: 25,
                                )),
                            const Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 10),
                              child: Text(
                                "LOCAL SOURCING",
                                style:
                                TextStyle(fontSize: 10, color: Colors.black54,fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ])),
          SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Shop By Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Vegetables_grid()
              ])),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xff55AE3A),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Color(0xff55AE3A),
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color(0xff55AE3A),
              ),
              label: 'Account')
        ],
      ),
    );
  }
}

class Vegetables_grid extends StatelessWidget {
  List<String> images = [
    "https://st3.depositphotos.com/1006899/12789/i/600/depositphotos_127893414-stock-photo-special-offer-sign-symbol.jpg",
    "https://media.istockphoto.com/id/98026003/photo/tomatoes.jpg?b=1&s=170667a&w=0&k=20&c=MIz_LKVtdnXExJyOG1sltnt9p9Lw_YtsNi_YeCCDnHo=",
    "https://images.unsplash.com/photo-1488551511020-571c741f122a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80",
    "https://media.istockphoto.com/id/995518546/photo/assortment-of-colorful-ripe-tropical-fruits-top-view.jpg?b=1&s=170667a&w=0&k=20&c=frnzxYjtn8MP9kpLy7AY2DU_s9ohVBlAflpUacaDx7w=",
    "https://media.istockphoto.com/id/803556536/photo/fruit-fresh-mixed-tropical-fruit-salad-bowl-of-healthy-fresh-fruit-salad-died-and-fitness.jpg?b=1&s=170667a&w=0&k=20&c=E8JmmwmySy918mn2P-w14BCohxaAOGbt2e6sZrNgmRw=",
    "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGVhbHRoeSUyMGZvb2R8ZW58MHx8MHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1509358271058-acd22cc93898?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zmxhdm91cnN8ZW58MHx8MHx8&w=1000&q=80",
    "https://media.istockphoto.com/id/1075446340/photo/various-fresh-mix-salad-leaves-with-tomato-in-bowl-on-wooden-background.jpg?b=1&s=170667a&w=0&k=20&c=8dNVZB6mZPLjh5fZY7NmiMcfsJX_UY3HfGbRnlYVEfM=",
    "https://images.unsplash.com/photo-1553787434-45e1d245bfbb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8b3JnYW5pYyUyMGZvb2R8ZW58MHx8MHx8&w=1000&q=80"
  ];
  List<String> name = [
    "Offers",
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Packed Flavours",
    "Gourmet Salads",
    "Organic Items"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Image.network(images[index],
                    height: 115, width: 200, fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(child: Text(name[index])),
                )
              ],
            ),
          );
        });
  }
}