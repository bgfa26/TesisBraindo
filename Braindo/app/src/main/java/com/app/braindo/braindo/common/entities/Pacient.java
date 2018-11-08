package com.app.braindo.braindo.common.entities;
import com.google.gson.annotations.SerializedName;

public class Pacient {
    @SerializedName("_id")
    private String _id;
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
    @SerializedName("_addressString")
    private String _addressString;

    public Pacient(){}

    public Pacient(String id, String firstname, String lastname){
        _id = id;
        _firstname = firstname;
        _lastname = lastname;
    }

    public Pacient(String id, String firstname, String lastname, int age, String career){
        _id = id;
        _firstname = firstname;
        _lastname = lastname;
        _age = age;
        _career = career;
    }

    public Pacient(String id, String firstname, String lastname, int age, String career, int addressInt){
        _id = id;
        _firstname = firstname;
        _lastname = lastname;
        _age = age;
        _career = career;
        _addressInt = addressInt;
    }

    public Pacient(String id, String firstname, String lastname, int age, String career, String addressString){
        _id = id;
        _firstname = firstname;
        _lastname = lastname;
        _age = age;
        _career = career;
        _addressString = addressString;
    }

    public Pacient(String id, String firstname, String lastname, int age, String career, int addressInt, String addressString){
        _id = id;
        _firstname = firstname;
        _lastname = lastname;
        _age = age;
        _career = career;
        _addressInt = addressInt;
        _addressString = addressString;
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

    public String get_addressString() {
        return _addressString;
    }

    public void set_addressString(String _addressString) {
        this._addressString = _addressString;
    }
}
