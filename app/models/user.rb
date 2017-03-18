require_relative 'concerns/slugifiable.rb'
class User < ActiveRecord::Base
    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods
    
    has_many :tweets 
    def name
        self.username 
    end
end