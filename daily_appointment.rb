require_relative 'appointment'
class DailyAppointment < Appointment

  def occurs_on?(hour, min)
    @hour == hour and @min == min
  end

  def to_s
    "Reunión diaria en #{location} sobre #{purpose} a la(s) #{hour}:#{min}."
  end
end