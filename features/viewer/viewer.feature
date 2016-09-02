Feature: Viewer features

Scenario: Query with a single vocabulary term
  Given I have published quality statements annotated with vocabulary term 1
  And I have published a quality statement annotated with vocabulary term 2
  When I visit the viewer homepage
  And I select this single vocabulary term from the filters
  And I perform a search
  Then I should see the quality statements that are annotated with that single term

Scenario: Query using multiple terms from one vocabulary
  Given I have published quality statements annotated with vocabulary term 1
  And I have published a quality statement annotated with vocabulary term 2
  When I visit the viewer homepage
  And I select multiple vocabulary terms from the filters
  And I perform a search
  Then I should see the quality statements that are annotated with the multiple terms selected

Scenario: Query the knowledge-base with a combination of terms across different vocabularies
  Given I have published quality statements annotated with multiple vocabulary terms
  When I visit the viewer homepage
  And I select multiple vocabulary terms from the filters across different vocabularies
  And I perform a search
  Then I should see the quality statements that are annotated with the cross vocabulary terms selected

Scenario: Viewer homepage should display total KB Quality statement count
  Given I have published some Quality Statements
  When I visit the viewer homepage
  Then I should see a total count of published Quality statements

Scenario: Viewer homepage should display results ordered by Standard number then Statement number
  Given I have published some Quality Statements with different Standard and Statement numbers
  When I visit the viewer homepage
  And I select this single vocabulary term from the filters
  And I perform a search
  Then I should see the results ordered by Standard number then Statement number
