package com.example.somewebapp.service;

import java.util.List;

import com.example.somewebapp.domain.Person;

// Interfejs biznesowy/ logika biznesowa
public interface PersonManager {
	
	public void addPerson(Person p);
	public List<Person> getAllPersons();
	public void removePerson(Person p);
	public void listInterator();
	public void removePerson(int i);
	public void setPerson(int i, Person p);
	public Person getPerson(int i);
	//...
}
