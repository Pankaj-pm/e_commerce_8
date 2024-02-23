import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homee"),
        actions: [
          InkWell(
            onTap: () {
              isShow = isShow ? false : true;
              setState(() {});
            },
            child: Icon(Icons.change_circle_outlined),
          )
        ],
      ),
      body: isShow ? LifeCycle() : Text("Hide"),
    );
  }
}

class LifeCycle extends StatefulWidget {
  const LifeCycle({super.key});

  @override
  State<LifeCycle> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> {
  bool isUp = true;

  @override
  void initState() {
    super.initState();
    print("LifeCycle initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("LifeCycle didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("LifeCycle build");
    return InkWell(
        onTap: () {
          isUp = isUp ? false : true;
          setState(() {});
        },
        child: Icon(
          isUp ? Icons.accessible : Icons.accessible_forward_outlined,
          size: 155,
          
        ));
  }

  @override
  void dispose() {
    super.dispose();
    print("LifeCycle dispose");
  }
}

/*


body: Center(
        child: InkWell(
          onTap: () {
            isUp = isUp ? false : true;
            setState(() {

            });
          },
          child: Icon(
            isUp ? Icons.accessible : Icons.accessible_forward_outlined,
            size: 155,
          ),
        ),
      ),


* */
