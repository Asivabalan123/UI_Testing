require 'selenium-webdriver'

class SeleniumQAToolsForm

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @practice_form_url = 'http://toolsqa.com/automation-practice-form/'
    @first_name_field_name = 'firstname'
    @last_name_field_name = 'lastname'
    @gender_male_field_name = 'sex-0'
    @gender_female_field_name = 'sex-1'
    @years_of_experience_1 = 'exp-0'
    @date_field = 'datepicker'
    @profession_manual_tester = 'profession-0'
    @profession_automated_tester = 'profession-1'
    @automation_tool_QTP = 'tool-0'
    @automation_tool_seleniumIDE = 'tool-1'
    @automation_tool_senenium_webdriver = 'tool-2'
    @dropdown_continents = 'continents'
    @dropdown_commands = 'selenium_commands'
    @button = 'submit'
  end

  def visit_practice_form
    @chrome_driver.get(@practice_form_url)
  end

  def current_url
    @chrome_driver.current_url
  end

  def get_practice_form
    @chrome_driver.current_url
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, @first_name_field_name).send_keys(text)
  end

  def get_first_name_field
    @chrome_driver.find_element(:name, @first_name_field_name).attribute('value')
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, @last_name_field_name).send_keys(text)
  end

  def get_last_name_field
    @chrome_driver.find_element(:name, @last_name_field_name).attribute('value')
  end

  def input_gender_male_field
    @chrome_driver.find_element(:id, @gender_male_field_name).click
  end

  def get_gender_male_field
    @chrome_driver.find_element(:id, @gender_male_field_name).selected?
  end

  def input_gender_female_field
    @chrome_driver.find_element(:id, @gender_female_field_name).click
  end

  def get_gender_female_field
    @chrome_driver.find_element(:id, @gender_female_field_name).selected?
  end

  def input_years_of_experience_1
    @chrome_driver.find_element(:id, @years_of_experience_1).click
  end

  def get_years_of_experience_1
    @chrome_driver.find_element(:id, @years_of_experience_1).selected?
  end

  def input_date(text)
    @chrome_driver.find_element(:id, @date_field).send_keys(text)
  end

  def get_date
    @chrome_driver.find_element(:id, @date_field).attribute('value')
  end

  def input_profession_manual_tester
    @chrome_driver.find_element(:id, @profession_manual_tester).click
  end

  def get_profession_manual_tester
    @chrome_driver.find_element(:id, @profession_manual_tester).selected?
  end

  def input_profession_automated_tester
    @chrome_driver.find_element(:id, @profession_automated_tester).click
  end

  def get_profession_automated_tester
    @chrome_driver.find_element(:id, @profession_automated_tester).selected?
  end

  def input_automation_tool_QTP
    @chrome_driver.find_element(:id, @automation_tool_QTP).click
  end

  def get_automation_tool_QTP
    @chrome_driver.find_element(:id, @automation_tool_QTP).selected?
  end

  def input_automation_tool_seleniumIDE
    @chrome_driver.find_element(:id, @automation_tool_seleniumIDE).click
  end

  def get_automation_tool_seleniumIDE
    @chrome_driver.find_element(:id, @automation_tool_seleniumIDE).selected?
  end

  def input_automation_tool_webdriver
    @chrome_driver.find_element(:id, @automation_tool_senenium_webdriver).click
  end

  def get_automation_tool_webdriver
    @chrome_driver.find_element(:id, @automation_tool_senenium_webdriver).selected?
  end

  def input_continent
    dropDownMenu = @chrome_driver.find_element(:id, @dropdown_continents)
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:text, 'Europe')
  end

  def get_continent
    dropDownMenu = @chrome_driver.find_element(:id, @dropdown_continents).text.include?('Europe')
  end

  def input_selenium_commands
    dropDown = @chrome_driver.find_element(:id, @dropdown_commands)
    option = Selenium::WebDriver::Support::Select.new(dropDown)
    option.select_by(:text, 'Navigation Commands')
  end

  def get_selenium_commands
    dropDown = @chrome_driver.find_element(:id, @dropdown_commands).text.include?('Navigation Commands')
  end

  # def input_submit_button
  #   @chrome_driver.find_element(:id, @button).click
  # end

end
