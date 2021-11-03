import 'dart:convert';
import 'dart:io';

import 'package:flutter_camp/core/enum/service_path_enum.dart';
import 'package:flutter_camp/week2/post/model/post_model.dart';
import 'package:http/http.dart' as http;

class PlaceHolderService {
  Future<List<PostModel>?> fetchPostItem() async {
    final url = Uri.parse(
        "${ServicePathEnum.BASE_URL.rawValue}${ServicePathEnum.POST.rawValue}");
    final response = await http.get(url);

    switch (response.statusCode) {
      case HttpStatus.ok:
        final responseBody = jsonDecode(response.body);
        if (responseBody is List) {
          return responseBody.map((e) => PostModel.fromJson(e)).toList();
        }
        return [];
      default:
        return null;
      // throw Exception("Service Error $response");
    }
  }
}
