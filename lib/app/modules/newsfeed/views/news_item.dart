import 'package:any_link_preview/any_link_preview.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

import '../../../models/news1.dart';

class NewsItem extends StatelessWidget {
  final String title;
  final String imageURL;

  final String _errorImage =
      "https://i.ytimg.com/vi/z8wrRRR7_qU/maxresdefault.jpg";

  final QueryDocumentSnapshot _snapshot;

  /// Constructor
  NewsItem(this._snapshot, {super.key})
      : title = _snapshot.get('title') as String,
        imageURL = _snapshot.get('imageURL') as String;

  @override
  Widget build(BuildContext context) {
    // print(imageURL);
    return AnyLinkPreview(
      link: imageURL,
      displayDirection: UIDirection.uiDirectionHorizontal,
      cache: const Duration(hours: 1),
      backgroundColor: Colors.grey[300],
      errorWidget: Container(
        color: Colors.grey[300],
        child: const Text('Oops!'),
      ),
      errorImage: _errorImage,
      urlLaunchMode: LaunchMode.externalApplication,
    );
  }

  launchWhatsApp() async {
    WhatsAppUnilink link = WhatsAppUnilink(
      phoneNumber: '+50763994214',
      text: "Hola  *$title* \n"
          "\n"
          "He encontrado su contacto en la aplicación *Pa'Cuba*.\n"
          "\n"
          " Estoy intereado en realizar algunos envios hacia Cuba y quisiera "
          "saber que precios manejan, tanto en *miscelaneas* como en *ENA*. \n "
          "\n"
          "Desde ya les agradezco.",
    );
    // Convert the WhatsAppUnilink instance to a string.
    // Use either Dart's string interpolation or the toString() method.
    // The "launch" method is part of "url_launcher".
    await launch('$link');
  }

  void _updateVote() {}
}
