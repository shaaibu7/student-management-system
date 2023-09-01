class ApplicationController < ActionController::Base
    before_action :display_greeting

    after_action :after_greeting_callback

    private

    def display_greeting
        puts "I am a filter before action innherited callback"
    end

    def after_greeting_callback
        puts "====================================="
        puts "I am an after action filter hurray"
        puts "====================================="
    end
end
