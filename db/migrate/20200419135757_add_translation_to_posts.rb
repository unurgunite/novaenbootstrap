class AddTranslationToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :translation, :string
  end
end
