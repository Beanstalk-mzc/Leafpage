![image](https://github.com/Beanstalk-mzc/Leafpage/assets/90694560/ebb89e46-5085-4e4a-a66b-7f1685dd2811)

전자책 대여 서비스

## 주소 : http://cloud.swdev.kr:4006

# 프로젝트 설명

Leafpage는 유저가 전자책을 대여, 반납을 통해 독서활동을 할 수 있는 서비스 입니다. <br>
사용자의 usecase를 고려하여 어떻게 하면 이 서비스를 더 편하고 풍부하게 즐길 수 있을지 고려하며 제작하였습니다. <br>
관리자는 도서와 유저를 관리하며 서비스 운영을 이어갑니다. <br>
클라우드 애플리케이션 개발자 양성과정에서의 커리큘럼에 맞춰 프로젝트 개발 기술로 Servlet/JSP를 채택하였습니다.

# 팀원

|                                            팀장                                            |                                           부팀장                                            |                                            팀원                                            |                                            팀원                                             |                                            팀원                                             |
| :----------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------: |
| <img src="https://avatars.githubusercontent.com/u/90694560?v=4" width="150" height="150"/> | <img src="https://avatars.githubusercontent.com/u/104562141?v=4" width="150" height="150"/> | <img src="https://avatars.githubusercontent.com/u/93602351?v=4" width="150" height="150"/> | <img src="https://avatars.githubusercontent.com/u/116622194?v=4" width="150" height="150"/> | <img src="https://avatars.githubusercontent.com/u/113010528?v=4" width="150" height="150"/> |
|                           [김동욱](https://github.com/95Donguk)                            |                         [김경욱](https://github.com/Kyoungwookkim)                          |                          [곽다은](https://github.com/Gwak-daeun)                           |                             [송정희](https://github.com/eeheg)                              |                           [이수민](https://github.com/soomin0019)                           |

# 기능

## 김동욱

- 도서 대여 및 반납 담당
- 개발 총괄

## 김경욱

- 인프라 담당
- 관리자 기능 담당
  - 도서 등록 기능
  - 도서 수정 기능
  - 도서 조회 기능
  - 도서 삭제 기능
  - 유저 조회 기능
  - 유저 상태변경 기능
  - 유저 삭제 기능

## 곽다은

- 도서 뷰어
  - 도서 책갈피
  - 다크모드
- 마이페이지
  - 기한 지난 도서 자동 반납
  - 대여 중 및 반납 완료 도서 조회
- 도서 상세페이지
  - 도서 기본 정보 조회
  - 리뷰 등록/삭제
  - 동일 저자 도서 조회
  - 파라미터로 잘못된 도서 ISBN 조회 시 에러 페이지로 리다이렉트
- 검색
  - 키워드
  - 항목별, 카테고리별
  - 인기순, 최신순 정렬
  - 무한스크롤

## 송정희

- 유저 정보 기능 담당
  - 회원가입 기능
  - ID/PW 찾기 기능
  - 로그인/로그아웃 기능
  - 이메일 인증 기능
  - 유저 정보 수정 기능
  - 유효성 검사
- 유저스토리 담당
- 보안 담당

## 이수민

- 상세페이지 기능 담당
  - 좋아요 기능 담당
- 디자인 담당

# 인프라

![infra](https://github.com/Beanstalk-mzc/Leafpage/assets/90694560/517af151-58f9-402e-a24b-8472efdba067)

# ERD

![ERD](https://github.com/Beanstalk-mzc/Leafpage/assets/90694560/a48a3c4c-a363-442d-a73a-f75de1e0e589)

# API

## 🧑‍💻 USER

|              Description              | Method |            URI            |  담당  |
| :-----------------------------------: | :----: | :-----------------------: | :----: |
|            회원가입페이지             |  GET   |      /signupView.do       | 송정희 |
|               회원가입                |  POST  |        /signup.do         | 송정희 |
|              ID중복확인               |  POST  |   /duplicateIdCheck.do    | 송정희 |
|             로그인페이지              |  GET   |       /loginView.do       | 송정희 |
|                로그인                 |  POST  |         /login.do         | 송정희 |
|             로그인유효성              |  POST  |      /loginCheck.do       | 송정희 |
|           아이디찾기페이지            |  GET   |      /findIdView.do       | 송정희 |
|              아이디찾기               |  POST  |        /findId.do         | 송정희 |
|          비밀번호찾기페이지           |  GET   |      /findPwView.do       | 송정희 |
|             비밀번호찾기              |  POST  |        /findPw.do         | 송정희 |
|           내정보수정페이지            |  GET   |   /updateMyInfoView.do    | 송정희 |
|              내정보수정               |  POST  |    /updateUserInfo.do     | 송정희 |
|             비밀번호변경              |  POST  |   /changeNewPassword.do   | 송정희 |
|               휴면전환                |  POST  |       /inactive.do        | 송정희 |
|               탈퇴신청                |  POST  |      /withdrawal.do       | 송정희 |
|          인증메일전송페이지           |  GET   |     /sendEmailView.do     | 송정희 |
|         인증메일재전송페이지          |  GET   |    /emailResendView.do    | 송정희 |
|             인증메일전송              |  POST  |       /sendEmail.do       | 송정희 |
|              이메일인증               |  POST  |      /checkEmail.do       | 송정희 |
|         이메일인증성공페이지          |  GET   | /successEmailCheckView.do | 송정희 |
|         이메일인증실패페이지          |  GET   |  /failEmailCheckView.do   | 송정희 |
|               로그아웃                |  POST  |        /logout.do         | 송정희 |
|              마이페이지               |  GET   |      /mypageInfo.do       | 곽다은 |
|                 검색                  |  GET   |        /search.do         | 곽다은 |
|      메인페이지에서의 검색 결과       |  GET   |     /searchResult.do      | 곽다은 |
| 검색 결과 페이지에서의 검색/정렬 결과 |  GET   |       /sortBooks.do       | 곽다은 |
|         검색 결과 무한스크롤          |  GET   |      /bookScroll.do       | 곽다은 |
|           도서 상세 페이지            |  GET   |    /detailPageView.do     | 곽다은 |
|           도서 뷰어 책갈피            |  POST  |     /saveUserBookY.do     | 곽다은 |
|               리뷰 등록               |  POST  |      /makeReview.do       | 곽다은 |
|               리뷰 삭제               |  POST  |     /removeReview.do      | 곽다은 |

## 🧑‍🔧 ADMIN

|    Description     | Method |       URI        | 담당  |
|:------------------:|:------:|:----------------:|:---:|
|     관리자 페이지 도서     |  GET   | /booklistView.do | 김경욱 |
|       도서 등록        |  POST  |  /bookupload.do  | 김경욱 |
|       도서 수정        |  POST  |  /books/edit.do  | 김경욱 |
|     도서 상세정보조회      |  GET   |   /getBook.do    | 김경욱 |
|       도서 삭제        |  POST  |    /remove.do    | 김경욱 |
|       도서 검색        |  POST  |    /adminbooksearch.do    |   김경욱  |
|    도서목록 페이지네이션     |  POST  |    /booklistView.do    |  김경욱   |
|     관리자 페이지 유저     |  GET   |    /userlistview.do    |   김경욱  |
|       유저 삭제        |  POST  |    /userstatechange.do   |   김경욱  |
| 유저 상태변경 (블랙,휴면,일반) |  POST  |    /userstatechange.do   |  김경욱   |
| 유저 최근가입,대여 많은순 정렬  |  GET   |    /userlistsignupView.do   |   김경욱  |
|    유저목록 페이지네이션     |  POST  |    /userlistview.do     |   김경욱  |
|        유저검색        |  POST  |    /adminusersearch.do  |  김경욱   |

## 📖 BOOK

|     Description     | Method |        URI         |  담당  |
| :-----------------: | :----: | :----------------: | :----: |
|     책 대여하기     |  POST  |    /rentBook.do    | 김동욱 |
|     책 반납하기     |  POST  |   /returnBook.do   | 김동욱 |
|     좋아요 기능     |  POST  |   /likeHeart.do    | 이수민 |
| 상세페이지 불러오기 |  POST  | /detailPageView.do | 이수민 |

# 영상

https://clipchamp.com/watch/XMeyWw9ZM48

# 모바일 화면

![search](https://github.com/Beanstalk-mzc/Leafpage/assets/90694560/ae85dc63-2511-45b9-96af-5bbd141586ab)
<br>

![detail](https://github.com/Beanstalk-mzc/Leafpage/assets/90694560/679c1ce4-7184-42d3-a26f-df5213d4afdd)
<br>

![signup-signin](https://github.com/Beanstalk-mzc/Leafpage/assets/90694560/31897c99-c8e5-4139-889b-9c8adafb6605)
<br>

![mypage](https://github.com/Beanstalk-mzc/Leafpage/assets/90694560/f638f3f5-49cf-47e9-851a-8b687bf04858)
<br>

# 트러블 슈팅

---

## 동욱

---

### 문제 정의

DB 스트레스 테스트 진행 중 한 기능에 오류를 찾았습니다.

동일한 유저가 한 책의 `좋아요` 버튼을 계속해서 빠르게 클릭을 하게 되면
`좋아요` 기능이 제대로 동작하지 않는 것을 발견했습니다.

### 사실 수집

상황

1. 좋아요 버튼은 한 개만 있으며 좋아요 버튼 상태가 🤍라면 `좋아요` 행위를 할 수 있고,
   버튼 상태가 ❤️라면 `좋아요 취소` 행위를 할 수가 있다.
2. 한 유저가 `좋아요` 버튼을 계속해서 빠르게 클릭한다
3. 여러 번 `좋아요` 클릭 한 유저의 행위의 쌓여있는 순서대로 좋아요 데이터가 DB에서 정확하게 반영되지 않음을 확인
4. 로그를 확인해보니 경쟁상태로 인해 데이터의 일관성을 보장해주지 못했음.
   - `좋아요 → 좋아요 취소 → 좋아요 → 좋아요 취소` 행위가 빠르게 클릭을 하게 되면 중간에 `좋아요 취소` 요청을 보냈음에도 불구하고 `좋아요 취소` 데이터가 실제 DB에 반영되기 전에 `좋아요` 행위로 `좋아요` 데이터를 DB에 insert 하여 중복된 키 값 오류를 발생됨을 확인했습니다.

### 해결

- DAO를 싱글톤 패턴으로 구현함으로써 메모리 오버헤드를 막고 DAO를 getInstance() 메소드를 Synchronized 로 설정해서 동기화 처리로 수 많은 쿼리 호출을 요청해도 데이터의 일관성을 지켜주도록 해결했습니다.
  - 기존 코드
  ```
    public class LikeyDAO {

    private Connection conn = null;
    PreparedStatement pstmp = null;
    private ResultSet rs = null;

  ```
  - 수정 코드
  ```
  public class LikeyDAO {

    private static LikeyDAO instance;

    private Connection conn = null;
    PreparedStatement pstmp = null;
    private ResultSet rs = null;

    private LikeyDAO() {}

    public static synchronized LikeyDAO getInstance() {
        if (instance == null) {
            instance = new LikeyDAO();
        }
        return instance;
    }
  ```

---

## 곽다은

---

검색 결과 무한스크롤 시 누락되는 데이터가 발견하였지만, 검색 결과를 테이블 조인으로 가져오는 형태라 조인 컬럼에서 누락된 데이터가 있어 
조인결과에 포함되지 않았다는걸 깨닫기 까지 시간이 다소 소요됨 <br>
→ DBMS를 다룰 때 각 행의 데이터의 중요성과 정확성을 항상 염두에 두어야 한다는 것을 다시금 깨달음

---

# 기술 스택

<div> 
  <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white"> 
  <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white"> 
  <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"> 
  <img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white">
  <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">
  <br>

  <img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white">
  <img src="https://img.shields.io/badge/maven-C71A36?style=for-the-badge&logo=apachemaven&logoColor=white">
  <img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
  <img src="https://img.shields.io/badge/tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black">
  <img src="https://img.shields.io/badge/servlet&jsp-007396?style=for-the-badge&logo=java&logoColor=white">
  <br>

  <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white">
  <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">
</div>

# 협업 툴

<div> 
  <img src="https://img.shields.io/badge/discord-5865F2?style=for-the-badge&logo=discord&logoColor=white"> 
  <img src="https://img.shields.io/badge/notion-000000?style=for-the-badge&logo=notion&logoColor=white"> 
</div>

# 프로젝트 진행 참고 자료

https://www.notion.so/3-9-14-27-45de0c9d12f449d4bd566cbb97753734

# 회의록

https://www.notion.so/d034fdac023f45ddb5e42a12df867251?v=1588f6e7ec0d4319a17e9ae021878c7f&pvs=4

# 요구사항정의서

❗프로젝트 폴더 안의 `기능 요구서.xlsx` 파일 참고
