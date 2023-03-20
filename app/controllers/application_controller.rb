class ApplicationController < ActionController::Base
    def index
        flash[:alert] = "早安！你好！"
    end

    def admin_required 
        if !current_user.admin?
            redirect_to "/", alert: "你不是管理员"
        end
    end
end
