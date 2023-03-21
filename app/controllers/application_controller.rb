class ApplicationController < ActionController::Base
    def index
        flash[:alert] = "早安！你好！"
    end

    def admin_required 
        if !current_user.admin?
            redirect_to "/", alert: "你不是管理员"
        end
    end

    helper_method :current_user

    def current_user
        @current_user ||= find_cart
    end

    def find_cart
        cart = Cart.find_by(id: session[:cart_id])
        if cart.black?
            cart = Cart.create
        end
        session[:cart_id] = cart.id
        return cart
    end
end
