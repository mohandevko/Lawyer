class Lawyer < ActiveRecord::Base
  has_many :lawyer_services, :dependent => :destroy, :foreign_key => :lawyer_code
end
