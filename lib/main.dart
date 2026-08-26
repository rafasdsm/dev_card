import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> github() async {
  final Uri _url = Uri.parse("https://github.com/rafasdsm/");
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

Future<void> linkedin() async {
  final Uri _url = Uri.parse("https://www.linkedin.com/in/rafael-murakami-68bba623b/");
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

void main() {
  runApp(const DevCardApp());
}

// ══════════ 3 · A INTERFACE — Flutter ══════════

class DevCardApp extends StatelessWidget {
  const DevCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Image.network(
                "https://media.licdn.com/dms/image/v2/D4D03AQHiAoa3IPXzfw/profile-displayphoto-shrink_400_400/B4DZX5EOi6HsAg-/0/1743640391412?e=1789603200&v=beta&t=jlyXU1UADpLqkSZk5UGx5uhspGgIuydp1xQySbNE_Tk",
                scale: 1,
  
                ),
              Text("Rafael Simião de Sales Murakami", style: TextStyle(
                fontSize: 24, fontWeight: FontWeight(900)
              ),),
              Text("Programador front-end", style: TextStyle(
                fontWeight: FontWeight(700),fontSize: 20
              ),),
              Row(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network("https://cdn-icons-png.flaticon.com/512/5968/5968267.png",scale: 10),
                  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYKdPUVc81aC13AcFvnFOP3TqVWZBca30MlkFBZROmHw&s=10",scale: 10),
                  Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/3840px-Python-logo-notext.svg.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail",scale: 100),
                  Image.network("https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/webp/csharp.webp",scale: 10),
                ],
              ),
              Row(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: github,
                    child: Image.network("https://cdn-icons-png.flaticon.com/512/25/25231.png", scale: 20,),
                  ),
                  InkWell(
                    onTap: linkedin,
                    child: Image.network("https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/linkedin-app-icon.png", scale: 20,),
                  )
                ],

              ),
              Spacer()
              //Icon()
            ],
          ),
        ),
      ),
    );
  }
}