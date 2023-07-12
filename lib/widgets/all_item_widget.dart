import 'package:flutter/material.dart';
class AllItemWidget extends StatelessWidget {
  const AllItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
    childAspectRatio: 0.68,
    physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
          Container(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
            margin:  const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:  const [BoxShadow(
                color: Colors.blue,
                blurRadius: 5,
                spreadRadius: 1,
              )
            ]
            ),
            child: Column(children: [
              InkWell(
                onTap: (){Navigator.pushNamed(context, "itemPage");},
                child:  Padding(padding: const EdgeInsets.all(10),
                child: Image.asset("assets/Restaurant Image.png",
                  height: 130,),
                ),
              ),
              const Text(
                "Healthy Food",
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 4,),
              const Text(
                "8Mins",
                style: TextStyle(
                  fontSize: 15,
                  //  fontWeight: FontWeight.bold
                ),
              ),
            ],),
          ),
        Container(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
          margin:  const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:  const [BoxShadow(
                color: Colors.blue,
                blurRadius: 5,
                spreadRadius: 1,
              )
              ]
          ),
          child: Column(children: [
            InkWell(
              onTap: (){Navigator.pushNamed(context, "itemPage");},
              child:  Padding(padding: const EdgeInsets.all(10),
                child: Image.asset("assets/Resturant Image.png",
                  height: 130,),
              ),
            ),
            const Text(
              "Vegan Resto",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 4,),
            const Text(
              "12 Mins",
              style: TextStyle(
                fontSize: 15,
                //  fontWeight: FontWeight.bold
              ),
            ),
          ],),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
          margin:  const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:  const [BoxShadow(
                color: Colors.blue,
                blurRadius: 5,
                spreadRadius: 1,
              )
              ]
          ),
          child: Column(children: [
            InkWell(
              onTap: (){Navigator.pushNamed(context, "itemPage");},
              child:  Padding(padding: const EdgeInsets.all(10),
                child: Image.asset("assets/Restaurant Image (1).png",
                  height: 130,),
              ),
            ),
            const Text(
              "Good Food",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 4,),
            const Text(
              "12Mins",
              style: TextStyle(
                fontSize: 15,
                //  fontWeight: FontWeight.bold
              ),
            ),
          ],),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
          margin:  const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:  const [BoxShadow(
                color: Colors.blue,
                blurRadius: 5,
                spreadRadius: 1,
              )
              ]
          ),
          child: Column(children: [
            InkWell(
              onTap: (){Navigator.pushNamed(context, "itemPage");},
              child:  Padding(padding: const EdgeInsets.all(10),
                child: Image.asset("assets/Restaurant Image (6).png",
                  height: 130,),
              ),
            ),
            const Text(
              "Smart Resto",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 4,),
            const Text(
              "8Mins",
              style: TextStyle(
                fontSize: 15,
                //  fontWeight: FontWeight.bold
              ),
            ),
          ],),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
          margin:  const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:  const [BoxShadow(
                color: Colors.blue,
                blurRadius: 5,
                spreadRadius: 1,
              )
              ]
          ),
          child: Column(children: [
            InkWell(
              onTap: (){Navigator.pushNamed(context, "itemPage");},
              child:  Padding(padding: const EdgeInsets.all(10),
                child: Image.asset("assets/Restaurant Image (4).png",
                  height: 130,),
              ),
            ),
            const Text(
              "Vegan Resto",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 4,),

          ],),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
          margin:  const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:  const [BoxShadow(
                color: Colors.blue,
                blurRadius: 5,
                spreadRadius: 1,
              )
              ]
          ),
          child: Column(children: [
            InkWell(
              onTap: (){Navigator.pushNamed(context, "itemPage");},
              child:  Padding(padding: const EdgeInsets.all(10),
                child: Image.asset("assets/Restaurant Image (3).png",
                  height: 130,),
              ),
            ),
            const Text(
              "Healthy food",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 4,),

          ],),
        ),
      ],
    );
  }
}
