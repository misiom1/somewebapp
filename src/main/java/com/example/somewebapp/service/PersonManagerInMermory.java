package com.example.somewebapp.service;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.example.somewebapp.domain.Person;

public class PersonManagerInMermory implements PersonManager {
	
	private static List<Person> db = new ArrayList<Person>();

	@Override
	public void addPerson(Person p) {
		Person nP = new Person(p.getName(), p.getYob());
		db.add(nP);
	}

	public List<Person> getAllPersons() {
		return db;
	}
	@Override
	public void removePerson(Person p) {
		db.remove(p);
		
	}
	public void removePerson(int i) {
		db.remove(i);
		
	}

	@Override
	public void listInterator() {
		Iterator<Person> itr = db.iterator();

	}

	@Override
	public void setPerson(int i, Person p) {
		db.set(i,  p);
		
	}
	public Person getPerson(int i)
	{
		return db.get(i);
	}

}
