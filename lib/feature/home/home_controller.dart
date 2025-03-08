import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hwtest_adam_fauzan/data/remote/endpoint.dart';

class HomeController extends GetxController {
  List<String> bannerImages = [];
  var currentIndex = 0.obs;
  var isLoading = true.obs;

  var topCharts = <Map<String, dynamic>>[].obs;
  var isLoadingCharts = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBannerImages();
    fetchTopCharts();
  }

  void fetchBannerImages() async {
    try {
      final response = await Dio().get(Endpoint.banner);
      bannerImages = List<String>.from(
          response.data['data'].map((item) => item['image_url']));
      isLoading.value = false;
    } catch (e) {
      print("Error: \$e");
    }
  }

  void updateIndicator(int index) {
    currentIndex.value = index;
    update();
  }

  void fetchTopCharts() async {
    try {
      final response = await Dio().get(Endpoint.charts);
      final List<dynamic> songs = response.data['data']['songs'];
      topCharts.value = songs.map((song) {
        return {
          'position': song['position'].toString(),
          'image_url': song['song']['artist_profile_picture'] ?? '',
          'title': song['song']['title'],
          'artist': song['song']['artist_name'] ?? 'Unknown Artist',
        };
      }).toList();
      isLoadingCharts.value = false;
    } catch (e) {
      print("Error: \$e");
    }
  }
}
