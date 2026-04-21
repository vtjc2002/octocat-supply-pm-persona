Feature: Easter theme mode
  As a user
  I want to be able to switch the UI theme to an "Easter" mode
  In addition to the existing Light and Dark modes
  So that I can personalize the app's appearance with a seasonal theme

  # ─── Enabling the Easter Theme ──────────────────────────────────────────────

  Scenario: Enable Easter theme from Light mode
    Given I am on the application in Light mode
    When I open the theme selector
    And I select the "Easter" theme option
    Then the application displays the Easter theme
    And the background uses Easter-themed pastel colors
    And the navigation bar reflects Easter theme styling
    And the theme preference is saved as "easter" in local storage

  Scenario: Enable Easter theme from Dark mode
    Given I am on the application in Dark mode
    When I open the theme selector
    And I select the "Easter" theme option
    Then the application switches from Dark mode to Easter mode
    And the dark background is replaced with Easter-themed pastel colors
    And the theme preference is saved as "easter" in local storage

  # ─── Verifying Visual Changes ────────────────────────────────────────────────

  Scenario: Easter theme applies correct visual styling across the UI
    Given the current theme is "easter"
    Then the page background displays Easter pastel colors
    And the navigation bar background reflects Easter theme styling
    And seasonal Easter decorations or icons are visible on the page
    And the footer reflects Easter theme styling
    And all body text remains legible against Easter theme backgrounds

  Scenario: Easter theme is applied consistently across multiple pages
    Given the current theme is "easter"
    When I navigate to the "Products" page
    Then the Products page displays Easter theme styling
    When I navigate to the "About" page
    Then the About page displays Easter theme styling
    When I navigate to the "Home" page
    Then the Home page displays Easter theme styling

  # ─── Switching Back to Dark or Light Mode ────────────────────────────────────

  Scenario: Switch from Easter mode back to Light mode
    Given the current theme is "easter"
    When I open the theme selector
    And I select the "Light" theme option
    Then the application switches to Light mode
    And all Easter-themed colors and decorations are removed
    And the theme preference is saved as "light" in local storage

  Scenario: Switch from Easter mode back to Dark mode
    Given the current theme is "easter"
    When I open the theme selector
    And I select the "Dark" theme option
    Then the application switches to Dark mode
    And all Easter-themed colors and decorations are removed
    And the theme preference is saved as "dark" in local storage

  # ─── Theme Persistence ───────────────────────────────────────────────────────

  Scenario: Easter theme persists after page refresh
    Given the current theme is "easter"
    When I refresh the page
    Then the application still displays the Easter theme
    And the theme preference in local storage is "easter"

  Scenario: Easter theme persists after navigating away and returning
    Given the current theme is "easter"
    When I navigate to the "Products" page
    And I navigate back to the "Home" page
    Then the application still displays the Easter theme

  # ─── Accessibility ───────────────────────────────────────────────────────────

  Scenario: Easter theme meets accessibility contrast requirements
    Given the current theme is "easter"
    Then all text elements have sufficient color contrast against the Easter background
    And all interactive elements such as buttons and links remain keyboard accessible
    And the theme toggle control has a visible focus indicator
    And the theme toggle aria-label identifies the current active theme
