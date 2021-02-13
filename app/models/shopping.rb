class Shopping < ApplicationRecord
  require "date"

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      # IDが見つかれば、レコードを呼び出し、見つかれなければ、新しく作成
      shoppings = find_by(id: row["id"]) || new
      # CSVからデータを取得し、設定する
      shoppings.attributes = row.to_hash.slice(*updatable_attributes)
      # 保存する
      shoppings.save
    end
  end

  # 更新を許可するカラムを定義
  def self.updatable_attributes
    ["id", "name", "birth", "item", "quantity", "price"]
  end

end
