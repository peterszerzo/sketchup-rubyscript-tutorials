Feature: working with vectors
  As a user
  I want to perform vector operations
  So I can work with vectors easily
  
  Scenario: scale example
    Given the vector is 3 4 0
    When I scale by 2
    Then the vector should be 6 8 0
    
  Scenario: length example
  	Given the vector is 5 0 12
  	Then its length should be 13  
    
  Scenario: normalize example
    Given the vector is 3 4 0
    When I normalize
    Then the vector should be 0.6 0.8 0 
    
  Scenario: normalize edge case - zero length
    Given the vector is 0 0 0
    When I normalize
    Then the vector should be 0 0 0  
    
  Scenario: dot product
    Given the vector is 0 1 2
    And the other vector is 1 2 3
    Then their dot product should be 8
    
  Scenario: cross product
    Given the vector is 0 1 2
    And the other vector is 1 2 3
    Then their cross product should be -1 2 -1
    
  Scenario: perpendicular
    Given the vector is 1 2 0
    And the other vector is -2 1 0
    Then they should be perpendicular