class Registration < ActiveRecord::Base
  belongs_to :players
  belongs_to :tournaments
end
