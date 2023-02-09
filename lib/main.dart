import 'package:device_preview/device_preview.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
void main(){
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (BuildContext context)=>MyApp(),
  ));
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.dark(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home:  YoutubeClone(),
    );
  }
}
class YoutubeClone extends StatefulWidget{
  @override
  State<YoutubeClone> createState() => _YoutubeCloneState();
}

class _YoutubeCloneState extends State<YoutubeClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SvgPicture.asset('assets/svg/YouTubeIcon.svg'),
        ),
        title: Text("YouTube",style: TextStyle(fontWeight: FontWeight.bold,),),
        actions:  const[
          Padding(
            padding: EdgeInsets.only(right: 20,),
            child: Icon(Icons.cast_connected_outlined),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(EvaIcons.bell),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.pink,
              // backgroundImage: AssetImage(''),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: 'Home',),
          BottomNavigationBarItem(icon: Icon(EvaIcons.video),label: 'Shorts',),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline ),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions_outlined),label: 'Subscriptions'),
          BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined),label: 'Library'),
        ],

      ),
    );

  }
}