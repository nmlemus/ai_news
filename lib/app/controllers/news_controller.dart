import 'dart:io';

import '../models/news1.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../repositories/news_repository.dart';

class NewsResultController extends GetxController {
  var isLoading = true.obs;
  var selectedCategory = ''.obs;
  var categoriesList = <News1>[].obs;
  var isNetworkError = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() async {
    isLoading.value = true;
    isNetworkError.value = false;
    //selectedCategory.value = value;

    try {
      final List<QueryDocumentSnapshot> result =
          await NewsRepository().getCategories();
      print('size of resultList = ${result.length}');
      categoriesList.clear();
      for (var category in result) {
        print(category.id);
        categoriesList.add(News1.fromMap(category));
      }
      print('size of resultList = ${categoriesList.length}');
    } on IOException {
      print('error occure ');
      isNetworkError.value = true;
    } catch (e) {
      print('error occure $e');
      isNetworkError.value = true;
    }

    isLoading.value = false;
  }
}
