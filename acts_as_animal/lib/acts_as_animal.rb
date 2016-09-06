module Animal
  
  def self.included(base)
  	base.extend ClassMethods
  	base.class_eval do
			include InstanceMethods  		
  	end
  end

  module ClassMethods
  	def acts_as_animal(params)
  		class_eval <<-STUFF
  			def noise
  				'#{params[:noise]}!'
  			end
  		STUFF
  	end
  end

  module InstanceMethods
  	def generic_animal_thing
  		'poop'
  	end
  end
end
