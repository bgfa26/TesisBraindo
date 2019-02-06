/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package common.entities;

/**
 *
 * @author LuisAlejandro
 */
public class EncryptedPatient {
    private String _id;
    private String _firstname;
    private String _lastname;
    private String _age;
    private String _career;
    private String _addressString;
    private String _state;
    private String _municipality;
    private String _parish;
    private String _email;
    private int _error;

    public EncryptedPatient(){}

    public EncryptedPatient(String id, String firstname, String lastname){
        _id = id;
        _firstname = firstname;
        _lastname = lastname;
    }

    public EncryptedPatient(String id, String email){
        _id = id;
        _email = email;
    }
    public EncryptedPatient(String id, String firstname, String lastname, String age, String career){
        _id = id;
        _firstname = firstname;
        _lastname = lastname;
        _age = age;
        _career = career;
    }

    public EncryptedPatient(String id, String firstname, String lastname, String age, String career, String addressString, String email){
        _id = id;
        _firstname = firstname;
        _lastname = lastname;
        _age = age;
        _career = career;
        _addressString = addressString;
        _email = email;
    }

    public EncryptedPatient(String id, String firstname, String lastname, String age, String career, String state, String municipality, String parish, String email){
        _id = id;
        _firstname = firstname;
        _lastname = lastname;
        _age = age;
        _career = career;
        _state = state;
        _municipality = municipality;
        _parish = parish;
        _email = email;
    }


    public String get_id() {
        return _id;
    }

    public void set_id(String _id) {
        this._id = _id;
    }

    public String get_firstname() {
        return _firstname;
    }

    public void set_firstname(String _firstname) {
        this._firstname = _firstname;
    }

    public String get_lastname() {
        return _lastname;
    }

    public void set_lastname(String _lastname) {
        this._lastname = _lastname;
    }

    public String get_age() {
        return _age;
    }

    public void set_age(String _age) {
        this._age = _age;
    }

    public String get_career() {
        return _career;
    }

    public void set_career(String _career) {
        this._career = _career;
    }

    public String get_addressString() {
        return _addressString;
    }

    public void set_addressString(String _addressString) {
        this._addressString = _addressString;
    }

    public String get_state() {
        return _state;
    }

    public void set__state(String _state) {
        this._state = _state;
    }

    public String get_municipality() {
        return _municipality;
    }

    public void set_municipality(String _municipality) {
        this._municipality = _municipality;
    }

    public String get_parish() {
        return _parish;
    }

    public void set_parish(String _parish) {
        this._parish = _parish;
    }

    public String get_email() {
        return _email;
    }

    public void set_email(String _email) {
        this._email = _email;
    }

    public int get_error() {
        return _error;
    }

    public void set_error(int _error) {
        this._error = _error;
    }

}

