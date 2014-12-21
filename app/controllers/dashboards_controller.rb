require 'csv'
class DashboardsController < ApplicationController
 
  def index
    
  end
  
  def upload
    
  end
  
  def show
    @lawyer = Lawyer.find(params[:id])
    @services = LawyerService.where("lawyer_code = '#{@lawyer.lawyer_code}'").order(:service_name)
  end
  
  def search
    @lawyers = Lawyer.where("city = '#{params[:location]}'").order(:lawyer_name)
  end

  def upload_lawyer
    if request.post?
      CSV.parse(params[:file].read, :headers => true) do |row|
        #row = row[0].to_s.split("\t").collect(&:strip)
        Lawyer.create({
            lawyer_name: row[1],
            lawyer_code: row[0],
            city: row[3],
            rating: row[4],
            years_of_experiance: row[2],
          })
      end
    end
    flash[:success] = "Uploaded successfully"
    redirect_to root_path
  end
  
  def upload_service
    if request.post?
      CSV.parse(params[:file].read, :headers => true) do |row|
        #row = row[0].to_s.split("\t").collect(&:strip)
        LawyerService.create({
            service_name: row[2],
            lawyer_code: row[0],
            service_code: row[1],
            price: row[3]
          })
      end
    end
    flash[:success] = "Uploaded successfully"
    redirect_to root_path
  end
end
