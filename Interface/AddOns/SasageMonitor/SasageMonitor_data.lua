DB = { version = '25.8.26', server = {} }

function SearchUser(name, server)
	local records = DB.server[server]
	local url

	for k, v in pairs(records) do
		if name == k then url = v end
	end

	if url ~= nil then
		return url
	end
end

DB.server['아즈샤라'] = {
	['성기사는못말려'] =
	'https://www.inven.co.kr/board/wow/1651/166001?name=subjcont&keyword=%EC%84%B1%EA%B8%B0%EC%82%AC%EB%8A%94%EB%AA%BB%EB%A7%90%EB%A0%A4',
	['술사탱탱'] = 'https://www.inven.co.kr/board/wow/1651/166033?name=subjcont&keyword=%EC%88%A0%EC%82%AC%ED%83%B1%ED%83%B1',
	['어르어르'] = 'https://www.inven.co.kr/board/wow/1651/165974?name=subjcont&keyword=%EC%96%B4%EB%A5%B4%EC%96%B4%EB%A5%B4',
	['뱀아재'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B1%80%EC%95%84%EC%9E%AC',
	['세익스피어즈'] =
	'https://www.inven.co.kr/board/wow/1651/166197?name=subjcont&keyword=%EC%84%B8%EC%9D%B5%EC%8A%A4%ED%94%BC%EC%96%B4%EC%A6%88',
	['관절가동측정법'] = 'https://www.inven.co.kr/board/wow/1651/166262',
	['evild'] = 'https://www.inven.co.kr/board/wow/1651/166312?name=subjcont&keyword=Evild',
	['로보라'] = 'https://www.inven.co.kr/board/wow/1651/166434?name=subjcont&keyword=%EB%A1%9C%EB%B3%B4%EB%9D%BC',
	['베라좋아'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B2%A0%EB%9D%BC%EC%A2%8B%EC%95%84 ',
	['민트바다'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AF%BC%ED%8A%B8%EB%B0%94%EB%8B%A4',
	['놀란토끼눈'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AF%BC%ED%8A%B8%EB%B0%94%EB%8B%A4',
	['짱데업'] = 'https://www.inven.co.kr/board/wow/1651/166609',
	['죽은줄알았지'] = 'https://www.inven.co.kr/board/wow/1651/166679',
	['돈데쿠만'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%8F%88%EB%8D%B0%EC%BF%A0%EB%A7%8C',
	['리얼빅사이즈'] = 'https://www.inven.co.kr/board/wow/1651/166805',
	['찰진빠따'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B0%B0%EC%A7%84%EB%B9%A0%EB%94%B0',
	['전사전사해이요'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%A0%84%EC%82%AC%EC%A0%84%EC%82%AC%ED%95%B4%EC%9D%B4%EC%9A%94',
	['bossman'] = 'https://www.inven.co.kr/board/wow/1651/166975',
	['하늬'] = 'https://www.inven.co.kr/board/wow/1651/167040',
	['슈퍼쏴닉'] = 'https://www.inven.co.kr/board/wow/1651/167057',
	['반사'] = 'https://www.inven.co.kr/board/wow/1651/167283',
	['럭키님'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%9F%AD%ED%82%A4%EB%8B%98',
	['압도적인딜냥'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%9F%AD%ED%82%A4%EB%8B%98',
	['명치냥꾼'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%9F%AD%ED%82%A4%EB%8B%98',
	['순종여우'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%9F%AD%ED%82%A4%EB%8B%98',
	['줄리아세자르'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%9F%AD%ED%82%A4%EB%8B%98',
	['한우세트메뉴'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%9F%AD%ED%82%A4%EB%8B%98',
	['착해진드루'] = 'https://www.inven.co.kr/board/wow/1651/166760?p=2',
	['매팬'] = 'https://www.inven.co.kr/board/wow/1651/166760?p=2',
	['매직밀렵'] = 'https://www.inven.co.kr/board/wow/1651/166760?p=2',
	['매직주먹'] = 'https://www.inven.co.kr/board/wow/1651/166760?p=2',
	['매직용'] = 'https://www.inven.co.kr/board/wow/1651/166760?p=2',
	['동맹종족해금하자'] = 'https://www.inven.co.kr/board/wow/1651/166760?p=2',
	['악탱제발버프좀'] =
	'https://www.inven.co.kr/board/wow/1651/165991?name=subjcont&keyword=%EA%B3%A0%ED%92%88%EA%B2%A9%EB%B8%8C%EB%9E%9C%EB%93%9C%EC%96%91',
	['수리수리복수리이'] =
	'https://www.inven.co.kr/board/wow/1651/165991?name=subjcont&keyword=%EA%B3%A0%ED%92%88%EA%B2%A9%EB%B8%8C%EB%9E%9C%EB%93%9C%EC%96%91',
	['흉폭한날다람쥐'] =
	'https://www.inven.co.kr/board/wow/1651/165991?name=subjcont&keyword=%EA%B3%A0%ED%92%88%EA%B2%A9%EB%B8%8C%EB%9E%9C%EB%93%9C%EC%96%91',
	['Miliik'] =
	'https://www.inven.co.kr/board/wow/1651/165991?name=subjcont&keyword=%EA%B3%A0%ED%92%88%EA%B2%A9%EB%B8%8C%EB%9E%9C%EB%93%9C%EC%96%91',
	['고품격브랜드양'] =
	'https://www.inven.co.kr/board/wow/1651/165991?name=subjcont&keyword=%EA%B3%A0%ED%92%88%EA%B2%A9%EB%B8%8C%EB%9E%9C%EB%93%9C%EC%96%91',
	['부풍'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B6%80%ED%92%8D',
	['pwd'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B6%80%ED%92%8D',
	['부담걸'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B6%80%ED%92%8D',
	['전설먹는언니'] =
	'https://www.inven.co.kr/board/wow/1651/166094?name=subjcont&keyword=%EC%A0%84%EC%84%A4%EB%A8%B9%EB%8A%94%EC%96%B8%EB%8B%88',
	['건튼이'] =
	'https://www.inven.co.kr/board/wow/1651/166094?name=subjcont&keyword=%EC%A0%84%EC%84%A4%EB%A8%B9%EB%8A%94%EC%96%B8%EB%8B%88',
	['소영이'] =
	'https://www.inven.co.kr/board/wow/1651/166094?name=subjcont&keyword=%EC%A0%84%EC%84%A4%EB%A8%B9%EB%8A%94%EC%96%B8%EB%8B%88',
	['윤뽁이'] =
	'https://www.inven.co.kr/board/wow/1651/166094?name=subjcont&keyword=%EC%A0%84%EC%84%A4%EB%A8%B9%EB%8A%94%EC%96%B8%EB%8B%88',
	['플레이포럼'] =
	'https://www.inven.co.kr/board/wow/1651/166094?name=subjcont&keyword=%EC%A0%84%EC%84%A4%EB%A8%B9%EB%8A%94%EC%96%B8%EB%8B%88',
	['전부했어요'] =
	'https://www.inven.co.kr/board/wow/1651/166094?name=subjcont&keyword=%EC%A0%84%EC%84%A4%EB%A8%B9%EB%8A%94%EC%96%B8%EB%8B%88',
	['살레'] = 'https://www.inven.co.kr/board/wow/1651/166433?name=subjcont&keyword=%EC%A3%A0%EC%A3%A0%EB%A6%AC%EC%98%A8',
	['레디팔라'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A0%88%EB%94%94%ED%8C%94%EB%9D%BC',
	['레디데나'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A0%88%EB%94%94%ED%8C%94%EB%9D%BC',
	['readyet'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A0%88%EB%94%94%ED%8C%94%EB%9D%BC',
	['레디사제'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A0%88%EB%94%94%ED%8C%94%EB%9D%BC',
	['레디수도'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A0%88%EB%94%94%ED%8C%94%EB%9D%BC',
	['잉쟝스'] = 'https://www.inven.co.kr/board/wow/1651/166380?name=subjcont&keyword=%EC%9E%89%EC%9F%9D%EC%8A%A4',
	['잉쟝이'] = 'https://www.inven.co.kr/board/wow/1651/166380?name=subjcont&keyword=%EC%9E%89%EC%9F%9D%EC%8A%A4',
	['Jazzd'] = 'https://www.inven.co.kr/board/wow/1651/166411?name=subjcont&keyword=Jazzd',
	['jazzb'] = 'https://www.inven.co.kr/board/wow/1651/166411?name=subjcont&keyword=Jazzd',
	['jazzpub'] = 'https://www.inven.co.kr/board/wow/1651/166411?name=subjcont&keyword=Jazzd',
	['투썸아아'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B2%A0%EB%9D%BC%EC%A2%8B%EC%95%84',
	['첨봐드루'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B2%A8%EB%B4%90%EB%93%9C%EB%A3%A8',
	['카즈샤'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B9%B4%EC%A6%88%EC%83%A4',
	['든든탱커'] = 'https://www.inven.co.kr/board/wow/1651/166535?p=2',
	['현무성기사'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%98%84%EB%AC%B4%EC%84%B1%EA%B8%B0%EC%82%AC',
	['현무주술사'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%98%84%EB%AC%B4%EC%84%B1%EA%B8%B0%EC%82%AC',
	['현무기원사'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%98%84%EB%AC%B4%EC%84%B1%EA%B8%B0%EC%82%AC',
	['현무수도사'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%98%84%EB%AC%B4%EC%84%B1%EA%B8%B0%EC%82%AC',
	['방벽은안쓸거야'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%98%84%EB%AC%B4%EC%84%B1%EA%B8%B0%EC%82%AC',
	['평온은안쓸거야'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%98%84%EB%AC%B4%EC%84%B1%EA%B8%B0%EC%82%AC',
	['공장님물건일센치'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%98%84%EB%AC%B4%EC%84%B1%EA%B8%B0%EC%82%AC',
	['흑마법사이다'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%9D%91%EB%A7%88%EB%B2%95%EC%82%AC%EC%9D%B4%EB%8B%A4',
	['노움마법솨'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%9D%91%EB%A7%88%EB%B2%95%EC%82%AC%EC%9D%B4%EB%8B%A4',
	['드렉기원사이다'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%9D%91%EB%A7%88%EB%B2%95%EC%82%AC%EC%9D%B4%EB%8B%A4',
	['두루드루치기'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%9D%91%EB%A7%88%EB%B2%95%EC%82%AC%EC%9D%B4%EB%8B%A4',
	['와이비헌터'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%9D%91%EB%A7%88%EB%B2%95%EC%82%AC%EC%9D%B4%EB%8B%A4',
	['칠성기사이다'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%9D%91%EB%A7%88%EB%B2%95%EC%82%AC%EC%9D%B4%EB%8B%A4',
	['사냥시작이다'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%9D%91%EB%A7%88%EB%B2%95%EC%82%AC%EC%9D%B4%EB%8B%A4',
	['불페라는사막여우'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%9D%91%EB%A7%88%EB%B2%95%EC%82%AC%EC%9D%B4%EB%8B%A4',
	['냉화비빔밥'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%9D%91%EB%A7%88%EB%B2%95%EC%82%AC%EC%9D%B4%EB%8B%A4',
	['흑장미소녀캔디'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%9D%91%EB%A7%88%EB%B2%95%EC%82%AC%EC%9D%B4%EB%8B%A4',
	['수도권시민'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%9D%91%EB%A7%88%EB%B2%95%EC%82%AC%EC%9D%B4%EB%8B%A4',
	['밤띵'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%A4%EB%9D%B5',
	['밤뿡'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%A4%EB%BF%A1',
	['분뜨'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%A4%EB%BF%A1',
	['밤땅'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%A4%EB%BF%A1',
	['밤뚜'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%A4%EB%BF%A1',
	['밤뜨아'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%A4%EB%BF%A1',
	['사탄탱고'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%82%AC%ED%83%84%ED%83%B1%EA%B3%A0',
	['주인없는망치'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%82%AC%ED%83%84%ED%83%B1%EA%B3%A0',
	['닥터맨'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%82%AC%ED%83%84%ED%83%B1%EA%B3%A0',
	['Ezig'] = 'https://www.inven.co.kr/board/wow/1651/166618',
	['ezic'] = 'https://www.inven.co.kr/board/wow/1651/166618',
	['ezia'] = 'https://www.inven.co.kr/board/wow/1651/166618',
	['ezit'] = 'https://www.inven.co.kr/board/wow/1651/166618',
	['bacchante'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=bacchante',
	['dulcet'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=bacchante',
	['lpba'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=bacchante',
	['pba'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=bacchante',
	['불새날다'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=bacchante',
	['석렬이'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=bacchante',
	['운무왕김씨'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=bacchante',
	['Stekin'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['Ryoul'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['쌍검의달인'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['암흑달인'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['수도달인'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['여여우우'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['Cursx'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['Courvosier'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['원소달인'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['Ssicarioo'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['Magicc'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['akdruid'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['cursx'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['ryoul'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['ssicarioo'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['magicc'] = 'https://www.inven.co.kr/board/wow/1651/167386',
	['영도돌진'] = 'https://www.inven.co.kr/board/wow/1651/166760?p=2',
	['Psychoflavor'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=Psychoflavor',
	['도덕희'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=Psychoflavor',
	['밀리의서재'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=Psychoflavor',
	['캡틴성기'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%BA%A1%ED%8B%B4%EC%84%B1%EA%B8%B0',
	['애아범'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%BA%A1%ED%8B%B4%EC%84%B1%EA%B8%B0',
	['성환미술'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%BA%A1%ED%8B%B4%EC%84%B1%EA%B8%B0',
	['수라만'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%BA%A1%ED%8B%B4%EC%84%B1%EA%B8%B0',
	['굳원'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%BA%A1%ED%8B%B4%EC%84%B1%EA%B8%B0',
	['일격궁'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%BA%A1%ED%8B%B4%EC%84%B1%EA%B8%B0',
	['천용덕'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['노무현'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['과달라하라'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['편피노'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['서거정'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['헝가리'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['습진'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['야호령'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['마차도'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['소똥령'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['박무적'] = 'https://www.inven.co.kr/board/wow/1651/166925',
	['귀여운판다렌전사'] = 'https://www.inven.co.kr/board/wow/1651/166925',
	['열라퐁타이'] = 'https://www.inven.co.kr/board/wow/1651/166930',
	['주래곤'] = 'https://www.inven.co.kr/board/wow/1651/166930',
	['열라뿡따이'] = 'https://www.inven.co.kr/board/wow/1651/166930',
	['데드퀸누님'] = 'https://www.inven.co.kr/board/wow/1651/166930',
	['하루막공'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['다크오브메이'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['디카이'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['라하루나'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['맞고버텨'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['모라카이'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['뮤라샤'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['뮤라이'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['뮤라카이'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['뮤사카이'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['슈횬'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['요색마'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['주술하는곰'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['카쿠웅'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['크림라떼'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['크림레몬'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['크림사과'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['크림캔디'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['크림케익'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['크림쿠키'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['크림키위'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['트롤슈러'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['리키이'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['뮤라하'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['뮤라미'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%95%98%EB%A3%A8%EB%A7%89%EA%B3%B5 ',
	['모금함터는비챤'] = 'https://www.inven.co.kr/board/wow/1651/167030',
	['가로쉬둠스크림'] = 'https://www.inven.co.kr/board/wow/1651/167047',
	['윈드펠송'] = 'https://www.inven.co.kr/board/wow/1651/167059',
	['렌즈콩'] = 'https://www.inven.co.kr/board/wow/1651/167059',
	['바세린캐어'] = 'https://www.inven.co.kr/board/wow/1651/167059',
	['백발마녀진'] = 'https://www.inven.co.kr/board/wow/1651/167059',
	['사자비엔'] = 'https://www.inven.co.kr/board/wow/1651/167059',
	['쑤셔두견디셔'] = 'https://www.inven.co.kr/board/wow/1651/167059',
	['윈드마몽드'] = 'https://www.inven.co.kr/board/wow/1651/167059',
	['캬베진'] = 'https://www.inven.co.kr/board/wow/1651/167059',
	['자연드림'] = 'https://www.inven.co.kr/board/wow/1651/167059',
	['기브미초콜렛'] = 'https://www.inven.co.kr/board/wow/1651/167059',
	['삼양'] = 'https://www.inven.co.kr/board/wow/1651/167059',
	['암맛가네'] = 'https://www.inven.co.kr/board/wow/1651/167061',
	['아맛가네'] = 'https://www.inven.co.kr/board/wow/1651/167061',
	['메이드홍콩'] = 'https://www.inven.co.kr/board/wow/1651/167061',
	['아뭔데또'] = 'https://www.inven.co.kr/board/wow/1651/167061',
	['알아서할게닥처좀'] = 'https://www.inven.co.kr/board/wow/1651/167061',
	['아구라가아니라'] = 'https://www.inven.co.kr/board/wow/1651/167061',
	['쿨한오크'] = 'https://www.inven.co.kr/board/wow/1651/167066',
	['쿨한판다'] = 'https://www.inven.co.kr/board/wow/1651/167066',
	['kkambo'] = 'https://www.inven.co.kr/board/wow/1651/167066',
	['Surge'] = 'https://www.inven.co.kr/board/wow/1651/167067',
	['Denuvo'] = 'https://www.inven.co.kr/board/wow/1651/167067',
	['Infusion'] = 'https://www.inven.co.kr/board/wow/1651/167067',
	['Shadowplay'] = 'https://www.inven.co.kr/board/wow/1651/167067',
	['Chiji'] = 'https://www.inven.co.kr/board/wow/1651/167067',
	['farming'] = 'https://www.inven.co.kr/board/wow/1651/167067',
	['헌트헌트맨'] = 'https://www.inven.co.kr/board/wow/1651/167069',
	['로봇맨'] = 'https://www.inven.co.kr/board/wow/1651/167069',
	['니힐리즘맨'] = 'https://www.inven.co.kr/board/wow/1651/167069',
	['스파이맨'] = 'https://www.inven.co.kr/board/wow/1651/167069',
	['로그맨'] = 'https://www.inven.co.kr/board/wow/1651/167069',
	['에이아이맨'] = 'https://www.inven.co.kr/board/wow/1651/167069',
	['네거티브맨'] = 'https://www.inven.co.kr/board/wow/1651/167069',
	['홀리힐링맨'] = 'https://www.inven.co.kr/board/wow/1651/167069',
	['비구니걸'] = 'https://www.inven.co.kr/board/wow/1651/167069',
	['파충강맨'] = 'https://www.inven.co.kr/board/wow/1651/167069',
	['썬워커맨'] = 'https://www.inven.co.kr/board/wow/1651/167069',
	['구미호꽃'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['내귀에사제'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['딸기맛노루'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['술노루'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['드래곤노루'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['노루곰탱'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['레몬맛노루'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['노루곰탱이'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['노루곰팅'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['노루곰돌이'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['파란맛노루'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['노루곰이'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['노루탱탱'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['팡미니'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['팡팡민찡'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['팡민찌'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['팡민쨔응'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['팡민찡'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['팡팡미니'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['팡팡민'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['팡팡민찌'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['팡미뉘'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['oliveu'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['구미호용'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['구미호우'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['구미호블러드'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['구미호법사'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['canolau'] = 'https://www.inven.co.kr/board/wow/1651/167082',
	['파티찾기'] = 'https://www.inven.co.kr/board/wow/1651/167100',
	['자두사탕'] = 'https://www.inven.co.kr/board/wow/1651/167100',
	['커피타는김양'] = 'https://www.inven.co.kr/board/wow/1651/167100',
	['나갈이'] = 'https://www.inven.co.kr/board/wow/1651/167139',
	['Grei'] = 'https://www.inven.co.kr/board/wow/1651/167139',
	['괴패'] = 'https://www.inven.co.kr/board/wow/1651/167139',
	['선비촌'] = 'https://www.inven.co.kr/board/wow/1651/167139',
	['강패'] = 'https://www.inven.co.kr/board/wow/1651/167139',
	['리대길'] = 'https://www.inven.co.kr/board/wow/1651/167139',
	['캉패'] = 'https://www.inven.co.kr/board/wow/1651/167139',
	['괴물강'] = 'https://www.inven.co.kr/board/wow/1651/167139',
	['grei'] = 'https://www.inven.co.kr/board/wow/1651/167139',
	['총활'] = 'https://www.inven.co.kr/board/wow/1651/167139',
	['동계검열'] = 'https://www.inven.co.kr/board/wow/1651/167139',
	['숫도롱뇽소녀네티'] = 'https://www.inven.co.kr/board/wow/1651/167194',
	['숫소소녀네티'] = 'https://www.inven.co.kr/board/wow/1651/167194',
	['먹토'] = 'https://www.inven.co.kr/board/wow/1651/167201',
	['밤거'] = 'https://www.inven.co.kr/board/wow/1651/167201',
	['씹선비입니다'] = 'https://www.inven.co.kr/board/wow/1651/167201',
	['은거'] = 'https://www.inven.co.kr/board/wow/1651/167201',
	['조으당'] = 'https://www.inven.co.kr/board/wow/1651/167201',
	['sikcal'] = 'https://www.inven.co.kr/board/wow/1651/167201',
	['금거'] = 'https://www.inven.co.kr/board/wow/1651/167201',
	['justlovers'] = 'https://www.inven.co.kr/board/wow/1651/167227',
	['justwaitfor'] = 'https://www.inven.co.kr/board/wow/1651/167227',
	['justbeliever'] = 'https://www.inven.co.kr/board/wow/1651/167227',
	['justluv'] = 'https://www.inven.co.kr/board/wow/1651/167227',
	['저스트러버즈'] = 'https://www.inven.co.kr/board/wow/1651/167227',
	['레벨업은사드세요'] = 'https://www.inven.co.kr/board/wow/1651/167227',
	['justplz'] = 'https://www.inven.co.kr/board/wow/1651/167227',
	['justbecause'] = 'https://www.inven.co.kr/board/wow/1651/167227',
	['justdragon'] = 'https://www.inven.co.kr/board/wow/1651/167227',
	['justdothat'] = 'https://www.inven.co.kr/board/wow/1651/167227',
	['팥빵간지렁'] = 'https://www.inven.co.kr/board/wow/1651/167227',
	['언럭키쉬바나'] = 'https://www.inven.co.kr/board/wow/1651/167227',
	['정신자극좀'] = 'https://www.inven.co.kr/board/wow/1651/167230',
	['roblne'] = 'https://www.inven.co.kr/board/wow/1651/167230',
	['재커찡'] = 'https://www.inven.co.kr/board/wow/1651/167230',
	['재커님'] = 'https://www.inven.co.kr/board/wow/1651/167230',
	['허보검'] = 'https://www.inven.co.kr/board/wow/1651/167230',
	['cascade'] = 'https://www.inven.co.kr/board/wow/1651/167230',
	['아넹'] = 'https://www.inven.co.kr/board/wow/1651/167246',
	['에영'] = 'https://www.inven.co.kr/board/wow/1651/167246',
	['뾰영'] = 'https://www.inven.co.kr/board/wow/1651/167246',
	['삐영'] = 'https://www.inven.co.kr/board/wow/1651/167246',
	['양댕'] = 'https://www.inven.co.kr/board/wow/1651/167246',
	['쪼영'] = 'https://www.inven.co.kr/board/wow/1651/167246',
	['루영'] = 'https://www.inven.co.kr/board/wow/1651/167246',
	['양멍'] = 'https://www.inven.co.kr/board/wow/1651/167246',
	['김해를버린랄로'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['마친데요'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['장윤희'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['가시성'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['무지의가속팽창'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['미덥잖은토템싸개'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['바람처럼자유로움'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['장눈속'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['탱글무굴'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['힐바닥밟으라고'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['돈왜클'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['힐종훈'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['이속몰빵궁수'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['장윤회'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['장도비'] = 'https://www.inven.co.kr/board/wow/1651/167269',
	['다나쇼'] = 'https://www.inven.co.kr/board/wow/1651/167270',
	['erob'] = 'https://www.inven.co.kr/board/wow/1651/167270',
	['저스퍼'] = 'https://www.inven.co.kr/board/wow/1651/167270',
	['발키르황제'] = 'https://www.inven.co.kr/board/wow/1651/167300',
	['통통드루'] = 'https://www.inven.co.kr/board/wow/1651/167327',
	['기사밀크'] = 'https://www.inven.co.kr/board/wow/1651/167327',
	['악사마이쮸'] = 'https://www.inven.co.kr/board/wow/1651/167327',
	['수도몽쉘'] = 'https://www.inven.co.kr/board/wow/1651/167327',
	['전사몽쉘'] = 'https://www.inven.co.kr/board/wow/1651/167327',
	['천하장사몽쉘'] = 'https://www.inven.co.kr/board/wow/1651/167327',
	['극악'] = 'https://www.inven.co.kr/board/wow/1651/167340',
	['하자라'] = 'https://www.inven.co.kr/board/wow/1651/167340',
	['레나타키'] = 'https://www.inven.co.kr/board/wow/1651/167340',
	['윈터님의충견'] = 'https://www.inven.co.kr/board/wow/1651/167450',
	['같이세계여행'] = 'https://www.inven.co.kr/board/wow/1651/167450',
	['민지이서카즈하'] = 'https://www.inven.co.kr/board/wow/1651/167450',
	['생강못먹어요'] = 'https://www.inven.co.kr/board/wow/1651/167450',
	['설윤님의충견'] = 'https://www.inven.co.kr/board/wow/1651/167450',
	['쓰레기보면줍자'] = 'https://www.inven.co.kr/board/wow/1651/167450',
	['우기낸시아린루다'] = 'https://www.inven.co.kr/board/wow/1651/167450',
	['은채하니카리나'] = 'https://www.inven.co.kr/board/wow/1651/167450',
	['인디애나존스노우'] = 'https://www.inven.co.kr/board/wow/1651/167450',
	['잔디를밟지맙시다'] = 'https://www.inven.co.kr/board/wow/1651/167450',
	['장훈아삼천억만'] = 'https://www.inven.co.kr/board/wow/1651/167450',
	['저녁뭐먹지'] = 'https://www.inven.co.kr/board/wow/1651/167450',
	['혹시담배피니'] = 'https://www.inven.co.kr/board/wow/1651/167450',
	['Explicitness'] = 'https://www.inven.co.kr/board/wow/1651/167379',
	['arctangentx'] = 'https://www.inven.co.kr/board/wow/1651/167379',
	['delicateness'] = 'https://www.inven.co.kr/board/wow/1651/167379',
	['gwleibniz'] = 'https://www.inven.co.kr/board/wow/1651/167379',
	['mathmatics'] = 'https://www.inven.co.kr/board/wow/1651/167379',
	['흑소가탱힐딜해요'] = 'https://www.inven.co.kr/board/wow/1651/167379',
	['철혈폭군'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B2%A0%ED%98%88',
	['철혈흑귀'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B2%A0%ED%98%88',
	['혈산노괴'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B2%A0%ED%98%88',
	['철혈노개'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B2%A0%ED%98%88',
	['혈산교주'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B2%A0%ED%98%88',
	['철혈신군'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B2%A0%ED%98%88',
	['철혈마제'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B2%A0%ED%98%88',
	['혈산괴룡'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B2%A0%ED%98%88',
	['철혈태산'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B2%A0%ED%98%88',
	['철혈비랑'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B2%A0%ED%98%88',
	['고렉스블랙비어드'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B2%A0%ED%98%88',
	['고렉크림슨비어드'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B2%A0%ED%98%88',
	['철혈성군'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B2%A0%ED%98%88',
	['Bladeflurry'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['Evokr'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['Gingitv'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['Hailstorm'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['Hotstreak'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['Kegs'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['Nawha'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['Nerftankk'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['굶주린다람쥐'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['눈아파'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['단란한달라란'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['도둑노무'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['도둑람쥐'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['도롱도롱뇽'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['붐볼조이'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['수사고블린'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['숟드'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['스시고블린'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['신성람쥐'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['안녕람쥐'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['안용람쥐'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['올라와보셈'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['진짜큰거온다'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['참퓌'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['트롤사격'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['힐퀴'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['Ironfur'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['광사동개눈깔'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['얽컫큇챠'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['evokr'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['hotstreak'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['ironfur'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['kegs'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['hailstorm'] =
	'https://www.inven.co.kr/board/wow/1651?name=subjcont&keyword=%EA%B4%91%EC%82%AC%EB%8F%99%EA%B0%9C%EB%88%88%EA%B9%94&p=1&mskin=#listtop',
	['tianzuievo'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=Tianzuievo',
	['소미냥꾼'] = 'https://www.inven.co.kr/board/wow/1651/166078?name=subjcont&keyword=%EC%86%8C%EB%AF%B8%EB%83%A5%EA%BE%BC',
	['희망소망존망'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%9D%AC%EB%A7%9D%EC%86%8C%EB%A7%9D%EC%A1%B4%EB%A7%9D',
	['양커'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%96%91%EC%BB%A4',
	['아이와우'] = 'https://www.inven.co.kr/board/wow/1651/166805',
	['꽁쑤'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EA%BD%81%EC%91%A4',
	['미세먼지조심'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AF%B8%EC%84%B8%EB%A8%BC%EC%A7%80%EC%A1%B0%EC%8B%AC',
	['하쿠아'] = 'https://www.inven.co.kr/board/wow/1651/167091',
	['갓데피언스'] = 'https://www.inven.co.kr/board/wow/1651/167126',
	['Evaan'] = 'https://www.inven.co.kr/board/wow/1651/167126',
	['Himmell'] = 'https://www.inven.co.kr/board/wow/1651/167126',
	['속노사'] = 'https://www.inven.co.kr/board/wow/1651/167151',
	['박끙끙'] = 'https://www.inven.co.kr/board/wow/1651/167254',
	['박상콤'] = 'https://www.inven.co.kr/board/wow/1651/167254',
	['박공룡'] = 'https://www.inven.co.kr/board/wow/1651/167254',
	['박징징'] = 'https://www.inven.co.kr/board/wow/1651/167254',
	['박상큼'] = 'https://www.inven.co.kr/board/wow/1651/167254',
	['밥좀먹고하자'] = 'https://www.inven.co.kr/board/wow/1651/167331',
	['곰곰맛있는'] = 'https://www.inven.co.kr/board/wow/1651/167367',
	['바이더씨'] = 'https://www.inven.co.kr/board/wow/1651/167445',
	['charanka'] = 'https://www.inven.co.kr/board/wow/1651/167465',
	['외계인치치'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%99%B8%EA%B3%84%EC%9D%B8%EC%B9%98%EC%B9%98',
	['여자필요없는미남'] = 'https://www.inven.co.kr/board/wow/1651/167611',
	['uzumati'] = 'https://www.inven.co.kr/board/wow/1651/167611',
	['조봉드루'] = 'https://www.inven.co.kr/board/wow/1651/167626',
	['꽃님반쫄랑이'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EA%BD%83%EB%8B%98%EB%B0%98%EC%AB%84%EB%9E%91%EC%9D%B4',
	['복합허브추출분말'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['파란십자군'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['와우에입문합니다'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['지금삭제하지마요'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['개념은관광중'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['Allinon'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['Inswitzer'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['Cavalheiro'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['충전을완료합니다'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['Electronics'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['평생솔로로살아라'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['충전을시작합니다'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['신기하지않아'] = 'https://www.inven.co.kr/board/wow/1651/167728',
	['찌르는휠러'] = 'https://www.inven.co.kr/board/wow/1651/167728',
	['대마법사망냥냥'] = 'https://www.inven.co.kr/board/wow/1651/167740',
	['징빵떡'] = 'https://www.inven.co.kr/board/wow/1651/167740',
	['psychoflavor'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=Psychoflavor',
	['부달'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B6%80%EB%8B%AC',
	['Zeal'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=Zeal',
	['Pump'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=Zeal',
	['Scar'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=Zeal',
	['Brew'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=Zeal',
	['Tsar'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=Zeal',
	['Hexe'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=Zeal',
	['카디냥꾼'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B9%B4%EB%94%94%EB%83%A5%EA%BE%BC',
	['카디드루'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B9%B4%EB%94%94%EB%83%A5%EA%BE%BC',
	['카디도적'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B9%B4%EB%94%94%EB%83%A5%EA%BE%BC',
	['허카디'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B9%B4%EB%94%94%EB%83%A5%EA%BE%BC',
	['치유마마'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B9%B4%EB%94%94%EB%83%A5%EA%BE%BC',
	['기사카디'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%B9%B4%EB%94%94%EB%83%A5%EA%BE%BC',
	['펠마메'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%8E%A0%EB%A7%88%EB%A9%94',
	['갓구운모카빵'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EA%B0%93%EA%B5%AC%EC%9A%B4%EB%B2%A0%EC%9D%B4%EA%B8%80',
	['갓구운베이글'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EA%B0%93%EA%B5%AC%EC%9A%B4%EB%B2%A0%EC%9D%B4%EA%B8%80',
	['갓구운마늘빵'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EA%B0%93%EA%B5%AC%EC%9A%B4%EB%B2%A0%EC%9D%B4%EA%B8%80',
	['갓구운메론빵'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EA%B0%93%EA%B5%AC%EC%9A%B4%EB%B2%A0%EC%9D%B4%EA%B8%80',
	['갓구운앙버터'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EA%B0%93%EA%B5%AC%EC%9A%B4%EB%B2%A0%EC%9D%B4%EA%B8%80',
	['갓구운크림빵'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EA%B0%93%EA%B5%AC%EC%9A%B4%EB%B2%A0%EC%9D%B4%EA%B8%80',
	['갓구운또띠아'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EA%B0%93%EA%B5%AC%EC%9A%B4%EB%B2%A0%EC%9D%B4%EA%B8%80',
	['Manemone'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EA%B0%93%EA%B5%AC%EC%9A%B4%EB%B2%A0%EC%9D%B4%EA%B8%80',
	['죠죠리온'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['베이푸'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['베이피'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['노웨어'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['휴먼메이드'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['베이프랜드'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['베이프월드'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['크래프트워크'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['쿠조죠린'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['러브디럭스'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['쿠조죠타로'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['죠세후미'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['죠빈'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['헤븐즈도어'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['죠키드'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['죠디오'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['죠죠랜즈'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['핫팬츠'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['애니웨어'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%85%B8%EC%9B%A8%EC%96%B4',
	['Sumye'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%A0%84%ED%9B%84%EC%9D%B4',
	['쉬는시간이에요'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%89%AC%EB%8A%94%EC%8B%9C%EA%B0%84%EC%9D%B4%EC%97%90%EC%9A%94',
	['나도껴줘'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%98%EB%8F%84%EA%BB%B4%EC%A4%98',
	['지존흑우팔라딘'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%98%EB%8F%84%EA%BB%B4%EC%A4%98',
	['땅콩먹는너구리 '] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%98%EB%8F%84%EA%BB%B4%EC%A4%98',
	['악신도신이다 '] = 'https://www.inven.co.kr/board/wow/1651/170002',
	['냉한기 '] = 'https://www.inven.co.kr/board/wow/1651/170115',
	['Mangchii '] = 'https://www.inven.co.kr/board/wow/1651/170115',
	['오혜민 '] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%98%A4%ED%98%9C%EB%AF%BC',
	['Contaminate'] = 'https://www.inven.co.kr/board/wow/1651/170204',
	['릴곰방송중'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A6%B4%EA%B3%B0',
	['지지직릴곰'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A6%B4%EA%B3%B0',
	['치지직릴곰'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A6%B4%EA%B3%B0',
	['치지칙릴곰'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A6%B4%EA%B3%B0',
	['릴곰공대'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A6%B4%EA%B3%B0',
	['릴곰핑'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A6%B4%EA%B3%B0',
	['opiowqa'] = 'https://www.inven.co.kr/board/wow/1651/170442',
	['ijaihdsi'] = 'https://www.inven.co.kr/board/wow/1651/170442',
	['Fjkjsdi'] = 'https://www.inven.co.kr/board/wow/1651/170442',
	['싼죽'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subject&keyword=%EC%8B%BC',
	['싼티백작'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subject&keyword=%EC%8B%BC',
	['무오공'] = 'https://www.inven.co.kr/board/wow/1651/170495',
	['현두삼촌'] = 'https://www.inven.co.kr/board/wow/1651/170501',
	['귀띤꿍꼬또'] = 'https://www.inven.co.kr/board/wow/1651/170708',
	['쭌영'] = 'https://www.inven.co.kr/board/wow/1651/170708',
	['잠지핥기'] = 'https://www.inven.co.kr/board/wow/1651/170708',
	['카짓냥'] = 'https://www.inven.co.kr/board/wow/1651/170708',
	['귀여운카짓냥'] = 'https://www.inven.co.kr/board/wow/1651/170708',
	['공주전사리나'] = 'https://www.inven.co.kr/board/wow/1651/170708',
	['딸기쯔으앰'] = 'https://www.inven.co.kr/board/wow/1651/171330',
	['딸기쯔앰'] = 'https://www.inven.co.kr/board/wow/1651/171330',
	['사과쯔앰'] = 'https://www.inven.co.kr/board/wow/1651/171330',
	['Gtf'] = 'https://www.inven.co.kr/board/wow/1651/171029?name=subjcont&keyword=gtf',
	['Visvimu'] = 'https://www.inven.co.kr/board/wow/1651/171374',
	['무디형'] = 'https://www.inven.co.kr/board/wow/1651/171375',
	['무디님'] = 'https://www.inven.co.kr/board/wow/1651/171375',
	['무디놈'] = 'https://www.inven.co.kr/board/wow/1651/171375',
	['무디판다'] = 'https://www.inven.co.kr/board/wow/1651/171375',
	['무디곰'] = 'https://www.inven.co.kr/board/wow/1651/171375',
	['무디용'] = 'https://www.inven.co.kr/board/wow/1651/171375',
	['이순이'] = 'https://www.inven.co.kr/board/wow/1651/171508',
	['벱스'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B1%81%EC%8A%A4',
	['뱁스'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B1%81%EC%8A%A4',
	['뱁스죽기'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B1%81%EC%8A%A4',
	['뱁스흑마'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B1%81%EC%8A%A4',
	['위장진입'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%9F%AD%ED%82%A4%EB%8B%98',
	['호호흑마다'] = 'https://www.inven.co.kr/board/wow/1651/171556',
	['좀비감별사'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EA%B0%90%EB%B3%84%EC%82%AC',
	['사람감별사'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EA%B0%90%EB%B3%84%EC%82%AC',
	['지천후'] = 'https://www.inven.co.kr/board/wow/1651/171597',
	['짜증내지마라고'] = 'https://www.inven.co.kr/board/wow/1651/171597',
	['쐐기좀돌께요'] = 'https://www.inven.co.kr/board/wow/1651/171597',
	['찐센삥'] = 'https://www.inven.co.kr/board/wow/1651/171616',
	['Xmrdla'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%90%90%EA%B8%B0%EC%A2%80%EB%8F%8C%EA%BB%98%EC%9A%94',
	['맹플레이트'] = 'https://www.inven.co.kr/board/wow/1651/171763',
	['실반아스윈드런어'] = 'https://www.inven.co.kr/board/wow/1651/171763',
	['혐고블린'] = 'https://www.inven.co.kr/board/wow/1651/171763',
	['Hotovai'] = 'https://www.inven.co.kr/board/wow/1651/171763',
	['가져왕'] = 'https://www.inven.co.kr/board/wow/1651/171763',
	['Nightoff'] = 'https://www.inven.co.kr/board/wow/1651/171763',
	['힐링큐어'] = 'https://www.inven.co.kr/board/wow/1651/171763',
	['홈고블린'] = 'https://www.inven.co.kr/board/wow/1651/171763',
	['Ant'] = 'https://www.inven.co.kr/board/wow/1651/171804',
	['혈죽천사'] = 'https://www.inven.co.kr/board/wow/1651/171810',
	['작고고개숙인남자'] = 'https://www.inven.co.kr/board/wow/1651/171810',
	['채움사제'] = 'https://www.inven.co.kr/board/wow/1651/171810',
	['드루천사'] = 'https://www.inven.co.kr/board/wow/1651/171810',
	['대연동불뱃살'] = 'https://www.inven.co.kr/board/wow/1651/171810',
	['남부교도소'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['성서문이름뿡'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['오동통한일격'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['꼬지보리꼬지보리'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['뚱딩냥꾼'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['도너사냥꾼'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['도너도둑'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['뚱뚱하당'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['만델라소년학교'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['극혐얼굴'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['젠이뚜'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['썬더와팬더에힘'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['오므리자'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['김천소년교도소'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['참새발가락힘'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['도너흑마'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['저주의집'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['군단잡는해병'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['동덕여대빵'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['악마방귀'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
	['박판사'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%95%ED%8C%90%EC%82%AC',
	['박전투'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%95%ED%8C%90%EC%82%AC',
	['박광폭'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%95%ED%8C%90%EC%82%AC',
	['박총독'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%95%ED%8C%90%EC%82%AC',
	['박제독'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%95%ED%8C%90%EC%82%AC',
	['박요원'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%95%ED%8C%90%EC%82%AC',
	['박소금'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%95%ED%8C%90%EC%82%AC',
	['박원장'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%95%ED%8C%90%EC%82%AC',
	['박카츄'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%95%ED%8C%90%EC%82%AC',
	['박메즈'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%95%ED%8C%90%EC%82%AC',
	['박광기'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%95%ED%8C%90%EC%82%AC',
	['박야성'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B0%95%ED%8C%90%EC%82%AC',
	['묵현리차'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AC%B5%ED%98%84%EB%A6%AC%EC%B0%A8',
	['죽기맛좀볼래'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AC%B5%ED%98%84%EB%A6%AC%EC%B0%A8',
	['많이므다고만해라'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AC%B5%ED%98%84%EB%A6%AC%EC%B0%A8',
	['때리지마아프당'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AC%B5%ED%98%84%EB%A6%AC%EC%B0%A8',
	['전사맛좀볼래'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AC%B5%ED%98%84%EB%A6%AC%EC%B0%A8',
	['나드루얌알지'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AC%B5%ED%98%84%EB%A6%AC%EC%B0%A8',
	['애들아니엄마당'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AC%B5%ED%98%84%EB%A6%AC%EC%B0%A8',
	['야야니엄마당'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AC%B5%ED%98%84%EB%A6%AC%EC%B0%A8',
	['야야니아빠당'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AC%B5%ED%98%84%EB%A6%AC%EC%B0%A8',
	['아프다고만해라'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AC%B5%ED%98%84%EB%A6%AC%EC%B0%A8',
	['니내꼬얌'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AC%B5%ED%98%84%EB%A6%AC%EC%B0%A8',
	['야야뭐하니'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AC%B5%ED%98%84%EB%A6%AC%EC%B0%A8',
	['뭐하니밥먹자'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AC%B5%ED%98%84%EB%A6%AC%EC%B0%A8',
	['너나잘하셧용'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AC%B5%ED%98%84%EB%A6%AC%EC%B0%A8',
	['키쟈루'] = 'https://www.inven.co.kr/board/wow/1651/171927',
	['최석인'] = 'https://www.inven.co.kr/board/wow/1651/171927',
	['아탱하기졸리다고'] = 'https://www.inven.co.kr/board/wow/1651/171927',
	['최진혁이'] = 'https://www.inven.co.kr/board/wow/1651/171927',
	['지현아사랑해'] = 'https://www.inven.co.kr/board/wow/1651/171927',
	['최무쇠'] = 'https://www.inven.co.kr/board/wow/1651/171927',
	['지현아제발살려줘'] = 'https://www.inven.co.kr/board/wow/1651/171927',
}


DB.server['하이잘'] = {
	['와우박사님'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EA%B0%91%EB%B6%80%EB%8C%80%EB%A6%AC',
	['idealworld'] = 'https://www.inven.co.kr/board/wow/1651/166010?name=subjcont&keyword=Idealworld',
	['료신님'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A3%8C%EC%8B%A0%EB%8B%98',
	['아라시즈'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%95%84%EB%9D%BC%EC%8B%9C%EC%A6%88',
	['swiny'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=swiny',
	['능동방어시스템'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%8A%A5%EB%8F%99%EB%B0%A9%EC%96%B4%EC%8B%9C%EC%8A%A4%ED%85%9C',
	['근육미녀'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EA%B7%BC%EC%9C%A1%EB%AF%B8%EB%85%80',
	['산은산인데어쩔까'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%82%B0%EC%9D%80%EC%82%B0%EC%9D%B8%EB%8D%B0%EC%96%B4%EC%A9%94%EA%B9%8C',
	['시우다드후아레스'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['장필우'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['앨아술'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['마차도'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['티후아나'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['카마초'] = 'https://www.inven.co.kr/board/wow/1651/166886',
	['파워브릿츠'] = 'https://www.inven.co.kr/board/wow/1651/167059',
	['네티스'] = 'https://www.inven.co.kr/board/wow/1651/167059',
	['세벽꽃'] = 'https://www.inven.co.kr/board/wow/1651/167059',
	['로제핑크'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A1%9C%EC%A0%9C%ED%95%91%ED%81%AC',
	['로보라'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A1%9C%EB%B3%B4%EB%9D%BC',
	['천미'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['깐지야'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['깡신미'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['세이랑'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['레오베일'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['세라베일'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['레이랑'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['딜제덴'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['무라웅'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['깡신아'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['포세이디우스'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['샤이노르미'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['메카니고스'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['일렉트로스트라즈'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['페어리고스'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['깐지용'] = 'https://www.inven.co.kr/board/wow/1651/167157',
	['와우영'] = 'https://www.inven.co.kr/board/wow/1651/167163',
	['기사랑놀자'] = 'https://www.inven.co.kr/board/wow/1651/167163',
	['드루이드랑놀자'] = 'https://www.inven.co.kr/board/wow/1651/167163',
	['사제랑놀자'] = 'https://www.inven.co.kr/board/wow/1651/167163',
	['술사랑놀자'] = 'https://www.inven.co.kr/board/wow/1651/167163',
	['슬며시다가와'] = 'https://www.inven.co.kr/board/wow/1651/167163',
	['원사랑놀자'] = 'https://www.inven.co.kr/board/wow/1651/167163',
	['전설의냥꾼엘프'] = 'https://www.inven.co.kr/board/wow/1651/167163',
	['판다렌의전설녀'] = 'https://www.inven.co.kr/board/wow/1651/167163',
	['탱가이'] = 'https://www.inven.co.kr/board/wow/1651/167171',
	['기원사는못말려'] = 'https://www.inven.co.kr/board/wow/1651/167171',
	['성기사는못말려'] = 'https://www.inven.co.kr/board/wow/1651/167171',
	['악마는못말려'] = 'https://www.inven.co.kr/board/wow/1651/167171',
	['전사는못말려'] = 'https://www.inven.co.kr/board/wow/1651/167171',
	['죽탱은못말려'] = 'https://www.inven.co.kr/board/wow/1651/167171',
	['힐사제는못말려'] = 'https://www.inven.co.kr/board/wow/1651/167171',
	['노빈술사'] = 'https://www.inven.co.kr/board/wow/1651/167267',
	['꼬꼬마메이'] = 'https://www.inven.co.kr/board/wow/1651/167267',
	['다잘해도사'] = 'https://www.inven.co.kr/board/wow/1651/167267',
	['드루드루랄랄라'] = 'https://www.inven.co.kr/board/wow/1651/167267',
	['메릴린'] = 'https://www.inven.co.kr/board/wow/1651/167267',
	['메이흑마'] = 'https://www.inven.co.kr/board/wow/1651/167267',
	['명란김씨'] = 'https://www.inven.co.kr/board/wow/1651/167267',
	['아바카밀라'] = 'https://www.inven.co.kr/board/wow/1651/167267',
	['폭행술사'] = 'https://www.inven.co.kr/board/wow/1651/167267',
	['clampsoup'] =
	'https://www.inven.co.kr/board/wow/1651/165242?name=subjcont&keyword=%EC%98%A4%EC%9B%94%EC%9D%98%EC%8B%A0%EB%A1%9D',
	['lumieredevie'] =
	'https://www.inven.co.kr/board/wow/1651/165242?name=subjcont&keyword=%EC%98%A4%EC%9B%94%EC%9D%98%EC%8B%A0%EB%A1%9D',
	['aprilies'] = 'https://www.inven.co.kr/board/wow/1651/167247',
	['인생의변곡점'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%98%A4%EB%98%90%EB%B3%B8%EB%B9%84%EC%8A%A4%EB%A7%88%EB%A5%B4%ED%81%AC',
	['해바라기왕자'] = 'https://www.inven.co.kr/board/wow/1651/167216',
	['팅커혜수'] = 'https://www.inven.co.kr/board/wow/1651/167229',
	['수만년되돌린사랑'] = 'https://www.inven.co.kr/board/wow/1651/167313',
	['신의아들신의손'] = 'https://www.inven.co.kr/board/wow/1651/167319',
	['케이천사'] = 'https://www.inven.co.kr/board/wow/1651/167319',
	['찔러서털어'] = 'https://www.inven.co.kr/board/wow/1651/167393',
	['마음이아프다'] = 'https://www.inven.co.kr/board/wow/1651/167612',
	['갑부대리'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%8C%85%EC%BB%A4%ED%98%9C%EC%88%98',
	['복덩이판다렌'] = 'https://www.inven.co.kr/board/wow/1651/167229',
	['Krombacher'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['쟁반짜장곱빼기'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['Enjoythis'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['Strapazzato'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['Heinekendark'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['Thenights'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['갈릭불고기와퍼'] = 'https://www.inven.co.kr/board/wow/1651/167703',
	['심상치않어'] = 'https://www.inven.co.kr/board/wow/1651/167728',
	['찌르제'] = 'https://www.inven.co.kr/board/wow/1651/167728',
	['Ayaseeri'] = 'https://www.inven.co.kr/board/wow/1651/170710',
	['룡진'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A3%A1%EC%A7%84',
}


DB.server['헬스크림'] = {
	['윌리엄사제'] = 'https://www.inven.co.kr/board/wow/1651/167363',
	['윌리엄드루이드'] = 'https://www.inven.co.kr/board/wow/1651/167363',
	['윌리엄수도'] = 'https://www.inven.co.kr/board/wow/1651/167363',
	['윌리엄사냥꾼'] = 'https://www.inven.co.kr/board/wow/1651/167363',
	['윌리엄전사'] = 'https://www.inven.co.kr/board/wow/1651/167363',
	['유정설렁탕'] = 'https://www.inven.co.kr/board/wow/1651/171676',
}


DB.server['데스윙'] = {
	['미친해피'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AF%B8%EC%B9%9C%ED%95%B4%ED%94%BC',
	['해피뉴이'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%AF%B8%EC%B9%9C%ED%95%B4%ED%94%BC',
	['정신교육대장'] = 'https://www.inven.co.kr/board/wow/1651/166784',
	['남순덕'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EC%88%9C%EB%8D%95',
	['헤스페로스'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EC%88%9C%EB%8D%95',
	['phantompain'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=phantompain',
}

DB.server['윈드러너'] = {
	['별을제패한자'] = 'https://www.inven.co.kr/board/wow/1651/169693',
	['원드죽기사'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%9B%90%EB%93%9C',
	['까칠한여우'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%9B%90%EB%93%9C',
	['사막여우에요'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%9B%90%EB%93%9C',
}


DB.server['세나리우스'] = {
	['몽물'] = 'https://www.inven.co.kr/board/wow/1651/167241',
	['검은냥'] = 'https://www.inven.co.kr/board/wow/1651/167423',
	['몽상가'] = 'https://www.inven.co.kr/board/wow/1651/167423',
	['헌병'] = 'https://www.inven.co.kr/board/wow/1651/167423',
	['꽃보다등심'] = 'https://www.inven.co.kr/board/wow/1651/171808',
	['챔프전사'] = 'https://www.inven.co.kr/board/wow/1651/171808',
	['꽃보다기사'] = 'https://www.inven.co.kr/board/wow/1651/171808',
	['챔프사제'] = 'https://www.inven.co.kr/board/wow/1651/171808',
	['부울페라'] = 'https://www.inven.co.kr/board/wow/1651/171808',
	['챔프흑마'] = 'https://www.inven.co.kr/board/wow/1651/171808',
	['챔프드루'] = 'https://www.inven.co.kr/board/wow/1651/171808',
	['핑퐁'] = 'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%A3%A1%EC%A7%84',
}


DB.server['줄진'] = {
	['도몬'] = 'https://www.inven.co.kr/board/wow/1651/166824',
	['트린'] = 'https://www.inven.co.kr/board/wow/1651/171411',
	['킹콩애인이모엄마'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%ED%82%B9%EC%BD%A9%EC%95%A0%EC%9D%B8%EC%9D%B4%EB%AA%A8%EC%97%84%EB%A7%88',
}


DB.server['노르간논'] = {
	['아마트라수'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%95%84%EB%A7%88%ED%8A%B8%EB%9D%BC%EC%88%98',
	['구돔'] = 'https://www.inven.co.kr/board/wow/1651/171356',
}


DB.server['불타는군단'] = {
}


DB.server['듀로탄'] = {
	['전사전사해이요'] = 'https://www.inven.co.kr/board/wow/1651/167353',
	['썬더포스'] = 'https://www.inven.co.kr/board/wow/1651/167673',
	['변신하고픈기모치'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%82%A8%EB%B6%80%EA%B5%90%EB%8F%84%EC%86%8C',
}


DB.server['가로나'] = {
	['쓰레빠'] = 'https://www.inven.co.kr/board/wow/1651/166302',
}


DB.server['굴단'] = {
	['일업슴다'] = 'https://www.inven.co.kr/board/wow/1651/167466',
	['양산박잇규'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%96%91%EC%82%B0%EB%B0%95%EC%9E%87%EA%B7%9C',
}


DB.server['스톰레이지'] = {
	['아마넷'] = 'https://www.inven.co.kr/board/wow/1651/167247',
	['대왕'] = 'https://www.inven.co.kr/board/wow/1651/167247',
	['불아삼원업'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EB%B6%88%EC%95%84%EC%82%BC%EC%9B%90%EC%97%85',
}


DB.server['달라란'] = {
	['조봉기사'] = 'https://www.inven.co.kr/board/wow/1651/167626',
	['발란드'] = 'https://www.inven.co.kr/board/wow/1651/167622',
	['조봉전사'] = 'https://www.inven.co.kr/board/wow/1651/167626',
	['조봉악사'] = 'https://www.inven.co.kr/board/wow/1651/167626',
	['조봉'] = 'https://www.inven.co.kr/board/wow/1651/167626',
	['조봉주술'] = 'https://www.inven.co.kr/board/wow/1651/167626',
	['조봉드루'] = 'https://www.inven.co.kr/board/wow/1651/167626',
	['조봉법사'] = 'https://www.inven.co.kr/board/wow/1651/167626',
	['조봉냥이'] = 'https://www.inven.co.kr/board/wow/1651/167626',
	['조봉사제'] = 'https://www.inven.co.kr/board/wow/1651/167626',
	['조봉죽기'] = 'https://www.inven.co.kr/board/wow/1651/167626',
	['수리마'] = 'https://www.inven.co.kr/board/wow/1651/167711',
	['고모랑'] = 'https://www.inven.co.kr/board/wow/1651/167711',
	['주둥아리'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%95%84%EB%A7%88%ED%8A%B8%EB%9D%BC%EC%88%98',
	['아리안'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%95%84%EB%A7%88%ED%8A%B8%EB%9D%BC%EC%88%98',
	['아마트라수'] =
	'https://www.inven.co.kr/board/wow/1651?query=list&p=1&sterm=&name=subjcont&keyword=%EC%95%84%EB%A7%88%ED%8A%B8%EB%9D%BC%EC%88%98',
}


DB.server['말퓨리온'] = {
}


DB.server['렉사르'] = {
}


DB.server['와일드해머'] = {
}


DB.server['알렉스트라자'] = {
}
