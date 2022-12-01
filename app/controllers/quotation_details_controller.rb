class QuotationDetailsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_quotation_detail, only: %i[ show edit update destroy]
  before_action :set_quotation, only: %i[new]

  # GET /quotation_details or /quotation_details.json
  def index
    @quotation_details = QuotationDetail.all
  end

  # GET /quotation_details/1 or /quotation_details/1.json
  def show
  end

  # GET /quotation_details/new
  def new
    @quotation_detail = QuotationDetail.new
  end

  # GET /quotation_details/1/edit
  def edit
  end

  # POST /quotation_details or /quotation_details.json
  def create
    @quotation_detail = QuotationDetail.new(quotation_detail_params)
    @quotation_detail.user_id = current_user.id
    respond_to do |format|
      if @quotation_detail.save
        format.html { redirect_to quotation_detail_url(@quotation_detail), notice: "Quotation detail was successfully created." }
        format.json { render :show, status: :created, location: @quotation_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quotation_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotation_details/1 or /quotation_details/1.json
  def update
    @quotation_detail.user_id = current_user.id
    respond_to do |format|
      if @quotation_detail.update(quotation_detail_params)
        format.html { redirect_to quotation_detail_url(@quotation_detail), notice: "Quotation detail was successfully updated." }
        format.json { render :show, status: :ok, location: @quotation_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quotation_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotation_details/1 or /quotation_details/1.json
  def destroy
    quotation_id = @quotation_detail.quotation_id
    @quotation_detail.destroy

    respond_to do |format|
      format.html { redirect_to quotation_children_url(quotation_id), notice: "Quotation detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quotation_detail
      @quotation_detail = QuotationDetail.find(params[:id])
    end
    def set_quotation
      @quotation = Quotation.find(params[:id])
      puts('---------------------')
      puts('--------------------')
      print(@quotation.id)
      puts('---------------------')
      puts('--------------------')
    end

    # Only allow a list of trusted parameters through.
    def quotation_detail_params
      params.require(:quotation_detail).permit(:quotation_id, :good_id, :quantity, :leadTime, :sellingUnit, :price, :discount, :user_id)
    end
end
