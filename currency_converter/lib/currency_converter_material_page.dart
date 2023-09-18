import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  final TextEditingController _textEditingController = TextEditingController();
  double result = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Currency Converter",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [Icon(Icons.monetization_on)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "BDT ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  hintText: "Put enter your amount BDT here",
                  hintStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  prefixIcon: Icon(Icons.monetization_on_rounded),
                  prefixIconColor: Colors.red,
                ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  result = double.parse(_textEditingController.text) * 109.59;
                  setState(() {});
                },
                child: Text("Convert"),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.zero, // Set the border radius to zero
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
