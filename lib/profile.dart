import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    try {
      if (!await launchUrl(url)) {

      }
    } catch (e) {
      debugPrint('Error launching $urlString: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.white, Colors.green], // Start and end colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          'Profile Page',
          style: TextStyle(
            color: const Color.fromARGB(255, 1, 23, 42), // Makes the title visible over the background
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),

      body: SingleChildScrollView( // Wrap the whole body with this
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage(
                  'assets/images/Abhijeet.jpg', // Replace with your actual asset path.
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  Text(
                    'Abhijeet Jadhav',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () =>
                            _launchURL(
                                'https://www.linkedin.com/in/abhijeet-jadhav- 026487284/'),
                        child: Image.asset(
                          'assets/images/linkeldln_icon.jpg',
                          height: 30,
                          width: 30,
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            _launchURL('https://github.com/abhijeet-jadhav'),
                        child: Image.asset(
                          'assets/images/github.jpg',
                          height: 30,
                          width: 30,
                        ),
                      ),
                      GestureDetector(
                          onTap: () =>
                              _launchURL('mailto:abhijeet.jadhav24@spit.ac.in'),
                          child: Icon(Icons.mail_outline_rounded, size: 35,)

                        // Image.asset(
                        //   'assets/images/mail.jpg',
                        //   height: 30,
                        //   width: 30,
                        // ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            _launchURL(
                                'https://abhijeetjadhavportfolio.netlify.app/'),
                        child: Image.asset(
                          'assets/images/portfolio.png',
                          height: 30,
                          width: 30,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _launchURL('tel:8108255374'),
                        child: Icon(
                          Icons.local_phone_rounded,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Profile Summary',
              style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 5, 34, 251)),
            ),
            SizedBox(height: 8),
            Text(
              'A passionate software developer with expertise in Flutter, React, andfull-stack development. Enthusiastic about creating innovative solutionsand constantly improving skills.'
                  '',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Text(
              'Education Qualification',
              style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 5, 34, 251)),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.school),
                SizedBox(width: 12),
                Text(
                  'HSC Maharashtra Board (2018-2020)',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Icon(Icons.school),
                  SizedBox(width: 8),
                  Text(
                    ' Bachelor in Information Technology (B.Sc-IT) '
                    ,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Icon(Icons.school),
                  SizedBox(width: 8),
                  Text(
                    ' Master of Computer Application (MCA)'
                    ,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Skills',
              style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 5, 34, 251)),
            ),
            SizedBox(height: 8),
            Text(
              '• Programming: HTML, CSS, C++, Javascript, Java,',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '• Frameworks: React, Flutter',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '• Tools: Git, Intellij, Eclipse, VS Code',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Text(
              'Hobbies',
              style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 5, 34, 251)),
            ),
            SizedBox(height: 8),
            Text(
              '• Watch Movie and Sports',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '• Playing Cricket, Football, and Badminton',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Edit Profile'),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
