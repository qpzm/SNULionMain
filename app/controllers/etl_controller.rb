class EtlController < ApplicationController
    def index
	@homeworks = Homework.all
	@seminars = Seminar.all
	@weeks = Week.all
    end
    def homework
	@homeworks = Homework.all
    end
    def seminar
	@seminars = Seminar.all
    end

end
