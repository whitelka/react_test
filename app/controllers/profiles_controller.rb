class ProfilesController < ApplicationController
  def index
    @questions = [
      { title: "이름을 입력해 주세요", type: 1, name: "name"},
      { title: "주소를 입력해 주세요", type: 2, name: "address"},
      { title: "이전 경력을 입력해 주세요", type: 1, name: "experience" },
      { title: "기술을 입력해 주세요", type: 2, status: "skill" },
      { title: "취미를 입력해 주세요", type: 1, status: "hobby" }]

    respond_to do |format|

      format.html # show.html.erb
      #TODO: 현재 user의 status를 가지고 질문을 보여줌
      format.json { render json: { question: @questions[1] } }
    end
  end
end