import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ip_to_geo/controllers/db_controller.dart';
import 'package:ip_to_geo/source/local/database.dart';

class Offline extends GetView<DbController> {
  @override
  Widget build(BuildContext context) {
    controller.getSavedData();
    return controller.obx((allItems) {
      return _buildListView(allItems);
    },
        onError: (error) => Text(error.toString()),
        onLoading: const CircularProgressIndicator());
  }

  Widget _buildListView(List<GeoDataData>? data) {
    List<ListTile> listItens = data
            ?.map(
              (geo) => ListTile(
                title: Text(geo.ip),
                subtitle: Text(geo.city),
              ),
            )
            .toList() ??
        [];
    return ListView.separated(
        itemBuilder: (context, index) => listItens[index],
        separatorBuilder: (context, index) => const Divider(
              height: 1,
            ),
        itemCount: listItens.length);
  }
}
