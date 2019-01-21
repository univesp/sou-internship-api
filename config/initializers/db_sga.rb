# save cache database settings in global var
DB_SGA = YAML::load(ERB.new(File.read(Rails.root.join("config","sga_database.yml"))).result)[Rails.env]
