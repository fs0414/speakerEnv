class ApplicationController < ActionController::Base
    def health_check
        render json: { status: "hello speakerEnv developers" }, status: :ok
    end

end
