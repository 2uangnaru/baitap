import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp3());
}

class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage2());
  }
}

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SafeArea(
          child: Column(
              children: <Widget>[
                Flexible(
                  child: CustomScrollView(
                    shrinkWrap: true,
                    slivers: <Widget>[
                      SliverAppBar(
                          automaticallyImplyLeading: true,
                          actions: [
                            IconButton(onPressed: ()=>{}, icon: Icon(Icons.save))
                          ],
                          expandedHeight: 100.0,
                          flexibleSpace: const FlexibleSpaceBar(
                            centerTitle: true,
                            title: Text('Edit Product'),
                          )
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 18,top: 40,bottom: 10)),
                    Flexible(child: Text("expanded",style: TextStyle(fontSize: 16)))
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 18)),
                    Flexible(child: Text("Tittle",style: TextStyle(fontSize: 16,color: Colors.grey)))
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 18,right: 18,bottom: 20),
                  child: TextField(),
                ),

                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 18)),
                    Flexible(child: Text("Price",style: TextStyle(fontSize: 16,color: Colors.grey)))
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 18,right: 18,bottom: 20),
                  child: TextField(),
                ),

                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 18)),
                    Flexible(child: Text("Description",style: TextStyle(fontSize: 16,color: Colors.grey)))
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 18,right: 18,bottom: 20),
                  child: TextField(),
                ),


                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 18,right: 18,top: 10),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUbYU3m86jJ6lxjVYJsNC0RF_FYPJ909BqUQ&usqp=CAU",
                              height: 130,width: 130,fit: BoxFit.cover,)

                        )
                    ),
                    Flexible(
                        child: Container(
                          padding: EdgeInsets.only(left: 10,right: 18),
                          child: TextField(),
                        )
                    )
                  ],
                ),



              ]
          ),

        ));
  }
}