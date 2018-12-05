require 'selenium-webdriver'

class SeleniumQAToolsForm

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @practice_form_url = 'http://toolsqa.com/automation-practice-form/'
    @first_name_field_name = 'firstname'
    @last_name_field_name = 'lastname'
    @gender_male_field_name = 'sex-0'
    @gender_female_field_name = 'sex-1'
    @years_of_experince_0 = 'exp-0'
    @date_field = 'datepicker'
    @profession_manual_tester = 'profession-0'
    @profession_automated_tester = 'profession-1'
    @automation_tool_QTP = 'tool-0'
    @automation_tool_seleniumIDE = 'tool-1'
    @automation_tool_senenium_webdriver = 'tool-2'
    @dropdown_continents = 'continents'
    @dropdown_commands = 'selenium_commands'
  end

  def visit_practice_form
    @chrome_driver.get(@practice_form_url)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, @first_name_field_name).send_keys(text)
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, @last_name_field_name).send_keys(text)
  end

  def input_gender_male_field
    @chrome_driver.find_element(:id, @gender_male_field_name).click
  end

  def input_gender_female_field
    @chrome_driver.find_element(:id, @gender_female_field_name).click
  end

  def input_years_of_experience_0
    @chrome_driver.find_element(:id, @years_of_experince_0).click
  end

  def input_date(text)
    @chrome_driver.find_element(:id, @date_field).send_keys(text)
  end

  def input_profession_manual_tester
    @chrome_driver.find_element(:id, @profession_manual_tester).click
  end

  def input_profession_automated_tester
    @chrome_driver.find_element(:id, @profession_automated_tester).click
  end

  def input_automation_tool_QTP
    @chrome_driver.find_element(:id, @automation_tool_QTP).click
  end

  def input_automation_tool_seleniumIDE
    @chrome_driver.find_element(:id, @automation_tool_seleniumIDE).click
  end

  def input_automation_tool_webdriver
    @chrome_driver.find_element(:id, @automation_tool_senenium_webdriver).click
  end

  def input_continent
    dropDownMenu = @chrome_driver.find_element(:id, @dropdown_continents)
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:text, 'Europe')
  end

  def input_selenium_commands
    dropDown = @chrome_driver.find_element(:id, @dropdown_commands)
    option = Selenium::WebDriver::Support::Select.new(dropDown)
    option.select_by(:text, 'Navigation Commands')
  end
end

test = SeleniumQAToolsForm.new
test.visit_practice_form
test.input_firstname_field('Abinu')
test.input_lastname_field('Sivabalan')
test.input_gender_male_field
test.input_gender_female_field
test.input_years_of_experience_0
test.input_date('10-12-2016')
test.input_profession_manual_tester
test.input_profession_automated_tester
test.input_automation_tool_QTP
test.input_automation_tool_seleniumIDE
test.input_automation_tool_webdriver
test.input_continent
test.input_selenium_commands
sleep 5
