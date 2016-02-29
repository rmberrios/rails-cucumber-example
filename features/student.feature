Feature: Create a new student
    In order to keep a register for student
    A User
    Should create a new student
 
    Scenario: Create a new student
        Given I am on the new student page
        And I fill in "student name" with "Rommel"
        And I fill in "student lastname" with "Berrios"
        And I fill in "student telephone" with "86849684"
        
        When I press "Crear Estudiante"
        Then page should have notice message "El estudiante ha sido creado"
