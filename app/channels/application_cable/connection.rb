module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = { user: cookies.signed[:user], type: cookies.signed[:type] }
    end
  end
end
