import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 245, 236, 227),

      appBar: AppBar(
        leading: IconButton(
        onPressed: () {
         Navigator.pop(context); 
        },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors. black,
            size: 20,
          ),
        ),
        toolbarHeight: 60,
        backgroundColor: const Color.fromARGB(255, 245, 236, 227),
        title: Text(
          "Privacy Policy",
          style: TextStyle(
            fontFamily: 'TimesRomanFont',
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
       padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "1. Introduction",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Welcome to Rock Identifier. Protecting your privacy is very important to us. "
                "This Privacy Policy explains what information we collect, how we use it, and how you can control your data. "
                "By using our services, you agree to the terms described in this policy. "
                "We encourage you to read this document carefully and reach out to us if you have any questions or concerns.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              Text(
                "2. Information We Collect",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "We collect different types of information to provide and improve our services:\n\n"
                "• Personal information: your name, email, phone number, and home address. This helps us identify users and prevent fraudulent activities.\n"
                "• Account credentials: your password and authentication information, which are securely stored.\n"
                "• Usage data: information on how you interact with our app, such as pages visited, features used, and error reports.\n"
                "• Device information: device type, operating system, IP address, and browser type to improve app performance and security.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              Text(
                "3. How We Use Your Information",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Your information is used for the following purposes:\n\n"
                "• To provide and maintain the app services, ensuring a smooth and safe experience.\n"
                "• To communicate important updates, promotions, or support-related messages.\n"
                "• To detect and prevent fraudulent activity, misuse, or violations of our terms.\n"
                "• To analyze trends, improve our platform, and develop new features based on user behavior.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              Text(
                "4. Sharing Your Information",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "We respect your privacy and do not sell personal information to third parties. "
                "However, we may share information with:\n\n"
                "• Trusted service providers who help process payments or deliver services.\n"
                "• Law enforcement or regulatory authorities if required by law.\n"
                "• Other users in transactions you participate in (for example, delivery addresses for sellers).\n"
                "• Analytics and marketing partners in anonymized or aggregated form to improve our services.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              Text(
                "5. User Rights",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "You have control over your data. Your rights include:\n\n"
                "• Access: view the personal information we store about you.\n"
                "• Correction: update or correct inaccurate or incomplete information.\n"
                "• Deletion: request that we delete your personal data where legally possible.\n"
                "• Communication preferences: choose what type of messages you receive.\n"
                "• Account deactivation: request temporary suspension of your account if needed.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              Text(
                "6. Data Security",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "We implement strict security measures to protect your personal data. "
                "These include encryption, secure servers, and access controls. "
                "Despite these measures, no online system is 100% secure. "
                "You are responsible for keeping your login credentials confidential and notifying us immediately if you suspect unauthorized access.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),


        
              Text(
                "7. Changes to This Policy",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "We may update this Privacy Policy periodically. "
                "We recommend reviewing it regularly to stay informed. "
                "Continued use of the app indicates acceptance of the updated terms.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 30),

              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFB48B54),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontFamily: 'TimesRomanFont',
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
