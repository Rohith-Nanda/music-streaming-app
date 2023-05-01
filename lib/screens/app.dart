import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spotifyapp/models/music.dart';
import 'package:spotifyapp/screens/home.dart';
import 'package:spotifyapp/screens/search.dart';
import 'package:spotifyapp/screens/yourLibrary.dart';

class Appbeg extends StatefulWidget {
  const Appbeg({super.key});

  @override
  State<Appbeg> createState() => _AppbegState();
}

class _AppbegState extends State<Appbeg> {
  var mytabs = [];
  Music? music;
  bool isplaying = false;
  @override
  void initState() {
    mytabs = [Homepage(Miniplayer),Search(),Library()];
    super.initState();
  }
  int currentind = 0;
  AudioPlayer audio = AudioPlayer();
  Widget Miniplayer(Music? music,{bool stop = false}){
    this.music = music;
    if(music == null){
      return SizedBox();
    }
    if(stop){
      isplaying = false;
      audio.pause();
    }
    setState(() {
      
    });
    Size devicesize = MediaQuery.of(context).size;
    return AnimatedContainer(duration:Duration(milliseconds: 500),
    color: Colors.green,
    height: 60,
    width: devicesize.width,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.network(music.imageurl,fit: BoxFit.cover,height: 60,width: 60,),
        Text(music.name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
        IconButton(onPressed: () async{
          isplaying = !isplaying;
          if(isplaying){
              Source audiourl = UrlSource(music.musicurl);
              await audio.play(audiourl);
          }
          else{
              await audio.stop();
          }
          setState(() {
            
          });
        }, icon: isplaying ? Icon(Icons.pause,color: Colors.black,):Icon(Icons.play_arrow,color: Colors.black,)
        )
      
      ],
    ),
    );
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mytabs[currentind],
      backgroundColor: Colors.black,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Miniplayer(music),
          BottomNavigationBar(
            onTap: (value) {
            setState(() {
              currentind = value;
            });
            },
            currentIndex: currentind,
            selectedLabelStyle: TextStyle(color: Colors.white),
            items: [
            BottomNavigationBarItem(icon: Icon(Icons.home ,color: Colors.white,) ,label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,), label : 'search'),
            BottomNavigationBarItem(icon: Icon(Icons.library_add_outlined,color: Colors.white,), label:  'library'),
          ],
          backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}