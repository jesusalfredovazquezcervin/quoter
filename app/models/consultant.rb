class Consultant < ApplicationRecord
  ROLE = %w[CONSULTANT SUPERVISOR MANAGER]
  belongs_to :user
end
