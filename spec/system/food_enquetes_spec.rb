require 'rails_helper'

# [Point.6-2-1]type: :systemを指定します。
RSpec.describe "FoodEnquetes", type: :system do
  describe '正常' do
    context "アンケートに回答する" do
      it "回答できること" do
        # [Point.6-2-2]「田中 太郎」のテストデータを作成します。
        enquete = FactoryBot.create(:food_enquete_tanaka)
        # [Point.6-2-3]アンケートページにアクセスします。
        visit "/food_enquetes/new"
        # [Point.6-2-4]テキストボックスに値を入力します。
        fill_in 'お名前', with: enquete.name
        # [Point.6-2-4]テキストボックスに値を入力します。
        fill_in 'メールアドレス', with: enquete.mail
        # [Point.6-2-4]テキストボックスに値を入力します。
        fill_in '年齢', with: enquete.age
        # [Point.6-2-5]セレクトボックスを選択します。
        select enquete.food_name, from: 'お召し上がりになった料理'
        # [Point.6-2-6]ラジオボタンを選択します。
        choose "food_enquete_score_#{enquete.score}"
        # [Point.6-2-4]テキストボックスに値を入力します。
        fill_in 'ご意見・ご要望', with: enquete.request
        # [Point.6-2-5]セレクトボックスを選択します。
        select enquete.present_name, from: 'ご希望のプレゼント'

        # 【補足】見た目をわかりやすくするために動作を2秒止めています。
        # 通常は自動テストが遅くなりますので不要な処理です。
        sleep 2
        # [Point.6-2-7]「登録する」ボタンをクリックします。
        click_button '登録する'

        # [Point.6-2-8]回答が完了したか検証します。
        expect(page).to have_content 'ご回答ありがとうございました'
        expect(page).to have_content 'お名前: 田中 太郎'
        expect(page).to have_content 'メールアドレス: taro.tanaka@example.com'
        expect(page).to have_content '年齢: 25'
        expect(page).to have_content 'お召し上がりになった料理: やきそば'
        expect(page).to have_content '満足度: 良い'
        expect(page).to have_content 'ご意見・ご要望: おいしかったです。'
        expect(page).to have_content 'ご希望のプレゼント: 【10名に当たる】ビール飲み放題'

        # 【補足】見た目をわかりやすくするために動作を5秒止めています。
        # 通常は自動テストが遅くなりますので不要な処理です。
        sleep 5
      end
    end
  end
end