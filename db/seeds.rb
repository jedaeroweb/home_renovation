Admin.create!(:id => 1, :email => 'admin@jedaeroweb.co.kr', :name => '잠자는-사자', :password => 'a12345', :password_confirmation => 'a12345')
Admin.create!(:id => 2, :email => 'user1@edaeroweb.co.kr', :name => '사용자1', :password => 'a12345', :password_confirmation => 'a12345')
Admin.create!(:id => 3, :email => 'user2@jedaeroweb.co.kr', :name => '사용자2', :password => 'a12345', :password_confirmation => 'a12345')

Role.create!(id: 1, title: '관리자', role: 'administrator')
Role.create!(id: 2, title: '보조관리자', role: 'sub_administrator')
Role.create!(id: 3, title: '운영자', role: 'operator')

RoleAdmin.create!(role_id: 1, admin_id: 1)

AuthenticationProvider.create!(name: 'kakao')
AuthenticationProvider.create!(name: 'twitter')
AuthenticationProvider.create!(name: 'google_oauth2')
AuthenticationProvider.create!(name: 'apple')
AuthenticationProvider.create!(name: 'facebook')
AuthenticationProvider.create!(name: 'naver')

AddressLevel.create!(id: 1, title: '광역시,도')
AddressLevel.create!(id: 2, title: '시,군')
AddressLevel.create!(id: 3, title: '구')
AddressLevel.create!(id: 4, title: '동,면')

Address.create!(id: 1, parent_address_id: 0, title: '서울특별시', address_level_id: 1)
Address.create!(id: 2, parent_address_id: 0, title: '경기도', address_level_id: 1)
Address.create!(id: 3, parent_address_id: 0, title: '강원도', address_level_id: 1)
Address.create!(id: 4, parent_address_id: 0, title: '충청북도', address_level_id: 1)
Address.create!(id: 5, parent_address_id: 0, title: '충청남도', address_level_id: 1)
Address.create!(id: 6, parent_address_id: 0, title: '전라북도', address_level_id: 1)
Address.create!(id: 7, parent_address_id: 0, title: '전라남도', address_level_id: 1)
Address.create!(id: 8, parent_address_id: 0, title: '경상북도', address_level_id: 1)
Address.create!(id: 9, parent_address_id: 0, title: '경상남도', address_level_id: 1)
Address.create!(id: 10, parent_address_id: 0, title: '제주도특별자치도', address_level_id: 1)
Address.create!(id: 11, parent_address_id: 0, title: '부산광역시', address_level_id: 1)
Address.create!(id: 12, parent_address_id: 0, title: '인천광역시', address_level_id: 1)
Address.create!(id: 13, parent_address_id: 0, title: '대구광역시', address_level_id: 1)
Address.create!(id: 14, parent_address_id: 0, title: '광주광역시', address_level_id: 1)
Address.create!(id: 15, parent_address_id: 0, title: '대전광역시', address_level_id: 1)
Address.create!(id: 16, parent_address_id: 0, title: '울산광역시', address_level_id: 1)
Address.create!(id: 17, parent_address_id: 0, title: '세종특별자치시', address_level_id: 1)

Address.create!(parent_address_id: 1, title: '종로구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '중구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '용산구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '성동구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '광진구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '동대문구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '중랑구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '성북구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '강북구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '도봉구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '노원구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '은평구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '서대문구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '마포구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '양천구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '강서구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '구로구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '금천구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '영등포구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '동작구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '관악구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '서초구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '강남구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '송파구', address_level_id: 2)
Address.create!(parent_address_id: 1, title: '강동구', address_level_id: 2)



Address.create!(parent_address_id: 2, title: '수원시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '성남시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '의정부시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '안양시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '부천시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '광명시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '동두천시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '평택시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '안산시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '고양시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '과천시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '구리시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '남양주시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '오산시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '시흥시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '군포시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '의왕시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '하남시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '용인시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '파주시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '이천시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '김포시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '화성시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '광주시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '양주시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '포천시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '여주시', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '연천군', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '가평군', address_level_id: 2)
Address.create!(parent_address_id: 2, title: '양평군', address_level_id: 2)


Address.create!(parent_address_id: 3, title: '춘천시', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '원주시', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '강릉시', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '동해시', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '태백시', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '속초시', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '삼척시', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '홍천군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '횡성군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '영월군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '평창군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '정선군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '철원군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '화천군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '양구군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '인제군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '고성군', address_level_id: 2)
Address.create!(parent_address_id: 3, title: '영양군', address_level_id: 2)


Address.create!(parent_address_id: 4, title: '청주시', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '충주시', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '제천시', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '보은군', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '옥천군', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '영동군', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '증평군', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '진천군', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '괴산군', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '음성군', address_level_id: 2)
Address.create!(parent_address_id: 4, title: '단양군', address_level_id: 2)


Address.create!(parent_address_id: 5, title: '천안시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '공주시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '보령시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '아산시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '서산시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '논산시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '계룡시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '당진시', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '금산군', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '부여군', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '서천군', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '청양군', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '홍성군', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '예산군', address_level_id: 2)
Address.create!(parent_address_id: 5, title: '태안군', address_level_id: 2)


Address.create!(parent_address_id: 6, title: '전주시', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '군산시', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '익산시', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '정음시', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '남원시', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '김제시', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '완주군', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '진안군', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '무주군', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '장수군', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '임실군', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '순창군 ', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '고창군', address_level_id: 2)
Address.create!(parent_address_id: 6, title: '부안군 ', address_level_id: 2)


Address.create!(parent_address_id: 7, title: '목포시', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '여수시', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '순천시', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '나주시', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '광양시', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '담양군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '곡성군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '구례군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '고흥군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '보성군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '화순군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '장흥군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '강진군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '해남군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '염암군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '무안군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '함평군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '영광군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '장성군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '완도군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '진도군', address_level_id: 2)
Address.create!(parent_address_id: 7, title: '신안군', address_level_id: 2)


Address.create!(parent_address_id: 8, title: '포항시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '경주시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '김천시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '안동시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '구미시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '영주시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '영천시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '상주시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '문경시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '경산시', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '군위군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '의성군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '청송군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '영양군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '영덕군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '청도군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '고령군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '성주군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '칠곡군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '예천군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '봉화군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '울진군', address_level_id: 2)
Address.create!(parent_address_id: 8, title: '울릉군', address_level_id: 2)

Address.create!(parent_address_id: 9, title: '창원시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '진주시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '통영시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '사천시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '김해시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '밀양시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '거제시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '양산시', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '의령군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '함안군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '창녕군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '고성군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '남해군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '하동군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '산청군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '함양군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '거창군', address_level_id: 2)
Address.create!(parent_address_id: 9, title: '합천군', address_level_id: 2)

Address.create!(parent_address_id: 10, title: '제주시', address_level_id: 2)
Address.create!(parent_address_id: 10, title: '서귀포시', address_level_id: 2)


Address.create!(parent_address_id: 11, title: '중구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '서구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '동구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '영도구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '부산진구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '동래구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '남구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '북구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '강서구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '햐운대구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '사하구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '금정구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '연제구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '수영구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '사상구', address_level_id: 2)
Address.create!(parent_address_id: 11, title: '기장군', address_level_id: 2)

Address.create!(parent_address_id: 12, title: '중구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '동구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '미추홀구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '연수구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '남동구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '부평구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '계양구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '서구', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '강화군', address_level_id: 2)
Address.create!(parent_address_id: 12, title: '옹진군', address_level_id: 2)

Address.create!(parent_address_id: 13, title: '중구', address_level_id: 2)
Address.create!(parent_address_id: 13, title: '동구', address_level_id: 2)
Address.create!(parent_address_id: 13, title: '서구', address_level_id: 2)
Address.create!(parent_address_id: 13, title: '남구', address_level_id: 2)
Address.create!(parent_address_id: 13, title: '북구', address_level_id: 2)
Address.create!(parent_address_id: 13, title: '수성구', address_level_id: 2)
Address.create!(parent_address_id: 13, title: '달서구', address_level_id: 2)
Address.create!(parent_address_id: 13, title: '달성군', address_level_id: 2)

Address.create!(parent_address_id: 14, title: '동구', address_level_id: 2)
Address.create!(parent_address_id: 14, title: '서구', address_level_id: 2)
Address.create!(parent_address_id: 14, title: '남구', address_level_id: 2)
Address.create!(parent_address_id: 14, title: '북구', address_level_id: 2)
Address.create!(parent_address_id: 14, title: '광산구', address_level_id: 2)

Address.create!(parent_address_id: 15, title: '동구', address_level_id: 2)
Address.create!(parent_address_id: 15, title: '중구', address_level_id: 2)
Address.create!(parent_address_id: 15, title: '서구', address_level_id: 2)
Address.create!(parent_address_id: 15, title: '유성구', address_level_id: 2)
Address.create!(parent_address_id: 15, title: '대덕구', address_level_id: 2)

Address.create!(parent_address_id: 16, title: '중구', address_level_id: 2)
Address.create!(parent_address_id: 16, title: '남구', address_level_id: 2)
Address.create!(parent_address_id: 16, title: '동구', address_level_id: 2)
Address.create!(parent_address_id: 16, title: '뷱구', address_level_id: 2)
Address.create!(parent_address_id: 16, title: '울주군', address_level_id: 2)

Address.create!(parent_address_id: 17, title: '세종특별자치시', address_level_id: 2)


SpecialityCategory.create!(:id=>1, title: '건축')
SpecialityCategory.create!(:id=>2, title: '인테리어')
SpecialityCategory.create!(:id=>3, title: '부분시공')


Speciality.create!(id: 1, speciality_category_id: 1, title: '기초', need_blueprint: true, need_floor: true, need_size: true, speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_01.png")) })
Speciality.create!(id: 2, speciality_category_id: 1, title: '골조', need_floor: true, need_size: true, speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_02.png")) })
Speciality.create!(id: 3, speciality_category_id: 1, title: '벽체', need_floor: true, need_size: true, need_material: true ,speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_03.png")) })
Speciality.create!(id: 4, speciality_category_id: 1, title: '창호', speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_04.png")) })
Speciality.create!(id: 5, speciality_category_id: 1, title: '외장재',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_05.png")) })
Speciality.create!(id: 6, speciality_category_id: 1, title: '전기', need_size: true, speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_06.png")) })
Speciality.create!(id: 7, speciality_category_id: 1, title: '설비', need_size: true, speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_07.png")) })
Speciality.create!(id: 8, speciality_category_id: 1, title: '토목', need_size: true, speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_08.png")) })
Speciality.create!(id: 9, speciality_category_id: 1, title: '조경', need_size: true, speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_09.png")) })

Speciality.create!(id: 10, speciality_category_id: 2, title: '욕실',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_10.png")) })
Speciality.create!(id: 11, speciality_category_id: 2, title: '주방',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_11.png")) })
Speciality.create!(id: 12, speciality_category_id: 2, title: '바닥재',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_12.png")) })
Speciality.create!(id: 13, speciality_category_id: 2, title: '도배',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_13.png")) })
Speciality.create!(id: 14, speciality_category_id: 2, title: '도장',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_14.png")) })
Speciality.create!(id: 15, speciality_category_id: 2, title: '문',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_15.png")) })
Speciality.create!(id: 16, speciality_category_id: 2, title: '드레스,알파룸',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_16.png")) })
Speciality.create!(id: 17, speciality_category_id: 2, title: '기타',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_17.png")) })

Speciality.create!(id: 18, speciality_category_id: 3, title: '타일시공',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_18.png")) })
Speciality.create!(id: 19, speciality_category_id: 3, title: '목수',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_19.png")) })
Speciality.create!(id: 20, speciality_category_id: 3, title: '도장',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_14.png")) })
Speciality.create!(id: 21, speciality_category_id: 3, title: '도배',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_13.png")) })
Speciality.create!(id: 22, speciality_category_id: 3, title: '마루',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_20.png")) })
Speciality.create!(id: 23, speciality_category_id: 3, title: '조적',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_21.png")) })
Speciality.create!(id: 24, speciality_category_id: 3, title: '유리',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_22.png")) })
Speciality.create!(id: 25, speciality_category_id: 3, title: '실리콘',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_23.png")) })
Speciality.create!(id: 26, speciality_category_id: 3, title: '필름',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_28.png")) })
Speciality.create!(id: 27, speciality_category_id: 3, title: '판넬',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_27.png")) })
Speciality.create!(id: 28, speciality_category_id: 3, title: '샷시',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_24.png")) })
Speciality.create!(id: 29, speciality_category_id: 3, title: '전기', speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_06.png")) })
Speciality.create!(id: 30, speciality_category_id: 3, title: '설비', speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_07.png")) })
Speciality.create!(id: 31, speciality_category_id: 3, title: '용접',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_25.png")) })
Speciality.create!(id: 32, speciality_category_id: 3, title: '방수',speciality_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "icon_26.png")) })


SpecialityMan.create!(id: 1, title: '주공',speciality_id: 10, pay: 83000, need_count: 2 )
SpecialityMan.create!(id: 2, title: '주공',speciality_id: 11, pay: 83000, need_count: 2 )
SpecialityMan.create!(id: 3, title: '주공',speciality_id: 12, pay: 83000, need_count: 2 )
SpecialityMan.create!(id: 4, title: '주공',speciality_id: 13, pay: 83000, need_count: 2 )
SpecialityMan.create!(id: 5, title: '주공',speciality_id: 14, pay: 83000, need_count: 2 )
SpecialityMan.create!(id: 6, title: '주공',speciality_id: 15, pay: 83000, need_count: 2 )
SpecialityMan.create!(id: 7, title: '주공',speciality_id: 16, pay: 83000, need_count: 2 )
SpecialityMan.create!(id: 8, title: '주공',speciality_id: 17, pay: 83000)
SpecialityMan.create!(id: 9, title: '주공',speciality_id: 18, pay: 83000)
SpecialityMan.create!(id: 10, title: '주공',speciality_id: 19, pay: 83000)
SpecialityMan.create!(id: 11, title: '주공',speciality_id: 20, pay: 83000)
SpecialityMan.create!(id: 12, title: '주공',speciality_id: 21, pay: 83000)
SpecialityMan.create!(id: 13, title: '주공',speciality_id: 22, pay: 83000)
SpecialityMan.create!(id: 14, title: '주공',speciality_id: 23, pay: 83000)
SpecialityMan.create!(id: 15, title: '주공',speciality_id: 24, pay: 83000)
SpecialityMan.create!(id: 16, title: '주공',speciality_id: 25, pay: 83000)
SpecialityMan.create!(id: 17, title: '주공',speciality_id: 26, pay: 83000)
SpecialityMan.create!(id: 18, title: '주공',speciality_id: 27, pay: 83000)
SpecialityMan.create!(id: 19, title: '주공',speciality_id: 28, pay: 83000)
SpecialityMan.create!(id: 20, title: '주공',speciality_id: 29, pay: 83000)
SpecialityMan.create!(id: 21, title: '주공',speciality_id: 30, pay: 83000)
SpecialityMan.create!(id: 22, title: '주공',speciality_id: 31, pay: 83000)
SpecialityMan.create!(id: 23, title: '주공',speciality_id: 32, pay: 83000)

SpecialityMan.create!(id: 24, title: '보조공',speciality_id: 10, pay: 41500)
SpecialityMan.create!(id: 25, title: '보조공',speciality_id: 11, pay: 41500)
SpecialityMan.create!(id: 26, title: '보조공',speciality_id: 12, pay: 41500)
SpecialityMan.create!(id: 27, title: '보조공',speciality_id: 13, pay: 41500, need_count: 2 )
SpecialityMan.create!(id: 28, title: '보조공',speciality_id: 14, pay: 41500, need_count: 2 )
SpecialityMan.create!(id: 29, title: '보조공',speciality_id: 15, pay: 41500, need_count: 2 )
SpecialityMan.create!(id: 30, title: '보조공',speciality_id: 16, pay: 41500, need_count: 2 )
SpecialityMan.create!(id: 31, title: '보조공',speciality_id: 17, pay: 41500)
SpecialityMan.create!(id: 32, title: '보조공',speciality_id: 18, pay: 41500)
SpecialityMan.create!(id: 33, title: '보조공',speciality_id: 19, pay: 41500)
SpecialityMan.create!(id: 34, title: '보조공',speciality_id: 20, pay: 41500)
SpecialityMan.create!(id: 35, title: '보조공',speciality_id: 21, pay: 41500)
SpecialityMan.create!(id: 36, title: '보조공',speciality_id: 22, pay: 41500)
SpecialityMan.create!(id: 37, title: '보조공',speciality_id: 23, pay: 41500)
SpecialityMan.create!(id: 38, title: '보조공',speciality_id: 24, pay: 41500)
SpecialityMan.create!(id: 39, title: '보조공',speciality_id: 25, pay: 41500)
SpecialityMan.create!(id: 40, title: '보조공',speciality_id: 26, pay: 41500, need_count: 2 )
SpecialityMan.create!(id: 41, title: '보조공',speciality_id: 27, pay: 41500, need_count: 2 )
SpecialityMan.create!(id: 42, title: '보조공',speciality_id: 28, pay: 41500, need_count: 2 )
SpecialityMan.create!(id: 43, title: '보조공',speciality_id: 29, pay: 41500, need_count: 2 )
SpecialityMan.create!(id: 44, title: '보조공',speciality_id: 30, pay: 41500, need_count: 2 )
SpecialityMan.create!(id: 45, title: '보조공',speciality_id: 31, pay: 41500, need_count: 2 )
SpecialityMan.create!(id: 46, title: '보조공',speciality_id: 32, pay: 41500, need_count: 2 )



user1=User.new(:id => 1, :email => 'user1@jedaeroweb.co.kr', :name => '사용자1', :password => 'a12345', :password_confirmation => 'a12345', phone: '010-3233-111', user_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) })
user1.skip_confirmation!
user1.save!

user2=User.new(:id => 2, :email => 'user2@jedaeroweb.co.kr', :name => '사용자2', :password => 'a12345', :password_confirmation => 'a12345', phone: '010-3233-111', user_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "2.jpg")) })
user2.skip_confirmation!
user2.save!

user3=User.new(:id => 3, :email => 'company1@jedaeroweb.co.kr', :name => '회사1', :password => 'a12345', :password_confirmation => 'a12345', phone: '010-3233-111',user_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "3.jpg")) })
user3.skip_confirmation!
user3.save!

user4=User.new(:id => 4, :email => 'company2@jedaeroweb.co.kr', :name => '회사2', :password => 'a12345', :password_confirmation => 'a12345', phone: '010-3233-111',user_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "4.jpg")) })
user4.skip_confirmation!
user4.save!

user5=User.new(:id => 5, :email => 'company3@jedaeroweb.co.kr', :name => '회사3', :password => 'a12345', :password_confirmation => 'a12345', phone: '010-3233-111',user_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "5.jpg")) })
user5.skip_confirmation!
user5.save!

user6=User.new(:id => 6, :email => 'company4@jedaeroweb.co.kr', :name => '회사4', :password => 'a12345', :password_confirmation => 'a12345', phone: '010-3233-111',user_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "6.jpg")) })
user6.skip_confirmation!
user6.save!

user7=User.new(:id => 7, :email => 'company5@jedaeroweb.co.kr', :name => '회사5', :password => 'a12345', :password_confirmation => 'a12345', phone: '010-3233-111',user_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "7.jpg")) })
user7.skip_confirmation!
user7.save!

user8=User.new(:id => 8, :email => 'company6@jedaeroweb.co.kr', :name => '회사6', :password => 'a12345', :password_confirmation => 'a12345', phone: '010-3233-111',user_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "8.jpg")) })
user8.skip_confirmation!
user8.save!

user9=User.new(:id => 9, :email => 'company7@jedaeroweb.co.kr', :name => '회사7', :password => 'a12345', :password_confirmation => 'a12345', phone: '010-3233-111',user_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "9.jpg")) })
user9.skip_confirmation!
user9.save!

user10=User.new(:id => 10, :email => 'company8@jedaeroweb.co.kr', :name => '회사8', :password => 'a12345', :password_confirmation => 'a12345', phone: '010-3233-111',user_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "10.jpg")) })
user10.skip_confirmation!
user10.save!

user11=User.new(:id => 11, :email => 'company9@jedaeroweb.co.kr', :name => '회사9', :password => 'a12345', :password_confirmation => 'a12345', phone: '010-3233-111',user_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "11.jpg")) })
user11.skip_confirmation!
user11.save!

Company.create!(id: 1, user_id: 3, title: '회사1', code: '12352323523', phone: '010-3312-0886', speciality_ids: [1,2,3,4], company_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "company1.jpg")) }])
Company.create!(id: 2, user_id: 4, title: '회사2', code: '12355323523', phone: '031-222-2222', speciality_ids: [5,6,3,4],company_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "company2.jpg")) }])
Company.create!(id: 3, user_id: 5, title: '회사3', code: '12352323523', phone: '031-111-1111', speciality_ids: [6,7,8,9], company_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "company3.jpg")) }])
Company.create!(id: 4, user_id: 6, title: '회사4', code: '12352323523', phone: '010-3312-0886', speciality_ids: [10,11,12])
Company.create!(id: 5, user_id: 7, title: '회사5', code: '12352323523', phone: '031-222-2222', speciality_ids: [12,13,14],company_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "company5.jpg")) }])
Company.create!(id: 6, user_id: 8, title: '회사6', code: '12352323523', phone: '031-111-1111', speciality_ids: [15,16,17])
Company.create!(id: 7, user_id: 9, title: '회사7', code: '12352323523', phone: '010-3312-0886', speciality_ids: [18,19,20], company_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "company7.jpg")) }])
Company.create!(id: 8, user_id: 10, title: '회사8', code: '12355323523', phone: '031-222-2222', speciality_ids: [21,22,23,24],company_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "company8.jpg")) }])
Company.create!(id: 9, user_id: 11, title: '회사9', code: '12352323523', phone: '031-111-1111', speciality_ids: [25,26,27,28], company_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "company9.jpg")) }])


CompanyAddress.create!(company_id:1, address_id:18)
CompanyAddress.create!(company_id:1, address_id:19)
CompanyAddress.create!(company_id:1, address_id:20)

CompanyAddress.create!(company_id:2, address_id:20)
CompanyAddress.create!(company_id:2, address_id:21)
CompanyAddress.create!(company_id:2, address_id:22)

CompanyAddress.create!(company_id:3, address_id:23)
CompanyAddress.create!(company_id:3, address_id:24)
CompanyAddress.create!(company_id:3, address_id:25)

CompanyAddress.create!(company_id:4, address_id:26)
CompanyAddress.create!(company_id:4, address_id:27)
CompanyAddress.create!(company_id:4, address_id:28)

CompanyAddress.create!(company_id:5, address_id:29)
CompanyAddress.create!(company_id:5, address_id:30)
CompanyAddress.create!(company_id:5, address_id:31)

CompanyAddress.create!(company_id:6, address_id:32)
CompanyAddress.create!(company_id:6, address_id:33)
CompanyAddress.create!(company_id:6, address_id:34)

CompanyAddress.create!(company_id:7, address_id:35)
CompanyAddress.create!(company_id:7, address_id:36)
CompanyAddress.create!(company_id:7, address_id:37)

CompanyAddress.create!(company_id:8, address_id:38)
CompanyAddress.create!(company_id:8, address_id:39)
CompanyAddress.create!(company_id:8, address_id:40)

CompanyAddress.create!(company_id:9, address_id:41)
CompanyAddress.create!(company_id:9, address_id:42)
CompanyAddress.create!(company_id:9, address_id:43)


Portfolio.create!(id:1, company_id:1, title:'회사1 포트폴리오1', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) })
Portfolio.create!(id:2, company_id:1, title:'회사1 포트폴리오2', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "3.jpg")) })
Portfolio.create!(id:3, company_id:1, title:'회사1 포트폴리오3', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "2.jpg")) })
Portfolio.create!(id:4, company_id:1, title:'회사1 포트폴리오4', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "4.jpg")) })
Portfolio.create!(id:5, company_id:2, title:'회사2 포트폴리오1', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "5.jpg")) })
Portfolio.create!(id:6, company_id:2, title:'회사2 포트폴리오2', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "6.jpg")) })
Portfolio.create!(id:7, company_id:2, title:'회사2 포트폴리오3', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "7.jpg")) })
Portfolio.create!(id:8, company_id:2, title:'회사2 포트폴리오4', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "8.jpg")) })
Portfolio.create!(id:9, company_id:3, title:'회사3 포트폴리오1', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "9.jpg")) })
Portfolio.create!(id:10, company_id:3, title:'회사3 포트폴리오2', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "10.jpg")) })
Portfolio.create!(id:11, company_id:3, title:'회사3 포트폴리오3', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "11.jpg")) })
Portfolio.create!(id:12, company_id:3, title:'회사3 포트폴리오4', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "12.jpg")) })
Portfolio.create!(id:13, company_id:4, title:'회사4 포트폴리오1', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "13.jpg")) })
Portfolio.create!(id:14, company_id:4, title:'회사4 포트폴리오2', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "14.jpg")) })
Portfolio.create!(id:15, company_id:4, title:'회사4 포트폴리오3', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "15.jpg")) })
Portfolio.create!(id:16, company_id:4, title:'회사4 포트폴리오4', portfolio_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "16.jpg")) })


AdCategory.create!(id: 1, title: '상가주택')
AdCategory.create!(id: 2, title: '단독주택')
AdCategory.create!(id: 3, title: '다세대주택')
AdCategory.create!(id: 4, title: '창고')
AdCategory.create!(id: 5, title: '기타')

Ad.create!(id: 1, ad_category_id: 1, user_id: 1, speciality_id: 1, address_id: 17, title: '건축해주세요~ 1',budget: 6000000, start_date: 10.days.from_now ,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }],created_at: 11.day.ago)
Ad.create!(id: 2, ad_category_id: 1, user_id: 1, speciality_id: 2, address_id: 18, title: '건축해주세요~ 2',budget: 3000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "2.jpg")) }],created_at: 10.day.ago)
Ad.create!(id: 3, ad_category_id: 1, user_id: 1, speciality_id: 3, address_id: 19, title: '건축해주세요~ 3',budget: 4500000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "3.jpg")) }],created_at: 9.day.ago)
Ad.create!(id: 4, ad_category_id: 1, user_id: 1, speciality_id: 4, address_id: 20, title: '건축해주세요~ 4',budget: 2000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "4.jpg")) }],created_at: 8.day.ago)
Ad.create!(id: 5, ad_category_id: 1, user_id: 1, speciality_id: 5, address_id: 21, title: '건축해주세요~ 5',budget: 7000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "5.jpg")) }],created_at: 7.day.ago)
Ad.create!(id: 6, ad_category_id: 1, user_id: 1, speciality_id: 6, address_id: 22, title: '건축해주세요~ 6',budget: 6000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "6.jpg")) }],created_at: 6.day.ago)
Ad.create!(id: 7, ad_category_id: 1, user_id: 1, speciality_id: 5, address_id: 21, title: '건축해주세요~ 7',budget: 7000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "5.jpg")) }],created_at: 5.day.ago)
Ad.create!(id: 8, ad_category_id: 1, user_id: 1, speciality_id: 6, address_id: 22, title: '건축해주세요~ 8',budget: 6000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "6.jpg")) }],created_at: 4.day.ago)
Ad.create!(id: 9, ad_category_id: 1, user_id: 1, speciality_id: 5, address_id: 21, title: '건축해주세요~ 9',budget: 7000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "4.jpg")) }],created_at: 3.day.ago)
Ad.create!(id: 10, ad_category_id: 1, user_id: 1, speciality_id: 6, address_id: 22, title: '건축해주세요~ 10',budget: 6000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "3.jpg")) }],created_at: 2.day.ago)
Ad.create!(id: 11, ad_category_id: 1, user_id: 1, speciality_id: 5, address_id: 21, title: '건축해주세요~ 11',budget: 7000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "2.jpg")) }],created_at: 1.day.ago)
Ad.create!(id: 12, ad_category_id: 1, user_id: 1, speciality_id: 6, address_id: 22, title: '건축해주세요~ 12',budget: 6000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }])
Ad.create!(id: 13, ad_category_id: 1, user_id: 1, speciality_id: 6, address_id: 22, title: '건축해주세요~ 13',budget: 6000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "18.jpg")) }])

Ad.create!(id: 14, ad_category_id: 1, user_id: 2, speciality_id: 10, address_id: 23, title: '인테리어해주세요~ 1',budget: 6000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "7.jpg")) }],created_at: 12.day.ago)
Ad.create!(id: 15, ad_category_id: 1, user_id: 2, speciality_id: 11, address_id: 24, title: '인테리어해주세요~ 2',budget: 1000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "8.jpg")) }],created_at: 11.day.ago)
Ad.create!(id: 16, ad_category_id: 1, user_id: 2, speciality_id: 12, address_id: 25, title: '인테리어해주세요~ 3',budget: 2000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "9.jpg")) }],created_at: 10.day.ago)
Ad.create!(id: 17, ad_category_id: 1, user_id: 2, speciality_id: 13, address_id: 26, title: '인테리어해주세요~ 4',budget: 3000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "10.jpg")) }],created_at: 9.day.ago)
Ad.create!(id: 18, ad_category_id: 1, user_id: 2, speciality_id: 14, address_id: 27, title: '인테리어해주세요~ 5',budget: 5000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "11.jpg")) }],created_at: 8.day.ago)
Ad.create!(id: 19, ad_category_id: 1, user_id: 2, speciality_id: 15, address_id: 28, title: '인테리어해주세요~ 6',budget: 1000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "12.jpg")) }],created_at: 7.day.ago)
Ad.create!(id: 20, ad_category_id: 1, user_id: 2, speciality_id: 14, address_id: 27, title: '인테리어해주세요~ 5',budget: 5000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "10.jpg")) }],created_at: 6.day.ago)
Ad.create!(id: 21, ad_category_id: 1, user_id: 2, speciality_id: 15, address_id: 28, title: '인테리어해주세요~ 6',budget: 1000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "9.jpg")) }],created_at: 5.day.ago)
Ad.create!(id: 22, ad_category_id: 1, user_id: 2, speciality_id: 14, address_id: 27, title: '인테리어해주세요~ 5',budget: 5000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "8.jpg")) }],created_at: 4.day.ago)
Ad.create!(id: 23, ad_category_id: 1, user_id: 2, speciality_id: 15, address_id: 28, title: '인테리어해주세요~ 6',budget: 1000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "7.jpg")) }],created_at: 3.day.ago)
Ad.create!(id: 24, ad_category_id: 1, user_id: 2, speciality_id: 14, address_id: 27, title: '인테리어해주세요~ 5',budget: 5000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "11.jpg")) }],created_at: 2.day.ago)
Ad.create!(id: 25, ad_category_id: 1, user_id: 2, speciality_id: 15, address_id: 28, title: '인테리어해주세요~ 6',budget: 1000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "12.jpg")) }],created_at: 1.day.ago)
Ad.create!(id: 26, ad_category_id: 1, user_id: 2, speciality_id: 14, address_id: 27, title: '인테리어해주세요~ 5',budget: 5000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "13.jpg")) }])
Ad.create!(id: 27, ad_category_id: 1, user_id: 2, speciality_id: 15, address_id: 28, title: '인테리어해주세요~ 6',budget: 1000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "14.jpg")) }])


Ad.create!(id: 28, ad_category_id: 1, user_id: 3, speciality_id: 18, address_id: 29, title: '부분시공해주세요~ 1',budget: 1000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "13.jpg")) }],created_at: 11.day.ago)
Ad.create!(id: 29, ad_category_id: 1, user_id: 3, speciality_id: 19, address_id: 30, title: '부분시공해주세요~ 2',budget: 1500000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "14.jpg")) }],created_at: 10.day.ago)
Ad.create!(id: 30, ad_category_id: 1, user_id: 3, speciality_id: 20, address_id: 31, title: '부분시공해주세요~ 3',budget: 3200000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "15.jpg")) }],created_at: 9.day.ago)
Ad.create!(id: 31, ad_category_id: 1, user_id: 3, speciality_id: 21, address_id: 32, title: '부분시공해주세요~ 4',budget: 1000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "16.jpg")) }],created_at: 8.day.ago)
Ad.create!(id: 32, ad_category_id: 1, user_id: 3, speciality_id: 22, address_id: 33, title: '부분시공해주세요~ 5',budget: 5000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "17.jpg")) }],created_at: 7.day.ago)
Ad.create!(id: 33, ad_category_id: 1, user_id: 3, speciality_id: 23, address_id: 34, title: '부분시공해주세요~ 6',budget: 4000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "18.jpg")) }],created_at: 6.day.ago)
Ad.create!(id: 34, ad_category_id: 1, user_id: 3, speciality_id: 18, address_id: 29, title: '부분시공해주세요~ 7',budget: 1000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "13.jpg")) }],created_at: 5.day.ago)
Ad.create!(id: 35, ad_category_id: 1, user_id: 3, speciality_id: 19, address_id: 30, title: '부분시공해주세요~ 8',budget: 1500000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "14.jpg")) }],created_at: 4.day.ago)
Ad.create!(id: 36, ad_category_id: 1, user_id: 3, speciality_id: 20, address_id: 31, title: '부분시공해주세요~ 9',budget: 3200000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "15.jpg")) }],created_at: 3.day.ago)
Ad.create!(id: 37, ad_category_id: 1, user_id: 3, speciality_id: 21, address_id: 32, title: '부분시공해주세요~ 10',budget: 1000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "16.jpg")) }],created_at: 2.day.ago)
Ad.create!(id: 38, ad_category_id: 1, user_id: 3, speciality_id: 22, address_id: 33, title: '부분시공해주세요~ 11',budget: 5000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "17.jpg")) }],created_at: 1.day.ago)
Ad.create!(id: 39, ad_category_id: 1, user_id: 3, speciality_id: 23, address_id: 34, title: '부분시공해주세요~ 12',budget: 4000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "18.jpg")) }])
Ad.create!(id: 40, ad_category_id: 1, user_id: 3, speciality_id: 23, address_id: 34, title: '부분시공해주세요~ 13',budget: 4000000, start_date: 10.days.from_now,ad_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "18.jpg")) }])

Ad.create!(ad_category_id: 1, user_id: 3, speciality_id: 6, address_id: 34, title: '부분시공해주세요~ 12',budget: 4000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 1, user_id: 3, speciality_id: 4, address_id: 34, title: '부분시공해주세요~ 13',budget: 4000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 1, user_id: 3, speciality_id: 3, address_id: 34, title: '부분시공해주세요~ 12',budget: 4000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 1, user_id: 3, speciality_id: 2, address_id: 34, title: '부분시공해주세요~ 13',budget: 4000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 1, user_id: 3, speciality_id: 1, address_id: 34, title: '부분시공해주세요~ 12',budget: 4000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 1, user_id: 3, speciality_id: 3, address_id: 34, title: '부분시공해주세요~ 13',budget: 4000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 1, user_id: 3, speciality_id: 2, address_id: 34, title: '부분시공해주세요~ 12',budget: 4000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 1, user_id: 3, speciality_id: 1, address_id: 34, title: '부분시공해주세요~ 13',budget: 4000000, start_date: 10.days.from_now)

Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 18, address_id: 34, title: '부분시공해주세요~ 12',budget: 4000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 19, address_id: 34, title: '부분시공해주세요~ 13',budget: 4000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 20, address_id: 34, title: '부분시공해주세요~ 12',budget: 4000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 21, address_id: 34, title: '부분시공해주세요~ 13',budget: 4000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 22, address_id: 34, title: '부분시공해주세요~ 12',budget: 4000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 23, address_id: 34, title: '부분시공해주세요~ 13',budget: 4000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 24, address_id: 34, title: '부분시공해주세요~ 12',budget: 4000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 25, address_id: 34, title: '부분시공해주세요~ 13',budget: 4000000, start_date: 10.days.from_now)

Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 18, address_id: 34, title: '부분시공해주세요~ 12',budget: 500, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 19, address_id: 34, title: '부분시공해주세요~ 13',budget: 300000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 20, address_id: 34, title: '부분시공해주세요~ 12',budget: 200000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 21, address_id: 34, title: '부분시공해주세요~ 13',budget: 1000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 22, address_id: 34, title: '부분시공해주세요~ 12',budget: 5632500, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 23, address_id: 34, title: '부분시공해주세요~ 13',budget: 1000000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 24, address_id: 34, title: '부분시공해주세요~ 12',budget: 20000, start_date: 10.days.from_now)
Ad.create!(ad_category_id: 2, user_id: 3, speciality_id: 25, address_id: 34, title: '부분시공해주세요~ 13',budget: 4000000, start_date: 10.days.from_now)



Bidding.create!(id:1, ad_id: 1, company_id: 2, accept: 1)
Bidding.create!(id:2, ad_id: 1, company_id: 3)
Bidding.create!(id:3, ad_id: 1, company_id: 4)
Bidding.create!(id:4, ad_id: 2, company_id: 2)
Bidding.create!(id:5, ad_id: 2, company_id: 3, accept: 1)
Bidding.create!(id:6, ad_id: 2, company_id: 4)
Bidding.create!(id:7, ad_id: 14, company_id: 2)
Bidding.create!(id:8, ad_id: 14, company_id: 3)
Bidding.create!(id:9, ad_id: 14, company_id: 4, accept: 1)
Bidding.create!(id:10, ad_id: 18, company_id: 5, accept: 1)
Bidding.create!(id:11, ad_id: 18, company_id: 6)
Bidding.create!(id:12, ad_id: 18, company_id: 7)
Bidding.create!(id:13, ad_id: 27, company_id: 6, accept: 1)
Bidding.create!(id:14, ad_id: 33, company_id: 7, accept: 1)

Review.create!(id: 1, bidding_id: 1, title: '너무 잘해주셨어요', rating: 5 ,review_content_attributes: {content: "너무 잘해주셨어요.\n 최고입니다."})
Review.create!(id: 2, bidding_id: 2, title: '너무 너무 잘해주셨어요', rating: 5 ,review_content_attributes: {content: "너무 너무 잘해주셨어요.\n 최고 최고"})
Review.create!(id: 3, bidding_id: 3, title: '너무 너무 너무 잘해주셨어요', rating: 5 ,review_content_attributes: {content: "너무 너무 너무 잘해주셨어요.\n 최고 최고 최고!!"})
Review.create!(id: 4, bidding_id: 4, title: '너무 잘해주셨어요', rating: 5 ,review_content_attributes: {content: "너무 잘해주셨어요.\n 최고입니다."})
Review.create!(id: 5, bidding_id: 5, title: '너무 너무 잘해주셨어요', rating: 5 ,review_content_attributes: {content: "너무 너무 잘해주셨어요.\n 최고 최고"})
Review.create!(id: 6, bidding_id: 6, title: '너무 너무 너무 잘해주셨어요', rating: 5 ,review_content_attributes: {content: "너무 너무 너무 잘해주셨어요.\n 최고 최고 최고!!"})


ProductCategory.create!(id: 1, title: '벽체(ALC, 판넬)')
ProductCategory.create!(id: 2, title: '바닥재')
ProductCategory.create!(id: 3, title: '도배지')
ProductCategory.create!(id: 4, title: '페인트')
ProductCategory.create!(id: 5, title: '에폭시')
ProductCategory.create!(id: 6, title: '실리콘 건')
ProductCategory.create!(id: 7, title: '우레탄폼')
ProductCategory.create!(id: 8, title: '가구')
ProductCategory.create!(id: 9, title: '조명')
ProductCategory.create!(id: 10, title: '인테리어소품')

Product.create!(id: 1, company_id: 1, product_category_id: 1, title: '벽체1', content: '벽체1', price: 10000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "bricks1.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "bricks2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "bricks3.jpg")) }])
Product.create!(id: 2, company_id: 1, product_category_id: 1, title: '벽체2', content: '벽체2', price: 20000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "bricks2.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "bricks3.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "bricks4.jpg")) }])
Product.create!(id: 3, company_id: 1, product_category_id: 1, title: '벽체3', content: '벽체3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "bricks3.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "bricks4.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "bricks5.jpg")) }])
Product.create!(id: 4, company_id: 1, product_category_id: 1, title: '벽체4', content: '벽체4', price: 50000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "bricks4.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "bricks5.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "bricks1.jpg")) }])
Product.create!(id: 5, company_id: 1, product_category_id: 2, title: '바닥재1', content: '바닥재1', price: 10000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "ba1.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "ba2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "ba3.jpg")) }])
Product.create!(id: 6, company_id: 1, product_category_id: 2, title: '바닥재2', content: '바닥재2', price: 20000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "ba2.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "ba3.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "ba4.jpg")) }])
Product.create!(id: 7, company_id: 1, product_category_id: 2, title: '바닥재3', content: '바닥재3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "ba3.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "ba4.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "ba5.jpg")) }])
Product.create!(id: 8, company_id: 1, product_category_id: 2, title: '바닥재4', content: '바닥재4', price: 50000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "ba4.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "ba5.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "ba1.jpg")) }])
Product.create!(id: 9, company_id: 1, product_category_id: 3, title: '도배지1', content: '도배지1', price: 10000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "bb1.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "bb2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "bb3.jpg")) }])
Product.create!(id: 10, company_id: 1, product_category_id: 3, title: '도배지2', content: '도배지2', price: 20000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "bb2.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "bb3.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "bb1.jpg")) }])
Product.create!(id: 11, company_id: 1, product_category_id: 3, title: '도배지3', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "bb3.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "bb2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "bb1.jpg")) }])
Product.create!(id: 12, company_id: 1, product_category_id: 4 ,title: '페인트1', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "paint1.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "paint2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "paint3.jpg")) }])
Product.create!(id: 13, company_id: 2, product_category_id: 4, title: '페인트2', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "paint2.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "paint3.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "paint1.jpg")) }])
Product.create!(id: 14, company_id: 2, product_category_id: 5, title: '에폭시1', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "ep1.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "ep2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "ep3.jpg")) }])
Product.create!(id: 15, company_id: 2, product_category_id: 5, title: '에폭시2', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "ep2.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "ep3.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "ep1.jpg")) }])
Product.create!(id: 16, company_id: 2, product_category_id: 6, title: '실리콘 건1', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "si1.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "si2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "si3.jpg")) }])
Product.create!(id: 17, company_id: 2, product_category_id: 6, title: '실리콘 건2', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "si2.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "si3.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "si1.jpg")) }])
Product.create!(id: 18, company_id: 2, product_category_id: 7, title: '우레탄폼1', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "u1.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "u2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "u3.jpg")) }])
Product.create!(id: 19, company_id: 2, product_category_id: 7, title: '우레탄폼2', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "u2.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "u3.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "u1.jpg")) }])
Product.create!(id: 20, company_id: 2, product_category_id: 8, title: '가구1', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "furniture1.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "furniture2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "furniture3.jpg")) }])
Product.create!(id: 21, company_id: 3, product_category_id: 8, title: '가구2', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "furniture4.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "furniture5.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "furniture6.jpg")) }])
Product.create!(id: 22, company_id: 3, product_category_id: 9, title: '조명1', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "j1.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "j2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "j3.jpg")) }])
Product.create!(id: 23, company_id: 3, product_category_id: 9, title: '조명2', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "j3.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "j2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "j1.jpg")) }])
Product.create!(id: 24, company_id: 3, product_category_id: 10, title: '인테리어소품1', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "ac1.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "ac2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "ac3.jpg")) }])
Product.create!(id: 25, company_id: 3, product_category_id: 10, title: '인테리어소품2', content: '도배지3', price: 30000, product_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "ac3.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "ac2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "ac1.jpg")) }])



Notice.create!(:id=>1,:title=>'교환/반품 규정',notice_content_attributes: {
  content: "1. 교환/반품이 가능한 경우\n\n
- 상품 패키지를 포함하여 훼손/개봉의 흔적이 없는 정상품에 한해서만 가능합니다.\n
- 당사측에서 상품 하자 및 불량으로 판단될 경우, 무상 교환/반품 진행 가능합니다.(단, 상품 하자 및 불량 증빙 사진 등 자료 첨부 必)\n
- 상품 수령일로부터 10일이내 주문건만 가능합니다.\n\n\n
2. 교환/반품이 불가한 경우\n\n
- 잘못된 보관 방법이나 구매자의 불찰로 인해 발생된 하자 및 불량 등으로 변질 된 경우\n
- 공식 구매처가 아닌 허가받지 않은 부정/무단 판매자에 대한 구매건의 경우\n
- 효과 부족 사유로 신청한 경우\n
(*각 개인의 신체 특성 및 생활 패턴 등 여러 요인에 따라, 효과는 상이할 수 있으며, 이는 교환/반품의 사유가 불가합니다.)\n
- 상품 수령일로부터 10일 이후에 신청한 경우\n
- 부작용 발생 시, 상품으로 인한 증상 발생의 전문의/의사 소견이 없는 경우\n
- 판매상품이 아닌 비매/당첨품만 교환/반품 신청한 경우\n\n\n
3. 기타 사항\n\n
- 주문건 1개 당, 교환은 1회만 가능하며, 교환상품을 대상으로 재교환/반품은 불가합니다.\n
- 이벤트 성 주문건의 경우, 이벤트 종료 이후, 교환/반품은 불가합니다.\n
- 구매 상품의 비매/증정품 또한 일반 상품으로 취급되고 있습니다. 교환/반품 시 함께 반품 진행해야합니다.\n
- 택배 이외의 방문/퀵서비스/기타 운송과 역경매를 이용한 배송 서비스는 불가합니다.\n
- 푸드빌런 공식 구매처가 아닌 허가받지 않은 부정/무단 판매자에 대한 구매건에 관련하여 교환/반품 등 서비스 불가합니다.\n\n\n
- 부분 반품/ 교환으로 인한 경우\n\n\n
반품 상품을 제외한 상품의 수량을 정상 금액 산정하여, 왕복/편도 배송 금액 차감 후 반품 진행\n
부분 반품액 = 최종 실결제 금액 - (할인 전 정상 금액 X 반품 제외 수량) - 교환/반품 배송비(3,000 or 6,000원)\n\n
EX) 개당 50,000원 제품 X 4ea 구성 1set(정상가 200,000원에서 25% 할인의 경우)를 150,000원에 구매 후 2개만 반품 시 실 반품 금액 : 150,000원 - (50,000원 X 2ea) - 6,000원 = 44,000원\n\n
- 자체 상품이 아닌 제공해주는 협력사 상품의 경우 협력사의 규정을 따릅니다."
})

FaqCategory.create!(id: 1, title: '취소환불규정')

Faq.create!(id: 1, faq_category_id: 1, title: '취소 환불',faq_content_attributes: {content: '주문내역은 구매자의 취소환불요청 이후 판매점에서 승인 처리 시 즉시 자동으로 취소 처리 됩니다.<br>사업자,전문가의 역경매 등록을 위한 비용은 취소 및 환불이 되지 않습니다.'})
Faq.create!(id: 2, faq_category_id: 1, title: '취소 철회 요청은 어떻게 하나요?',faq_content_attributes: {content: '시스템 상 취소 요청이 접수된 건은 철회가 불가능하므로 재 등록하셔야 합니다.<br>주문 취소 요청건은 해당 판매점의 승인을 통해 취소처리되오니 이용에 참고 부탁 드립니다.'})


Size.create!(id: 1, title: '3m²(1평)', size: 3)
Size.create!(id: 2, title: '6m²(2평)', size: 6)
Size.create!(id: 3, title: '9m²(3평)', size: 9)
Size.create!(id: 4, title: '13m²(4평)', size: 13)
Size.create!(id: 5, title: '16m²(5평)', size: 16)
Size.create!(id: 6, title: '19m²(6평)', size: 19)
Size.create!(id: 7, title: '23m²(7평)', size: 23)
Size.create!(id: 8, title: '26m²(8평)', size: 26)
Size.create!(id: 9, title: '29m²(9평)', size: 29)
Size.create!(id: 10, title: '33m²(10평)', size: 33)
Size.create!(id: 11, title: '36m²(11평)', size: 36)
Size.create!(id: 12, title: '39m²(12평)', size: 39)
Size.create!(id: 13, title: '42m²(13평)', size: 42)
Size.create!(id: 14, title: '46m²(14평)', size: 46)
Size.create!(id: 15, title: '49m²(15평)', size: 49)
Size.create!(id: 16, title: '52m²(16평)', size: 52)
Size.create!(id: 17, title: '56m²(17평)', size: 56)
Size.create!(id: 18, title: '59m²(18평)', size: 59)
Size.create!(id: 19, title: '62m²(19평)', size: 62)
Size.create!(id: 20, title: '66m²(20평)', size: 66)
Size.create!(id: 21, title: '69m²(21평)', size: 69)
Size.create!(id: 22, title: '72m²(22평)', size: 72)
Size.create!(id: 23, title: '75m²(23평)', size: 75)
Size.create!(id: 24, title: '79m²(24평)', size: 79)
Size.create!(id: 25, title: '82m²(25평)', size: 82)
Size.create!(id: 26, title: '85m²(26평)', size: 85)
Size.create!(id: 27, title: '89m²(27평)', size: 89)
Size.create!(id: 28, title: '92m²(28평)', size: 92)
Size.create!(id: 29, title: '95m²(29평)', size: 95)
Size.create!(id: 30, title: '99m²(30평)', size: 99)
Size.create!(id: 31, title: '102m²(31평)', size: 102)
Size.create!(id: 32, title: '105m²(32평)', size: 105)
Size.create!(id: 33, title: '108m²(33평)', size: 108)
Size.create!(id: 34, title: '112m²(34평)', size: 112)
Size.create!(id: 35, title: '115m²(35평)', size: 115)
Size.create!(id: 36, title: '118m²(36평)', size: 118)
Size.create!(id: 37, title: '122m²(37평)', size: 122)
Size.create!(id: 38, title: '125m²(38평)', size: 125)
Size.create!(id: 39, title: '128m²(39평)', size: 128)
Size.create!(id: 40, title: '132m²(40평)', size: 132)
Size.create!(id: 41, title: '135m²(41평)', size: 135)
Size.create!(id: 42, title: '138m²(42평)', size: 138)
Size.create!(id: 43, title: '142m²(43평)', size: 142)
Size.create!(id: 44, title: '145m²(44평)', size: 145)
Size.create!(id: 45, title: '148m²(45평)', size: 148)
Size.create!(id: 46, title: '152m²(46평)', size: 152)
Size.create!(id: 47, title: '155m²(47평)', size: 155)
Size.create!(id: 48, title: '158m²(48평)', size: 158)
Size.create!(id: 49, title: '162m²(49평)', size: 162)
Size.create!(id: 50, title: '165m²(50평)', size: 165)
Size.create!(id: 51, title: '168m²(51평)', size: 168)
Size.create!(id: 52, title: '172m²(52평)', size: 172)
Size.create!(id: 53, title: '175m²(53평)', size: 175)
Size.create!(id: 54, title: '178m²(54평)', size: 178)
Size.create!(id: 55, title: '182m²(55평)', size: 182)
Size.create!(id: 56, title: '185m²(56평)', size: 185)
Size.create!(id: 57, title: '188m²(57평)', size: 188)
Size.create!(id: 58, title: '192m²(58평)', size: 192)
Size.create!(id: 59, title: '195m²(59평)', size: 195)
Size.create!(id: 60, title: '198m²(60평)', size: 198)
Size.create!(id: 61, title: '202m²(61평)', size: 202)
Size.create!(id: 62, title: '205m²(62평)', size: 205)
Size.create!(id: 63, title: '208m²(63평)', size: 208)
Size.create!(id: 64, title: '212m²(64평)', size: 212)
Size.create!(id: 65, title: '215m²(65평)', size: 215)
Size.create!(id: 66, title: '218m²(66평)', size: 218)
Size.create!(id: 67, title: '222m²(67평)', size: 222)
Size.create!(id: 68, title: '225m²(68평)', size: 225)
Size.create!(id: 69, title: '228m²(69평)', size: 228)
Size.create!(id: 70, title: '232m²(70평)', size: 232)
Size.create!(id: 71, title: '235m²(71평)', size: 235)
Size.create!(id: 72, title: '238m²(72평)', size: 238)
Size.create!(id: 73, title: '242m²(73평)', size: 242)
Size.create!(id: 74, title: '245m²(74평)', size: 245)
Size.create!(id: 75, title: '248m²(75평)', size: 248)
Size.create!(id: 76, title: '252m²(76평)', size: 252)
Size.create!(id: 77, title: '255m²(77평)', size: 255)
Size.create!(id: 78, title: '258m²(78평)', size: 258)
Size.create!(id: 79, title: '262m²(79평)', size: 262)
Size.create!(id: 80, title: '265m²(80평)', size: 265)
Size.create!(id: 81, title: '268m²(81평)', size: 268)
Size.create!(id: 82, title: '272m²(82평)', size: 272)
Size.create!(id: 83, title: '275m²(83평)', size: 275)
Size.create!(id: 84, title: '278m²(84평)', size: 278)
Size.create!(id: 85, title: '282m²(85평)', size: 282)
Size.create!(id: 86, title: '285m²(86평)', size: 285)
Size.create!(id: 87, title: '288m²(87평)', size: 288)
Size.create!(id: 88, title: '292m²(88평)', size: 292)
Size.create!(id: 89, title: '295m²(89평)', size: 295)
Size.create!(id: 90, title: '298m²(90평)', size: 298)
Size.create!(id: 91, title: '302m²(91평)', size: 302)
Size.create!(id: 92, title: '305m²(92평)', size: 305)
Size.create!(id: 93, title: '308m²(93평)', size: 308)
Size.create!(id: 94, title: '312m²(94평)', size: 312)
Size.create!(id: 95, title: '315m²(95평)', size: 315)
Size.create!(id: 96, title: '318m²(96평)', size: 318)
Size.create!(id: 97, title: '322m²(97평)', size: 322)
Size.create!(id: 98, title: '325m²(98평)', size: 325)
Size.create!(id: 99, title: '328m²(99평)', size: 328)
Size.create!(id: 100, title: '332m²(100평)', size: 332)


Material.create!(id: 1, title: '벽돌1', price: 200, picture: File.open(Rails.root.join("app", "assets", "images", "bricks1.jpg")))
Material.create!(id: 2, title: '벽돌1', price: 300, picture: File.open(Rails.root.join("app", "assets", "images", "bricks2.jpg")))
Material.create!(id: 3, title: '벽돌3', price: 400, picture: File.open(Rails.root.join("app", "assets", "images", "bricks3.jpg")))
Material.create!(id: 4, title: '벽돌4', price: 400, picture: File.open(Rails.root.join("app", "assets", "images", "bricks4.jpg")))
Material.create!(id: 5, title: '벽돌5', price: 400, picture: File.open(Rails.root.join("app", "assets", "images", "bricks5.jpg")))
Material.create!(id: 6, title: '대리석1', price: 1200, picture: File.open(Rails.root.join("app", "assets", "images", "marble1.jpg")))
Material.create!(id: 7, title: '대리석2', price: 1300, picture: File.open(Rails.root.join("app", "assets", "images", "marble2.jpg")))
Material.create!(id: 8, title: '콘크리트1', price: 300, picture: File.open(Rails.root.join("app", "assets", "images", "concrete1.jpg")))
Material.create!(id: 9, title: '콘크리트2', price: 400, picture: File.open(Rails.root.join("app", "assets", "images", "concrete2.jpg")))
Material.create!(id: 10, title: '자연석1', price: 500, picture: File.open(Rails.root.join("app", "assets", "images", "granite1.jpg")))
Material.create!(id: 11, title: '자연석2', price: 600, picture: File.open(Rails.root.join("app", "assets", "images", "granite2.jpg")))



SpecialityCategoryProduct.create!(speciality_category_id: 1, product_id: 1)
SpecialityCategoryProduct.create!(speciality_category_id: 1, product_id: 2)
SpecialityCategoryProduct.create!(speciality_category_id: 1, product_id: 3)
SpecialityCategoryProduct.create!(speciality_category_id: 1, product_id: 4)
SpecialityCategoryProduct.create!(speciality_category_id: 1, product_id: 5)
SpecialityCategoryProduct.create!(speciality_category_id: 1, product_id: 6)
SpecialityCategoryProduct.create!(speciality_category_id: 1, product_id: 7)

SpecialityCategoryProduct.create!(speciality_category_id: 2, product_id: 11)
SpecialityCategoryProduct.create!(speciality_category_id: 2, product_id: 10)
SpecialityCategoryProduct.create!(speciality_category_id: 2, product_id: 9)
SpecialityCategoryProduct.create!(speciality_category_id: 2, product_id: 8)
SpecialityCategoryProduct.create!(speciality_category_id: 2, product_id: 7)
SpecialityCategoryProduct.create!(speciality_category_id: 2, product_id: 6)
SpecialityCategoryProduct.create!(speciality_category_id: 2, product_id: 5)

SpecialityCategoryProduct.create!(speciality_category_id: 3, product_id: 5)
SpecialityCategoryProduct.create!(speciality_category_id: 3, product_id: 6)
SpecialityCategoryProduct.create!(speciality_category_id: 3, product_id: 7)
SpecialityCategoryProduct.create!(speciality_category_id: 3, product_id: 8)
SpecialityCategoryProduct.create!(speciality_category_id: 3, product_id: 4)
SpecialityCategoryProduct.create!(speciality_category_id: 3, product_id: 3)
SpecialityCategoryProduct.create!(speciality_category_id: 3, product_id: 10)



Floor.create!(id: 1, floor: 1, title: '1층')
Floor.create!(id: 2, floor: 2, title: '2층')
Floor.create!(id: 3, floor: 3, title: '3층')
Floor.create!(id: 4, floor: 4, title: '4층')
Floor.create!(id: 5, floor: 5, title: '5층')
Floor.create!(id: 6, floor: 6, title: '6층')
Floor.create!(id: 7, floor: 7, title: '7층')
Floor.create!(id: 8, floor: 8, title: '8층')
Floor.create!(id: 9, floor: 9, title: '9층')
Floor.create!(id: 10, floor: 10, title: '10층')



SimulationCategory.create!(id: 1, title: '상가')
SimulationCategory.create!(id: 2, title: '단독')
SimulationCategory.create!(id: 3, title: '다세대')
SimulationCategory.create!(id: 4, title: '창고')


Simulation.create!(id: 1, simulation_category_id: 1 ,size_id: 60, title: '60평 상가주택',simulation_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation1.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation3.jpg")) }])
Simulation.create!(id: 2, simulation_category_id: 1, size_id: 84,  title: '84평 상가주택',simulation_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation2.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation3.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation6.jpg")) }])
Simulation.create!(id: 3, simulation_category_id: 1, size_id: 30,  title: '30평 상가주택',simulation_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation7.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation8.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation9.jpg")) }])
Simulation.create!(id: 4, simulation_category_id: 1, size_id: 100, title: '100평 상가주택',simulation_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation10.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation11.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation12.jpg"))} ])
Simulation.create!(id: 5, simulation_category_id: 2, size_id: 60, title: '60평 단독주택',simulation_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation1.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation3.jpg")) }])
Simulation.create!(id: 6, simulation_category_id: 2, size_id: 84,  title: '84평 단독주택',simulation_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation2.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation3.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation6.jpg")) }])
Simulation.create!(id: 7, simulation_category_id: 2, size_id: 30,  title: '30평 단독주택',simulation_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation7.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation8.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation9.jpg")) }])
Simulation.create!(id: 8, simulation_category_id: 2, size_id: 100, title: '100평 단독주택',simulation_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation10.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation11.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation12.jpg"))}])
Simulation.create!(id: 9, simulation_category_id: 3, size_id: 60, title: '60평 단독주택',simulation_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation1.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation2.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation3.jpg")) }])
Simulation.create!(id: 10, simulation_category_id: 3, size_id: 84,  title: '84평 다세대주택',simulation_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation2.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation3.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation6.jpg")) }])
Simulation.create!(id: 11, simulation_category_id: 3, size_id: 30,  title: '30평 다세대주택',simulation_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation7.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation8.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation9.jpg")) }])
Simulation.create!(id: 12, simulation_category_id: 3, size_id: 100, title: '100평 다세대주택',simulation_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation10.jpg")) },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation11.jpg")),caption: '제품의 2번째 모습' },{ picture: File.open(Rails.root.join("app", "assets", "images", "simulation12.jpg"))}])



SimulationContent.create!(simulation_id: 1, content: '60평 상가주택 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdgasdgsadgasdg asd')
SimulationContent.create!(simulation_id: 2, content: '84평 상가주택 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')
SimulationContent.create!(simulation_id: 3, content: '30평 상가주택 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')
SimulationContent.create!(simulation_id: 4, content: '100평 상가주택 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')


SimulationMaterial.create!(id:1, simulation_id:1, material_id: 1,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }])
SimulationMaterial.create!(id:2, simulation_id:1, material_id: 2,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "2.jpg")) }])
SimulationMaterial.create!(id:3, simulation_id:1, material_id: 3,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "3.jpg")) }])
SimulationMaterial.create!(id:4, simulation_id:1, material_id: 4,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "4.jpg")) }])
SimulationMaterial.create!(id:5, simulation_id:2, material_id: 4,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "5.jpg")) }])
SimulationMaterial.create!(id:6, simulation_id:2, material_id: 5,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "6.jpg")) }])
SimulationMaterial.create!(id:7, simulation_id:2, material_id: 6,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "7.jpg")) }])
SimulationMaterial.create!(id:8, simulation_id:2, material_id: 7,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "8.jpg")) }])
SimulationMaterial.create!(id:9, simulation_id:3, material_id: 8,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "9.jpg")) }])
SimulationMaterial.create!(id:10, simulation_id:3, material_id: 9,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "10.jpg")) }])
SimulationMaterial.create!(id:11, simulation_id:3, material_id: 10,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "11.jpg")) }])
SimulationMaterial.create!(id:12, simulation_id:3, material_id: 11,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "12.jpg")) }])
SimulationMaterial.create!(id:13, simulation_id:4, material_id: 3,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "13.jpg")) }])
SimulationMaterial.create!(id:14, simulation_id:4, material_id: 6,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "14.jpg")) }])
SimulationMaterial.create!(id:15, simulation_id:4, material_id: 9,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "15.jpg")) }])
SimulationMaterial.create!(id:16, simulation_id:5, material_id: 1,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }])
SimulationMaterial.create!(id:17, simulation_id:5, material_id: 2,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "2.jpg")) }])
SimulationMaterial.create!(id:18, simulation_id:6, material_id: 3,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "3.jpg")) }])
SimulationMaterial.create!(id:19, simulation_id:7, material_id: 4,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "4.jpg")) }])
SimulationMaterial.create!(id:20, simulation_id:7, material_id: 4,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "5.jpg")) }])
SimulationMaterial.create!(id:21, simulation_id:8, material_id: 5,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "6.jpg")) }])
SimulationMaterial.create!(id:22, simulation_id:8, material_id: 6,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "7.jpg")) }])
SimulationMaterial.create!(id:23, simulation_id:9, material_id: 7,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "8.jpg")) }])
SimulationMaterial.create!(id:24, simulation_id:9, material_id: 8,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "9.jpg")) }])
SimulationMaterial.create!(id:25, simulation_id:10, material_id: 9,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "10.jpg")) }])
SimulationMaterial.create!(id:26, simulation_id:10, material_id: 10,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "11.jpg")) }])
SimulationMaterial.create!(id:27, simulation_id:11, material_id: 11,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "12.jpg")) }])
SimulationMaterial.create!(id:28, simulation_id:11, material_id: 3,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "13.jpg")) }])
SimulationMaterial.create!(id:29, simulation_id:12, material_id: 6,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "14.jpg")) }])
SimulationMaterial.create!(id:30, simulation_id:12, material_id: 9,simulation_material_pictures_attributes: [{ picture: File.open(Rails.root.join("app", "assets", "images", "15.jpg")) }])

SimulationMaterialContent.create!(simulation_material_id:1, content: '30평 단독주택에 벽돌 1은 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')
SimulationMaterialContent.create!(simulation_material_id:2, content: '30평 단독주택에 벽돌 2는 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')
SimulationMaterialContent.create!(simulation_material_id:3, content: '30평 단독주택은 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')
SimulationMaterialContent.create!(simulation_material_id:4, content: '30평 단독주택은 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')
SimulationMaterialContent.create!(simulation_material_id:5, content: '30평 단독주택은 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
' )
SimulationMaterialContent.create!(simulation_material_id:6, content: '30평 단독주택은 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')
SimulationMaterialContent.create!(simulation_material_id:7, content: '30평 단독주택은 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')
SimulationMaterialContent.create!(simulation_material_id:8, content: '30평 단독주택은 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')
SimulationMaterialContent.create!(simulation_material_id:9, content: '30평 단독주택은 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')
SimulationMaterialContent.create!(simulation_material_id:10, content: '30평 단독주택은 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')
SimulationMaterialContent.create!(simulation_material_id:11, content: '30평 단독주택은 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')
SimulationMaterialContent.create!(simulation_material_id:12, content: '30평 단독주택은 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
' )
SimulationMaterialContent.create!(simulation_material_id:13, content: '30평 단독주택은 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')
SimulationMaterialContent.create!(simulation_material_id:14, content: '30평 단독주택은 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ
asdgasdg
asdg
asdg
awsehawehawehawehg
asdhg
asdgasdgasd g
')
SimulationMaterialContent.create!(simulation_material_id:15, content: "30평 단독주택은 어쩌고 저쩌고 ㄴㅁㅇㅎㄴㅁㅇㅎㅁㄴㅇ하ㅣㅁ ㅇ하ㅣㅁㄴㅇ ㅏ민ㅇ 후ㅏㅣㅁㄴㅇㅎ ㅜㅏ민ㅇ ㅁㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㄴㅁㅇㅎ ㄴㅇㅎ ㅁㄴㅇㅎ ㅁㄴㅇㅎㅁㄴ ㅇㅎㅁㄴㅇ\n asdgasdg\n asdg\n asdg\n awsehawehawehawehg\n asdhg\n asdgasdgasd")


SimulationMaterialPicture.create!(simulation_material_id:1, picture:File.open(Rails.root.join("app", "assets", "images", "12.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:1, picture:File.open(Rails.root.join("app", "assets", "images", "11.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:1, picture:File.open(Rails.root.join("app", "assets", "images", "10.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:2, picture:File.open(Rails.root.join("app", "assets", "images", "9.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:3, picture:File.open(Rails.root.join("app", "assets", "images", "8.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:4, picture:File.open(Rails.root.join("app", "assets", "images", "7.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:5, picture:File.open(Rails.root.join("app", "assets", "images", "6.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:6, picture:File.open(Rails.root.join("app", "assets", "images", "5.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:7, picture:File.open(Rails.root.join("app", "assets", "images", "4.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:8, picture:File.open(Rails.root.join("app", "assets", "images", "3.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:9, picture:File.open(Rails.root.join("app", "assets", "images", "2.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:10, picture:File.open(Rails.root.join("app", "assets", "images", "1.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:11, picture:File.open(Rails.root.join("app", "assets", "images", "2.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:12, picture:File.open(Rails.root.join("app", "assets", "images", "3.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:13, picture:File.open(Rails.root.join("app", "assets", "images", "4.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:14, picture:File.open(Rails.root.join("app", "assets", "images", "5.jpg")) )
SimulationMaterialPicture.create!(simulation_material_id:15, picture:File.open(Rails.root.join("app", "assets", "images", "6.jpg")) )



BlogCategory.create!(id: 1, title: '시공사례')
BlogCategory.create!(id: 2, title: '디자인, 설계사례')
BlogCategory.create!(id: 3, title: '해외건축갤러리')
BlogCategory.create!(id: 4, title: '기타사례,갤러리')

Blog.create!(id: 1, user_id:1, blog_category_id:1, title: '건축블로그1', content: 'sdgsdg',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }, enable: true)
Blog.create!(id: 2, user_id:1, blog_category_id:1, title: '시공블로그2', content: 'sdgsdg',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }, enable: true)
Blog.create!(id: 3, user_id:1, blog_category_id:1, title: '기타블로그3', content: 'sdgsdg',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }, enable: true)
Blog.create!(id: 4, user_id:1, blog_category_id:1, title: '건축블로그4', content: 'sdgsdg',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }, enable: true)
Blog.create!(id: 5, user_id:1, blog_category_id:2, title: '시공블로그5', content: 'sdgsdg',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }, enable: true)
Blog.create!(id: 6, user_id:1, blog_category_id:2, title: '기타블로그6', content: 'sdgsdg',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }, enable: true)
Blog.create!(id: 7, user_id:1, blog_category_id:3, title: '건축블로그7', content: 'sdgsdg',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }, enable: true)
Blog.create!(id: 8, user_id:1, blog_category_id:3, title: '시공블로그9', content: 'sdgsdg',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }, enable: true)
Blog.create!(id: 9, user_id:1, blog_category_id:3, title: '기타블로그1', content: 'sdgsdg',blog_picture_attributes: { picture: File.open(Rails.root.join("app", "assets", "images", "1.jpg")) }, enable: true)


SpecialityCategoryBlog.create!(speciality_category_id: 1, blog_id: 7)
SpecialityCategoryBlog.create!(speciality_category_id: 1, blog_id: 8)
SpecialityCategoryBlog.create!(speciality_category_id: 1, blog_id: 9)


RequestCategory.create!(id: 1, title: '적산의뢰')
RequestCategory.create!(id: 2, title: '설계의뢰')
RequestCategory.create!(id: 3, title: '디자인의뢰')

Request.create!(id: 1, request_category_id: 1, size: 20, user_id: 1, title: '적산의뢰1', content: '적산의뢰1 내용')
Request.create!(id: 2, request_category_id: 1, size: 10, user_id: 2, title: '적산의뢰2', content: '적산의뢰2 내용')
Request.create!(id: 3, request_category_id: 2, size: 15, user_id: 3, title: '설계의뢰1', content: '설계의뢰1 내용')
Request.create!(id: 4, request_category_id: 3, size: 5, user_id: 4, title: '디자인의뢰1', content: '디자인의뢰1 내용')


Question.create!(id: 1, user_id: 1, title: '질문이요', content: '질문 내용')
Question.create!(id: 2, user_id: 2, title: '질문입니다', content: '질문입니다 내용')
Question.create!(id: 3, user_id: 3, title: '질문2', content: '질문2 내용')
Question.create!(id: 4, user_id: 4, title: '질문질문2', content: '질문질문2 내용')

Answer.create!(id: 1, question_id: 1, user_id: 1, title: '질문이요', content: '질문 내용')
Answer.create!(id: 2, question_id: 2, user_id: 2, title: '질문입니다', content: '질문입니다 내용')
Answer.create!(id: 3, question_id: 3, user_id: 3, title: '질문2', content: '질문2 내용')
Answer.create!(id: 4, question_id: 4, user_id: 4, title: '질문질문2', content: '질문질문2 내용')


ContactCategory.create!(id: 1, title: '일반상담')
ContactCategory.create!(id: 2, title: '제휴문의')
ContactCategory.create!(id: 3, title: '기타')

Contact.create!(id: 1, contact_category_id: 1, user_id: 1, title: '일반상담', contact_content_attributes: {content:  '일반상담 내용'})
Contact.create!(id: 2, contact_category_id: 1, user_id: 1, title: '제휴문의', contact_content_attributes: {content:'제휴문의 내용'})
Contact.create!(id: 3, contact_category_id: 1, user_id: 1, title: '기타', contact_content_attributes: {content: '기타 내용'})


Font.create!(id: 1, title: 'Noto Sans KR', font:  'Noto Sans KR')
Font.create!(id: 2, title: '나눔고딕', font:  'Nanum Gothic')
Font.create!(id: 3, title: '맑은고딕', font: 'Malgun Gothic')
Font.create!(id: 4, title: '돋움', font: 'Dotum')
Font.create!(id: 5, title: '굴림', font: 'Gulim')
Font.create!(id: 6, title: '바탕', font: 'Batang')
Font.create!(id: 7, title: '궁서', font: 'Gungsuh')
Font.create!(id: 8, title: '새굴림', font: 'New Gulim')

Slide.create!(id: 1, link: '/', :title=>'메인배너', picture: File.open(Rails.root.join("app", "assets", "images", "main_banner01.jpg")) )
Slide.create!(id: 2, link: '/ads?category=1', :title=>'건축배너' ,picture: File.open(Rails.root.join("app", "assets", "images", "main_banner02.jpg")) )
Slide.create!(id: 3, link: '/ads?category=2', :title=>'인테리어배너', picture: File.open(Rails.root.join("app", "assets", "images", "main_banner03.jpg")) )
Slide.create!(id: 4, link: '/ads?category=3', :title=>'시공배너', picture: File.open(Rails.root.join("app", "assets", "images", "main_banner04.jpg")) )


ChargePoint.create!(title:'11000 포인트 충전', point: 11000, price: 10000)
#ChargePoint.create!(title:'22000 포인트 충전', point: 22000, price: 20000)
ChargePoint.create!(title:'33000 포인트 충전', point: 33000, price: 30000)
#ChargePoint.create!(title:'44000 포인트 충전', point: 44000, price: 40000)
ChargePoint.create!(title:'55000 포인트 충전', point: 55000, price: 50000)
#ChargePoint.create!(title:'66000 포인트 충전', point: 66000, price: 60000)
#ChargePoint.create!(title:'77000 포인트 충전', point: 77000, price: 70000)
#ChargePoint.create!(title:'88000 포인트 충전', point: 88000, price: 80000)
#ChargePoint.create!(title:'99000 포인트 충전', point: 99000, price: 90000)
ChargePoint.create!(title:'110000 포인트 충전', point: 110000, price: 100000)
ChargePoint.create!(title:'120000 포인트 충전', point: 220000, price: 200000)
ChargePoint.create!(title:'130000 포인트 충전', point: 330000, price: 300000)


ServiceTime.create!(id: 1, title:'오전 08:00 ~ 11:30', time: 3)
ServiceTime.create!(id: 2, title:'오후 14:00 ~ 17:30', time: 3)
ServiceTime.create!(id: 3, title:'저녁 18:30 ~ 21:00', time: 3)
ServiceTime.create!(id: 4, title:'종일 08:00 ~ 17:00', time: 6)
ServiceTime.create!(id: 5, title:'아무때나 3시간', time: 3)


Setting.create!(scroll_title: '실시간 전문가, 업체, 건축업자 호출 게시판 / 누구나 호출 할 수 있습니다....')