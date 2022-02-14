class PhoneNumber

  def self.create_phone_number(array)
    '(%d%d%d) %d%d%d-%d%d%d%d' % array
  end
end
