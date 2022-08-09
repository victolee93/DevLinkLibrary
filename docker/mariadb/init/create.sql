CREATE DATABASE IF NOT EXISTS devlink CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

USE devlink;

-- 1. 회원
CREATE TABLE member (
   no INT AUTO_INCREMENT PRIMARY KEY,
   email VARCHAR(30) NOT NULL,
   password VARCHAR(50) NOT NULL,
   nick_name VARCHAR(20) NOT NULL,
   register_date TIMESTAMP
);

INSERT INTO member
    (no, email, password, nick_name, register_date)
VALUES
    (null, 'victolee11@kakao.com', '12345', '빅토리', NOW())
;


-- 2. 블로그 문서
CREATE TABLE blog_document (
   no INT AUTO_INCREMENT PRIMARY KEY,
   title VARCHAR(50) NOT NULL,
   contents TEXT NOT NULL,
   link_url VARCHAR(255),
   img_url VARCHAR(255),
   created_date TIMESTAMP,
   member_no INT NOT NULL,
   FOREIGN KEY (member_no) REFERENCES member(no)
);

INSERT INTO blog_document
    (no, title, contents, link_url, img_url, created_date, member_no)
VALUES
    (null, '블로그제목1', '블로그내용1', '', '', NOW(), 1),
    (null, '블로그제목2', '블로그내용2', '', '', NOW(), 1)
;