import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project_1/page_3..dart';
import 'package:http/http.dart' as http;

class Page_2 extends StatefulWidget {
  const Page_2({Key? key}) : super(key: key);

  @override
  State<Page_2> createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: Text(
                "    Let's   Discover", style: TextStyle(fontWeight: FontWeight
                  .bold, fontSize: 30),), flex: 4,),
              Expanded(child: Container(
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.travel_explore),
                ),
              ),),
            ],
          ),),

          Row(
            children: [
              Expanded(child: Container(),),
              Expanded(child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[350]),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    '   Search destination   ',
                    style: TextStyle(color: Colors.black45, fontSize: 20),
                  ),
                ),
              ),
                flex: 6,
              ),
              Expanded(child: Container(),),
            ],
          ),

          Expanded(child: Column(
            children: [
              Expanded(child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(child: Text('Categories', style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),)),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text('See all', style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 15,
                        decoration: TextDecoration.underline),
                      textAlign: TextAlign.right,),
                  ),),
                ],
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              // Image border
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(25), // Image radius
                                child: Image.asset(
                                    'images/sydney.jpg', fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        Container(child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 8.0),
                          child: Text(
                            'Sydney', style: TextStyle(fontSize: 13),),
                        ),)
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(25), // Image radius
                              child: Image.asset(
                                  'images/usa.jpg', fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Container(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Usa', style: TextStyle(fontSize: 13),),
                        ),)
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(25), // Image radius
                              child: Image.asset(
                                  'images/japan.jpg', fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Container(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Japan', style: TextStyle(fontSize: 13),),
                        ),)
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(25), // Image radius
                              child: Image.asset(
                                  'images/Paris.jpg', fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Container(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Paris', style: TextStyle(fontSize: 13),),
                        ),)
                      ],
                    ),


                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              // Image border
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(25), // Image radius
                                child: Image.asset(
                                    'images/kenya.jpg', fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        Container(child: Padding(
                          padding: const EdgeInsets.only(right: 20, top: 8.0),
                          child: Text('Kenya', style: TextStyle(fontSize: 13),),
                        ),)
                      ],
                    ),


                  ],
                ),
              )),
            ],
          ), flex: 3,),

          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[350]),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Text(
                        'All', style: TextStyle(fontSize: 15),)),),
                      Expanded(child: Container(decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                          child: Center(child: Text('Popular', style: TextStyle(
                              fontSize: 15, color: Colors.deepOrange),))),),
                      Expanded(child: Center(child: Text(
                        'News', style: TextStyle(fontSize: 15),)),),
                      Expanded(child: Center(child: Text(
                        'More', style: TextStyle(fontSize: 15),))),
                    ],
                  )
              ),
            ),
          ),),

          Container(
            height: 250,
            child: FutureBuilder<List<dynamic>>(
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(itemBuilder: (context, index) {
                   return Padding(
                      padding: const EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(65),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return Page_3();
                            }));
                          },
                          child: Container(
                            child: Image.asset(
                                snapshot.data![index]['CityImages'].toString()),
                          ),
                        ),
                      ),
                    );
                  }, itemCount: snapshot.data!.length,
                  scrollDirection: Axis.horizontal,);
                }
                else {
                  return Center(child: CircularProgressIndicator());
                }
              },future: getDetailFromApi(),
            ),
          )

        ],
      ),


      bottomNavigationBar: BottomAppBar(
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: IconButton(icon: Icon(
                Icons.home,
                color: Colors.deepOrangeAccent,
              ),
                onPressed: () {},
              ),
            ),

            IconButton(icon: Icon(
              Icons.location_on,
              color: Colors.blueGrey,
            ),
              onPressed: () {},
            ),

            IconButton(icon: Icon(
              Icons.list,
              color: Colors.blueGrey,
            ),
              onPressed: () {},
            ),

            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(icon: Icon(
                Icons.contact_page,
                color: Colors.blueGrey,
              ),
                onPressed: () {},
              ),
            ),
          ],),
        color: Colors.cyan,
      ),
    );
  }

  Future<List<dynamic>> getDetailFromApi() async {
    http.Response res = await http.get(
        Uri.parse('https://630d9abc109c16b9abe8d7c2.mockapi.io/Travel_icon'));

    List<dynamic> jsonData = jsonDecode(res.body.toString());
    return jsonData;
  }
}
