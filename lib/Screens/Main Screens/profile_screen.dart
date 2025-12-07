import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project/Screens/Main Screens/Home.dart';
import 'package:project/Screens/Main Screens/marketplace_screen.dart';
import 'package:project/Screens/Main Screens/camera_screen.dart';
import 'package:project/Screens/Main Screens/valuation_screen.dart';
import 'package:project/Screens/Main%20Screens/PrivacyPolicy.dart';
import 'package:project/Screens/Main%20Screens/Termsofuse.dart';
import 'package:project/Screens/flutter_auth/Login.dart';
import 'dart:io';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7ECE1),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7ECE1),
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const Text(
          "Profile",
          style: TextStyle(
            fontFamily: "TimesRomanFont",
            fontSize: 22,
            color: Color(0xFF86520D),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          // ---------- PROFILE HEADER ----------
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: const Color(0xFF86520D),
                  child: const Icon(Icons.person, size: 60, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Tufail Haider",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "TimesRomanFont",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF86520D)),
                ),
                const SizedBox(height: 4),
                const Text(
                  "tufailhyder21@gmail.com",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "TimesRomanFont",
                      color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),

          // ---------- PROFILE OPTIONS LIST ----------
          profileListTile(
            icon: Icons.edit,
            title: "Edit Profile",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const EditProfilePage()),
              );
            },
          ),
          profileListTile(
            icon: Icons.login,
            title: "Sign In / Sign Up",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const LoginScreen()),
              );
            },
          ),
           profileListTile(
            icon: Icons.feedback,
            title: "Feedback",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const FeedbackPage()),
              );
            },
          ),
          profileListTile(
          icon: Icons.favorite,
              title: "Favorite Items",
          onTap: () {
            Navigator.push(
                context,
                 MaterialPageRoute(builder: (_) => const FavoritesScreen(favoriteItems: [],)),
           );
          },
        ),
          profileListTile(
            icon: Icons.description,
            title: "Terms of Use",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TermsOfUseScreen()),
              );
            },
          ),
          profileListTile(
            icon: Icons.privacy_tip,
            title: "Privacy Policy",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PrivacyPolicyScreen()),
              );
            },
          ),
          profileListTile(
            icon: Icons.logout,
            title: "Logout",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  // -------------------- PROFILE LIST TILE --------------------
  Widget profileListTile(
      {required IconData icon, required String title, required VoidCallback onTap}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF86520D)),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: "TimesRomanFont",
            color: Colors.black,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
        onTap: onTap,
      ),
    );
  }

  // -------------------- BOTTOM NAV BAR --------------------
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
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const HomeScreen()));
          }),
          navItem(Icons.store, "MarketPlace", 1, () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const MarketplaceScreen()));
          }),
          navItem(Icons.camera_alt, "Capture", 2, () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const CameraScreen()));
          }),
          navItem(Icons.monetization_on, "Valuation", 3, () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const ValuationScreen()));
          }),
          navItem(Icons.person, "Profile", 4, () {}),
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
          Icon(icon,
              size: 26,
              color: selected ? const Color(0xFF86520D) : Colors.grey.shade600),
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

// ---------- PLACEHOLDER PAGES ----------


class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  File? _profileImage;
  final TextEditingController nicknameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final ImagePicker _picker = ImagePicker();

  void pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source, imageQuality: 50);
    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  void showImageOptions() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt, color: Color(0xFF86520D)),
                title: const Text('Take a Picture'),
                onTap: () {
                  pickImage(ImageSource.camera);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library, color: Color(0xFF86520D)),
                title: const Text('Select from Gallery'),
                onTap: () {
                  pickImage(ImageSource.gallery);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.cancel, color: Colors.grey),
                title: const Text('Cancel'),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    nicknameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7ECE1),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7ECE1),
        elevation: 0,
        title: const Text(
          "Edit Profile",
          style: TextStyle(
              fontFamily: "TimesRomanFont",
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF86520D)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            // ----------- PROFILE HEADER WITH GRADIENT -----------
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  colors: [Color(0xFF86520D), Color(0xFFFFC78F)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: showImageOptions,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      backgroundImage:
                          _profileImage != null ? FileImage(_profileImage!) : null,
                      child: _profileImage == null
                          ? const Icon(Icons.person, size: 50, color: Color(0xFF86520D))
                          : null,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Tap on picture to change",
                    style: TextStyle(
                        fontFamily: "TimesRomanFont",
                        color: Colors.white70,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            // ----------- NICKNAME ROW -----------
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                child: Row(
                  children: [
                    const Icon(Icons.person, color: Color(0xFF86520D)),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: nicknameController,
                        style: TextStyle(fontFamily: 'TimesRomanFont',color: Colors.black,fontSize: 16),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Nickname",
                          hintStyle: TextStyle(color: Colors.grey,fontFamily: 'TimesRomanFont'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // ----------- EMAIL ROW -----------
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
                child: Row(
                  children: [
                    const Icon(Icons.email, color: Color(0xFF86520D)),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        style: TextStyle(fontFamily: 'TimesRomanFont',fontSize: 16,color: Colors.black),
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey,fontFamily: 'TimesRomanFont'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            // ----------- SAVE BUTTON WITH GRADIENT -----------
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  colors: [Color(0xFF86520D), Color(0xFFFFC78F)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: TextButton(
                onPressed: () {
                  String nickname = nicknameController.text.trim();
                  String email = emailController.text.trim();

                  if (nickname.isEmpty || email.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Please fill all fields")));
                    return;
                  }

                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Profile Updated Successfully")));
                },
                child: const Text(
                  "Save",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "TimesRomanFont",
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController feedbackController = TextEditingController();
  final List<File> images = [];
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage() async {
    if (images.length >= 3) return; // max 3 images
    final pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );
    if (pickedFile != null) {
      setState(() {
        images.add(File(pickedFile.path));
      });
    }
  }

  void removeImage(int index) {
    setState(() {
      images.removeAt(index);
    });
  }

  void submitFeedback() {
    String feedback = feedbackController.text.trim();

    if (feedback.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please write your feedback")),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Feedback submitted successfully!")),
    );

    emailController.clear();
    feedbackController.clear();
    setState(() {
      images.clear();
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    feedbackController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7ECE1),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7ECE1),
        elevation: 0,
        title: const Text(
          "Feedback",
          style: TextStyle(
              fontFamily: "TimesRomanFont",
              fontSize: 22,
              color: Color(0xFF86520D),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enter your details and feedback below:",
              style: TextStyle(
                  fontFamily: "TimesRomanFont",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF86520D)),
            ),
            const SizedBox(height: 20),

            // Email Field
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                child: TextField(
                  style: TextStyle(fontFamily: 'TimesRomanFont',fontSize: 16,color: Colors.black),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Your Email",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Feedback / Description Field
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: TextField(
                  style: TextStyle(fontFamily: 'TimesRomanFont',fontSize: 16,color: Colors.black),
                  controller: feedbackController,
                  maxLines: 6,
                  decoration: const InputDecoration(
                    hintText: "Write your feedback here...",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Add Images Button & Preview
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: pickImage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF86520D),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  icon: const Icon(Icons.add_a_photo, color: Colors.white),
                  label: Text("Add Images (${images.length}/3)",
                      style: const TextStyle(
                          fontFamily: "TimesRomanFont",
                          fontSize: 14,
                          color: Colors.white)),
                ),
              ],
            ),
            const SizedBox(height: 12),

            if (images.isNotEmpty)
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (_, index) => Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: FileImage(images[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () => removeImage(index),
                          child: const CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.red,
                            child: Icon(Icons.close,
                                size: 14, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            const SizedBox(height: 30),

            // Send Button
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  colors: [Color(0xFF86520D), Color(0xFFFFC78F)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: TextButton(
                onPressed: submitFeedback,
                child: const Text(
                  "Send Feedback",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "TimesRomanFont",
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 