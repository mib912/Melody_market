package dao;

import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product product1 = new Product("P1234", "Life Goes On", 1500);
		product1.setDescription("방탄소년단의 BE앨범의 수록된 타이틀 곡이다. 앨범의 문을 여는 첫 번째 트랙이자 타이틀곡인 <Life Goes On>은 감성적인 어쿠스틱 기타 사운드가 특징인 얼터너티브 힙합(Alternative Hip Hop) 장르의 곡이다. 열심히 달리다가 멈춰설 수밖에 없는, 원치 않는 상황에 맞닥뜨렸지만 \"그럼에도 삶은 계속된다\"라는 위로의 메시지를 전하는 곡으로, 중저음의 목소리로 노래하는 방탄소년단의 색다른 매력을 느낄 수 있다. 누구나 공감할 수 있는 진솔한 가사에 방탄소년단의 묵직한 울림이 더해져 그들의 진심이 더욱 와닿는다.");
		product1.setCategory("인기악보");
		product1.setArtist("BTS");
		product1.setPart("Band, Piano");
		product1.setKey("Ab(내림 가장조)");
		product1.setFilename("P1234.jpg");
		
		Product product2 = new Product("P1235", "Santa Tell Me", 1000);
		product2.setDescription("Ariana Grande의 Santa Tell Me앨범의 수록된 곡이다. 사랑스러운 팝요정 아리아나 그란데(Ariana Grande)의 크리스마스 캐롤 'Santa Tell Me'\r\n" + 
				"귀여운 외모에 4옥타브를 넘나드는 보컬 실력까지 갖춘 천부적인 재능의 차세대 디바 아리아나 그란데!\r\n" + 
				"\r\n" + 
				"크리스마스에 꼭 어울리는 달콤함과 사랑스러움이 가득한 아리아나가 부르는 오리지널 캐롤 송 'Santa Tell Me'");
		product2.setCategory("인기악보");
		product2.setArtist("Ariana Grande");
		product2.setPart("Band, Piano");
		product2.setKey("G(사장조)");
		product2.setFilename("P1235.jpg");
		
		Product product3 = new Product("P1236", "인생의 회전목마", 1200);
		product3.setDescription("마법에 걸려 90살 할머니가 된 18세 소녀 소피와 매력적이지만 수상쩍은 마법사 하울의 모함과 사랑에 대해 다룬 스튜디오 지브리 작품의 하울의 움직이는 성 OST 중 하나이다.");
		product3.setCategory("인기악보");
		product3.setArtist("Hisaishi Joe");
		product3.setPart("Guitar, Piano");
		product3.setKey("Gm(사단조)");
		product3.setFilename("P1236.jpg");
		
		Product product4 = new Product("P1237", "Flower Dance(Feat. Tabeyellow)", 1200);
		product4.setDescription("본 작 [Kaleidoscope]는 드디어 공개된 2011년 신작 DJ Okawari (디제이 오카와리)의 세 번째 정규작으로 오카와리 스스로도 납득이 가는 작품이라고 평가할 정도로 음악적 완성도에 신경을 많이 쓴 작품이다. 우탱 클랜 패밀리의 Tekitha를 비롯해, 일본 최고의 팝 바이올리니스트이자 하우스/댄스뮤직에 바이올린을 도입시킨 선구자 Chieko Kinbara, 한국의 대표 재즈디바 웅산 등 참여해 피쳐링 아티스트만 봐도 기대할만한 작품이다.\r\n" + 
				"\r\n" + 
				"");
		product4.setCategory("인기악보");
		product4.setArtist("DJ Okawari");
		product4.setPart("Band, Piano");
		product4.setKey("G#m(올림 사단조)");
		product4.setFilename("P1237.jpg");
		
		Product product5 = new Product("P1238", "All I Want For Christmas Is You", 1500);
		product5.setDescription("이번에 발매되는 25주년 기념 딜럭스 애니버서리 에디션에는 지금까지 정식으로 공개 된 적이 없었던 세인트 존 더 디바인 대성당 콘서트 실황 음원이 수록 되어 있다. 1994년도 실황을 담은 이 라이브 음원에서는 머라이어 캐리가 얼마나 뛰어난 보컬리스트인지를 새삼스레 느낄 수 있다. 그 외에도 John Legend(존 레전드)와 함께 한 \"When Christmas Comes\", 2017년 공개된 영화 <더 크리스마스(원제: The Star)>의 주제곡으로 사용된 \"The Star\" 등 머라이어 캐리가 긴 커리어에 걸쳐 참여해 온 다양한 크리스마스 음악이 수록되어 있다.");
		product5.setCategory("인기악보");
		product5.setArtist("Mariah Carey");
		product5.setPart("Band, Piano, Melody");
		product5.setKey("G(사장조)");
		product5.setFilename("P1238.jpg");
		
		Product product6 = new Product("P1239", "밤하늘의 별을(2020)", 1200);
		product6.setDescription("미니홈피 싸이월드로 우리의 추억을 타임캡슐에 저장하던 시절 우리의 감성을 충만하게 만들었던 배경음악들을 다시금 리스닝하는 시간을 통해 아름다웠던 추억을 소환하는 싸이월드 감성 프로젝트 1탄! 경서의 ‘밤하늘의 별을(2020)'");
		product6.setCategory("인기악보");
		product6.setArtist("경서");
		product6.setPart("피아노, 기타");
		product6.setKey("Eb-E");
		product6.setFilename("P1239.jpg");
		
		Product product7 = new Product("P1240", "두 글자", 1000);
		product7.setDescription("tvN “스타트업” OST PART. 11 '두 글자'는 슬픔을 노래하는 아름다움과, 격정적인 아픔을 동시에 느낄  수 있는 곡으로 따뜻한 기타 사운드의 선율로 시작되어 서정적인 스트링과 피아노 연주가 조화된 정통 발라드이다.");
		product7.setCategory("피아노");
		product7.setArtist("웬디");
		product7.setPart("피아노");
		product7.setKey("Db(내림 라장조)");
		product7.setFilename("P1240.jpg");
		
		Product product8 = new Product("P1241", "오래된 노래", 1000);
		product8.setDescription("이번 싱글 <오래된 노래>는 거리에서 우연히 들리는 노래처럼 우리도 다시 우연히 만날 수 있을까 하는 스탠딩에그 특유의 '아련한 가사'와 한번만 들어도 오래 기억될만큼 맑고 아름다운 멜로디 가 어울려 마치 한편의 영화를 보는 듯한 드라마틱함을 연출한다. 최근들어 떠오르고 있는 '8090의 감성코드'와도 딱 맞아떨어지는 듯한 느낌. 또한 어쿠스틱 기타, 피아노, 오르겐이 어우러진 올드하면서도 포근한 연주는 다시 한번 '어쿠스틱 음악이 갖는  힘'을 느끼게 한다.");
		product8.setCategory("피아노");
		product8.setArtist("스탠딩 에그");
		product8.setPart("피아노");
		product8.setKey("F-G");
		product8.setFilename("P1241.jpg");
				
		Product product9 = new Product("P1242", "Tip Toe", 1000);
		product9.setDescription("90년대 R&B를 재해석 하여 소울풀한 비트 위 이하이와 크러쉬의 케미스트리를 느낄 수 있는 곡. 그녀에게 닿을 듯 말 듯 살며시 다가간다. 아무도 모르게.");
		product9.setCategory("피아노");
		product9.setArtist("크러쉬");
		product9.setPart("피아노");
		product9.setKey("Dm(라단조)");
		product9.setFilename("P1242.jpg");
		
		Product product10 = new Product("P1243", "Last Carnival", 1500);
		product10.setDescription("바이올리니스트 츠루 노리히로, 피아니스트 나카무라 유리코, 첼리스트 마에다 요시히코 3인으로 이루어진 인스트루멘틀 그룹, 어쿠스틱 카페의 2003년 새 앨범.");
		product10.setCategory("피아노");
		product10.setArtist("Acoustic Cafe");
		product10.setPart("피아노");
		product10.setKey("Gm(사단조)");
		product10.setFilename("P1243.jpg");
		
		Product product11 = new Product("P1244", "La La Land", 2000);
		product11.setDescription("<라라랜드>의 OST는 배우 라이언 고슬링(Ryan Gosling)과 엠마 스 톤(Emma Stone)의 매력적인 목소리가 담겨 있는 것뿐 아니라 감수성으로 세계를 사로 잡은 존 레전드(John Legend) 또한 참여하 여 재즈와 뮤지컬, 팝적인 요소가 고루 담겨 영화의 감동을 다시 끔 선사하는 매력적인 앨범이다.");
		product11.setCategory("피아노");
		product11.setArtist("Various Artists");
		product11.setPart("피아노");
		product11.setKey("Dm(라단조)");
		product11.setFilename("P1244.jpg");
		
		Product product12 = new Product("P1250", "누구 없소", 1500);
		product12.setDescription("거장 한영애의 영원한 명곡 ‘누구 없소'를 2020년대 리스너들이 1980년대의 느낌과는 다른 재미를 느낄 수 있게 편곡한 곡이다.");
		product12.setCategory("기타");
		product12.setArtist("싱어게인 63호가수");
		product12.setPart("기타");
		product12.setKey("G#(올림 사단조)");
		product12.setFilename("P1250.jpg");
		
		Product product13 = new Product("P1251", "HAPPENING", 1500);
		product13.setDescription("싱글 [HAPPENING]. ‘AKMU'는 [항해] 그다음 이야기를 구체적으로 펼치기 전, 이별 이후 찾아오는 감정의 소진에 대하여 잠깐 짚고 넘어가고자 한다. 노래에서 화자가 경고하는 것이 무엇인지, 말끔한 차림에 감춰진 상처받은 눈동자를 볼 줄 아는 사람이라면 금방 알아챌 것이다. 이는 앞으로 펼쳐질 ‘AKMU'의 이야기에서  자연스러운 전개를 위한 장치이며, 또 한 번의 도약을 예고하는 것이다.");
		product13.setCategory("기타");
		product13.setArtist("악동뮤지션");
		product13.setPart("기타");
		product13.setKey("A(가장조)");
		product13.setFilename("P1251.jpg");
		
		Product product14 = new Product("P1252", "사랑노래", 1500);
		product14.setDescription("유니크한 음색의 DAY6 원필이 가창자로 참여하여 특별함을 더한 로맨틱한 트랙 ‘사랑노래' 와 독보적인 감성을 지닌 백예린이 참여한 ‘We are all Muse' 까지 더블 타이틀로 구성되었으며 이 외에도 선우정아, 10CM, 하헌진, 까데호, 안녕하신가영 등 각기 다른 매력으로 승부하는 뮤지션들이 대거 참여하여 앨범의 완성도 를 높였다.");
		product14.setCategory("기타");
		product14.setArtist("The BLANK Shop");
		product14.setPart("기타");
		product14.setKey("Ab(내림 가장조)");
		product14.setFilename("P1252.jpg");
		
		Product product15 = new Product("P1253", "Dynamite", 1500);
		product15.setDescription("<Dynamite>는 밝고 경쾌한 분위기의 디스코 팝(Disco Pop) 장르로, 팬들을 위한 희망의 메시지를 담았다. 코로나19 사태가 야기한 무력감과 허탈감을 이겨낼 '돌파구'로서 방탄소년단은 데뷔 이래 처음으로 영어로 곡을 소화하는 새로운 도전에 나섰다.");
		product15.setCategory("기타");
		product15.setArtist("BTS");
		product15.setPart("기타");
		product15.setKey("E-F#");
		product15.setFilename("P1253.jpg");
		
		Product product16 = new Product("P1254", "에잇(Aucostic)", 1500);
		product16.setDescription("이번 디지털 싱글은 아날로그 감성과 트렌디한 사운드의 조화가 돋보이는 밴드 기반의 팝락으로,\r\n" + 
				"스물여덟 동갑내기 뮤지션인 아이유와 방탄소년단 슈가의 독보적인 개성이 균형감 있게 어우러져 귀를 사로잡는다.");
		product16.setCategory("기타");
		product16.setArtist("아이유");
		product16.setPart("기타");
		product16.setKey("C(다장조)");
		product16.setFilename("P1254.jpg");
		
		Product product17 = new Product("P1255", "나랑 같이 걸을래", 1500);
		product17.setDescription("“나랑 같이 걸을래”는 남주 유연의 테마곡으로, 바름이를 향한 애틋한 마음을 조심스럽게 표현한 곡이다. 뻔한 데이트 신청이 아닌 ‘네가 부담 되지 않는 날에 산책이라도 할래?'와 같이 둘러 표현한 가삿말들로 유연이의 성격을 담아냈으며 적재만의 부드러운 감성과 따스한 목소리로 설레는 감정을 극대화 시켰다.");
		product17.setCategory("기타");
		product17.setArtist("적재");
		product17.setPart("기타");
		product17.setKey("E-Ab");
		product17.setFilename("P1255.jpg");
		
		listOfProducts.add(product1);
		listOfProducts.add(product2);
		listOfProducts.add(product3);
		listOfProducts.add(product4);
		listOfProducts.add(product5);
		listOfProducts.add(product6);
		listOfProducts.add(product7);
		listOfProducts.add(product8);
		listOfProducts.add(product9);
		listOfProducts.add(product10);
		listOfProducts.add(product11);
		listOfProducts.add(product12);
		listOfProducts.add(product13);
		listOfProducts.add(product14);
		listOfProducts.add(product15);
		listOfProducts.add(product16);
		listOfProducts.add(product17);
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().contentEquals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
