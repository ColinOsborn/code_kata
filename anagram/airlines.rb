require 'minitest/autorun'

# Objective: Create a simple airline booking system.
#
# Assumptions
#
#  - The airline only has 5 flights (1 - 5)
#  - A plane only has 5 seats lettered (A - E)
#  - A confirmation number is the Flight Number + The customer seat (e.g. 1A, 2C, 5E)
#  - Seats are assigned automatically
#
# Step 1
#
# Add a method to request a booking (a request contains a flight number
# and a name)
#
# - If the booking is created, a confirmation should be returned
# - If the booking can not be created, a BookingSystemException should be raised


class BookingSystemException < StandardError
  
end

class BookingSystem
  def request_booking(flight_number, passenger)
    flights = [1, 2, 3, 4, 5]
    raise BookingSystemException unless flights.include?(flight_number)
    raise BookingSystemException if passenger == ''
    # make sure the flight exists
    
    # require a non empty string for passenger
    
    # is flight full?
    
    # seats available for flight [flight_number]
    
    # passenger assigning that to an actual flight
    
    # return confirmation number
    flights
    seats = %w[A B C D E]
    "#{flight_number}#{seats.shift}"
    
  end
end



#flight available: 1, 2 ,3, 4,
# Booking placed 



# Tests
describe BookingSystem do
  describe "making a reservation" do
    it 'can request a reservation' do
      system = BookingSystem.new()
      
      assert_equal system.request_booking(1, "Jane"), "1A"
      assert_equal system.request_booking(1, "John"), "1B"
      assert_equal system.request_booking(3, "Jane"), "3A"
      assert_equal system.request_booking(3, "John"), "3B"
    end
    
    it 'throws an error when invalid flight requested' do
      system = BookingSystem.new()
      
      assert_raises(BookingSystemException) { system.request_booking(0, "Jane") }
      assert_raises(BookingSystemException) { system.request_booking(6, "Jane") }
    end
    
    it 'throws an error when no passenger name is provided' do
      system = BookingSystem.new()
      
      assert_raises(BookingSystemException) { system.request_booking(1, "") }
    end
    
    it 'throws an error when a flight is full' do
      system = BookingSystem.new()
      
      assert_equal system.request_booking(1, "Jane"), "1A"
      assert_equal system.request_booking(1, "John"), "1B"
      assert_equal system.request_booking(1, "Andy"), "1C"
      assert_equal system.request_booking(1, "Angela"), "1D"
      assert_equal system.request_booking(1, "Kat"), "1E"
      
      assert_raises(BookingSystemException) do
        system.request_booking(1, "Tom") 
      end    
    end
  end
end