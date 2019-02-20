function AllowAlphabet(e) {
    isIE = document.all ? 1 : 0
    key = !isIE ? e.which : event.keyCode;
    if ((key != 32) && (key < 65) || (key > 90) && (key < 97) || (key > 122 && key != 241 && key != 209 && key != 225 && key != 233 && key != 237 && key != 243 && key != 250 && key != 193 && key != 201 && key != 205 && key != 211 && key != 218)) {
        alert('Por favor, introduzca sólo letras');
        return false;
    }
    else {
        return true;
    }
}