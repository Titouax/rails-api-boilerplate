class CategoryPolicy < ApplicationPolicy
  attr_reader :user, :category

  def initialize(user, category)
    @user = user
    @category = category
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
