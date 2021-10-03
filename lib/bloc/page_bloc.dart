import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:profjur/models/models.dart';
import 'package:equatable/equatable.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  @override
  PageState get initialState => OnInitialPage();

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if (event is GoToSplashPage) {
      yield OnSplashPage();
    } else if (event is GoToLanding) {
      yield OnLanding();
    } else if (event is GoToStartMenu) {
      yield OnStartMenu();
    } else if (event is GoToSignInPage) {
      yield OnLoginPage();
    } else if (event is GoToSignUpPage) {
      yield OnSignUpPage();
    } else if (event is GoToMainPage) {
      yield OnMainPage();
    } else if (event is GoToRegistrationPage) {
      yield OnRegistrationPage(event.registrationData);
    } else if (event is GoToPreferencePage) {
      yield OnPreferencePage(event.registrationData);
    } else if (event is GoToAccountConfirmationPage) {
      yield OnAccountConfirmationPage(event.registrationData);
    } else if (event is GoToSaintekPage) {
      yield OnSaintekPage();
    } else if (event is GoToProfileScreen) {
    } else if (event is GoToMatkulPage) {
      yield OnMatkulPage();
    } else if (event is GoToHimanitroPage) {
      yield OnHimanitroPage();
    } else if (event is GoToTEPage) {
      yield OnTEPage();
    } else if (event is GoToDosenPage) {
      yield OnDosenPage();
    } else if (event is GoToNotePage) {
      yield OnNotePage();
    } else if (event is GoToDetailNews) {
      yield OnDetailNews();
    } else if (event is GoToDeveloper) {
      yield OnDeveloper();
    } else if (event is GoToKabinet) {
      yield OnKabinet();
    }else if (event is GoToEditProfilePage) {
      yield OnEditProfilePage(event.user);
    }
  }
}
