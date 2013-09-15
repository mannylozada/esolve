class StudentsController < ApplicationController
  # GET /students
  # GET /students.json
  helper_method :sort_column, :sort_direction
  def index

    grade_id = params[:grade_id].blank? || params[:grade_id].nil? ? '' : params[:grade_id]
    esol_code = params[:esol_group_id].blank? || params[:esol_group_id].nil? ? '' : params[:esol_group_id]


    if !grade_id.blank?
      if !esol_code.blank?
        @students = Student.search(params[:search]).paginate(:per_page => 20, :page => params[:page], :conditions => { :grade_id => params[:grade_id], :esol_group_id => params[:esol_group_id] }).order(sort_column + " " + sort_direction)
      else
        @students = Student.search(params[:search]).paginate(:per_page => 20, :page => params[:page], :conditions => { :grade_id => params[:grade_id] }).order(sort_column + " " + sort_direction)
      end
    else
      if !esol_code.blank?
        @students = Student.search(params[:search]).paginate(:per_page => 20, :page => params[:page], :conditions => { :esol_group_id => params[:esol_group_id] }).order(sort_column + " " + sort_direction)
      else
        @students = Student.search(params[:search]).paginate(:per_page => 20, :page => params[:page]).order(sort_column + " " + sort_direction)
      end
    end

    @students

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render xml: @students }
      format.json { render json: @students }
      format.js #index.js.erb
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @student = Student.find(params[:id])
    @grades = Grade.all
    @languages = Language.all
    @esol_groups = EsolGroup.all

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render xml: @student }
      format.json { render json: @student }
    end
  end

  # GET /students/new
  # GET /students/new.json
  def new
    @student = Student.new
    @grades = Grade.all
    @languages = Language.all
    @esol_groups = EsolGroup.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @student }
    end
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
    @grades = Grade.all
    @languages = Language.all
    @esol_groups = EsolGroup.all
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(params[:student])

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render json: @student, status: :created, location: @student }
      else
        format.html { render action: "new" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /students/1
  # PUT /students/1.json
  def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end

  private

  def sort_column
    Student.column_names.include?(params[:sort]) ? params[:sort] : "lastname"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
