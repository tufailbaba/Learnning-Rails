class Demo < ApplicationRecord
    has_one :sub_demo

    before_create :greeting_message
    def greeting_message
        puts "Hey i will run before creating the record"
    end
end
