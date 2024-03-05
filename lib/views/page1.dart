import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loadingPage extends StatefulWidget {
  const loadingPage({super.key});

  @override
  State<loadingPage> createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage> {
  bool col = true;
  bool colo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: InkWell(
                  onTap: () {
                    col = true;
                    colo = false;
                    setState(() {});
                  },
                  child: col
                      ? const CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 10,
                        )
                      : const CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 10,
                        ),
                ),
              ),
              InkWell(
                onTap: () {
                  col = false;
                  colo = true;
                  setState(() {});
                },
                child: colo
                    ? const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 10,
                      )
                    : const CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 10,
                      ),
              ),
            ],
          ),
        ),
      ),
      body: col
          ? Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 140, left: 10, right: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/uplaodimg.jpeg"),
                            fit: BoxFit.cover)),
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      top: 62, left: 20, right: 20, bottom: 115),
                  child: Text(
                    "Upload an image or sieze it in real-time with just a click",
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 51),
                      child: InkWell(
                          splashFactory: NoSplash.splashFactory,
                          onTap: () {},
                          child: const Text(
                            "Skip",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: () {
                              col = false;
                              colo = true;
                              setState(() {});
                            },
                            icon: const Icon(Icons.arrow_circle_right,
                                size: 55, color: Colors.blue),
                          )),
                    ))
                  ],
                )
              ],
            )
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 140, left: 10, right: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/secimg.jpg"),
                            fit: BoxFit.cover)),
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, bottom: 50),
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        overflow: TextOverflow.clip,
                        "Instantly craft appropriate descriptions in text and audio",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      )),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 55,
                      height: 55,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {},
                        child: Text("Get Started",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    )),
              ],
            ),
    );
  }
}
