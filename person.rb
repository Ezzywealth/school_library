class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(id, name = 'Unknown', age = 0, parent_permission: true)
    @id = id

    @name = name

    @age = age

    @parent_permission = parent_permission
  end

  def can_use_services?
    if is_of_age? || @parent_permission

      true

    else

      false

    end
  end

  private

  def of_age?
    @age >= 18
  end
end