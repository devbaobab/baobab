class Ability
  include CanCan::Ability

  def initialize(user)
    # guest user
    user ||= User.new
    
    if user.role? :admin
      can :manage, :all
    else
      can :read, :all
      if user.role? :lecturer
        can :create, Course
        can :update, Course do |course|
          #course.try(:user) == user
          course.isAuthour(user)
        end
      end
      
      can :update, User do |u|
        user.id == u.id
      end
    end
    

      
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
