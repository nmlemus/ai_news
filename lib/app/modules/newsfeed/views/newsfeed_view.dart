import 'package:any_link_preview/any_link_preview.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter_template/app/models/news1.dart';

import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import '../../../widgets/error_widget.dart';
import '../controllers/newsfeed_controller.dart';
import '../../../repositories/news_repository.dart';
import '../../../widgets/custom_loader.dart';
import 'news_item.dart';

class NewsfeedView extends StatefulWidget {
  const NewsfeedView({Key? key}) : super(key: key);

  @override
  _NewsfeedViewState createState() => _NewsfeedViewState();
}

class _NewsfeedViewState extends State<NewsfeedView> {
  final Stream<QuerySnapshot> newsStream = FirebaseFirestore.instance
      .collection('news')
      .where('active', isEqualTo: true)
      .orderBy('createdAt', descending: true)
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title: Text(
          'ai_tab_title'.tr,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: newsStream,
        builder:
            (BuildContext context, AsyncSnapshot<QuerySnapshot> colecciones) {
          if (colecciones.hasError) {
            return const ErrorWidget2();
          }

          if (colecciones.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (colecciones.connectionState == ConnectionState.active) {
            return Scaffold(
              backgroundColor: Colors.blueGrey.shade50,
              body: SafeArea(
                child: ListView.builder(
                  itemCount: colecciones.data?.docs.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                    padding: const EdgeInsets.all(8),
                    child: NewsItem(colecciones.data!.docs[index]),
                  ),
                ),
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  launchWhatsApp() async {
    const link = WhatsAppUnilink(
      phoneNumber: '+50763994214',
      text: "Hola  *Pa'Cuba*\n"
          "\n"
          "Queria hacerles una consulta sobre los productos que se venden en "
          "su tienda online. Por favor, contáctenme en cuanto puedan.\n"
          "\n"
          "Muchas gracias",
    );
    // Convert the WhatsAppUnilink instance to a string.
    // Use either Dart's string interpolation or the toString() method.
    // The "launch" method is part of "url_launcher".
    await launch('$link');
  }
}
