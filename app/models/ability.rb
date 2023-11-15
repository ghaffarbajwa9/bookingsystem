# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, Employee
      can :manage, Customer 
      can :manage, Appointment
    elsif user.accountant?
      can :manage, Customer 
      can :manage, Appointment
    end 
  end
end
