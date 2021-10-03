part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    auth.User firebaseUser = Provider.of<auth.User>(context);

    if (firebaseUser == null) {
      if (!(prevPageEvent is GoToSplashPage)) {
        prevPageEvent = GoToSplashPage();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    } else {
      if (!(prevPageEvent is GoToMainPage)) {
        context.bloc<UserBloc>().add(LoadUser(firebaseUser.uid));

        prevPageEvent = GoToMainPage();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    }

    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnSplashPage)
            ? SplashPage()
            : (pageState is OnLanding)
                ? Landing()
                : (pageState is OnLoginPage)
                    ? SignInPage()
                    : (pageState is OnRegistrationPage)
                        ? SignUpPage(pageState.registrationData)
                        : (pageState is OnPreferencePage)
                            ? PreferencePage(pageState.registrationData)
                            : (pageState is OnAccountConfirmationPage)
                                ? AccountConfirmationPage(
                                    pageState.registrationData)
                                : (pageState is OnSaintekPage)
                                    ? SaintekPage()
                                    : (pageState is OnMatkulPage)
                                        ? MatkulPage()
                                        : (pageState is OnHimanitroPage)
                                            ? HimanitroPage()
                                            : (pageState is OnTEPage)
                                                ? TEPage()
                                                : (pageState is OnDosenPage)
                                                    ? DosenPage()
                                                    : (pageState is OnNotePage)
                                                        ? NotePage()
                                                        : (pageState
                                                                is OnDeveloper)
                                                            ? Developer()
                                                            : (pageState
                                                                    is OnKabinet)
                                                                ? Kabinet()
                                                                : (pageState
                                                                        is OnEditProfilePage)
                                                                    ? EditProfilePage(
                                                                        pageState
                                                                            .user)
                                                                    : MainPage());
  }
}
