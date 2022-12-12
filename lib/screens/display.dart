import 'package:alhind/data/api.dart';
import 'package:alhind/data/responsemodel.dart';
import 'package:flutter/material.dart';

class DisplayList extends StatelessWidget {
  DisplayList({
    super.key,
  });

  Future<ResponseModel>? response = sendata();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            child: FutureBuilder(
                future: response,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (snapshot.hasData) {
                    final listofdata = snapshot.data?.journy?.flightOptions;

                    return ListView.builder(
                        itemCount: listofdata?.length,
                        itemBuilder: ((context, index) {
                          print('list of data is $listofdata');
                          final data = listofdata?[index];
                          return Container(
                              color: Colors.tealAccent,
                              margin: EdgeInsets.all(18.0),
                              child: Column(
                                children: [
                                  Text("${data?.ticketingCarrier.toString()}"),
                                  Text(
                                      "${data?.flightFares?[1].totalAmount.toString()}"),
                                  Text(
                                      "${data?.flightFares?[1].fareName.toString()}"),
                                ],
                              ));
                        }));
                  } else {
                    return Container(
                      child: Text('no data'),
                    );
                  }
                })));
  }
}
