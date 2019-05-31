import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../models/sort.dart';
import './filter-radio.dart';

class FilterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.5),
      child: FloatingActionButton(
        heroTag: "filter-button",
        child: Icon(Icons.filter_list, color: Colors.grey),
        backgroundColor: Colors.white,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext bc) {
              return ModalBottomSheet();
            },
          );
        },
      ),
    );
  }
}

class ModalBottomSheet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ModalBottomSheetState();
  }
}

class _ModalBottomSheetState extends State<ModalBottomSheet> {
  SortOptions _options = SortOptions.popularity;
  List<SortOptionRadio> sortOptionsRadio = [
    SortOptionRadio(sortOption: SortOptions.popularity, title: "Popularidad"),
    SortOptionRadio(
        sortOption: SortOptions.deliveryTime, title: "Tiempo de envio"),
    SortOptionRadio(
        sortOption: SortOptions.deliveryPrice, title: "Precio de envio"),
    SortOptionRadio(sortOption: SortOptions.price, title: "Precio"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 3.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.red, width: 2.0),
              ),
            ),
            child: Text(
              "Ordenar por: ",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          Column(
            children: sortOptionsRadio
                .map((sortOptionRadio) => FilterRadio(
                    options: _options,
                    sortOptionRadio: sortOptionRadio,
                    onPressed: (SortOptions value) {
                      setState(() {
                        _options = value;
                      });
                    }))
                .toList(),
          ),
          Expanded(
            child: Container(),
          ),
          Center(
            child: ButtonTheme(
              minWidth: 250.0,
              padding: EdgeInsets.symmetric(vertical: 10.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: RaisedButton(
                child: Text(
                  'Aplicar',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                color: Colors.red,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
