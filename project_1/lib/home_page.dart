import 'package:flutter/material.dart';
import 'package:project_1/page_2.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/download.jpg',
            fit: BoxFit.fill,
          ),
          Container(
            color: Colors.white.withOpacity(0.0),
          ),
          Column(
            children: [
              Expanded(
                child: Container(),
                flex: 4,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(
                          "Traveling made \n easy!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 50),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(
                          "Experience the world's best adventure around the world with us.",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {},
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Page_2();
                            },
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.orange[200]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "     Let's Go     ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }

}
