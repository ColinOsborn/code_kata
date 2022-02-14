require_relative 'phone_number'

RSpec.describe 'phone number' do
  describe 'basic tests' do
    it "should pass fixed tests" do
      expect(PhoneNumber.create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])).to be("(123) 456-7890")
      assert_equals PhoneNumber.create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), "(123) 456-7890"
      assert_equals PhoneNumber.create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]), "(111) 111-1111"
      assert_equals PhoneNumber.create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), "(123) 456-7890"\
    end
  end

  describe 'random tests' do
    it "should pass random tests" do

      def sol(a)
        "(#{a[0...3].join}) #{a[3...6].join}-#{a[6...10].join}"
      end

      100.times do
        a = (1..10).collect do rand(10) end
        assert_equals PhoneNumber.create_phone_number(a.dup), sol(a)
      end
    end
  end
end
