class UhEmController < ApplicationController

  def index # 사용자 정보 받기
  end

  def search_list # 넘어온 정보와 일치하는 정보 리스트
    @current_user_search_all = UserSearch.all.where(user_id: current_user.id).all

  end
  def search_one # 사용자가 클릭한 하나의 메뉴 정보
  end

  def mymenu # 사용자가 좋아요를 누른 메뉴들을 내메뉴 페이지에 출력
  end
  def mymenu_create # 내메뉴로 담기
  end
  def mymenu_delete # 좋아요를 누르기 위한 액션
  end

  def review # 리뷰 리스트
  end
  def review_create # 리뷰 작성
  end
  def review_edit # 사용자가 리뷰 수정
  end
  def review_update # 수정 리뷰 업데이트
  end
  def review_delete # 리뷰 삭제
  end

  # 로케이션 버튼을 누르면 네이버 길찾기 페이지로 넘어가게 하기

end
