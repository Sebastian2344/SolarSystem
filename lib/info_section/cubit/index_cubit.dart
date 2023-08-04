import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/planet_info.dart';
class CubitIndex extends Cubit<String> {

  CubitIndex() : super('Układ Słoneczny');

  var planetInfo = PlanetInfo();
  
  void setIndex(String index){
    emit(index);
  }

  String showTitle(){
      return planetInfo.showTitle(state);
  }

  String showDescription(){
    return planetInfo.showDescription(state);
  }

  bool  isButtonVisible(){
    return state == 'Układ Słoneczny'? false : true;
  }
}