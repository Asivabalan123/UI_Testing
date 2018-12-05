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
    @years_of_experince_1 = 'exp-1'
    @years_of_experince_2 = 'exp-2'
    @years_of_experince_3 = 'exp-3'
    @years_of_experince_4 = 'exp-4'
    @years_of_experince_5 = 'exp-5'
    @years_of_experince_6 = 'exp-6'
    @years_of_experince_7 = 'exp-7'
    @date_field = 'datepicker'
    @profession_manual_tester = 'profession-0'
    @profession_automated_tester = 'profession-1'
    @download_selenium_framework =
    'http://toolsqa.wpengine.com/wp-content/uploads/2014/04/OnlineStore.zip'
    @download_test_file = 'http://20tvni1sjxyh352kld2lslvc.wpengine.netdna-cdn.com/wp-content/uploads/2016/09/Test-File-to-Download.xlsx'
    @automation_tool_QTP = 'tool-0'
    @automation_tool_seleniumIDE = 'tool-1'
    @automation_tool_senenium_webdriver = 'tool-2'
    @dropdown_continents = 'continents'


  end

  def visit_practice_form
    @chrome_driver.get(@practice_form_url)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, @first_name_field_name).send_keys(text)
  end

  def input_lastname_field(text)

end

test = SeleniumQAToolsForm.new
test.visit_practice_form
test.input_firstname_field('Richard')
sleep 5
