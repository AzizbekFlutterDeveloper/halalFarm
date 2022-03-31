part of '../lang_bloc/lang_cubit.dart';

@immutable
abstract class LangState {}

class LangInitial extends LangState {
  LangInitial();
}

class LangCheck extends LangState{
  LangCheck();
}

class LangController extends LangState{
  TabController? controller;
  LangController({this.controller});
}
