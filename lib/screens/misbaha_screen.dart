import 'package:flutter/material.dart';

class Misbaha extends StatefulWidget {
  const Misbaha({Key? key}) : super(key: key);

  @override
  _MisbahaState createState() => _MisbahaState();
}

class _MisbahaState extends State<Misbaha> {
  int counter = 0;
  String name = "الله أكبر";
  int roll = 0;

  @override
  Widget build(BuildContext context) {
    setState(() {
      while (counter/46>=1) {
        counter =0;
        roll++;
      }
      if (counter == 0) name = "الله أكبر ";
      if (counter == 15) {
        name = "سبحان الله ";
      }
      if (counter == 30) name = "الحمد لله ";
      if (counter == 45) name = "لا اله الا الله";
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Misbaha",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/564x/7f/43/5f/7f435fd5f18e446c1b3cedae943aa4eb.jpg"),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: [
              const SizedBox(
                height: 240,
              ),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 20, right: 30),
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(40)),
                ),
                child: const Text(
                  "عدد التسبيحات",
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "$counter",
                style: const TextStyle(
                  fontSize: 35,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      shadowColor: Colors.black,
                      elevation: 5,
                      minimumSize: const Size(150, 150),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                          side: const BorderSide(
                            color: Colors.white,
                            width: 5,
                          ))),
                  child: const Text(
                    "اضغط",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "الدورة رقم : $roll",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          counter = 0;
                          roll=0;
                        });
                      },
                      child: const Text("البدء من جديد",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )))
                ],
              )
            ],
          )),
    );
  }
}
