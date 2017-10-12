require_relative 'patient'

new_patient = Patient.new("Adam", "White")
puts new_patient.first_name
puts new_patient.last_name

# how to deal with the errors: begin / the line in error / rescue / error message / end# 
begin
puts patient_contact_info
rescue
    puts "ERROR - patient does not contain any contact info"
end 

begin
puts new_patient.patient_status(:coma)
rescue 
    puts "ERROR - patient status is not a string!"
end 

begin
puts new_patient.patient_currently_admitted?
rescue 
    puts "ERROR - Patient Currently Admitted? UNKNOWN"
end

begin 
puts new_patient.patient_new_total(125)
rescue 
    puts "ERROR - calculation error"
end

begin 
    puts new_patient.add_med_to_list("lipitor", 123.12)
rescue 
    puts "ERROR - not an integer"
end
    
begin 
    new_patient.patient_medications_list
    rescue 
        puts "ERROR - medications list is not valid"
    end
    


