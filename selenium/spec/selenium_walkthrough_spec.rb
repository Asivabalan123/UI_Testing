describe 'Testing the qa tools form using selenium' do

  before (:all) do
    @Tools_form = SeleniumQAToolsForm.new
    @Tools_form.visit_practice_form
    @generate = Generator.new
    @first_name = @generate.first_name
    @last_name = @generate.second_name
  end

  it 'returns URL' do
    expect(@Tools_form.current_url).to eq 'http://toolsqa.com/automation-practice-form/'
  end

  # it 'should accept firstname' do
  #   @Tools_form.input_firstname_field(@first_name)
  #   expect(@Tools_form.get_first_name_field).to eq @first_name
  #   sleep 5
  # end
  #
  # it 'should accept lastname' do
  #   @Tools_form.input_lastname_field(@last_name)
  #   expect(@Tools_form.get_last_name_field).to eq @last_name
  #   sleep 5
  # end
  #
  # it 'should accept gender as male' do
  #   @Tools_form.input_gender_male_field
  #   expect(@Tools_form.get_gender_male_field).to be true
  # end
  #
  # it 'should accept gender as female' do
  #   @Tools_form.input_gender_female_field
  #   expect(@Tools_form.get_gender_female_field).to be true
  #   sleep 5
  # end
  #
  # it 'should accept input years of experince as 1' do
  #   @Tools_form.input_years_of_experience_1
  #   expect(@Tools_form.get_years_of_experience_1).to be true
  # end
  #
  # it 'should accept todays date' do
  #   @Tools_form.input_date(Date.today)
  #   expect(@Tools_form.get_date).to eq Date.today.to_s
  # end

  it 'should return profession as manual tester' do
    @Tools_form.input_profession_manual_tester
    expect(@Tools_form.get_profession_manual_tester).to be true
    sleep 3
  end

  it 'should return profession as automated tester' do
    @Tools_form.input_profession_automated_tester
    expect(@Tools_form.get_profession_automated_tester).to be true
    sleep 3
  end

  it 'should return automation tool QTP' do
    @Tools_form.input_automation_tool_QTP
    expect(@Tools_form.get_automation_tool_QTP).to be true
    sleep 3
  end

  it 'should return automation tool seleniumIDE' do
    @Tools_form.input_automation_tool_seleniumIDE
    expect(@Tools_form.get_automation_tool_seleniumIDE).to be true
    sleep 3
  end

  it 'should return automation tool webdriver' do
    @Tools_form.input_automation_tool_webdriver
    expect(@Tools_form.get_automation_tool_webdriver).to be true
    sleep 3
  end

  it 'should return continent' do
    @Tools_form.input_continent
    expect(@Tools_form.get_continent).to be true
    sleep 3
  end

  it 'should return selenium commands' do
    @Tools_form.input_selenium_commands
    expect(@Tools_form.get_selenium_commands).to be true
    sleep 3
  end

  # it 'should submit form' do
  #   expect(@Tools_form.input_submit_button).to be true
  #   sleep 3
  # end

end
