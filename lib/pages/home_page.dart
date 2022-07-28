import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/home_screen_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Age check")),
      body: ChangeNotifierProvider<HomePageProvider>(
        create: (context)=>HomePageProvider(),
        child: Consumer<HomePageProvider>(builder: (context,provider,child){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(provider.message,style:TextStyle(
              color: provider.isEligible ? Colors.green : Colors.red
            )),
        TextField(
          keyboardType: TextInputType.number,
          onChanged: (val){
            provider.checkEligibilty(int.parse(val));
          },
          decoration: const InputDecoration(hintText: "Enter your age"),
        )
      ],);
        }),
      )
      
      
    );
  }
}