class ApiEndPoints {
  static final String baseUrl = 'https://myclassmate.opusinfiniti.com/liveapi/signup.php';
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String registerEmail = 'authaccount/registration';
  final String loginEmail = 'authaccount/login';
}
