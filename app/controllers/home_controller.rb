class HomeController < ApplicationController
  def index
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
  end

  def contact
  end
end
