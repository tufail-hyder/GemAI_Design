import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project/Screens/Main Screens/Home.dart';
import 'package:project/Screens/Main Screens/camera_screen.dart';
import 'package:project/Screens/Main Screens/valuation_screen.dart';
import 'package:project/Screens/Main Screens/profile_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project/Screens/flutter_auth/Login.dart';

class MarketplaceScreen extends StatefulWidget {
  const MarketplaceScreen({super.key});

  @override
  State<MarketplaceScreen> createState() => _MarketplaceScreenState();
}

class _MarketplaceScreenState extends State<MarketplaceScreen> {
  int selectedIndex = 1;

  List<Map<String, dynamic>> items = [
    {
      "name": "Spinel",
      "price": 100.0,
      "image": "assets/images/MarketPlace/spinel.jpg",
      "seller": "Tufail",
      "isFavorite": false,
      "inCart": false,
    },
    {
      "name": "Peridot Quartz",
      "price": 500.0,
      "image": "assets/images/MarketPlace/peridot_quartz.jpg",
      "seller": "Tufail",
      "isFavorite": false,
      "inCart": false,
    },
     {
      "name": "Pink Topaz",
      "price": 400.0,
      "image": "assets/images/MarketPlace/pink_topaz.jpg",
      "seller": "Ali",
      "isFavorite": false,
      "inCart": false,
    },
    {
      "name": "Diamond Ring",
      "price": 5000.0,
      "image": "assets/images/MarketPlace/diamond_ring.jpg",
      "seller": "Tufail",
      "isFavorite": false,
      "inCart": false,
    },
    {
      "name": "Emerald Necklace",
      "price": 7000.0,
      "image": "assets/images/MarketPlace/emerald_necklace.jpg",
      "seller": "Ali",
      "isFavorite": false,
      "inCart": false,
    },
    {
      "name": "Amethyst Ring",
      "price": 900.0,
      "image": "assets/images/MarketPlace/amethyst_ring.jpg",
      "seller": "Ali",
      "isFavorite": false,
      "inCart": false,
    },
    {
      "name": "Topaz Pendant",
      "price": 3000.0,
      "image": "assets/images/MarketPlace/topaz_pendant.jpg",
      "seller": "Ali",
      "isFavorite": false,
      "inCart": false,
    },

    {
      "name": "Ruby Bracelet",
      "price": 4000.0,
      "image": "assets/images/MarketPlace/ruby_bracelet.jpg",
      "seller": "Sara",
      "isFavorite": false,
      "inCart": false,
    },
    {
      "name": "Sapphire Earrings",
      "price": 3500.0,
      "image": "assets/images/MarketPlace/sapphire_earrings.jpg",
      "seller": "Zara",
      "isFavorite": false,
      "inCart": false,
    },
  ];

  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredItems = items
        .where((item) => item["name"].toLowerCase().contains(searchQuery))
        .toList();

    // Get favorite and cart items
    List<Map<String, dynamic>> favoriteItems = items
        .where((item) => item["isFavorite"] == true)
        .toList();
    List<Map<String, dynamic>> cartItems = items
        .where((item) => item["inCart"] == true)
        .toList();

    return Scaffold(
      backgroundColor: const Color(0xFFF7ECE1),

      // ------------------- APP BAR -------------------
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF7ECE1),
        elevation: 0,
        title: Row(
          children: [
            const Expanded(
              child: Text(
                "Marketplace",
                style: TextStyle(
                  fontFamily: "TimesRomanFont",
                  fontSize: 22,
                  color: Color(0xFF86520D),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Cart Icon
            Stack(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Color(0xFF86520D),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CartScreen(cartItems: cartItems),
                      ),
                    );
                  },
                ),
                if (cartItems.isNotEmpty)
                  Positioned(
                    right: 6,
                    top: 6,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child: Text(
                        cartItems.length.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(width: 8),
            // Favorites Icon
            Stack(
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite, color: Color(0xFF86520D)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            FavoritesScreen(favoriteItems: favoriteItems),
                      ),
                    );
                  },
                ),
                if (favoriteItems.isNotEmpty)
                  Positioned(
                    right: 6,
                    top: 6,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child: Text(
                        favoriteItems.length.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
        centerTitle: true,
      ),

      // ------------------- BODY -------------------
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // ------------------- SEARCH BAR -------------------
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                onChanged: (val) {
                  setState(() => searchQuery = val.toLowerCase());
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Color(0xFF86520D)),
                  hintText: "Search items...",
                  hintStyle: TextStyle(fontFamily: 'TimesRomanFont'),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // ------------------- GRID VIEW -------------------
            Expanded(
              child: GridView.builder(
                itemCount: filteredItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.63,
                ),
                itemBuilder: (_, index) {
                  var item = filteredItems[index];

                  return Stack(
                    children: [
                      // ------------------- ITEM CARD -------------------
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          gradient: const LinearGradient(
                            colors: [Color(0xFFFFF8F0), Color(0xFFFFEFE0)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // ------------------- IMAGE -------------------
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(18),
                                topRight: Radius.circular(18),
                              ),
                              child: Image.asset(
                                item["image"],
                                height: 160,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ),

                            // ------------------- DETAILS -------------------
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                                right: 8,
                                top: 2,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          item["name"],
                                          style: const TextStyle(
                                            fontFamily: "TimesRomanFont",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Color(0xFF86520D),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            item["inCart"] = !item["inCart"];
                                          });
                                        },
                                        icon: Icon(
                                          item["inCart"]
                                              ? Icons.shopping_cart
                                              : Icons.add_shopping_cart,
                                          size: 18,
                                          color: Colors.brown,
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.person,
                                        size: 12,
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        item["seller"],
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                          fontFamily: "TimesRomanFont",
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    "\$${item["price"].toStringAsFixed(2)}",
                                    style: const TextStyle(
                                      fontFamily: "TimesRomanFont",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Color(0xFF86520D),
                                    ),
                                  ),

                                  const SizedBox(height: 6),
                                  // Buy Button
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        bool isLoggedIn =
                                            false; 

                                        if (!isLoggedIn) {
                                          // Show popup if not logged in
                                          showDialog(
                                            context: context,
                                            builder: (_) => AlertDialog(
                                              title: const Text(
                                                "Login Required",
                                                style: TextStyle(fontFamily: "TimesRomanFont"),
                                              ),
                                              content: const Text(
                                                "You need to login first to contact the seller.",style: TextStyle(fontFamily: "TimesRomanFont"),
                                              ),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(
                                                      context,
                                                    ); 
                                                  },
                                                  child: const Text("Cancel"),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(
                                                      context,
                                                    ); 
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const LoginScreen(), // replace with your login screen
                                                      ),
                                                    );
                                                  },
                                                  child: const Text("OK"),
                                                ),
                                              ],
                                            ),
                                          );
                                        } 
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(
                                          0xFF86520D,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        "Buy",
                                        style: TextStyle(
                                          fontFamily: "TimesRomanFont",
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ------------------- FAVORITE BUTTON -------------------
                      Positioned(
                        top: 6,
                        right: 6,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              item["isFavorite"] = !item["isFavorite"];
                            });
                          },
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Icon(
                              item["isFavorite"]
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: const Color(0xFF86520D),
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),

      // ------------------- FAB -------------------
      floatingActionButton: FloatingActionButton(
  onPressed: () {
    bool isLoggedIn = false; // Replace with your actual login check

    if (!isLoggedIn) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text("Login Required",style: TextStyle(fontFamily: "TimesRomanFont"),),
          content: const Text("You need to login first to add a product.",style: TextStyle(fontFamily: "TimesRomanFont")),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); 
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LoginScreen(), 
                  ),
                );
              },
              child: const Text("OK"),
            ),
          ],
        ),
      );
    }
  },
  backgroundColor: const Color(0xFF86520D),
  child: const Icon(Icons.add, color: Colors.white),
),


      // ------------------- BOTTOM NAVIGATION -------------------
      bottomNavigationBar: bottomNavBar(),
    );
  }

  // ------------------- BOTTOM NAV BAR -------------------
  Widget bottomNavBar() {
    return Container(
      margin: const EdgeInsets.only(bottom: 26, top: 10, left: 12, right: 12),
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navItem(Icons.home, "Home", 0, () {
            setState(() => selectedIndex = 0);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const HomeScreen()),
            );
          }),
          navItem(Icons.store, "MarketPlace", 1, () {
            setState(() => selectedIndex = 1);
          }),
          navItem(Icons.camera_alt, "Capture", 2, () {
            setState(() => selectedIndex = 2);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CameraScreen()),
            );
          }),
          navItem(Icons.monetization_on, "Valuation", 3, () {
            setState(() => selectedIndex = 3);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ValuationScreen()),
            );
          }),
          navItem(Icons.person, "Profile", 4, () {
            setState(() => selectedIndex = 4);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ProfileScreen()),
            );
          }),
        ],
      ),
    );
  }

  // ------------------- NAV ITEM WIDGET -------------------
  Widget navItem(IconData icon, String label, int index, VoidCallback onTap) {
    bool selected = selectedIndex == index;

    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 26,
            color: selected ? const Color(0xFF86520D) : Colors.grey.shade600,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontFamily: "TimesRomanFont",
              fontWeight: FontWeight.w600,
              color: selected ? const Color(0xFF86520D) : Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}

// ------------------- FAVORITES SCREEN -------------------

class FavoritesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> favoriteItems;

  const FavoritesScreen({super.key, required this.favoriteItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7ECE1),
      appBar: AppBar(
        title: const Text(
          "Favorites",
          style: TextStyle(
            fontFamily: "TimesRomanFont",
            fontWeight: FontWeight.bold,
            color: Color(0xFF86520D),
          ),
        ),
        backgroundColor: const Color(0xFFF7ECE1),
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFF86520D)),
      ),
      body: favoriteItems.isEmpty
          ? const Center(
              child: Text(
                "No favorites yet",
                style: TextStyle(
                  fontFamily: "TimesRomanFont",
                  fontSize: 16,
                  color: Color(0xFF86520D),
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: favoriteItems.length,
              itemBuilder: (_, index) {
                var item = favoriteItems[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        // Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            item["image"],
                            width: 80,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(width: 12),
                        // Details
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["name"],
                                style: const TextStyle(
                                  fontFamily: "TimesRomanFont",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color(0xFF86520D),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "Seller: ${item["seller"]}",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                "\$${item["price"].toStringAsFixed(2)}",
                                style: const TextStyle(
                                  fontFamily: "TimesRomanFont",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFF86520D),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}

// ------------------- CART SCREEN -------------------
class CartScreen extends StatefulWidget {
  final List<Map<String, dynamic>> cartItems;

  const CartScreen({super.key, required this.cartItems});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7ECE1),
      appBar: AppBar(
        title: const Text(
          "Cart",
          style: TextStyle(
            fontFamily: "TimesRomanFont",
            fontWeight: FontWeight.bold,
            color: Color(0xFF86520D),
          ),
        ),
        backgroundColor: const Color(0xFFF7ECE1),
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFF86520D)),
      ),
      body: widget.cartItems.isEmpty
          ? const Center(
              child: Text(
                "Cart is empty",
                style: TextStyle(
                  fontFamily: "TimesRomanFont",
                  fontSize: 16,
                  color: Color(0xFF86520D),
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: widget.cartItems.length,
              itemBuilder: (_, index) {
                var item = widget.cartItems[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  elevation: 6,
                  shadowColor: Colors.brown.withOpacity(0.2),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFFF8F0), Color(0xFFFFEFE0)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            item["image"],
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        // Details
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["name"],
                                style: const TextStyle(
                                  fontFamily: "TimesRomanFont",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color(0xFF86520D),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "Seller: ${item["seller"]}",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 2,
                                  horizontal: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(
                                    0xFF86520D,
                                  ).withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  "\$${item["price"].toStringAsFixed(2)}",
                                  style: const TextStyle(
                                    fontFamily: "TimesRomanFont",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Color(0xFF86520D),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Remove & Buy Buttons Column
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  widget.cartItems.removeAt(index);
                                });
                              },
                              icon: const Icon(
                                Icons.remove_circle,
                                color: Colors.red,
                              ),
                            ),
                            const SizedBox(height: 4),
                            // Small Buy Button
                            SizedBox(
                              width: 50,
                              height: 30,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF86520D),
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Buying ${item["name"]}"),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Buy",
                                  style: TextStyle(
                                    fontFamily: "TimesRomanFont",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}

// ------------------- ITEM DETAIL SCREEN -------------------
class ItemDetailScreen extends StatelessWidget {
  final Map<String, dynamic> item;
  const ItemDetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    List<String> images = List<String>.from(item["images"] ?? [item["image"]]);

    return Scaffold(
      backgroundColor: const Color(0xFFF7ECE1),
      appBar: AppBar(
        title: Text(
          item["name"],
          style: const TextStyle(
            fontFamily: "TimesRomanFont",
            fontWeight: FontWeight.bold,
            color: Color(0xFF86520D),
          ),
        ),
        backgroundColor: const Color(0xFFF7ECE1),
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF86520D)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Carousel
            CarouselSlider(
              items: images
                  .map(
                    (img) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        img,
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                height: 250,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
              ),
            ),
            const SizedBox(height: 16),
            // Name
            Text(
              item["name"],
              style: const TextStyle(
                fontFamily: "TimesRomanFont",
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF86520D),
              ),
            ),
            const SizedBox(height: 8),
            // Seller
            Text(
              "Seller: ${item["seller"]}",
              style: const TextStyle(
                fontFamily: "TimesRomanFont",
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 12),
            // Price Badge
            Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF86520D), Color(0xFFC47F2A)],
                ),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.brown.withOpacity(0.3),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Text(
                "\$${item["price"].toStringAsFixed(2)}",
                style: const TextStyle(
                  fontFamily: "TimesRomanFont",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Attributes Grid
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3,
              ),
              children: [
                buildAttribute("Carat", item["carat"]),
                buildAttribute("Cut Style", item["cutStyle"]),
                buildAttribute("Color", item["color"]),
                buildAttribute("Clarity", item["clarity"]),
                buildAttribute("Certificate", item["certificate"]),
                buildAttribute("Origin", item["origin"]),
              ],
            ),
            const SizedBox(height: 16),
            // Description
            if (item["description"] != null && item["description"] != "")
              Text(
                item["description"],
                style: const TextStyle(
                  fontFamily: "TimesRomanFont",
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget buildAttribute(String label, String value) {
    return Row(
      children: [
        Icon(Icons.circle, size: 8, color: Colors.brown),
        const SizedBox(width: 6),
        Text(
          "$label: $value",
          style: const TextStyle(
            fontFamily: "TimesRomanFont",
            fontSize: 14,
            color: Colors.brown,
          ),
        ),
      ],
    );
  }
}

// ------------------- LIST PRODUCT SCREEN -------------------

class ListProductScreen extends StatefulWidget {
  final Function(Map<String, dynamic>) onSubmit;

  const ListProductScreen({super.key, required this.onSubmit});

  @override
  State<ListProductScreen> createState() => _ListProductScreenState();
}

class _ListProductScreenState extends State<ListProductScreen> {
  final _formKey = GlobalKey<FormState>();
  String name = "";
  double price = 0;
  String seller = "";
  String type = "";
  String carat = "";
  String cutStyle = "";
  String color = "";
  String clarity = "";
  String certificate = "";
  String origin = "";
  String description = "";

  List<File> images = [];
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        images.add(File(pickedFile.path));
      });
    }
  }

  void showImagePickerDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Select Image Source"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text("Gallery"),
              onTap: () {
                Navigator.pop(context);
                pickImage(ImageSource.gallery);
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text("Camera"),
              onTap: () {
                Navigator.pop(context);
                pickImage(ImageSource.camera);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7ECE1),
      appBar: AppBar(
        title: const Text(
          "List Product",
          style: TextStyle(
            fontFamily: "TimesRomanFont",
            fontWeight: FontWeight.bold,
            color: Color(0xFF86520D),
          ),
        ),
        backgroundColor: const Color(0xFFF7ECE1),
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF86520D)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Images section
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Product Images",
                      style: TextStyle(
                        fontFamily: "TimesRomanFont",
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF86520D),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          // Show selected images
                          ...images.map(
                            (img) => Stack(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                      image: FileImage(img),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 4,
                                  right: 4,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        images.remove(img);
                                      });
                                    },
                                    child: const CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.red,
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Add Image Button
                          GestureDetector(
                            onTap: showImagePickerDialog,
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.brown[100],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                Icons.add_a_photo,
                                color: Colors.brown,
                                size: 32,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Form Fields
              buildTextField("Product Name", (val) => name = val!),
              buildTextField("Type", (val) => type = val!),
              buildTextField("Carat", (val) => carat = val!),
              buildTextField("Cut Style", (val) => cutStyle = val!),
              buildTextField("Color", (val) => color = val!),
              buildTextField("Clarity", (val) => clarity = val!),
              buildTextField("Certificate", (val) => certificate = val!),
              buildTextField("Origin", (val) => origin = val!),
              buildTextField(
                "Price",
                (val) => price = double.tryParse(val!) ?? 0,
              ),
              buildTextField("Seller/Contact Name", (val) => seller = val!),
              buildTextField("Description", (val) => description = val!),
              const SizedBox(height: 20),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() && images.isNotEmpty) {
                    widget.onSubmit({
                      "name": name,
                      "price": price,
                      "images": images.map((e) => e.path).toList(),
                      "seller": seller,
                      "type": type,
                      "carat": carat,
                      "cutStyle": cutStyle,
                      "color": color,
                      "clarity": clarity,
                      "certificate": certificate,
                      "origin": origin,
                      "description": description,
                      "isFavorite": false,
                      "inCart": false,
                    });
                    Navigator.pop(context);
                  } else if (images.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please add at least one image"),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  backgroundColor: const Color(0xFF86520D),
                  shadowColor: Colors.brown,
                  elevation: 6,
                ),
                child: const Text(
                  "List Product",
                  style: TextStyle(
                    fontFamily: "TimesRomanFont",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, Function(String?) onSaved) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        onChanged: onSaved,
        validator: (val) => val == null || val.isEmpty ? "Required" : null,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
            fontFamily: "TimesRomanFont",
            color: Colors.brown,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.brown),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
