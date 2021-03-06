class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :access_user
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = "Access denied."
    if user_signed_in?
      redirect_to :controller => 'users', :id => current_user.id, :action => 'myaccount'
    elsif keyholder_signed_in?
      redirect_to :controller => 'keyholders', :id => current_keyholder.id, :action => 'myaccount'
    elsif guest_signed_in?
      redirect_to :controller => 'guests', :id => current_guest.id, :action => 'myaccount'
    else
    redirect_to root_url
    end
  end 
  
  def current_ability
    if current_user && current_user.user?
      @current_ability ||= Ability.new(current_user)
    elsif current_keyholder && current_keyholder.keyholder?
      @current_ability ||= Ability.new(current_keyholder)
    elsif current_guest && current_guest.guest?
      @current_ability ||= Ability.new(current_guest)
    else
      flash[:notice] = "Current Ability error"
    end
  end
  
  def access_user
    if user_signed_in?
      @access_user = current_user
    end
    if keyholder_signed_in?
      @access_user = current_keyholder.user
    end
    if guest_signed_in?
      @access_user = current_guest.user
    end
  end
  
  protected
  
  def after_sign_up_path_for(resource)
    url_for :controller => "/#{resource_name}s", :id => resource.id, :action => 'myaccount'
  end
  
  def after_sign_in_path_for(resource)
    url_for :controller => "/#{resource_name}s", :id => resource.id, :action => 'myaccount'
  end    
  
  def after_update_path_for(resource)
    url_for :controller => "/#{resource_name}s", :id => resource.id, :action => 'myaccount'
  end
  
  def authorize
    @user = User.find(params[:id])
      unless @user.id == @access_user.id
        redirect_to root_url, notice: "Please log in to view this account."
      end
  end
    
end
