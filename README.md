# Melody_market

## 1.1 개요
- 악보를 판매하는 웹사이트 제작

## 1.2 추진배경
- 쉴 때 보통 핸드폰만 하여 이 시간을 조금 더 효율적으로 쓰고 싶어 악기연주와 같은 취미를 만듦
- 최근에 피아노 건반을 구매했지만 별 다른 악보가 없어 연습 불가능
- 실제로 ‘악보바다’라는 사이트가 있어 이 사이트를 참고함
- 악보 판매 사이트를 잘 모르는 사람들이 많아 이를 알리고 싶어 프로젝트를 기획

## 1.3 프로젝트 목표
- 악보 판매 사이트 홍보 
  - 책을 구매하기에는 과하다 생각할 수 있고 원하는 악보 하나를 쉽게 구할 수 있음
  - 많은 사람들이 이용하게 함으로써 더 많은 악보들을 구할 수 있게끔 함
- 심리 안정
  - 취미를 갖게 함으로써 마음을 안정시킬 수 있음

## 2.1 주요 기능
- 악보를 구매하고 판매할 수 있음
-  마켓의 사용자는 원하는 악보를 장바구니 등을 사용하여 구매할 수 있고 관리자는 악보를 등록, 수정, 삭제를 할 수 있다. 또한, 사용자가 원하는 악보가 없을 때 게시판을 통하여 신청하는 글을 작성할 수 있다

### 2.1.1 상품 등록 및 구매
- 원하는 상품을 장바구니를 이용하여 구매할 수 있다. 구매는 cart.jsp, addCart.jsp, shippingInfo.jsp 등을 통해 동작한다. 
- 관리자는 새로운 상품을 등록할 수도 있고, 기존에 있던 상품정보를 수정할 수 있으며 기존에 있는 상품을 삭제할 수 있다. 이는 addProduct.jsp, deleteProduct.jsp, editProduct.jsp, 
processAddProduct.jsp 등을 통해 동작한다. 

### 2.1.2 게시판 작성
- 사용자는 원하는 상품이 없을 때 게시판에 글을 남겨 관리자에게 알릴 수 있다. 이는 BoardController.java, BoardDAO.java, BoardDTO.java, list.jsp, view.jsp 등을 통해 동작한다

### 2.1.3 회원가입 및 회원정보 수정
- 정확한 구매를 이용하기 위해 회원가입을 하여 구매를 하고 회원정보를 수정할 수 있다. 이는 addMember.jsp, updateMember.jsp, processAddMember.jsp, processUpdateMember.jsp 등을 
통해 동작한다. 




### 참고사항
src 폴더에는 bundle, dao, dto, mvc 패키지에 각각 맞는 코드들을 넣어야 합니다. 
Webcontent/resources는 프로젝트에 필요한 데이터 및 라이브러리가 있습니다. 
경로를 잘 지정해주어야 합니다.

Webcontent/sql 은 프로젝트에 필요한 sql문이 있습니다.
각각의 테이블을 생성하는 sql문이므로 미리 실행시켜서 테이블 생성을 해야 합니다.

Webcontent/WEB-INF 안에 web.xml도 알맞게 넣어주고 Webcontent/WEB-INF/lib 안에
commons.fileupload-1.4.jar, commons-io-2.8.0.jar, cos.jar, jstl-1.2.jar, mysql-connector-java-5.1.49.jar을 넣어줍니다.

jsp 파일들은 Webcontent안에 존재합니다. 
가장 먼저 main.jsp를 실행시켜 프로젝트를 동작시키면 됩니다.
