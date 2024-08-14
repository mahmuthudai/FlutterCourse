import 'package:flutter/material.dart';

class OtherFormWidgets extends StatefulWidget {
  const OtherFormWidgets({super.key});

  @override
  State<OtherFormWidgets> createState() => _OtherFormWidgetsState();
}

class _OtherFormWidgetsState extends State<OtherFormWidgets> {
  bool checkBoxState = false;
  String city = '';
  bool switchState = false;
  double sliderValue = 10;
  String selectedColor = 'Kirmizi';
  List cities = ['Ankara', 'Erzurum', 'Kayseri', 'Bursa'];
  String selectedCity = 'Ankara';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Diğer Form İşlemleri'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            CheckboxListTile(
              value: checkBoxState,
              onChanged: (value) {
                setState(() {
                  checkBoxState = value!;
                });
              },
              activeColor: Colors.red,
              title: const Text('Check Box Title'),
              subtitle: const Text('check Box Subtitle'),
              secondary: const Icon(Icons.add),
            ),
            RadioListTile(
              value: 'Ankara',
              groupValue: city,
              onChanged: (value) {
                setState(() {
                  city = value!;
                });
              },
              title: const Text('Ankara'),
              subtitle: const Text('Haymana'),
              secondary: const Icon(Icons.location_city),
            ),
            RadioListTile(
              value: 'Kayseri',
              groupValue: city,
              onChanged: (value) {
                setState(() {
                  city = value!;
                });
              },
              title: const Text('Kayseri'),
              subtitle: const Text('Melikgazi'),
              secondary: const Icon(Icons.location_city),
            ),
            RadioListTile(
              value: 'Erzurum',
              groupValue: city,
              onChanged: (value) {
                setState(() {
                  city = value!;
                });
              },
              title: const Text('Erzurum'),
              subtitle: const Text('Yakutiye'),
              secondary: const Icon(Icons.location_city),
            ),
            SwitchListTile(
              title: const Text('Switch Title'),
              subtitle: const Text('Switch Subtitle'),
              secondary: const Icon(Icons.done),
              value: switchState,
              onChanged: (value) {
                setState(() {
                  switchState = value;
                });
              },
            ),
            const Text('Slider Değerini Seçiniz :'),
            Slider(
              value: sliderValue,
              min: 10,
              max: 20,
              divisions: 20,
              label: sliderValue.toString(),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            DropdownButton(
              value: selectedColor,
              hint: const Text('Seçiniz'),
              items: [
                DropdownMenuItem(
                  value: 'Kirmizi',
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 20,
                        height: 20,
                        color: Colors.red,
                      ),
                      const Text('Kırmızı'),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: 'Mavi',
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 20,
                        height: 20,
                        color: Colors.blue,
                      ),
                      const Text('Mavi'),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: 'Yesil',
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 20,
                        height: 20,
                        color: Colors.green,
                      ),
                      const Text('Yeşil'),
                    ],
                  ),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedColor = value!;
                });
              },
            ),
            DropdownButton<String>(
              value: selectedCity,
              items: cities.map((currCity) {
                return DropdownMenuItem<String>(
                  value: currCity,
                  child: Text(currCity),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCity = value!;
                });
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //backgroundColor: Colors.amber,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
