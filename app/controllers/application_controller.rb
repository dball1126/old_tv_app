class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def hello
    render html: "hello, world"
  end
  
  def check_for_mobile
    prepare_for_mobile if mobile_device?
  end
  
  def prepare_for_mobile
    prepend_view_path Rails.root + 'app' + 'views_mobile'
    #prepend_view_path "app/views_mobile" if mobile_device?
  end
  
  def mobile_device?
    if (request.user_agent =~ /Mobile|webOS/)
      return true
    else
      return false
    end
  end
  
  helper_method :mobile_device?
end
