# frozen_string_literal: true

it 'can show it is working' do
  # set up
  bike = Bike.new

  # excute
  result = bike.working?

  # verify
  assert_equals(result, true)
end

it 'can be reported as broken' do
  # set up
  bike = Bike.new
  bike.report

  # excute
  result = bike.working?

  # verify
  assert_equals(result, false)
end

it 'can be reported as broken even if already broken' do
  # set up
  bike = Bike.new
  bike.report
  bike.report

  # excute
  result = bike.working?

  # verify
  assert_equals(result, false)
end
