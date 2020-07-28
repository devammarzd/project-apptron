import 'package:fa_stepper/fa_stepper.dart';
import 'package:flutter/material.dart';
import 'package:project_apptron/CustomWidgets/CustomScaffold.dart';
import 'package:project_apptron/Global.dart';
import 'package:project_apptron/Screens/CartScreens/CartContent.dart';
import 'package:project_apptron/Screens/CartScreens/DeliveryContent.dart';
import 'package:project_apptron/Screens/CartScreens/OrderContent.dart';
import 'package:project_apptron/Screens/CartScreens/PaymentContent.dart';
import 'package:project_apptron/Screens/OrderScreens/Orders.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  Function demo;
  int currentstep = 0;
  bool complete = false;
  bool cartStateActive = false,
      delvStateActive = false,
      payStateActive = false,
      orderStateActive = false;
  FAStepstate cartState = FAStepstate.editing,
      delvState = FAStepstate.editing,
      payState = FAStepstate.editing,
      orderState = FAStepstate.editing;
  next() {
    setState(() {});
    currentstep + 1 != steps.length
        ? goTo(currentstep + 1)
        : setState(() {
            complete = true;
          });
  }

  cancel() {
    if (currentstep > 0) {
      if (currentstep - 1 == 0) {
        setState(() {
          cartState = FAStepstate.editing;
          cartStateActive = false;
        });
      } else if (currentstep - 1 == 1) {
        setState(() {
          delvState = FAStepstate.editing;
          delvStateActive = false;
        });
      } else if (currentstep - 1 == 2) {
        setState(() {
          payState = FAStepstate.editing;
          payStateActive = false;
        });
      } else if (currentstep - 1 == 3) {
        setState(() {
          orderState = FAStepstate.editing;
          orderStateActive = false;
        });
      }
      goTo(currentstep - 1);
    }
  }

  goTo(int nextstep) {
    if (nextstep - 1 == 0) {
      setState(() {
        cartState = FAStepstate.complete;
        cartStateActive = true;
      });
    } else if (nextstep - 1 == 1) {
      setState(() {
        delvState = FAStepstate.complete;
        delvStateActive = true;
      });
    } else if (nextstep - 1 == 2) {
      setState(() {
        payState = FAStepstate.complete;
        payStateActive = true;
      });
    } else if (nextstep - 1 == 3) {
      setState(() {
        orderState = FAStepstate.complete;
        orderStateActive = true;
      });
    }
    setState(() {
      currentstep = nextstep;
    });
  }

  List<Step> steps = [];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        index: 3,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Theme(
                data: Theme.of(context).copyWith(
                  primaryColor: Colors.green,
                ),
                child: FAStepper(
                    currentStep: currentstep,
                    titleHeight: 90,
                    type: FAStepperType.horizontal,
                    controlsBuilder: (BuildContext context,
                        {VoidCallback onStepContinue,
                        VoidCallback onStepCancel}) {
                      return Container();
                    },
                    steps: [
//Cart Step
                      FAStep(
                          title: Column(
                            children: <Widget>[
                              Icon(Icons.shopping_cart,
                                  size: currentstep == 0 ? 26 : 20,
                                  color: cartState == FAStepstate.editing
                                      ? Theme.of(context).primaryColor
                                      : Colors.green),
                              Text(
                                'Cart',
                                style: TextStyle(
                                    color: cartState == FAStepstate.editing
                                        ? primaryTextColor
                                        : Colors.green,
                                    fontSize: currentstep == 0 ? 16 : 12),
                              ),
                            ],
                          ),
                          isActive: cartStateActive,
                          state: cartState,
                          content: CartContent()),
//Delivry Step
                      FAStep(
                          title: Column(
                            children: <Widget>[
                              Icon(Icons.location_on,
                                  size: currentstep == 1 ? 26 : 20,
                                  color: delvState == FAStepstate.editing
                                      ? Theme.of(context).primaryColor
                                      : Colors.green),
                              Text(
                                'Delivery',
                                style: TextStyle(
                                    color: delvState == FAStepstate.editing
                                        ? primaryTextColor
                                        : Colors.green,
                                    fontSize: currentstep == 1 ? 16 : 12),
                              ),
                            ],
                          ),
                          isActive: delvStateActive,
                          state: delvState,
                          content: DeliveryContent()),
//PaymentStep
                      FAStep(
                          title: Column(
                            children: <Widget>[
                              Icon(Icons.payment,
                                  size: currentstep == 2 ? 26 : 20,
                                  color: payState == FAStepstate.editing
                                      ? Theme.of(context).primaryColor
                                      : Colors.green),
                              Text(
                                'Payment',
                                style: TextStyle(
                                    color: payState == FAStepstate.editing
                                        ? primaryTextColor
                                        : Colors.green,
                                    fontSize: currentstep == 2 ? 16 : 12),
                              ),
                            ],
                          ),
                          isActive: payStateActive,
                          state: payState,
                          content: PaymentContent()),
//Order Step
                      FAStep(
                          title: Column(
                            children: <Widget>[
                              Icon(Icons.done_all,
                                  size: currentstep == 3 ? 26 : 20,
                                  color: orderState == FAStepstate.editing
                                      ? Theme.of(context).primaryColor
                                      : Colors.green),
                              Text(
                                'Order',
                                style: TextStyle(
                                    color: orderState == FAStepstate.editing
                                        ? primaryTextColor
                                        : Colors.green,
                                    fontSize: currentstep == 3 ? 16 : 12),
                              ),
                            ],
                          ),
                          isActive: orderStateActive,
                          state: orderState,
                          content: OrderContent())
                    ]),
              ),
            ),
            currentstep == 3
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.orangeAccent,
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) => Orders()),
                              (Route<dynamic> route) => false);
                        },
                        child: Container(
                            height: 50,
                            width: 130,
                            alignment: Alignment.center,
                            child: Text(
                              'View My Orders',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ),
                    ],
                  )
                : Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          color: Colors.redAccent[200],
                          onPressed: () {
                            cancel();
                          },
                          child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'Back',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )),
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          color: Colors.green[700],
                          onPressed: () {
                            next();
                          },
                          child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: currentstep == 2
                                  ? Text(
                                      'Confirm Order',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    )
                                  : Text(
                                      'Next',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    )),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
        bottomappbarTitle: Container());
  }
}
