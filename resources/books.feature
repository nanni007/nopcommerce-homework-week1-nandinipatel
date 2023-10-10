Feature:Book category

  Background: Should be able to see homepage
    Given I enter URL "https:demo//nopcommerce.com/?" in browser
    And I am on homepage

  Scenario Outline: I should be able to see top menu tabs on homepage with credentials
    When I am on homepage
    Then I should be able to see top menu tabs with "<categories>"
    Examples:
      | categories        |
      | Computer          |
      | Electronic        |
      | Apparel           |
      | Digital downlaods |
      | Books             |
      | Jewellery         |
      | Gift card         |

  Scenario Outline: I should be able to see book page with filters
    When I select book category from to menu tabs on home page
    Then I should be navigated to book category
    And I should be able to see filters "<filters>"
    Examples:
      | filters |
      | Sort by |
      | Display |
      | Grid    |
      | List    |

  Scenario Outline: I should be able to see list of terms of each filter
    Given I am on Book page
    When I click on "<filter>"
    Then I should be able to "<list>" in dropdown menu
    Examples:
      | filter  | list                                                                           |
      | sort by | Name: A to Z, Name: Z to A, Price: Low to High, Price: High to Low, Created on |
      | display | 3, 6, 9                                                                        |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given I am on book page
    When I click on "<filter>"
    And I click on any "<option>"
    Then I should be able to choose any filters option from the list
    And I should be able to see "<result>"
    Examples:
      | filter  | option             | result                                           |
      | sort by | Name: A to Z       | sorted product name in alphabetical order A to Z |
      | sort by | Name: Z to A       | sorted product name in alphabetical order Z to A |
      | sort by | Price: Low to High | sorted product with price in descending order    |
      | sort by | Price: High to Low | sort product with price in ascending order       |
      | display | 3                  | 3 products in a page                             |
      | display | 6                  | 6 products in a page                             |
      | display | 9                  | 9 products in a page                             |

  Scenario Outline: I should be able to see product display format according to display format type as per given picture in the srs document
    Given I am on book page
    When I click on "<display format icon>"
    Then I should be able to see product display format according to display format type as per given picture in SRS document
    Examples:
      | display format icon |
      | Grid                |
      | List                |


