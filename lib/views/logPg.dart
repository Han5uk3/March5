import 'package:flutter/material.dart';

class logpg extends StatefulWidget {
  const logpg({super.key});

  @override
  State<logpg> createState() => _logpgState();
}

class _logpgState extends State<logpg> {


  @override
  Widget build(BuildContext context) {
    TextEditingController ec = TextEditingController();

    TextEditingController ep = TextEditingController();
    FocusNode ema = FocusNode();
    FocusNode pwa = FocusNode();
    GlobalKey<FormState> fmky = GlobalKey();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 140, bottom: 40),
              child: Center(
                child: Text(
                  "Log in to your account",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              key: fmky,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 28, bottom: 9),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28, right: 28),
                  child: TextFormField(
                    onEditingComplete: () => pwa,
                    keyboardType: TextInputType.emailAddress,
                    controller: ec,
                    focusNode: ema,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email is required!";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        filled: true,
                        hintText: "ex: jon.smith@email.com",
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 16),
                        fillColor: Colors.black12,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 28, bottom: 9, top: 9),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 28,
                    right: 28,
                  ),
                  child: TextFormField(
                    controller: ep,
                    focusNode: pwa,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                     if(value!.isEmpty) {
                       return "Password is required!";
                     }
                    else{
                       return null;
                     }
                    },
                    decoration: InputDecoration(
                        filled: true,
                        hintText: "********",
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 16),
                        fillColor: Colors.black12,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 30),
                  child: Container(
                      width: MediaQuery.of(context).size.width - 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      height: 55,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor:
                                  const MaterialStatePropertyAll(Colors.blue)),
                          onPressed: () {
                            if(fmky.currentState!.validate()){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                return const Scaffold(
                                  body: Column(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Login Successful!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                                  ],),
                                );
                              },));

                            }
                          },
                          child: const Text(
                            "LOG IN",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21),
                          ))),
                ),
              ],
            )),
            const Text(
              "or log in with",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Material(
                      elevation: 1.5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 3.9,
                        decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(10),
                            backgroundBlendMode: BlendMode.darken,
                            image: const DecorationImage(
                                image: AssetImage("images/googleico.png"),
                                opacity: 0.75,
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Material(
                      elevation: 1.5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 3.9,
                        decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(10),
                            backgroundBlendMode: BlendMode.darken,
                            image: const DecorationImage(
                              image: AssetImage("images/fbnew.jpeg"),
                              opacity: 0.75,
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Material(
                      elevation: 1.5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 3.9,
                        decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(10),
                            backgroundBlendMode: BlendMode.darken,
                            image: const DecorationImage(
                                image: AssetImage("images/twico.jpeg"),
                                opacity: 0.75,
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                InkWell(
                  onTap: () {},
                  splashFactory: NoSplash.splashFactory,
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
