require_relative 'appointment'
class OneTimeAppointment < Appointment
  attr_reader :day, :month, :year
  def initialize(location, purpose, hour, min, day, month, year)
    @day = day
    @month = month
    @year = year
    super(location, purpose, hour, min)
  end

  def occurs_on?(day, month, year)
    @day == day and @month == month and @year == year
  end

  def to_s
    "Reunión diaria en #{location} sobre #{purpose} a la(s) #{hour}:#{min}."
  end
end
