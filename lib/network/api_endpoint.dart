class ApiEndpoint {
  static const HOST_URL = "http://20.193.241.254";
  // static const HOST_URL = "http://localhost:8080";

  static const AUTH_TOKEN = "/auth/token";
  static const CREATE_USER = "/users";
  static const GET_USER = "/users";
  static const OTP = "/otp";
  static const UPDATE_PHONE = "/users/phone";
  static const VERIFY_PHONE = "/users/verifyphone";

  static const CREATE_POST = "/users/posts";
  static const UPDATE_POST = "/users/posts";
  static const DELETE_POST = "/users/posts";
  static const SEARCH_POST = "/users/posts/search";
  static const COMMENT_POST = "/users/posts/comment";
  static const GET_POST = "/users/posts";
  static const LIKE_POST = "/users/posts/like";
  static const MASTER_CATEGORY = "/master/book/category";
  static const IS_VERIFIED = "/admin/posts/isverified";
  static const getBook = "/book";

  static const DEV_CONTENT_TYPE = "application/x-www-form-urlencoded";
  static const DEV_GRANT_TYPE = "password";

  static const DEV_CLIENT_ID = "com.beta.api";
  static const DEV_CLIENT_SECRET = "iamsecret";

  static const DEV_USERNAME = "monik";
  static const DEV_PASSWORD = "monikBet@";

  // static const DEV_CLIENT_ID = "com.test.app1";
  // static const DEV_CLIENT_SECRET = "iamsecret";

  // static const DEV_USERNAME = "apiuser2";
  // static const DEV_PASSWORD = "1234";
}
