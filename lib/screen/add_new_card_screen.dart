import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:untitled16/core/screen.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({Key? key}) : super(key: key);

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
String cardNumber='';
String expiryDate='';
String cardHolderName='';
String cvvCode='';
bool showBackView=false;
final GlobalKey<FormState>formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: const BoxDecoration(),
        child: SafeArea(child: Column(children:[
          CreditCardWidget(cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: showBackView,
              onCreditCardWidgetChange: (CreditCardBrand creditCardBrand){},
          ),
          Expanded(child: SingleChildScrollView(
            child: Column(
              children: [
                CreditCardForm(cardNumber: cardNumber,
                    expiryDate: expiryDate,
                    cardHolderName: cardHolderName,
                    cvvCode: cvvCode,
                    onCreditCardModelChange: onCreditCardModelChange,
                    themeColor: Colors.blue,
                    formKey: formKey,
                cardNumberDecoration: const InputDecoration(
                  labelText: "Number",
                  hintText: "XXX XXX XXX XXX",
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,
                  width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                ),
                expiryDateDecoration: const InputDecoration(
                  labelText: "Expired Date",
                  hintText: "XX/XX",
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,width: 2),
                  ),
                ),
                cvvCodeDecoration: const InputDecoration(
                  labelText: "CVV",
                  hintText: "XXX",
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,width: 2),
                  ),
                ),
                  cardHolderDecoration: const InputDecoration(
                    labelText: "card Holder",
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey,width: 2),
                    ),
                  ),
                  ),
                const SizedBox(height: 20,),
                ElevatedButton(onPressed: () {Navigator.pushNamedAndRemoveUntil(
                  context,order , (route) => false,
                );  }, child: const Text("order"),
                ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(
                  context,home , (route) => false,
                );
              }, child: const Text("back"),



            ),
          ]),
          ),
          )],
        ),
        ),
      ),
    );
  }
  void onCreditCardModelChange(CreditCardModel creditCardModel){
    setState(() {
      cardNumber=creditCardModel.cardNumber;
      expiryDate=creditCardModel.expiryDate;
      cardHolderName=creditCardModel.cardHolderName;
      cvvCode=creditCardModel.cvvCode;
      showBackView=creditCardModel.isCvvFocused;
    });
  }
}
