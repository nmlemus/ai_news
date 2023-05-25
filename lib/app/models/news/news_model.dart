import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

// This doesn't exist yet...! See "Next Steps"
part 'news_model.g.dart';

/// A custom JsonSerializable annotation that supports decoding objects such
/// as Timestamps and DateTimes.
/// This variable can be reused between different models
const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  // The following values could alternatively be set inside your `build.yaml`
  explicitToJson: true,
  createFieldMap: true,
);

@firestoreSerializable
class News {
  News(
      {required this.name,
      required this.imageURL,
      required this.active,
      required this.tags,
      required this.rating});

  final String name;
  final String imageURL;
  final bool active;
  final List<String> tags;
  final double rating;
}

// @Collection<News>('news')
// final newsRef = NewsCollectionReference();
