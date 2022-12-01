class QuotationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_quotation, only: %i[ show edit update destroy children show_pdf show_pdf_print]
  # GET /quotations or /quotations.json
  def index
    @quotations = Quotation.all
  end

  # GET /quotations/1 or /quotations/1.json
  def show
  end

  # GET /quotations/new
  def new
    @quotation = Quotation.new
  end

  # GET /quotations/1/edit
  def edit
  end

  # POST /quotations or /quotations.json
  def create
    @quotation = Quotation.new(quotation_params)

    respond_to do |format|
      if @quotation.save
        format.html { redirect_to quotation_url(@quotation), notice: "Quotation was successfully created." }
        format.json { render :show, status: :created, location: @quotation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotations/1 or /quotations/1.json
  def update
    respond_to do |format|
      if @quotation.update(quotation_params)
        format.html { redirect_to quotation_url(@quotation), notice: "Quotation was successfully updated." }
        format.json { render :show, status: :ok, location: @quotation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quotation.errors, status: :unprocessable_entity }
      end
    end
  end

  #quotations/children/1 or quotations/children/1.json
  def children
  end
  #quotations/show_pdf/1 or quotations/show_pdf/1.json
  def show_pdf

    respond_to do |format|
      format.html do
      end


      format.pdf do
      render pdf: "Quotation_#{@quotation.code}",
             template: "quotations/print_pdf",
             formats: [:html],
             layout: 'pdf',
             page_size: 'Letter',
             :footer => { :right => '[page] of [topage]' }


      end

    end
  end
  # DELETE /quotations/1 or /quotations/1.json
  def destroy
    @quotation.destroy

    respond_to do |format|
      format.html { redirect_to quotations_url, notice: "Quotation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quotation
      @quotation = Quotation.find(params[:id])
      @children = @quotation.quotation_details
    end

    # Only allow a list of trusted parameters through.
    def quotation_params
      params.require(:quotation).permit(:code, :quotationDate, :expirationDays, :creditDays, :deliveryTerm, :minimumOrder, :leadTime, :customer_id, :consultant_id, :contact_id)
    end
end
