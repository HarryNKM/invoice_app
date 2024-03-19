import 'dart:io';

import 'package:flutter/material.dart';

import '../../utiles/global.dart';


class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Your Invoice",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.file(
                    File("${g1.profileImage}"),
                    height: 100,
                    width: 100,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Name :- ${g1.name}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Mobile :- ${g1.phone}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Address :- ${g1.add}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 20,
                  color: Colors.black,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Your Transaction",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.black,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Items",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Price",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const Divider(color: Colors.black),
                const SizedBox(height: 10),
                Column(
                    children: g1.l1
                        .map(
                          (e) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${e['ItemName']}",
                            style: const TextStyle(fontSize: 18),
                          ),
                          const Spacer(),
                          Text(
                            "${e['ItemPrice']} /-",
                            style: const TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: 10),
                          const Divider(
                            color: Colors.black,
                          ),
                        ],
                      ),
                    )
                        .toList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}