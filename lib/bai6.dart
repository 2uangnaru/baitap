import 'package:baitap/edit.dart';
import 'package:baitap/edit2.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{

  @override
  State createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>
{


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        //appBar: AppBar(
        //  title: Align ( child: Text("your product") ),
        //  actions: [
          //  IconButton(onPressed: ()=>{}, icon: Icon(Icons.add))
          //],
        //),
      backgroundColor: Colors.white,
        body: Center(
        child: Container(
          child: (
            ListView(
              children: <Widget>[
                Flexible(
                  child: CustomScrollView(
                    shrinkWrap: true,
                    slivers: <Widget>[
                    SliverAppBar(

                      actions: [
                        IconButton(onPressed: ()=>{}, icon: Icon(Icons.add))
                      ],
                      centerTitle: true,
                      title: Text(''),
                      expandedHeight: 100.0,
                        flexibleSpace: const FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text('Your Product'),

              )
                  ),

                ],
                  ),
                ),

                Expanded(
                  child:  Row(
                  children: [
                    Flexible(
                      flex:1,
                        fit: FlexFit.loose,
                        child:  Padding(padding: EdgeInsets.all(15),
                        child: CircleAvatar(
                          radius: 22, // Image radius
                          backgroundImage: NetworkImage('https://asean2010.vn/wp-content/uploads/2020/03/mo-thay-cu-meo.jpg'),
                        ))),
                    Flexible(
                        flex:2,fit: FlexFit.tight,
                        child:  Padding(padding: EdgeInsets.all(16),
                          child: Text('Product 1'),
                        )
                    ),
                    Container(
                      child:Padding(padding: EdgeInsets.all(10),
                        child: IconButton(
                          icon: const Icon(Icons.edit),
                          color: Colors.purple,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MyApp2()),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      child:Padding(padding: EdgeInsets.all(0),
                        child: IconButton(
                          icon: const Icon(Icons.folder_open),
                          color: Colors.green,
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Container(
                      child:Padding(padding: EdgeInsets.only(left: 10),
                        child: IconButton(
                          icon: const Icon(Icons.delete),
                          color: Colors.red,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                  )
                ),
                const Divider(
                  height: 15,
                  thickness: 1,
                  indent: 2,
                  endIndent: 0,
                  color: Colors.black12,
                ),
                Expanded(
                    child:  Row(
                      children: [
                        Flexible(
                            flex:1,
                            fit: FlexFit.loose,
                            child:  Padding(padding: EdgeInsets.all(15),
                                child: CircleAvatar(
                                  radius: 22, // Image radius
                                  backgroundImage: NetworkImage('https://asean2010.vn/wp-content/uploads/2020/03/mo-thay-cu-meo.jpg'),
                                ))),
                        Flexible(
                            flex:2,fit: FlexFit.tight,
                            child:  Padding(padding: EdgeInsets.all(16),
                              child: Text('Product 2'),

                            )
                        ),
                        Container(
                          child:Padding(padding: EdgeInsets.all(10),
                            child: IconButton(
                              icon: const Icon(Icons.edit),
                              color: Colors.purple,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const MyApp3()),
                                );
                              },
                            ),
                          ),
                        ),
                        Container(
                          child:Padding(padding: EdgeInsets.all(0),
                            child: IconButton(
                              icon: const Icon(Icons.folder_open),
                              color: Colors.green,
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Container(
                            child:Padding(padding: EdgeInsets.only(left: 10),
                              child: IconButton(
                                icon: const Icon(Icons.delete),
                                color: Colors.red,
                                onPressed: () {},
                              ),
                          ),
                        )
                      ],
                    )
                ),

              ],
          )
        ),

    )
        )
    );
  }
}
