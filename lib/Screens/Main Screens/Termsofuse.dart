import 'package:flutter/material.dart';

class TermsOfUseScreen extends StatelessWidget {
  const TermsOfUseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 236, 227),

      appBar: AppBar(
        leading: IconButton(
        onPressed: () {
         Navigator.pop(context);
         },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
        ),

        toolbarHeight: 60,
        backgroundColor: const Color.fromARGB(255, 245, 236, 227),
        title: Text(
          "Terms of Use",
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
              /// 1 — Intro
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
                "Welcome to Rock Identifier. By using our application, you agree to "
                "follow the rules and guidelines provided in these Terms of Use. "
                "This app is designed to help users identify rocks, minerals, and gemstones, "
                "as well as participate in buying and selling activities through our platform.\n\n"
                "Please take a moment to read these terms carefully. Your access to the app "
                "indicates that you fully understand and accept the conditions described here.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              /// 2 — User Responsibilities
              Text(
                "2. User Responsibilities",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "When creating an account, you must provide accurate personal information, "
                "including your full name, phone number, CNIC, and verified email address.\n\n"
                "You agree not to:\n"
                "• Provide false or misleading information\n"
                "• Create accounts on behalf of others\n"
                "• Use the app for harmful or illegal purposes\n\n"
                "Any violation may result in temporary suspension or permanent removal of your account.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              /// 3 — Buying & Selling
              Text(
                "3. Purchasing & Selling Policy",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Our platform allows users to purchase and sell items related to stones, minerals, "
                "and geological accessories.\n\n"
                "Please note:\n"
                "• All transactions are made directly between buyers and sellers.\n"
                "• Rock Identifier is not responsible for the quality, authenticity, or pricing "
                "of items listed by users.\n"
                "• If any fraud is reported, we may request identity verification before taking action.\n\n"
                "Repeated violations will lead to account termination.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              /// 4 — Privacy
              Text(
                "4. Privacy",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Your personal information (such as CNIC, phone number, and email) is only "
                "used for identity verification and fraud prevention.\n\n"
                "We do NOT:\n"
                "• Sell your data\n"
                "• Share your information without permission\n"
                "• Allow unauthorized access to your profile\n\n"
                "For full details, please see our Privacy Policy page.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              /// 5 — Prohibited Activities
              Text(
                "5. Prohibited Activities",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Users are not allowed to:\n\n"
                "• Provide fake identity information\n"
                "• Use someone else's CNIC or phone number\n"
                "• Upload illegal images or content\n"
                "• Mislead buyers with incorrect product details\n"
                "• Attempt to hack or manipulate app features\n"
                "• Create multiple accounts for fraudulent activity\n\n"
                "Breaking these rules may result in strict action, including banning the account.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              /// 6 — Updates
              Text(
                "6. Changes to Terms",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "We may update these Terms of Use when needed to improve safety, privacy, "
                "or user experience.\n\n"
                "If major changes are made, we will notify users through in-app messages or email. "
                "Continuing to use the app means you accept the updated terms.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              Text(
                "7. Account Security",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "You are responsible for keeping your account password secure. "
                "Do not share your password or login details with anyone. If you suspect any "
                "unauthorized activity, you must immediately change your password and notify us. "
                "Repeated failed login attempts or suspicious behavior may lead to temporary account lockout.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              Text(
                "8. Content Ownership",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "All images, descriptions, messages, and items you post must be your own content. "
                "Do not upload copyrighted images, stolen data, or content you do not have rights to. "
                "We reserve the right to remove any content that violates intellectual property laws "
                "or harms the community.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              Text(
                "9. Transaction Safety",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Rock Identifier does not provide payment protection or guarantee the success of any sale. "
                "All transactions are made directly between buyers and sellers. Always meet in safe, "
                "public locations and verify items before payment. We are not responsible for scams, "
                "misrepresentation, or failed exchanges between users.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              Text(
                "10. Reporting Misconduct",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "If you notice any abusive behavior, fraud, illegal items, or suspicious activity, "
                "you must provide feedback immediately using the in-app feedback tools or by contacting support. "
                "Failing to give feedback on known violations may result in limited account privileges."
,
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

              Text(
                "11. Marketplace Restrictions",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "You are not allowed to sell:\n"
                "• Illegal minerals or stolen items\n"
                "• Hazardous chemicals or explosives\n"
                "• Items misrepresented as rare or valuable without proof\n"
                "• Fake gemstones or artificially colored stones without disclosure\n"
                "\nViolating these rules will result in immediate ban.",
                style: TextStyle(
                  fontFamily: 'TimesRomanFont',
                  fontSize: 15,
                  height: 1.5,
                ),
              ),

              SizedBox(height: 20),

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
