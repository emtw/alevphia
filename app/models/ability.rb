class Ability
  include CanCan::Ability

  def initialize(model)
    model ||= User.new # guest user
    
    cannot :myaccount, [User, Keyholder, Guest]
    
    if model.has_attribute?("user") && (model.user == true)        
      can :manage, User, :id => model.id
      can :myaccount, User, :id => model.id
      can [:create, :read, :update, :destroy], Keyholder do |key|
        key.user_id == model.id
      end
      can [:create, :read, :update, :destroy], Guest do |guest|
        guest.user_id == model.id
      end
      can :manage, Funeral, :user_id => model.id
      can :manage, Timeline, :user_id => model.id
      can :manage, Event do |event|
        event.timeline.user_id == model.id
      end
      
    end
    
    
    if model.has_attribute?("keyholder") && (model.keyholder == true)
      can :read, User, :id => model.user_id
      can :myaccount, Keyholder, :id => model.id
      can [:read, :update], Keyholder, :id => model.id
      can :read, Funeral do |funeral|
        funeral.user_id == model.user_id
      end
      can :read, Timeline do |timeline|
        timeline.user_id == model.user_id
      end
      can [:create, :read, :update, :destroy], Event do |event|
        event.timeline.user_id == model.user_id
      end
      
    end
    
    
    if model.has_attribute?("guest") && (model.guest == true)
      can :read, User, :id => model.user_id
      can :read, Guest, :id => model.id
      can :read, Funeral do |funeral|
        funeral.user_id == model.user_id
      end
      can :read, Timeline do |timeline|
        timeline.user_id == model.user_id
      end
      can [:create, :read], Event do |event|
        event.timeline.user_id == model.user_id
      end
      
    end
    
    can :create, User
    cannot :index, [User, Keyholder, Guest]
        
  end
  
end