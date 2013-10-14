
class Judge

end

class Tower

	def give_circle
		if @status == []
			logger.report("Tower #@name, I'm empty couldn't give circle")
		else
			last_circle = @status.pop
			logger.report("Tower #@name gave circle #@last_circle")
		end
	end

	def get_circle(circle)
		if @status.last > circle
			logger.report("Tower #@name, circle is bigger than I'm able to accept")
		else
			@status.push(circle)
			logger.report("Tower #@name receiver #@circle")
		end
	end


	def initialize(circles, name)
		@status = circles
		@name = name
	end

	def send_report

	end


	# would report how does tower look like
	attr_reader :status, :name

end


class Logger
	private_class_method :new
	@@reports = nil
	def Logger.create
		@@reports = [] unless @@reports
		@@reports
	end
	def report(report_from_tower)
		@@reports.push(report_from_tower)
	end

	attr_reader :reports, :logs
end

