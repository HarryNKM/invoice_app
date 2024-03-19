import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_app/utiles/global.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  List<TextEditingController> l1 = [TextEditingController()];

  int? price;
  int? guantity;
  GlobalKey<FormState> formkey = GlobalKey();

  TextEditingController txtprice = TextEditingController();
  TextEditingController txtquantity = TextEditingController();
  TextEditingController txtitemname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "InvoiceG",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  Navigator.pushNamed(context, 'invoice');
                  Map list = {
                    'ItemName': txtitemname.text,
                    'ItemPrice': txtprice.text,
                    'ItemQty': txtquantity.text,
                  };
                  g1.l1.add(list);
                  ScaffoldMessenger.of(context).showSnackBar(

                    const SnackBar(
                      content: Text("Saved"),
                      backgroundColor: Colors.blue,
                    ),
                  );
                }
              },
              icon: const Icon(
                Icons.picture_as_pdf,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: List.generate(
                      l1.length,
                      (index) => Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(20),
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Form(
                              key:formkey,
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                      hintText: "Jeans...",
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            l1.removeAt(index);
                                          });
                                        },
                                        icon: const Icon(Icons.delete),
                                      ),
                                    ),
                                    controller: txtitemname,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Item Name Is Empty";
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 100,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(20),
                                            ),
                                            hintText: "Price...",
                                          ),
                                          controller: txtprice,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "Price Is Required";
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                       const SizedBox(height: 10,),
                                       Container(
                                        height: 70,
                                        width: 100,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(20),
                                            ),
                                            hintText: "Quantity...",
                                          ),
                                          controller: txtquantity,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "Quantity Is Require";
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        l1.add(TextEditingController());
                      });
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 3),
                      ),
                      child: const Icon(
                        Icons.add,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
