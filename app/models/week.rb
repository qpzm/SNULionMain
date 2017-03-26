class Week < ApplicationRecord
  has_many :seminars
  has_many :homeworks

  # output is current week 
  def self.current_week
    today = DateTime.now
    #today = DateTime.now
    m_today = today.month
    d_today = today.day
    Week.all.each do |w|
      if w.start_date.month == m_today && d_today - w.start_date.day < 7 && d_today - w.start_date.day >= 0
        return w
      end
    end
  end
end
