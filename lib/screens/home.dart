
import 'package:flutter/material.dart';
import 'package:spotifyapp/models/categories.dart';
import 'package:spotifyapp/models/music.dart';
import 'package:spotifyapp/services/category_operations.dart';
import 'package:spotifyapp/services/music_operations.dart';

class Homepage extends StatelessWidget {
  Function miniplayer;
  Homepage(this.miniplayer);
  bool isplaying = false;
  Widget createcat(Categories cat){
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(5.0)
         
      ),
        child: Row(
          children: [
            Image.network(cat.imageurl,fit: BoxFit.cover,),
            SizedBox(width: 10.0,),
            Text(cat.description,style: TextStyle(color: Colors.white),)
          ],
        ),
    );
  }
  List<Widget> createList(){
      List<Categories> catlist = Categoryoperation.getCategories();
      List<Widget> widlist  = catlist.map((Categories value) => createcat(value)).toList();
      return widlist;
  }
  Widget Musiccont(Music mus){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 200,
                  child: InkWell(
                     onTap: (){
                    miniplayer(mus,stop : true);
                  },
                  child: Image.network(mus.imageurl,fit: BoxFit.cover,))),
              ),
              Text(mus.name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              Text(mus.description,style: TextStyle(color: Colors.white))
            ],
          ),
        ),
      );
  }
  Widget createmusic(String label){
    List<Music> musiclist = MusicOperations.getMusic();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(label,style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
        ),
        Container(
          height: 275,
          child: ListView.builder(itemBuilder: ((context, index) {
              return Musiccont(musiclist[index]);
          }),
          itemCount: musiclist.length,
          scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
  Widget creategrid(){
    return Container(
      padding: EdgeInsets.all(4.0),
      height: 250,
      child: GridView.count(
        childAspectRatio: 5/2,
        crossAxisCount: 2,
        children: createList(),
        crossAxisSpacing: 7.0,
        mainAxisSpacing: 7.0,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.black,title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Good Day!" ,style: TextStyle(color: Colors.white , fontSize: 19.0,fontWeight: FontWeight.bold),),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(Icons.settings_outlined),
          ))
        ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height : 10.0),
              creategrid(),
              SizedBox(height: 10.0,),
              createmusic("Made for u!"),
              SizedBox(height: 10.0,),
              createmusic("Popular playlist!")
            ],
          ),
        ),
    );

  }
}