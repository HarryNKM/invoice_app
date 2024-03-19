import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "InvoiceG",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
        InkWell(onTap: () {
          setState(() {
            Navigator.pushNamed(context, 'detail');
          });
        },
          child:Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              height: 200,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Generate",style: TextStyle(color: Colors.white,fontSize: 35),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Invoice",style: TextStyle(color: Colors.white,fontSize: 30),),
                      Icon(Icons.add,color: Colors.white,size: 50,),
                    ],
                  ),
                ],
              ),
            ),
        ),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.all(20),
              height: 200,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
