import 'package:flutter/material.dart';
import 'package:project/Screens/Main Screens/Home.dart';
import 'package:project/Screens/Main Screens/marketplace_screen.dart';
import 'package:project/Screens/Main Screens/camera_screen.dart';
import 'package:project/Screens/Main Screens/profile_screen.dart';

class ValuationScreen extends StatefulWidget {
  const ValuationScreen({super.key});

  @override
  State<ValuationScreen> createState() => _ValuationScreenState();
}

class _ValuationScreenState extends State<ValuationScreen> {
  int selectedIndex = 3;

  // GEM TYPES
  final List<String> gemTypes = [
    "Diamond", "Ruby", "Emerald", "Sapphire", "Topaz", "Amethyst",
    "Citrine", "Opal", "Garnet", "Aquamarine", "Peridot", "Tanzanite", "Morganite",
  ];

  // CUT TYPES
  final List<String> cuts = [
    "Round", "Oval", "Princess", "Pear", "Cushion", "Radiant", 
    "Asscher", "Marquise", "Heart", "Emerald Cut", "Trillion",
  ];

  // COLORS
  final List<String> colors = [
    "Colorless (D–F)", "Near Colorless (G–J)", "Faint (K–M)",
    "Very Light (N–R)", "Light Yellow", "Fancy Yellow", "Fancy Pink",
    "Fancy Blue", "Fancy Green", "Grey/Silver", "Multicolor", "Red",
    "Green", "Yellow", "Blue", "Purple", "Orange",
  ];

  // CLARITIES
  final List<String> clarities = [
    "FL (Flawless)", "IF (Internally Flawless)", "VVS1(Very Very Slightly Included 1)", "VVS2(Very Very Slightly      Included2)","VS1(Very Slightly Included 1)", "VS2(Very Slightly Included 2)", "SI1(Slightly Included 1)", "SI2(Slightly Included 2)", "I1(Included 1)", "I2(Included 2)", "I3(Included 3)",
  ];

  String? selectedGem;
  String? selectedCut;
  String? selectedColor;
  String? selectedClarity;
  TextEditingController weightController = TextEditingController();

  double calculatedPriceUSD = 0.0;

  void calculatePrice() {
    if (selectedGem == null ||
        selectedCut == null ||
        selectedColor == null ||
        selectedClarity == null ||
        weightController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill all fields")),
      );
      return;
    }

    final Map<String, double> basePrices = {
      "Diamond": 150000, "Ruby": 80000, "Emerald": 95000, "Sapphire": 70000,
      "Topaz": 20000, "Amethyst": 12000, "Citrine": 9000, "Opal": 50000,
      "Garnet": 15000, "Aquamarine": 40000, "Peridot": 18000, "Tanzanite": 60000,
      "Morganite": 25000,
    };

    final Map<String, double> cutMap = {
      "Round": 1.3, "Oval": 1.15, "Princess": 1.25, "Pear": 1.2,
      "Cushion": 1.18, "Radiant": 1.22, "Asscher": 1.28, "Marquise": 1.26,
      "Heart": 1.35, "Emerald Cut": 1.10, "Trillion": 1.32,
    };

    final Map<String, double> colorMap = {
      "Colorless (D–F)": 1.4, "Near Colorless (G–J)": 1.25, "Faint (K–M)": 1.1,
      "Very Light (N–R)": 1.0, "Light Yellow": 1.05, "Fancy Yellow": 1.2,
      "Fancy Pink": 1.35, "Fancy Blue": 1.5, "Fancy Green": 1.45,
      "Grey/Silver": 1.0, "Multicolor": 1.2, "Red": 1.3, "Green": 1.25,
      "Yellow": 1.1, "Blue": 1.35, "Purple": 1.2, "Orange": 1.15,
    };

    final Map<String, double> clarityMap = {
      "FL (Flawless)": 1.5, "IF (Internally Flawless)": 1.4, "VVS1": 1.3,
      "VVS2": 1.25, "VS1": 1.2, "VS2": 1.15, "SI1": 1.1, "SI2": 1.05,
      "I1": 1.0, "I2": 0.95, "I3": 0.9,
    };

    double weight = double.tryParse(weightController.text) ?? 0;
    double pricePKR = (basePrices[selectedGem] ?? 20000) *
        (cutMap[selectedCut] ?? 1) *
        (colorMap[selectedColor] ?? 1) *
        (clarityMap[selectedClarity] ?? 1) *
        weight;

    setState(() {
      calculatedPriceUSD = pricePKR / 290; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7ECE1),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7ECE1),
        automaticallyImplyLeading: false,
        elevation: 0,
        
        title: const Text(
          "Estimate Price",
          style: TextStyle(
            fontFamily: "TimesRomanFont",
            fontSize: 24,
            color: Color(0xFF86520D),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 6,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enter the gemstone details to get estimated market price.",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "TimesRomanFont",
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 15,),
            sectionTitle("Select Gem Type"),
            SizedBox(height: 5,),
            dropDown(gemTypes, selectedGem, (val) => setState(() => selectedGem = val)),
            sectionTitle("Select Cut Type"),
            SizedBox(height: 5,),
            dropDown(cuts, selectedCut, (val) => setState(() => selectedCut = val)),
            sectionTitle("Select Color"),
            SizedBox(height: 5,),
            dropDown(colors, selectedColor, (val) => setState(() => selectedColor = val)),
            sectionTitle("Select Clarity"),
            SizedBox(height: 5,),
            dropDown(clarities, selectedClarity, (val) => setState(() => selectedClarity = val)),
            sectionTitle("Weight (Carat)"),
            SizedBox(height: 5,),
            textField(weightController),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: calculatePrice,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF86520D),
                  padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  "Estimate Price",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "TimesRomanFont",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            if (calculatedPriceUSD > 0)
              Container(
                width: double.infinity,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF8F0),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFF86520D), width: 1),
                ),
                child: Text(
                  "Estimated Price: \$${calculatedPriceUSD.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: "TimesRomanFont",
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF86520D),
                  ),
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  Widget sectionTitle(String title) => Padding(
        padding: const EdgeInsets.only(top: 1, bottom: 1),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontFamily: "TimesRomanFont",
            fontWeight: FontWeight.w700,
            color: Color(0xFF86520D),
          ),
        ),
      );

  Widget dropDown(List<String> items, String? selected, Function(String?) onChanged) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFB48B54)),
      ),
      child: DropdownButton<String>(
        isExpanded: true,
        underline: Container(),
        value: selected,
        hint: const Text("Select"),
        dropdownColor: Colors.white,
        style: const TextStyle(fontFamily: "TimesRomanFont", fontSize: 16, color: Colors.black),
        items: items.map((value) => DropdownMenuItem(value: value, child: Text(value))).toList(),
        onChanged: onChanged,
      ),
    );
  }

  Widget textField(TextEditingController controller) => Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFB48B54)),
        ),
        child: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          style: const TextStyle(fontFamily: "TimesRomanFont", fontSize: 16),
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: "Enter weight in carat",
            hintStyle: TextStyle(color: Colors.grey, fontFamily: "TimesRomanFont"),
          ),
        ),
      );

  Widget bottomNavBar() {
    return Container(
      margin: const EdgeInsets.only(bottom: 26, top: 10, left: 12, right: 12),
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, -2))],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navItem(Icons.home, "Home", 0, () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
          }),
          navItem(Icons.store, "MarketPlace", 1, () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const MarketplaceScreen()));
          }),
          navItem(Icons.camera_alt, "Capture", 2, () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const CameraScreen()));
          }),
          navItem(Icons.monetization_on, "Valuation", 3, () {}),
          navItem(Icons.person, "Profile", 4, () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen()));
          }),
        ],
      ),
    );
  }

  Widget navItem(IconData icon, String label, int index, VoidCallback onTap) {
    bool selected = selectedIndex == index;
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 26, color: selected ? const Color(0xFF86520D) : Colors.grey.shade600),
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
