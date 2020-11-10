class PostPolicy < ApplicationPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    user.admin? 
  end

  def update?
    user.admin? 
  end

  def destroy?
    user.admin?
  end

  class Scope
    def resolve
      scope.all
    end
  end
end
