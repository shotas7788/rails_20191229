require 'rails_helper'

RSpec.describe "FoodEnquetes", type: :request do
  # describe "GET /food_enquetes" do
  #   it "works! (now write some real specs)" do
  #     get food_enquetes_path
  #     expect(response).to have_http_status(200)
  #   end
  # end
  describe '正常' do
    context "アンケートに回答する" do
      it "回答できること" do
        # [Point.3-15-1]アンケートページにアクセスします。
        get "/food_enquetes/new"
        # [Point.3-15-2]正常に応答することを確認します。
        expect(response).to have_http_status(200)
  
        # [Point.3-15-3]正常な入力値を送信します。
        post "/food_enquetes", params: { food_enquete: FactoryBot.attributes_for(:food_enquete_tanaka) }
        # [Point.3-15-4]リダイレクト先に移動します。
        follow_redirect!
        # [Point.3-15-5]送信完了のメッセージが含まれることを検証します。
        # expect(response.body).to include "お食事に関するアンケートを送信しました"
        expect(response.body).to include "ご回答ありがとうございました"
      end
    end
  end

  describe '異常' do
    context "アンケートに回答する" do
      it "エラーメッセージが表示されること" do
        get "/food_enquetes/new"
        expect(response).to have_http_status(200)
    
        # [Point.3-15-6]異常な入力値を送信します。
        post "/food_enquetes", params: { food_enquete: { name: '' } }
        # [Point.3-15-7]送信完了のメッセージが含まれないことを検証します。
        # expect(response.body).not_to include "お食事に関するアンケートを送信しました"
        expect(response.body).not_to include "ご回答ありがとうございました"
      end
    end
  end
  
end
