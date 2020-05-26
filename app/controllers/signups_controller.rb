class SignupsController < ApplicationController

    def new
        @signups = Signups.new
    end

    private
    def signup_params
        params.require(:signups).permit(:firstname, :email)
    end

    def create
        @signup = Signups.new(signup_params)
        redirect.to(@thanks)
    end

end