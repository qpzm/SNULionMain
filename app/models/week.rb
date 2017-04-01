class Week < ApplicationRecord
  has_many :seminars
  has_many :homeworks

  # output is current week 
  def self.current_week
    today = DateTime.now

    Week.all.each do |w|
      count = (today - w.start_date.to_datetime).to_i
      if count < 7 && count >= 0
        return w
      end
    end

  end

end
