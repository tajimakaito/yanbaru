email = "test@example.com"
password = "password"

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: email) do |user|
  user.password = password
  Rails.logger.debug "ユーザーの初期データインポートに成功しました。"
end
