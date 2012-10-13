class MicrotasksController < ApplicationController
  # GET /microtasks
  # GET /microtasks.json
  def index
    @microtasks = Microtask.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microtasks }
    end
  end

  # GET /microtasks/1
  # GET /microtasks/1.json
  def show
    @microtask = Microtask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @microtask }
    end
  end

  # GET /microtasks/new
  # GET /microtasks/new.json
  def new
    @microtask = Microtask.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @microtask }
    end
  end

  # GET /microtasks/1/edit
  def edit
    @microtask = Microtask.find(params[:id])
  end

  # POST /microtasks
  # POST /microtasks.json
  def create
    @microtask = Microtask.new(params[:microtask])

    respond_to do |format|
      if @microtask.save
        format.html { redirect_to @microtask, notice: 'Microtask was successfully created.' }
        format.json { render json: @microtask, status: :created, location: @microtask }
      else
        format.html { render action: "new" }
        format.json { render json: @microtask.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /microtasks/1
  # PUT /microtasks/1.json
  def update
    @microtask = Microtask.find(params[:id])

    respond_to do |format|
      if @microtask.update_attributes(params[:microtask])
        format.html { redirect_to @microtask, notice: 'Microtask was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @microtask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microtasks/1
  # DELETE /microtasks/1.json
  def destroy
    @microtask = Microtask.find(params[:id])
    @microtask.destroy

    respond_to do |format|
      format.html { redirect_to microtasks_url }
      format.json { head :no_content }
    end
  end
end
