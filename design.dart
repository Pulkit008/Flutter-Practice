import 'package:flutter/material.dart';

class FlipkartDesign extends StatelessWidget {
  _getTextStyle(){
    return TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Flipkart'),
      ),
      body: SafeArea(
        child: Container(
          width: deviceSize.width,
          height: deviceSize.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    width: deviceSize.width/5,
                    child: Column(
                      children: [
                        Image(image: NetworkImage('https://rukminim1.flixcart.com/image/300/300/k4vmxzk0/cases-covers/back-cover/y/y/g/spigen-f23cs25961-original-imafnzhgzuty3gb6.jpeg'),),
                        Container(margin: EdgeInsets.only(top: 10),child: Text('Phones',style: _getTextStyle(),))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: deviceSize.width/5,
                    child: Column(
                      children: [
                        Image(image: NetworkImage('https://rukminim1.flixcart.com/image/150/150/k01b8280pkrrdj/headphone/g/j/8/jbl-t450-bt-original-imaff82dvk9wsbzx.jpeg?'),),
                        Container(margin: EdgeInsets.only(top: 10),child: Text('Headphones',style: _getTextStyle(),))
                      ],
                    ),
                  ),
                  Container(
                    width: deviceSize.width/5,
                    child: Column(
                      children: [
                        Image(image: NetworkImage('https://rukminim1.flixcart.com/image/150/150/k687wy80/computer/h/g/h/hp-notebook-laptop-original-imafhgugjwkag86g.jpeg'),),
                        Container(margin: EdgeInsets.only(top: 10),child: Text('Laptops',style: _getTextStyle(),))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: deviceSize.width/5,
                    child: Column(
                      children: [
                        Image(image: NetworkImage('https://rukminim1.flixcart.com/image/150/150/ja73ki80/webcam/pc-webcam/7/q/e/logitech-c310-original-imaeztzqny7jh7gh.jpeg'),),
                        Container(margin: EdgeInsets.only(top: 10),child: Text('WebCams',style: _getTextStyle(),))
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    width: deviceSize.width/5,
                    child: Column(
                      children: [
                        Image(image: NetworkImage('https://rukminim1.flixcart.com/image/400/400/kcauaa80/mobile/2/p/u/poco-m2-pro-mzb9621in-original-imaftg9fkdpgbgxq.jpeg'),),
                        Container(margin: EdgeInsets.only(top: 10),child: Text('Poco',style: _getTextStyle(),))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: deviceSize.width/5,
                    child: Column(
                      children: [
                        Image(image: NetworkImage('https://rukminim1.flixcart.com/image/400/400/kbi9h8w0/mobile/g/g/c/samsung-galaxy-a21s-sm-a217fzkfins-original-imafsuyajewgnfcg.jpeg'),),
                        Container(margin: EdgeInsets.only(top: 10),child: Text('Samsung',style: _getTextStyle(),))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: deviceSize.width/5,
                    child: Column(
                      children: [
                        Image(image: NetworkImage('https://rukminim1.flixcart.com/image/400/400/kcm9t3k0/mobile/p/p/q/vivo-x50-pro-vivo-2006-original-imaftppahwbc6myx.jpeg'),),
                        Container(margin: EdgeInsets.only(top: 10),child: Text('Vivo',style: _getTextStyle(),))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: deviceSize.width/5,
                    child: Column(
                      children: [
                        Image(image: NetworkImage('https://rukminim1.flixcart.com/image/400/400/k79dd3k0/mobile/t/k/v/oppo-reno3-pro-cph2035-original-imafpj4fpqp3zpq3.jpeg'),),
                        Container(margin: EdgeInsets.only(top: 10),child: Text('Oppo',style: _getTextStyle(),))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
