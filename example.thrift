struct User {
    1: required i64 userId;
    2: required string userName;
    3: required string city;
}


exception UserNotFound {
    1: string message;
}


service UserInfo {
    User getUserInfo(1:i64 userId) throws (1:UserNotFound userNotFound),
}
