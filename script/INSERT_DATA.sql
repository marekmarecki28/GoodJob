INSERT INTO users(username,password,enabled)
VALUES ('mkyong','123456', true);
INSERT INTO users(username,password,enabled)
VALUES ('alex','123456', true);
INSERT INTO users(username,password,enabled)
VALUES ('marek','$2a$10$qU89MpL4l/G8D1Z6fxwWg.xzjCS6p6FI7.nxUiD.ytERA3dpYngka', true);

INSERT INTO user_roles (username, role)
VALUES ('mkyong', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('mkyong', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role)
VALUES ('alex', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('marek', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('marek', 'ROLE_ADMIN');