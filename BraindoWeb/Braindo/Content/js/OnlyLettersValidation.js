function AllowAlphabet(e) {
    isIE = document.all ? 1 : 0
    keyEntry = !isIE ? e.which : event.keyCode;
    if (((keyEntry >= '65') && (keyEntry <= '90')) || ((keyEntry >= '97') && (keyEntry <= '122')) || (keyEntry == '46') || (keyEntry == '32') || keyEntry == '45' || keyEntry == '8' || keyEntry == '32')
        return true;
    else {
        alert('Por favor, introduzca sólo letras');
        return false;
    }
}