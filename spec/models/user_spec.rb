require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do

    let(:params) {{name:"田中"}}

    it "１歳：名前が「〜ちゃん」と取得できること" do
    params.merge!(age:1)
      user = User.new(params)
      expect(user.disp_name).to eq "田中ちゃん"
    end
    it "１５歳：名前が「〜くん」と取得できること" do
      params.merge!(age:15)
      user = User.new(params)
      expect(user.disp_name).to eq "田中くん"
    end
    it "２０歳：名前が「〜さん」と取得できること" do
      params.merge!(age:20)
      user = User.new(params)
      expect(user.disp_name).to eq "田中さん"
    end
    it "-1歳：名前が「不正な値です」と取得できること" do
      params.merge!(age:-1)
      user = User.new(params)
      expect(user.disp_name).to eq "不正な値です"
    end
  end
end
