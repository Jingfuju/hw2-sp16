class PagesController < ApplicationController
  def home
    foo = Foobar.new "baz"
    @baz = foo.bar :cat, sat: :dat, dat: :sat
  end

  def stringify
    if (params[:name].blank? || params[:adjective].blank?)
      @text = "You are nothing!"
    else
      @text= params[:name] + " is so " + params[:adjective]
    end
  end

  def age
  end

  def person
    people = Person.new params[:name], params[:age]
    @name = people.nickname
    @birth = people.birth_year
  end
  
  def me
  end
  
  
end


class Person
  def initialize (name, age)
    @name = name
    @age = age
    @nickname = name[0...4]
  end
  
  def nickname
    return @nickname
  end
  
  def birth_year
    return 2016-@age.to_i
  end

end

    

class Foobar
  attr_accessor :sat, :dat
  def initialize(arg)
    @arg=arg
  end
  
  def bar(n1,n2)
    return n1.to_s+ @arg+n2[n2.first[0]].to_s
  
  end

end
  
