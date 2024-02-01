class ArticleEventNewsTableCreation < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description

      t.timestamps
    end

    create_table :events do |t|
      t.string :title
      t.string :venue
      t.string :address
      t.date :schedule_at
      
      t.timestamps
    end

    create_table :news do |t|
      t.string :title
      t.date :news_date

      t.timestamps
    end
  end
end
