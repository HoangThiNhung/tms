class Instructor::CoursesController < Instructor::BaseController
  
  def index
    @courses = @courses.page(params[:page]).per 2
  end
  
  def show
  end

  def new
  end

  def create
    @course.user_id = current_user.id
    if @course.save
      @course_detail = CourseDetail.create(user_id: current_user.id,
        course_id: @course.id)
      flash[:success] = t "course.flash.create_success"
      redirect_to instructor_course_path @course
    else
      flash[:danger] = t "course.flash.create_failed"
      render :new
    end
  end

  def update
    if @course.update_attributes course_params
      flash[:success] = t "course.flash.update_success"
      redirect_to instructor_course_path @course
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    flash[:success] = t "course.flash.delete_success"
    redirect_to instructor_courses_path
  end

  private
  def course_params
    params.require(:course).permit :user_id, :name
  end
end
