class SgaDatabase < ActiveRecord::Base
  self.abstract_class = true
  establish_connection DB_SGA
end