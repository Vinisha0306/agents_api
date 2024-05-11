import 'package:agents_api/controller/agents_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double BoxW = 50;
  double BoxH = 50;

  void onChanged() {
    setState(() {
      BoxH = 420;
      BoxW = 500;
    });
  }

  @override
  Widget build(BuildContext context) {
    AgentsController listnable = Provider.of<AgentsController>(context);
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) => onChanged(),
            scrollDirection: Axis.horizontal,
            itemCount: listnable.allAgents.length,
            itemBuilder: (context, index) => AnimatedContainer(
              duration: const Duration(seconds: 10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(
                      int.parse(
                        "0xff${listnable.allAgents[index].backgroundGradientColors[0]}",
                      ),
                    ),
                    Color(
                      int.parse(
                        "0xff${listnable.allAgents[index].backgroundGradientColors[1]}",
                      ),
                    ),
                    Color(
                      int.parse(
                        "0xff${listnable.allAgents[index].backgroundGradientColors[2]}",
                      ),
                    ),
                    Color(
                      int.parse(
                        "0xff${listnable.allAgents[index].backgroundGradientColors[3]}",
                      ),
                    ),
                  ],
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      listnable.allAgents[index].displayName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      listnable.allAgents[index].developerName,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Image(
                      image: NetworkImage(
                        listnable.allAgents[index].fullPortraitV2,
                        scale: 4,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 1.1),
            child: Container(
              height: size.height * 0.18,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(350),
                  topRight: Radius.circular(350),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.85),
            child: CircleAvatar(
              radius: size.width * 0.15,
              backgroundColor: Color(
                int.parse(
                  "0xff${listnable.allAgents[0].backgroundGradientColors[3]}",
                ),
              ),
              child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
