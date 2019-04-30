class FoosController < ApplicationController
  before_action :seed

  def index
    @foos = Foo.all
    render 'foos/index'
  end

  def seed
    return if Foo.any?

    5.times do |idx|
      Foo.create!(name: "foo nb. #{idx}")
    end
  end
end
