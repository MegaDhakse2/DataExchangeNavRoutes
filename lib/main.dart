import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()
{
  runApp(const DataExchangeNavRoutes());
}

class DataExchangeNavRoutes extends StatelessWidget {
  const DataExchangeNavRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Data Exchange',
      home: DataExchange(),
    );
  }
}

class DataExchange extends StatefulWidget {
  const DataExchange({Key? key}) : super(key: key);

  @override
  State<DataExchange> createState() => _DataExchangeState();
}

class _DataExchangeState extends State<DataExchange> {

  final myController1stNo = TextEditingController();
  final myController2ndNo = TextEditingController();

  int value = 0;

  int sum()
  {

    int myInt = int.parse(myController1stNo.text);
    int myInt2 = int.parse( myController2ndNo.text);

    print(value);
    return myInt + myInt2;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Data Input'),
        ),
        body: Column(
          children: [
            TextField(
              controller: myController1stNo,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
              hintText :'Enter Any no.',
              ),
            ),
            TextField(
              controller: myController2ndNo,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                hintText :'Enter Any  no.',
              ),
            ),

            TextButton(
              onPressed:() {

              setState((){
                value = sum();
              });
            },

              // print('value of second no.: $secondNo');
              // print('value of first no. : $firstNo');

               // int sum = myInt+myInt2;
               // print(sum);

                child: Text('Submit'),
            ),
            Text(value.toString()),
          ],
        ),

      ),
    );
  }
}
