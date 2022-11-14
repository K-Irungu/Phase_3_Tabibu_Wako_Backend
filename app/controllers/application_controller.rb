class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
    
  get "/doctors" do
    doctors = Doctor.all
    doctors.to_json(include: :appointments)
  end

  get "/doctors/:id" do
    doctor = Doctor.find(params[:id])
    doctor.to_json(include: :appointments)
  end

  get "/patients" do
    patients = Patient.all
    patients.to_json(include: :appointments)
  end

  get "/patients/:id" do
    patient = Patient.find(params[:id])
    patient.to_json(include: :appointments)
  end

  #Last task is to ensure your appointments include both the doctor and the patient*******
  get "/appointments" do
    appointments = Appointment.all
    appointments.to_json(include: [:doctor, :patient])
  end

  get "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.to_json(include: [:doctor, :patient])
  end

  post "/appointments" do
    appointment = Appointment.create(specialist: params[:specialist], patient_name: params[:patient_name])
    appointment.to_json
  end

  patch "/appointments/:id" do
    #I'm passing in id, specialist, and patient_name
    appointment = Appointment.find(params[:id])

    updated_doctor_id = Doctor.find_by(doctor_name: params[:specialist]).id
    updated_patient_id = Patient.find_or_create_by(patient_name: params[:patient_name]).id
    
    # Updating the patient and doctor ids for a specific appointment automatically updates the relationships bewteen the instances
    appointment.update(patient_id: updated_patient_id, doctor_id: updated_doctor_id)
    appointment.to_json
  end

  delete "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.destroy
    appointment.to_json
  end

end
