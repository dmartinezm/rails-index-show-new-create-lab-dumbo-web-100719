class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def show
        # byebug
        @coupon = Coupon.find(params[:id])
    end

    def new

    end

    def create
        # byebug
        coupon = Coupon.create(coupon_params)
        redirect_to coupon_path(coupon)

    end

    private

    def coupon_params
        params.require(:coupon).permit(:store, :coupon_code)
    end
end
