class HomeController < ApplicationController
  before_action { ActiveStorage::Current.url_options = Rails.application.config.action_controller.
  default_url_options }

  def index
  end

  def register
  end

  def form
    @form = TblRegistration.new(form_params)
    if params[:file].present?
      uploaded_file = params[:file]
      @form.file = uploaded_file
    end
  
    if @form.save
      redirect_to "/home"
    else
      render :new
    end
  end  
  
  def form_params
    params.permit(:position, :firstname, :lastname, :birthdate, :gender, :address, :email, :file)
  end  

  def admin_login
  end

  def admin
    @admin = Admin.find_by(username: params["admin"], password_digest: params["pass"])
    if @admin 
      redirect_to "/admin_dashboard"
    else 
      redirect_to "/admin_login"
    end
  end       

  def admin_dashboard
  end

  def records
    @records = TblRegistration.all
  end
  
  def approve
    registration = TblRegistration.find(params[:id])
    approved = TblApproved.new(
      firstname: registration.firstname,
      lastname: registration.lastname,
      birthdate: registration.birthdate,
      gender: registration.gender,
      address: registration.address,
      email: registration.email,
      status: registration.status,
      file: registration.file.attached? ? registration.file.blob : nil,
      position: registration.position,
    )
    approved.save
    registration.destroy

    redirect_to "/records"
  end
  
  def reject
    @reject = TblRegistration.delete(params[:id])
    redirect_to "/records"
  end

  def approved
    @approved = TblApproved.all
  end

  def job
  end

  def create_job
    @job = TblJob.new(position: params["pos"], 
    description: params["des"], 
    work_hour: params["wh"], 
    salaray_per_hour: params["sph"],)
    @job.save
    redirect_to "/admin_dashboard"
  end

  def available_jobs
    @jobs = TblJob.all
  end

  def myjobs
    @myjobs = TblJob.all
  end

  def delete
    @reject = TblApproved.delete(params[:id])
    redirect_to "/approved"
  end
end


