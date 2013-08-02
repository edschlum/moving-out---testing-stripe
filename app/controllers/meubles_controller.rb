class MeublesController < ApplicationController
  # GET /meubles
  # GET /meubles.json
  def index
    @meubles = Meuble.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meubles }
    end
  end

  def admin
    @meubles = Meuble.all
  end

  # GET /meubles/1
  # GET /meubles/1.json
  def show
    @meuble = Meuble.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meuble }
    end
  end

  # GET /meubles/new
  # GET /meubles/new.json
  def new
    @meuble = Meuble.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meuble }
    end
  end

  # GET /meubles/1/edit
  def edit
    @meuble = Meuble.find(params[:id])
  end

  # POST /meubles
  # POST /meubles.json
  def create
    @meuble = Meuble.new(params[:meuble])

    respond_to do |format|
      if @meuble.save
        format.html { redirect_to @meuble, notice: 'Meuble was successfully created.' }
        format.json { render json: @meuble, status: :created, location: @meuble }
      else
        format.html { render action: "new" }
        format.json { render json: @meuble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meubles/1
  # PUT /meubles/1.json
  def update
    @meuble = Meuble.find(params[:id])

    respond_to do |format|
      if @meuble.update_attributes(params[:meuble])
        format.html { redirect_to @meuble, notice: 'Meuble was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meuble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meubles/1
  # DELETE /meubles/1.json
  def destroy
    @meuble = Meuble.find(params[:id])
    @meuble.destroy

    respond_to do |format|
      format.html { redirect_to meubles_url }
      format.json { head :no_content }
    end
  end
end
