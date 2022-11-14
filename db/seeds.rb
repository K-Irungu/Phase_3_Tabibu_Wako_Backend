puts "🌱 Seeding spices..."

d1 = Doctor.create(doctor_name: "Dr. Linda Wairimu", specialty: "Paediatrician")
d2 = Doctor.create(doctor_name: "Dr. Kimani Kamau", specialty: "Radiologist")
d3 = Doctor.create(doctor_name: "Dr. Olive Karmen", specialty: "Cardiologist")
d4 = Doctor.create(doctor_name: "Dr. Matthew Hayes", specialty: "Oncologist")
d5 = Doctor.create(doctor_name: "Dr. Kevin Irungu", specialty: "Paediatrician")

p1 = Patient.create(patient_name: "Ivan Nguyo")
p2 = Patient.create(patient_name: "Silvia Wachira")
p3 = Patient.create(patient_name: "Ronald Kubasu")
p4 = Patient.create(patient_name: "Ian Chege")
p5 = Patient.create(patient_name: "Leonard Patel")
p6 = Patient.create(patient_name: "Andrew Rono")
p7 = Patient.create(patient_name: "Peter Munyao")
p8 = Patient.create(patient_name: "Elton Lekashingo")
p9 = Patient.create(patient_name: "Francis Kipchoge")
p10 = Patient.create(patient_name: "Elijah Wandera")


# Seed your database here

puts "✅ Done seeding!"
