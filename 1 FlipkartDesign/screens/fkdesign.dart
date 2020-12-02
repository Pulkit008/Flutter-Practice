import 'package:first_app/helpers/productoperations.dart';
import 'package:first_app/model/product.dart';
import 'package:flutter/material.dart';

class FlipkartDesign extends StatefulWidget {
  @override
  _FlipkartDesignState createState() => _FlipkartDesignState();
}

class _FlipkartDesignState extends State<FlipkartDesign> {
  Widget _showProduct(String imgUrl, String name) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(imgUrl),
            Text(name)
          ],
        ),
      ),
    );
  }

  List<Widget> _getChildren(){
    return productOperations.getProducts().map((Product p) => _showProduct(p.imageURL, p.name)).toList();
    // List<Product> products = productOperations.getProducts();
    // List<Widget> children = [];
    // products.forEach((element) {
    //   Widget currentWidget = _showProduct(element.imageURL, element.name);
    //   children.add(currentWidget);
    // });
    // return children;
  }

  ProductOperations productOperations = new ProductOperations();
  _loadProducts(){
    final List<String> urls = [
      'https://rukminim1.flixcart.com/image/400/400/kbi9h8w0/mobile/g/g/c/samsung-galaxy-a21s-sm-a217fzkfins-original-imafsuyajewgnfcg.jpeg',
      'https://rukminim1.flixcart.com/image/400/400/kcauaa80/mobile/2/p/u/poco-m2-pro-mzb9621in-original-imaftg9fkdpgbgxq.jpeg',
      'https://rukminim1.flixcart.com/image/400/400/kcm9t3k0/mobile/p/p/q/vivo-x50-pro-vivo-2006-original-imaftppahwbc6myx.jpeg',
      'https://rukminim1.flixcart.com/image/400/400/k79dd3k0/mobile/t/k/v/oppo-reno3-pro-cph2035-original-imafpj4fpqp3zpq3.jpeg',
      'https://rukminim1.flixcart.com/image/400/400/kcauaa80/mobile/2/p/u/poco-m2-pro-mzb9621in-original-imaftg9fkdpgbgxq.jpeg'
    ];
    for (int i=1; i<=5; i++) {
      productOperations.add(i, 'Apple iPhone ${i+3}', urls[i-1], 110.0*i);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: _getChildren()),
            Row(children: _getChildren())
            // Row()
          ],
        ),
      ),
    );
  }
}
