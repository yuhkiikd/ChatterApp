ActiveRecord::Schema.define(version: 2019_08_14_053823) do

  enable_extension "plpgsql"

  create_table "chatters", force: :cascade do |t|
    t.text "content"
  end

end
