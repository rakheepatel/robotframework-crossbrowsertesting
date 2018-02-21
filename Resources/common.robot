*** Settings ***
Documentation  Keywords common to the test suite
Library  Selenium2Library
Library  RequestsLibrary

*** Variables ***
${CBT_U}  #Enter your crossbrowsertesting username here
${CBT_KEY}  #Enter your crossbrowsertesting key here
${CBT_URL}  http://crossbrowsertesting.github.io/login-form.html
${CBT_HUB}  http://hub.crossbrowsertesting.com:80/wd/hub
${test_name}  CBT_Smoke_Test
${BROWSER}  chrome

*** Keywords ***
Open cbt
    open browser  ${CBT_URL}
    ...  remote_url=http://${CBT_U}:${CBT_KEY}@hub.crossbrowsertesting.com:80/wd/hub
    ...  desired_capabilities=browserName:${BROWSER},version:latest,platform:Sierra,record_video:true,name:${test_name},record_snapshot:true,screen_resolution:1280x1024

Close cbt
    Close all browsers

Run CBT test
    input text  id=username  tester@crossbrowsertesting.com
    input text  id=password  test123
    click button  Login
    wait until page contains  Welcome tester@crossbrowsertesting.com