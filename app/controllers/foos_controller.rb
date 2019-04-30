class FoosController < ApplicationController
  def index
    @foos = mock_foos
    render 'foos/index'
  end

  def mock_foos
    (0..5).map(&:mock_foo)
  end

  def mock_foo
    OpenStruct.new(id: 1, name: 'foo!')
  end
end
