
class Tower

	attr_reader :pole, :name

	def initialize(circles, name)
		@pole = circles
		@name = name
	end

	def can_send?(tower)
		if @pole.empty? 
			# can't givve circle
			print "#{@name} can't send to #{tower.name}, #{@name} is empty\n"
			return false
		elsif tower.pole.empty?
			print "#{@name} is able to send, #{tower.name} is empty\n" 
			return true
		elsif @pole.last > tower.pole.last
			print "#{@name} can't send to #{tower.name}, #{@name} has bigger circle\n"
			print "#{@pole}, #{tower.pole}\n"
			return false 
		elsif @pole.last < tower.pole.last
			return true
		end
	end

	def send_circle(tower)
		if @pole.empty? 
			"empty pole\n"
			# can't givve circle
			return false
		elsif tower.pole.empty?
			print "Tower empty - #{@name} - Sending circle #{@pole.last} to #{tower.name}\n"
			tower.get_circle(@pole.last)
			@pole.pop
		elsif @pole.last > tower.pole.last
			print "#{name} - can't send circle #{@pole.last}, it's bigger than destination on #{tower.name}.\n"
			return false
		# sending circle
		elsif tower.pole.last > @pole.last
			print "Ok, circle is smaller - #{@name} - Sending circle #{@pole.last} to #{tower.name}\n"
			tower.get_circle(@pole.pop)
			return true
		else
				print "nic neseplo\n"
		end
	end

	def get_circle(circle)
		print "#{@name} is getting circle #{circle}\n"
		@pole << circle
	end

	def status
		if @pole.empty?
			print "#{@name} - I have no circles \n"
		else
			print "#{name} - I have #{@pole}\n"
		end
	end

	def empty?
		return false if @pole.empty?
	end

	def logger(source, destination, message)
		print("Source - #{source}, destination - #{destination}\n #{message} ")

	end

end


# class Logger
# 	private_class_method :new
# 	attr_reader :reports, :logs

# 	@@reports = nil
# 	def Logger.create
# 		@@reports = [] unless @@reports
# 		@@reports
# 	end
# 	def report(report_from_tower)
# 		@@reports.push(report_from_tower)
# 	end

# end

