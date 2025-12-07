import 'package:flutter/material.dart';
import 'package:project/Screens/Main%20Screens/profile_screen.dart';
import 'package:project/Screens/pdf screens/article_pdf_viewer.dart';

// ------------------- POPULAR GEM DETAIL SCREENS -------------------
import 'package:project/Screens/Popular_Gems/diamond_detail_screen.dart';
import 'package:project/Screens/Popular_Gems/amethyst_detail_screen.dart';
import 'package:project/Screens/Popular_Gems/citrine_detail_screen.dart';
import 'package:project/Screens/Popular_Gems/aquamarine_detail_screen.dart';
import 'package:project/Screens/Popular_Gems/emerald_detail_screen.dart';
import 'package:project/Screens/Popular_Gems/ruby_detail_screen.dart';
import 'package:project/Screens/Popular_Gems/sapphire_detail_screen.dart';
import 'package:project/Screens/Popular_Gems/morganite_detail_screen.dart';
import 'package:project/Screens/Popular_Gems/topaz_detail_screen.dart';
import 'package:project/Screens/Popular_Gems/tanzanite_detail_screen.dart';
import 'package:project/Screens/Popular_Gems/peridot_detail_screen.dart';

// ------------------- REAL VS FAKE GEM SCREENS -------------------
import 'package:project/Screens/real_fake_gems/malachite_screen.dart';
import 'package:project/Screens/real_fake_gems/labradorite_screen.dart';
import 'package:project/Screens/real_fake_gems/pearl_screen.dart';
import 'package:project/Screens/real_fake_gems/moonstone_screen.dart';
import 'package:project/Screens/real_fake_gems/opal_screen.dart';
import 'package:project/Screens/real_fake_gems/cirtine_screen.dart';
import 'package:project/Screens/real_fake_gems/diamond_screen.dart';
import 'package:project/Screens/real_fake_gems/turquoise_screen.dart';
import 'package:project/Screens/real_fake_gems/red_coral_screen.dart';
import 'package:project/Screens/real_fake_gems/amber_screen.dart';
import 'package:project/Screens/real_fake_gems/fluorite_screen.dart';
import 'package:project/Screens/real_fake_gems/gold_screen.dart';
import 'package:project/Screens/real_fake_gems/amethyst_screen.dart';
import 'package:project/Screens/real_fake_gems/all_real_fake_gems_screen.dart';

import "package:project/Screens/Main Screens/camera_screen.dart";
import 'package:project/Screens/Main Screens/marketplace_screen.dart';
import 'package:project/Screens/Main Screens/valuation_screen.dart';

/// Model representing a popular gem item.
class GemItem {
  final String name;
  final String imagePath;
  final Widget detailScreen;

  GemItem(this.name, this.imagePath, this.detailScreen);
}

/// List of popular gem items
final List<GemItem> gems = [
  GemItem("Diamond", "assets/images/Diamond.png", DiamondDetailScreen()),
  GemItem("Amethyst", "assets/images/Amethyst.png", AmethystDetailScreen()),
  GemItem("Citrine", "assets/images/Citrine.png", CitrineDetailScreen()),
  GemItem("Aquamarine", "assets/images/Aquamarine.png", AquamarineDetailScreen()),
  GemItem("Emerald", "assets/images/Emerald.png", EmeraldDetailScreen()),
  GemItem("Ruby", "assets/images/Ruby.png", RubyDetailScreen()),
  GemItem("Sapphire", "assets/images/Sapphire.png", SapphireDetailScreen()),
  GemItem("Morganite", "assets/images/Morganite.png", MorganiteDetailScreen()),
  GemItem("Topaz", "assets/images/Topaz.png", TopazDetailScreen()),
  GemItem("Tanzanite", "assets/images/Tanzanite.png", TanzaniteDetailScreen()),
  GemItem("Peridot", "assets/images/Peridot.png", PeridotDetailScreen()),
];

/// Model representing a real vs fake gem item.
class RealFakeGemItem {
  final String name;
  final String imagePath;
  final Widget screen;

  RealFakeGemItem(this.name, this.imagePath, this.screen);
}

/// List of real vs fake gem items
final List<RealFakeGemItem> realFakeGems = [
  RealFakeGemItem("Real vs Fake\nMalachite", "assets/images/RealvsFake/Malachite.png", const MalachiteScreen()),
  RealFakeGemItem("Real vs Fake\nLabradorite", "assets/images/RealvsFake/Labradorite.png", const LabradoriteScreen()),
  RealFakeGemItem("Real vs Fake\nTurquoise", "assets/images/RealvsFake/Turquoise.png", const TurquoiseScreen()),
  RealFakeGemItem("Real vs Fake\nRed Coral", "assets/images/RealvsFake/RedCoral.png", const RedCoralScreen()),
  RealFakeGemItem("Real vs Fake\nAmethyst", "assets/images/RealvsFake/Amethyst.png", const AmethystScreen()),
  RealFakeGemItem("Real vs Fake\nPearl", "assets/images/RealvsFake/Pearl.png", const PearlScreen()),
  RealFakeGemItem("Real vs Fake\nAmber", "assets/images/RealvsFake/Amber.png", const AmberScreen()),
  RealFakeGemItem("Real vs Fake\nMoonstone", "assets/images/RealvsFake/Moonstone.png", const MoonstoneScreen()),
  RealFakeGemItem("Real vs Fake\nOpal", "assets/images/RealvsFake/Opal.png", const OpalScreen()),
  RealFakeGemItem("Real vs Fake\nGold", "assets/images/RealvsFake/Gold.png", const GoldScreen()),
  RealFakeGemItem("Real vs Fake\nDiamond", "assets/images/RealvsFake/Diamond.png", const DiamondScreen()),
  RealFakeGemItem("Real vs Fake\nCitrine", "assets/images/RealvsFake/Citrine.png", const CitrineScreen()),
  RealFakeGemItem("Real vs Fake\nFluorite", "assets/images/RealvsFake/Fluorite.png", const FluoriteScreen()),
];

/// Model representing an article item
class ArticleItem {
  final String title;
  final String imagePath;
  final String pdfPath;

  ArticleItem({required this.title, required this.imagePath, required this.pdfPath});
}

/// List of articles
final List<ArticleItem> articles = [
  ArticleItem(
    title: "How to tell if a diamond is real",
    imagePath: "assets/images/article1.jpg",
    pdfPath: "assets/pdfs/article1.pdf",
  ),
  ArticleItem(
    title: "Educate kids about rock collection",
    imagePath: "assets/images/article2.jpg",
    pdfPath: "assets/pdfs/article2.pdf",
  ),
  ArticleItem(
    title: "Tips for gemstone investment",
    imagePath: "assets/images/article3.jpg",
    pdfPath: "assets/pdfs/article3.pdf",
  ),
  ArticleItem(
    title: "Guide to Buying Gemstones",
    imagePath: "assets/images/article4.jpg",
    pdfPath: "assets/pdfs/article4.pdf",
  ),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 236, 227),

      // ---------------- BODY ----------------
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 100, left: 12, right: 12, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                featureIconsRow(context),
                const SizedBox(height: 15),
                popularGemsSection(context),
                sectionTitle("Books"),
                const SizedBox(height: 10),
                bookList(context),
                const SizedBox(height: 10),
                sectionTitle("Real vs Fake"),
                const SizedBox(height: 10),
                realFakeGemsSection(context),
                const SizedBox(height: 15),
                articleSection(context),
                const SizedBox(height: 10),
              ],
            ),
          ),

          // ---------------- SEARCH BAR ----------------
          Container(
            height: 90,
            color: const Color.fromARGB(255, 245, 236, 227),
            padding: const EdgeInsets.only(left: 12,right: 12,top: 40),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: TextField(
                      style: const TextStyle(
                        fontFamily: 'TimesRomanFont',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: const Icon(Icons.search, size: 22),
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            color: Color(0xFFB48B54),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => const CameraScreen()),
                            );
                          },
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // ---------------- BOTTOM NAVIGATION BAR ----------------
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 26,top: 10,left: 12,right: 12),
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:  BorderRadius.circular(30),
          boxShadow: [
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
            }),
            navItem(Icons.store, "MarketPlace", 1, () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const MarketplaceScreen()));
            }),
            navItem(Icons.camera_alt, "Capture", 2, () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const CameraScreen()));
            }),
            navItem(Icons.monetization_on, "Valuation", 3, () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const ValuationScreen()));
            }),
            navItem(Icons.person, "Profile", 4, () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen()));
            }),
          ],
        ),
      ),
    );
  }

  // ---------------- NAV ITEM WIDGET ----------------
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
            color: selected ?  const Color(0xFF86520D) : Colors.grey.shade600,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: 'TimesRomanFont',
              color: selected ?  const Color(0xFF86520D) : Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }

  // ------------------- FEATURE ICONS -------------------
 Widget featureIconsRow(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 20,bottom: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        featureIcon(Icons.monetization_on, "Valuation", ()
         {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const ValuationScreen()),
          );
        }),
        featureIcon(Icons.camera_alt, "Identify", () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const CameraScreen()),
          );
        }),
        featureIcon(Icons.storefront, "Market", () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const MarketplaceScreen()),
          );
        }),
      ],
    ),
  );
}

  Widget featureIcon(IconData icon, String title, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color:  Color.fromARGB(255, 202, 131, 39),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 28),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'TimesRomanFont',
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

   // ------------------- Section title-------------------
  Widget sectionTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        fontFamily: 'TimesRomanFont',
      ),
    );
  }

// ------------------- POPULAR GEMS -------------------
  Widget popularGemsSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      sectionTitle("Popular Gems"),
      const SizedBox(height: 6),

      LayoutBuilder(
        builder: (context, constraints)
         {
          double screenWidth = constraints.maxWidth;

          double spacing = screenWidth * 0.03; 

          return SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: gems.length,
              itemBuilder: (context, index) {
                final gem = gems[index];

                return InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => gem.detailScreen),
                  ),
                  child: Container(
                    width: 80,
                    margin: EdgeInsets.only(right: spacing),
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width:60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(gem.imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          gem.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            fontFamily: 'TimesRomanFont',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    ],
  );
}


  // ------------------- REAL VS FAKE GEMS -------------------

  Widget realFakeGemsSection(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: realFakeGems.length > 5 ? 6 : realFakeGems.length,
        itemBuilder: (context, index) {
          if (index < 5) {
            final gem = realFakeGems[index];
            return realVsFakeGemCard(context, gem);
          } else {
            return showAllCard(context);
          }
        },
      ),
    );
  }

  Widget realVsFakeGemCard(BuildContext context, RealFakeGemItem gem) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => gem.screen),
      ),
      child: Container(
        width: 100,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 85,
              width: 90,
              child: Image.asset(gem.imagePath, fit: BoxFit.cover),
            ),
            Text(
              gem.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showAllCard(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const AllRealFakeGemsScreen()),
      ),
      child: Container(
        width: 90,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 202, 131, 39),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: const Text(
          "Show All",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'TimesRomanFont',
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  // ------------------- BOOKS -------------------

  Widget bookList(BuildContext context) {
    final bookImages = [
      "assets/images/book5.jpg",
      "assets/images/book2.png",
      "assets/images/book3.jpg",
      "assets/images/book1.jpg",
      "assets/images/book4.png",
    ];

    return SizedBox(
      height: 175,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: bookImages.map((image) => bookCard(context, image)).toList(),
      ),
    );
  }

  Widget bookCard(BuildContext context, String imagePath) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 115,
        margin: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 165,
              width: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  // ------------------- ARTICLES -------------------

  Widget articleSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sectionTitle("Articles"),
        const SizedBox(height: 12),
        SizedBox(
          height: 190,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final article = articles[index];
              return articleCard(context, article);
            },
          ),
        ),
      ],
    );
  }

  Widget articleCard(BuildContext context, ArticleItem article) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
                ArticlePDFViewer(title: article.title, pdfPath: article.pdfPath),
          ),
        );
      },
      child: Container(
        width: 130,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 6, offset: const Offset(0, 3)),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
              child: Image.asset(
                article.imagePath,
                height: 140,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                article.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  fontFamily: 'TimesRomanFont',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
