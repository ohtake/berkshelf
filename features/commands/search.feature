Feature: berks search
  Scenario: Searching for a cookbook by name
    * I successfully run `berks search berkshelf-cookbook-fixture`
    * the output should contain:
      """
      berkshelf-cookbook-fixture (1.0.0)
      """

  Scenario: Searching for a cookbook by partial name
    * I successfully run `berks search berkshelf-`
    * the output should contain:
      """
      berkshelf-api (1.0.0)
      berkshelf-api-server (2.0.0)
      berkshelf-cookbook-fixture (1.0.0)
      """
