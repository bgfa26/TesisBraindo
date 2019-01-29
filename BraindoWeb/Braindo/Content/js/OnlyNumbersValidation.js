function AllowNumbers(e) {
    isIE = document.all ? 1 : 0
    keyEntry = !isIE ? e.which : event.keyCode;
    if (((keyEntry >= '48') && (keyEntry <= '57')) || keyEntry == '8' || keyEntry == '32')
        return true;
    else {
        alert('Por favor, introduzca sólo numeros');
        return false;
    }
}