require 'csv'

namespace :import_csv do
  desc "CSVデータをインポートする"

  task jobs: :environment do
    path = File.join Rails.root, "db/csv_data/csv_data.csv"
    list = []
    CSV.foreach(path, headers: true) do |row|
      list <<{
        name: row["name"],
        life: row["life"],
        power: row["power"],
        skill: row["skill"]
      }
    end
    puts "インポート開始"

    begin
      Job.create!(list)
      puts "インポート完了"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポート失敗:UnknownAttributeErroor"
    end    
  end
end
