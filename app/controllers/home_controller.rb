class HomeController < ApplicationController
  def index
    @index = [{file: "젬.png", title: "젬", content: "예측시장서비스"},
              {file: "샤샤건건.png", title: "샤샤건건", content: "교내 포스터 갤러리"},
              {file: "모트모트.png", title: "모트모트", content: "노트에 감성을 더하다."},
              {file: "운수좋은날.png", title: "운수좋은날", content: "운수 매칭 플랫폼"},
              {file: "세렝게티.png", title: "세렝게티", content: "개발자 커뮤니티"},
              {file: "피코.png", title: "피코", content: "위치기반 SNS"},
              {file: "태그솔루션.png", title: "태그솔루션", content: "Transparent LET film"},
              {file: "댄스팟.png", title: "댄스팟", content: "당신이 춤을 추고 싶다면"},
              {file: "노티북.png", title: "노티북", content: "공지를 놓치면 손해"}]
  end

  def member
    @members = [{name: "김경도", major: "재료공학부"},
                {name: "김권봉", major: "시각디자인과"},
                {name: "김근영", major: "자유전공학부"},
                {name: "김태완", major: "전기정보공학부"},
                {name: "박승환", major: "기계항공공학부"},
                {name: "서동욱", major: "재료공학부"},
                {name: "서수빈", major: "산업공학과"},
                {name: "손병찬", major: "전기정보공학부"},
                {name: "송기서", major: "시각디자인과"},
                {name: "송재윤", major: "경영학부"},
                {name: "유진영", major: "경영학부"},
                {name: "윤현영", major: "자유전공학부"},
                {name: "이현민", major: "경제학부"},
                {name: "임정건", major: "화학생물공학부"}]
  end

  def gallery
    @gallerys = [{file: "hack-1.JPG", name: "해커톤1"},
                 {file: "hack-2.JPG", name: "해커톤2"},
                 {file: "hack-3.JPG", name: "해커톤3"},
                 {file: "seminar-1.JPG", name: "세미나1"},
                 {file: "seminar-2.JPG", name: "세미나2"},
                 {file: "seminar-3.JPG", name: "세미나3"},
                 {file: "mt-1.JPG", name: "엠티1"},
                 {file: "mt-2.JPG", name: "엠티2"},
                 {file: "mt-3.JPG", name: "엠티3"},
                 {file: "birthday-1.JPG", name: "생일파티1"},
                 {file: "birthday-2.JPG", name: "생일파티2"},
                 {file: "party-1.JPG", name: "뒷풀이1"},
                 {file: "party-2.JPG", name: "뒷풀이2"},
                 {file: "escape-1.JPG", name: "방탈출1"},
                 {file: "escape-2.JPG", name: "방탈출2"}]
  end

  def contact
  end
end
