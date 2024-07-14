class Doctor
@@all = []
   attr_accessor :name

def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        array = []
        appointments.each do |appointment|
            array << appointment.patient
        end
        array.uniq
    end


end