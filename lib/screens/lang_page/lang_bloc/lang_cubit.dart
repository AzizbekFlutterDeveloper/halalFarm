import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part '../lang_state/lang_state.dart';

class LangBloc extends Cubit<LangState> {
  TabController? controller;
  LangBloc(
    {this.controller}
  ) : super(LangInitial());

  
  int tapIndex = 0;
  int isIndex = 0;

  changeNAvBar(int index) {
    isIndex = index;
    emit(LangCheck());
  }

  tabChange() {
    tapIndex += 1;
    emit(LangCheck());
  }

  pageView(v){
    tapIndex = v;
    emit(LangCheck());
  }
}
