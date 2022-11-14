class Appointment < ActiveRecord::Base
    attr_accessor :specialist, :patient_name
    belongs_to :doctor
    belongs_to :patient

#     # Here I've made the initialize method for the Appointment class responsible for making associations between the patient and doctor every time an appointment is created.
    
#     def initialize(specialist:, patient_name:) 
#         super
#         appointment_doctor = Doctor.find_by(doctor_name: specialist)
#         appointment_doctor.appointments << self

#         appointment_patient = Patient.find_or_create_by(patient_name: patient_name)
#         appointment_patient.appointments << self
#     end
end