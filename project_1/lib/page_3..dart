import 'package:flutter/material.dart';

class Page_3 extends StatefulWidget {
  const Page_3({Key? key}) : super(key: key);

  @override
  State<Page_3> createState() => _Page_3State();
}

class _Page_3State extends State<Page_3> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState(){
    _tabController = TabController(length: 6,vsync: this,initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }
  _handleTabSelection(){
    if(_tabController.indexIsChanging){
      setState(() {

      });
    }
  }
  @override
  void dispose(){

    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                child: Image.asset('images/Island.jpg',fit: BoxFit.cover,))),
            flex: 5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text('The Island Shrine of \n Itsukushima',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),

          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 200.0),
                  child: TabBar(
                      controller: _tabController,
                      labelColor: Color(0xFFE57734),
                      unselectedLabelColor: Colors.black.withOpacity(0.5),
                      isScrollable: true,
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                          width: 3,
                          color: Color(0xFFE57734),
                        ),
                        insets: EdgeInsets.symmetric(horizontal: 35),
                      ),
                      labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),
                      labelPadding: EdgeInsets.symmetric(horizontal: 35),
                      tabs: [
                        Tab(text: 'Description',),
                        Tab(text: 'Review',),
                      ]),
                ),


                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0,left: 10),
                      child:Container(
                        height: 100,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Text("The island of Itsukushima, in the Seto inland sea, has been a holy place of Shintoism since the earliest times. The first shrine buildings here were probably erected in the 6th century. The present shrine dates from the 12th century and the harmoniously arranged buildings reveal great artistic and technical skill."*10
                            ,style: TextStyle(fontSize: 15),),
                        ),
                      ),
                    ),


                  ],
                ),

              ],
            ),


            flex: 2,
          ),
          Row(
            children: [
              Expanded(child: Container(),),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.orange[200]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("   Book now   ",style: TextStyle(color: Colors.white,fontSize: 15),textAlign: TextAlign.center,),
                    ),
                  ),
                ),
              ),
              Expanded(child: Container(),),
            ],
          ),
        ],
      ),
    );
  }
}
