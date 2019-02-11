function AllowAlphabet(e) {
    isIE = document.all ? 1 : 0
    keyEntry = !isIE ? e.which : event.keyCode;
    if (((keyEntry >= '65') && (keyEntry <= '90')) || ((keyEntry >= '96') && (keyEntry <= '123')) || (keyEntry == '8') || (keyEntry == '32'))
        return true;
    else {
        alert('Por favor, introduzca sólo letras');
        return false;
    }
}