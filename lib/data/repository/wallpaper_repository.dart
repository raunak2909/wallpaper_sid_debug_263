import 'dart:developer';

import '../remote/api_helper.dart';
import '../remote/urls.dart';

class WallPaperRepository{
  ApiHelper apiHelper;
  WallPaperRepository({required this.apiHelper});

  //Search
  Future<dynamic> getSearchWallPapers(String mQuery, {String mColor = "",int mPage = 1}) async{
    try {
      log( "this is wallpaper search url ${AppUrls.SEARCH_WALL_URL}?query=$mQuery&color = $mColor");
      return await apiHelper.getAPI(url: "${AppUrls.SEARCH_WALL_URL}?query=$mQuery&color=$mColor&page=$mPage");
    }catch(e){
      throw(e);
    }
  }

  Future<dynamic> getTrendingWallPapers() async{
    try {
      return await apiHelper.getAPI(url: AppUrls.TRENDING_WALL_URL);
    }catch(e){
      throw(e);
    }
  }

}