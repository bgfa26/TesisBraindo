function lengthValidationAlert(evt, val, field) {
      
    /*PSYCHOLOGIST AND PATIENT MODULE*/
    var strPass = "pass";
    var strName = "name";
    var strSurname = "surname";
    var strRegistration = "registration";

    var n = field.localeCompare(strPass);
    var n2 = field.localeCompare(strName);
    var n3 = field.localeCompare(strSurname);
    var n4 = field.localeCompare(strRegistration);

    if ((n == 0) && (val.length >= 8)) {
        evt.preventDefault();
        alert('Máximo 8 caracteres');
        return false;
    }
    else if ((n2 == 0) && (val.length >= 10)) {
        evt.preventDefault();
        alert('Máximo 10 caracteres');
        return false;
    }
    else if ((n3 == 0) && (val.length >= 10)) {
        evt.preventDefault();
        alert('Máximo 10 caracteres');
        return false;
    }
    else if ((n4 == 0) && (val.length >= 15)) {
        evt.preventDefault();
        alert('Máximo 15 caracteres');
        return false;
    }
    


    /*MENTAL EXAMN AND MEDICAL APPOINTMENT MODULE*/
    //MENTAL EXAM
    var strMentalExam = "mentalExam";
    var strMedicalApp = "medicalAppointment";

    var n5 = field.localeCompare(strMentalExam);
    var n6 = field.localeCompare(strMedicalApp);

    if ((n5 == 0) && (val.length >= 699)) {
        evt.preventDefault();
        alert('Excediste el tamaño asignado');
        return false;
    }

    if ((n6 == 0) && (val.length >= 199)) {
        evt.preventDefault();
        alert('Excediste el tamaño asignado');
        return false;
    }

}