require 'rails_helper'

RSpec.describe FoosController, type: :controller do
  before { get :index, format: :json }

  let!(:seed) do
    5.times do |idx|
      Foo.create!(name: "foo nb. #{idx}")
    end
  end

  describe '#index' do
    render_views
    it { expect(JSON.parse(response.body)['foos'].count).to eq(5) }
    it { expect(JSON.parse(response.body)['foos']).not_to be_empty }
  end
end
