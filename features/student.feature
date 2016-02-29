Feature: Create a new student
    In order to keep a register for student
    A User
    Should create a new student
 
    Scenario: Create a new student
        Given I am on the new student page
        And I fill in "student name" with <student_name>
        And I fill in "student lastname" with <student_lastname>
        And I fill in "student telephone" with <student_telephone>
        
        When I press "Crear Estudiante"
        Then page should have notice message "El estudiante ha sido creado"

        Examples:
          | student_name | student_lastname | student_telephone |
          |  "Rommel"    |  "Berrios"       |  "88888888"       |
          |  "Claudia"   |  "Reyes"         |  "99999999"       |