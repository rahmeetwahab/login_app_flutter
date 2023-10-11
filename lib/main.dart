import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyLoginApp());
}

class MyLoginApp extends StatelessWidget {
  const MyLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginApp(),
    );
  }
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('E-LiveStock')),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: 115,
                      left: MediaQuery.of(context).size.width / 2 - 65),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10)),
                  ),
                  width: 100,
                  height: 100,
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 85,
                      left: MediaQuery.of(context).size.width / 2 - 35),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  width: 100,
                  height: 100,
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 100),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )),
                    width: 100,
                    height: 100,
                    child: Image.asset("electro.png"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'E-LiveStock',
              style: TextStyle(color: Colors.blue, fontSize: 27),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "NIK",
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 200,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              width: 200,
              margin: const EdgeInsets.only(left: 60),
              child: const Text(
                "Lupa Password?",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(10))),
              child: ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  child: const Text("Masuk")),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(10))),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Masuk Dengan Google")),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(10))),
              child: ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Registrasi")),
            ),
          ],
        ),
      ),
    );
  }
}
