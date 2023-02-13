import 'package:flutter/material.dart';
import 'package:project_1/page_3..dart';

class Page_2 extends StatefulWidget {
  const Page_2({Key? key}) : super(key: key);

  @override
  State<Page_2> createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  @override
  void initState() {
    super.initState();
  }
  int selectedIndex = 0;
  List<Widget> WidgetsList = [
       Container(color: Colors.white,)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
               Expanded(child: Text("    Let's   Discover",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30), ),flex: 4,),
                Expanded(child:  Container(
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
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[350]),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                        '   Search destination   ',
                        style: TextStyle(color: Colors.black45,fontSize: 20),
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
                    child: Container(child: Text('Categories',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text('See all',style: TextStyle(color: Colors.deepOrange,fontSize: 15, decoration:TextDecoration.underline),textAlign: TextAlign.right,),
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
                             child:ClipRRect(
                               borderRadius: BorderRadius.circular(10), // Image border
                               child: SizedBox.fromSize(
                                 size: Size.fromRadius(25), // Image radius
                                 child: Image.asset('images/sydney.jpg', fit: BoxFit.cover),
                               ),
                             ),
                           ),
                         ),
                         Container(child: Padding(
                           padding: const EdgeInsets.only(left: 20,top: 8.0),
                           child: Text('Sydney',style: TextStyle(fontSize: 13),),
                         ),)
                       ],
                     ),

                    Column(
                      children: [
                        Container(
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(10), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(25), // Image radius
                              child: Image.asset('images/usa.jpg', fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Container(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Usa',style: TextStyle(fontSize: 13),),
                        ),)
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(10), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(25), // Image radius
                              child: Image.asset('images/japan.jpg', fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Container(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Japan',style: TextStyle(fontSize: 13),),
                        ),)
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(10), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(25), // Image radius
                              child: Image.asset('images/Paris.jpg', fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Container(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Paris',style: TextStyle(fontSize: 13),),
                        ),)
                      ],
                    ),



                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(10), // Image border
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(25), // Image radius
                                child: Image.asset('images/kenya.jpg', fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                        Container(child: Padding(
                          padding: const EdgeInsets.only(right: 20,top: 8.0),
                          child: Text('Kenya',style: TextStyle(fontSize: 13),),
                        ),)
                      ],
                    ),


                  ],
                ),
              )),
            ],
          ),flex: 3,),

          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[350]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(child: Center(child: Text('All',style: TextStyle(fontSize: 15),)),),
                    Expanded(child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),child: Center(child: Text('Popular',style: TextStyle(fontSize: 15,color: Colors.deepOrange),))),),
                    Expanded(child: Center(child: Text('News',style: TextStyle(fontSize: 15),)),),
                    Expanded(child: Center(child: Text('More',style: TextStyle(fontSize: 15),))),
                  ],
                )
              ),
            ),
          ),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: InkWell(onTap: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) {
                    return Page_3();
                  },),);},child: Container(child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset('images/Island.jpg'),),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset('images/Jammu_kashmir.jpg')),),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset('images/Cape_town.jpg')),),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset('images/Disneyland.jpg')),),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset('images/Melbourne.jpg')),),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset('images/Skylines.jpg')),),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset('images/Manali.jpg')),),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset('images/London.jpg')),),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
            backgroundColor: Colors.cyan,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Add'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'List'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: 'contact_page'
          ),
        ],
        selectedItemColor: Colors.orange,
      ),




    );
  }
}
