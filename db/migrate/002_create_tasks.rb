class CreateTasks < Sequel::Migration
  def up
    create_table :tasks do
      primary_key :id
      String :title
      Text :body
      String :url
      Integer :completed
      Timestamp :tstamp
    end
  end

  def down
    drop_table :tasks
  end
end
