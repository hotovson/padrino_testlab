Sequel::Model.plugin(:schema)
Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure
DB = case Padrino.env
  when :development then Sequel.connect("sqlite://" + Padrino.root('db', "padrino_testlab_development.db"), :loggers => [logger])
  when :production  then Sequel.connect("sqlite://" + Padrino.root('db', "padrino_testlab_production.db"),  :loggers => [logger])
  when :test        then Sequel.connect("sqlite://" + Padrino.root('db', "padrino_testlab_test.db"),        :loggers => [logger])
end
