require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/member')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestMember < MiniTest::Test


  def setup()

  end
end
