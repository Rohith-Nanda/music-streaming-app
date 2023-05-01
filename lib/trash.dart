class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late double Height;
  late double toppadding;
  late double bottompadding;
  late TabController controller;

  List<contentview> contentviews = [
      contentview(CustomTab(title: "HOME"),homepage()),
      contentview(CustomTab(title: "ABOUT ME"),portfolio()),
      contentview(CustomTab(title: "PROJECTS"),projects()),
      contentview(CustomTab(title: "CODING PROILES"),codingprofile()),
      contentview(CustomTab(title: "CONTACT ME"),contactme())
  ];  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     controller = TabController(length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    Height = MediaQuery.of(context).size.height;
    toppadding = Height*0.01;
    bottompadding = Height*0.01;
    return Scaffold(
      backgroundColor: Colors.indigo.shade100,
      body: Padding(
        padding:  EdgeInsets.only(),
        child: LayoutBuilder(builder: (context,constraints){
        if(constraints.maxWidth > 1100){
             return desktopview();
        }
        else{
             return mobileview();
        }
    }),
      ),);
    
  }
  Widget desktopview(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text("@sage",style: GoogleFonts.pacifico(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.redAccent)),
            ),
            CustomTabBar(tcontroller: controller, tabs: contentviews.map((e) => e.tab).toList()),
          ],
        ),
        Expanded(
          child: Container(
            color: Colors.indigo.shade100,
            child: TabBarView(
              controller: controller,
              children: contentviews.map((e) => e.content).toList(),),
          ),
        )
      ],
    );
}
Widget mobileview(){
  return Container();
}
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web_app/components/codingprofiles.dart';
import 'package:portfolio_web_app/components/contactme.dart';
import 'package:portfolio_web_app/components/homepage.dart';
import 'package:portfolio_web_app/components/projects.dart';
import 'package:portfolio_web_app/contents/Customtabbar.dart';
import 'package:portfolio_web_app/contents/contentview.dart';
import 'package:portfolio_web_app/contents/customtab.dart';
import 'package:portfolio_web_app/utils/portfolio.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late double Height;
  late double toppadding;
  late double bottompadding;
  late TabController controller;

  List<contentview> contentviews = [
      contentview(CustomTab(title: "HOME"),homepage()),
      contentview(CustomTab(title: "ABOUT ME"),portfolio()),
      contentview(CustomTab(title: "PROJECTS"),projects()),
      contentview(CustomTab(title: "CODING PROILES"),codingprofile()),
      contentview(CustomTab(title: "CONTACT ME"),contactme())
  ];  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     controller = TabController(length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    Height = MediaQuery.of(context).size.height;
    toppadding = Height*0.01;
    bottompadding = Height*0.01;
    return Scaffold(
      backgroundColor: Colors.indigo.shade100,
      body: Padding(
        padding:  EdgeInsets.only(),
        child: LayoutBuilder(builder: (context,constraints){
        if(constraints.maxWidth > 1100){
             return desktopview();
        }
        else{
             return mobileview();
        }
    }),
      ),);
    
  }
  Widget desktopview(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text("@sage",style: GoogleFonts.pacifico(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.redAccent)),
            ),
            CustomTabBar(tcontroller: controller, tabs: contentviews.map((e) => e.tab).toList()),
          ],
        ),
        Expanded(
          child: Container(
            color: Colors.indigo.shade100,
            child: TabBarView(
              controller: controller,
              children: contentviews.map((e) => e.content).toList(),),
          ),
        )
      ],
    );
}
Widget mobileview(){
  return Container();
}
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web_app/components/codingprofiles.dart';
import 'package:portfolio_web_app/components/contactme.dart';
import 'package:portfolio_web_app/components/homepage.dart';
import 'package:portfolio_web_app/components/projects.dart';
import 'package:portfolio_web_app/contents/Customtabbar.dart';
import 'package:portfolio_web_app/contents/contentview.dart';
import 'package:portfolio_web_app/contents/customtab.dart';
import 'package:portfolio_web_app/utils/portfolio.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late double Height;
  late double toppadding;
  late double bottompadding;
  late TabController controller;

  List<contentview> contentviews = [
      contentview(CustomTab(title: "HOME"),homepage()),
      contentview(CustomTab(title: "ABOUT ME"),portfolio()),
      contentview(CustomTab(title: "PROJECTS"),projects()),
      contentview(CustomTab(title: "CODING PROILES"),codingprofile()),
      contentview(CustomTab(title: "CONTACT ME"),contactme())
  ];  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     controller = TabController(length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    Height = MediaQuery.of(context).size.height;
    toppadding = Height*0.01;
    bottompadding = Height*0.01;
    return Scaffold(
      backgroundColor: Colors.indigo.shade100,
      body: Padding(
        padding:  EdgeInsets.only(),
        child: LayoutBuilder(builder: (context,constraints){
        if(constraints.maxWidth > 1100){
             return desktopview();
        }
        else{
             return mobileview();
        }
    }),
      ),);
    
  }
  Widget desktopview(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text("@sage",style: GoogleFonts.pacifico(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.redAccent)),
            ),
            CustomTabBar(tcontroller: controller, tabs: contentviews.map((e) => e.tab).toList()),
          ],
        ),
        Expanded(
          child: Container(
            color: Colors.indigo.shade100,
            child: TabBarView(
              controller: controller,
              children: contentviews.map((e) => e.content).toList(),),
          ),
        )
      ],
    );
}
Widget mobileview(){
  return Container();
}
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web_app/components/codingprofiles.dart';
import 'package:portfolio_web_app/components/contactme.dart';
import 'package:portfolio_web_app/components/homepage.dart';
import 'package:portfolio_web_app/components/projects.dart';
import 'package:portfolio_web_app/contents/Customtabbar.dart';
import 'package:portfolio_web_app/contents/contentview.dart';
import 'package:portfolio_web_app/contents/customtab.dart';
import 'package:portfolio_web_app/utils/portfolio.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late double Height;
  late double toppadding;
  late double bottompadding;
  late TabController controller;

  List<contentview> contentviews = [
      contentview(CustomTab(title: "HOME"),homepage()),
      contentview(CustomTab(title: "ABOUT ME"),portfolio()),
      contentview(CustomTab(title: "PROJECTS"),projects()),
      contentview(CustomTab(title: "CODING PROILES"),codingprofile()),
      contentview(CustomTab(title: "CONTACT ME"),contactme())
  ];  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     controller = TabController(length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    Height = MediaQuery.of(context).size.height;
    toppadding = Height*0.01;
    bottompadding = Height*0.01;
    return Scaffold(
      backgroundColor: Colors.indigo.shade100,
      body: Padding(
        padding:  EdgeInsets.only(),
        child: LayoutBuilder(builder: (context,constraints){
        if(constraints.maxWidth > 1100){
             return desktopview();
        }
        else{
             return mobileview();
        }
    }),
      ),);
    
  }
  Widget desktopview(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text("@sage",style: GoogleFonts.pacifico(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.redAccent)),
            ),
            CustomTabBar(tcontroller: controller, tabs: contentviews.map((e) => e.tab).toList()),
          ],
        ),
        Expanded(
          child: Container(
            color: Colors.indigo.shade100,
            child: TabBarView(
              controller: controller,
              children: contentviews.map((e) => e.content).toList(),),
          ),
        )
      ],
    );
}
Widget mobileview(){
  return Container();
}
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web_app/components/codingprofiles.dart';
import 'package:portfolio_web_app/components/contactme.dart';
import 'package:portfolio_web_app/components/homepage.dart';
import 'package:portfolio_web_app/components/projects.dart';
import 'package:portfolio_web_app/contents/Customtabbar.dart';
import 'package:portfolio_web_app/contents/contentview.dart';
import 'package:portfolio_web_app/contents/customtab.dart';
import 'package:portfolio_web_app/utils/portfolio.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late double Height;
  late double toppadding;
  late double bottompadding;
  late TabController controller;

  List<contentview> contentviews = [
      contentview(CustomTab(title: "HOME"),homepage()),
      contentview(CustomTab(title: "ABOUT ME"),portfolio()),
      contentview(CustomTab(title: "PROJECTS"),projects()),
      contentview(CustomTab(title: "CODING PROILES"),codingprofile()),
      contentview(CustomTab(title: "CONTACT ME"),contactme())
  ];  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     controller = TabController(length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    Height = MediaQuery.of(context).size.height;
    toppadding = Height*0.01;
    bottompadding = Height*0.01;
    return Scaffold(
      backgroundColor: Colors.indigo.shade100,
      body: Padding(
        padding:  EdgeInsets.only(),
        child: LayoutBuilder(builder: (context,constraints){
        if(constraints.maxWidth > 1100){
             return desktopview();
        }
        else{
             return mobileview();
        }
    }),
      ),);
    
  }
  Widget desktopview(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text("@sage",style: GoogleFonts.pacifico(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.redAccent)),
            ),
            CustomTabBar(tcontroller: controller, tabs: contentviews.map((e) => e.tab).toList()),
          ],
        ),
        Expanded(
          child: Container(
            color: Colors.indigo.shade100,
            child: TabBarView(
              controller: controller,
              children: contentviews.map((e) => e.content).toList(),),
          ),
        )
      ],
    );
}
Widget mobileview(){
  return Container();
}
}
