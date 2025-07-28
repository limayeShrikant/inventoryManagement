class PurchaseOrdersController < ApplicationController

    def new
        @purchase_order = PurchaseOrder.new
    end

    def create
        @purchase_order = PurchaseOrder.new(purchase_order_params)
        if @purchase_order.save
            redirect_to @purchase_order, notice: 'Purchase order was successfully created!'
        else
            render :new
        end
    end

    def show
        @purchase_order = PurchaseOrder.find(params[:id])
    end

    private

    def purchase_order_params
        params.require(:purchase_order).permit(:supplier_id, :status, line_items_attributes: [:id, :product_id, :quantity, :_destroy])
    end
end
