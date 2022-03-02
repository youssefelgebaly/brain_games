

import 'package:brain_games/memory_game/model/title_model.dart';

String selectedTile = "";
int? selectedIndex ;
bool selected = true;
int points = 0;

List<TileModel> myPairs = <TileModel>[];
List<bool> clicked = <bool>[];

List<bool> getClicked(){

  List<bool> yoClicked = <bool>[];
  List<TileModel> myairs = <TileModel>[];
  myairs = getPairs();
  for(int i=0;i<myairs.length;i++){
    yoClicked[i] = false;
  }

  return yoClicked;
}

List<TileModel>  getPairs(){

  List<TileModel> pairs = <TileModel>[];

  TileModel tileModel = new TileModel();

  //1
  tileModel.setImageAssetPath("assets/giraffe.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //2
  tileModel.setImageAssetPath("assets/crocodile.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //3
  tileModel.setImageAssetPath("assets/whale.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //4
  tileModel.setImageAssetPath("assets/horse.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();
  //5
  tileModel.setImageAssetPath("assets/elephant.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //6
  tileModel.setImageAssetPath("assets/dog.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //7
  tileModel.setImageAssetPath("assets/zebra.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //8
  tileModel.setImageAssetPath("assets/tortoise.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  return pairs;
}

List<TileModel>  getQuestionPairs(){

  List<TileModel> pairs = <TileModel>[];

  TileModel tileModel = new TileModel();

  //1
  tileModel.setImageAssetPath("assets/memory.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //2
  tileModel.setImageAssetPath("assets/memory.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //3
  tileModel.setImageAssetPath("assets/memory.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //4
  tileModel.setImageAssetPath("assets/memory.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();
  //5
  tileModel.setImageAssetPath("assets/memory.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //6
  tileModel.setImageAssetPath("assets/memory.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //7
  tileModel.setImageAssetPath("assets/memory.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  //8
  tileModel.setImageAssetPath("assets/memory.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  return pairs;
}