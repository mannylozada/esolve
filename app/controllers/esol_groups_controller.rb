class EsolGroupsController < ApplicationController
  # GET /esol_groups
  # GET /esol_groups.json
  def index
    @esol_groups = EsolGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @esol_groups }
    end
  end

  # GET /esol_groups/1
  # GET /esol_groups/1.json
  def show
    @esol_group = EsolGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @esol_group }
    end
  end

  # GET /esol_groups/new
  # GET /esol_groups/new.json
  def new
    @esol_group = EsolGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @esol_group }
    end
  end

  # GET /esol_groups/1/edit
  def edit
    @esol_group = EsolGroup.find(params[:id])
  end

  # POST /esol_groups
  # POST /esol_groups.json
  def create
    @esol_group = EsolGroup.new(params[:esol_group])

    respond_to do |format|
      if @esol_group.save
        format.html { redirect_to @esol_group, notice: 'Esol group was successfully created.' }
        format.json { render json: @esol_group, status: :created, location: @esol_group }
      else
        format.html { render action: "new" }
        format.json { render json: @esol_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /esol_groups/1
  # PUT /esol_groups/1.json
  def update
    @esol_group = EsolGroup.find(params[:id])

    respond_to do |format|
      if @esol_group.update_attributes(params[:esol_group])
        format.html { redirect_to @esol_group, notice: 'Esol group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @esol_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /esol_groups/1
  # DELETE /esol_groups/1.json
  def destroy
    @esol_group = EsolGroup.find(params[:id])
    @esol_group.destroy

    respond_to do |format|
      format.html { redirect_to esol_groups_url }
      format.json { head :no_content }
    end
  end
end
