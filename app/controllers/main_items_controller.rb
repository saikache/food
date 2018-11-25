class MainItemsController < ApplicationController
  before_action :set_main_item, only: [:show, :edit, :update, :destroy]

  # GET /main_items
  # GET /main_items.json
  def index
    @main_items = MainItem.all
  end

  # GET /main_items/1
  # GET /main_items/1.json
  def show
  end

  # GET /main_items/new
  def new
    @main_item = MainItem.new
  end

  # GET /main_items/1/edit
  def edit
  end

  # POST /main_items
  # POST /main_items.json
  def create
    @main_item = MainItem.new(main_item_params)
    # byebug
    respond_to do |format|
      if @main_item.save
        format.html { redirect_to @main_item, notice: 'Main item was successfully created.' }
        format.json { render :show, status: :created, location: @main_item }
      else
        format.html { render :new }
        format.json { render json: @main_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_items/1
  # PATCH/PUT /main_items/1.json
  def update
    respond_to do |format|
      if @main_item.update(main_item_params)
        format.html { redirect_to @main_item, notice: 'Main item was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_item }
      else
        format.html { render :edit }
        format.json { render json: @main_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_items/1
  # DELETE /main_items/1.json
  def destroy
    @main_item.destroy
    respond_to do |format|
      format.html { redirect_to main_items_url, notice: 'Main item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_item
      @main_item = MainItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_item_params
      params.require(:main_item).permit(:name, :description, :menu_id, :photo)
    end
end
