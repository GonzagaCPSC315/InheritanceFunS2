//
//  main.swift
//  InheritanceFunS2
//
//  Created by Gina Sprint on 9/18/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import Foundation

print("Hello, World!")

// inheritance: is an OOP principle where you can specify a hierarchical
// relationship amongst classes
// sub class AKA child class AKA derived class
// super class AKA parent class AKA base class
// a sub class includes (inherits) the state and behavior
// from its super class
// in swift, structs do not support inheritance
// in swift, there is no univeral base class
// e.g. in java, there is Object
// use the super keyword when you want to access a super class' member
// use the override keyword when you want to override inherited
// state or behavior in a subclass

func employeeTester() {
    // Employee has three subclasses
    // Programmer
    //      perk: bus pass (Bool)
    //      salary: $20k on top of base
    //      raise: 3% salary increase
    // Lawyer
    //      perk: stock options (Int)
    //      salary: $30k on top of base
    //      raise: 10 more stock options
    // Accountant
    //      perk: parking allowance (Double)
    //      salary: base
    //      raise: $5k extra salary
    // an array of Employee references
    var employees: [Employee] = []
    // TODO: add some Programmers to the array
    employees.append(Programmer(name: "Spike the Bulldog", busPass: false))
    employees.append(Lawyer(name: "Kenny Dewitt", stockOptions: 10))
    employees.append(Lawyer(name: "Willie Makit", stockOptions: 100))
    employees.append(Accountant(name: "Hal E. Luya", parkingAllowance: 17.00))
    
    for emp in employees {
        // example of polymorphism
        // polymorphism: "same code, different behavior"
        // we have an array of Employee references
        // refer to actual Programmer, Lawyer, or Accountant objects
        // at runtime, we get a different method executing for emp.raise()
        // depends on the actual type that emp refers to
        // same code... emp.raise()
        // different behavior
        print(emp)
        emp.raise()
    }
    print("After raises...")
    for emp in employees {
        print(emp)
    }
}

employeeTester()

// there are a few more swift topics (later)
// guard let
// optional chaining and nil coalescing operator
// working with Errors
// closures 
