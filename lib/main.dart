import 'package:flutter/material.dart';
void main()=>runApp(ArabStarApp());
class ArabStarApp extends StatelessWidget{
@override Widget build(BuildContext c)=>MaterialApp(debugShowCheckedModeBanner:false,home:HomeScreen());
}
class HomeScreen extends StatelessWidget{
final rooms=[{'name':'مجلس اليمن السعيد 🇾🇪','users':324},{'name':'غرفة الطرب اليمني 🎤','users':189},{'name':'شاص وبر - مسابقة 🏆','users':512},{'name':'لودو العرب 🎲','users':98}];
@override Widget build(BuildContext context){
return Scaffold(backgroundColor:Color(0xFF121212),appBar:AppBar(backgroundColor:Color(0xFF1E1E1E),title:Text('Arab Star - عرب ستار',style:TextStyle(color:Color(0xFFD4AF37))),centerTitle:true),body:ListView.builder(itemCount:rooms.length,itemBuilder:(c,i)=>Card(color:Color(0xFF1E1E1E),margin:EdgeInsets.all(8),child:ListTile(title:Text(rooms[i]['name'] as String,style:TextStyle(color:Colors.white)),subtitle:Text('${rooms[i]['users']} متواجد',style:TextStyle(color:Colors.grey)),trailing:ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:Color(0xFFD4AF37)),child:Text('دخول'),onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>RoomScreen(roomName:rooms[i]['name'] as String))))))),bottomNavigationBar:BottomNavigationBar(backgroundColor:Color(0xFF1E1E1E),selectedItemColor:Color(0xFFD4AF37),unselectedItemColor:Colors.grey,items:[BottomNavigationBarItem(icon:Icon(Icons.mic),label:'الغرف'),BottomNavigationBarItem(icon:Icon(Icons.games),label:'الألعاب'),BottomNavigationBarItem(icon:Icon(Icons.person),label:'حسابي')]));
}
}
class RoomScreen extends StatelessWidget{
final String roomName;RoomScreen({required this.roomName});
final gifts=[{'name':'وردة','price':'1','icon':'🌹'},{'name':'قهوة','price':'10','icon':'☕'},{'name':'جنبية','price':'500','icon':'🗡️'},{'name':'الطير اليماني','price':'5000','icon':'🦅'},{'name':'شاص','price':'50000','icon':'🚙'}];
final games=['لودو','حجر ورقة مقص','بنك الحظ','عجلة الحظ','دومينو','من سيربح المليون','الكراسي'];
@override Widget build(BuildContext c){
return Scaffold(appBar:AppBar(title:Text(roomName),backgroundColor:Color(0xFF1E1E1E)),body:Column(children:[Container(height:300,padding:EdgeInsets.all(10),child:GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4),itemCount:8,itemBuilder:(c,i)=>Column(children:[CircleAvatar(radius:30,backgroundColor:Colors.grey[800]!,child:Icon(Icons.mic,color:Colors.white)),SizedBox(height:5),Text('مقعد ${i+1}',style:TextStyle(color:Colors.white,fontSize:12))]))),Divider(color:Colors.grey),Text('الألعاب 🎮',style:TextStyle(color:Color(0xFFD4AF37))),Container(height:50,child:ListView(scrollDirection:Axis.horizontal,children:games.map((g)=>Chip(label:Text(g),backgroundColor:Color(0xFF2A2A2A),labelStyle:TextStyle(color:Colors.white))).toList())),Spacer(),Container(height:90,color:Color(0xFF1E1E1E),child:ListView.builder(scrollDirection:Axis.horizontal,itemCount:gifts.length,itemBuilder:(c,i)=>Container(width:80,margin:EdgeInsets.all(5),child:Column(children:[Text(gifts[i]['icon'] as String,style:TextStyle(fontSize:30)),Text(gifts[i]['name'] as String,style:TextStyle(color:Colors.white,fontSize:10)),Text(gifts[i]['price'] as String,style:TextStyle(color:Color(0xFFD4AF37)))]))))]));
}
}
