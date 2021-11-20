# frozen_string_literal: true

require './lib/docking_station'
require './lib/bike'

describe 'bike' do
  it 'can show it is working' do
    # set up
    bike = Bike.new

    # excute & verify
    expect(bike.working?).to eq(true)
  end

  it 'can be reported as broken' do
    # set up
    bike = Bike.new
    bike.report

    # excute & verify
    expect(bike.working?).to eq(false)
  end

  it 'can be reported as broken even if already broken' do
    # set up
    bike = Bike.new
    bike.report
    bike.report

    # excute & verify
    expect(bike.working?).to eq(false)
  end
end
