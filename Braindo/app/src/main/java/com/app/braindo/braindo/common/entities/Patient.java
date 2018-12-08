package com.app.braindo.braindo.common.entities;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

public class Patient implements Serializable {
    @SerializedName("_id")
    private int _id;
    @SerializedName("_firstname")
    private String _firstname;
    @SerializedName("_lastname")
    private String _lastname;
    @SerializedName("_age")
    private int _age;
    @SerializedName("_career")
    private String _career;
    @SerializedName("_addressInt")
    private int _addressInt;
    @SerializedName("_state")
    private String _state;
    @SerializedName("_municipality")
    private String _municipality;
    @SerializedName("_parish")
    private String _parish;
    @SerializedName("_email")
    private String _email;
    @SerializedName("_error")
    private int _error;

    public Patient(){}

    public Patient(int id, String firstname, String lastname){
        _id = id;
        _firstname = firstname;
        _lastname = lastname;
    }

    public Patient(int id, String email){
        _id = id;
        _email = email;
    }
    public Patient(int id, String firstname, String lastname, int age, String career){
        _id = id;
        _firstname = firstname;
        _lastname = lastname;
        _age = age;
        _career = career;
    }

    public Patient(int id, String firstname, String lastname, int age, String career, int addressInt, String email){
        _id = id;
        _firstname = firstname;
        _lastname = lastname;
        _age = age;
        _career = career;
        _addressInt = addressInt;
        _email = email;
    }

    public Patient(int id, String firstname, String lastname, int age, String career, String state, String municipality, String parish, String email){
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


    public int get_id() {
        return _id;
    }

    public void set_id(int _id) {
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

    public int get_age() {
        return _age;
    }

    public void set_age(int _age) {
        this._age = _age;
    }

    public String get_career() {
        return _career;
    }

    public void set_career(String _career) {
        this._career = _career;
    }

    public int get_addressInt() {
        return _addressInt;
    }

    public void set_addressInt(int _addressInt) {
        this._addressInt = _addressInt;
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
