# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize( user )
    user ||= User.new

    if user.role == 'admin'
      can :manage, :all
    else
      can [:read, :create], :all
      can [:update, :destroy], Post, :author_id => user.id
      can [:update, :destroy], Comment, :author_id => user.id
      
    end
  end
end


