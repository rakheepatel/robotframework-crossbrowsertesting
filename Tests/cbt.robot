*** Settings ***
Documentation  Sample test to demonstrate how to use Crossbrowsertesting with Robot Framework
Resource  ../Resources/common.robot
Suite Setup  Open cbt
Suite Teardown  Close cbt
# robot -d Results Tests/cbt.robot  #Copy and paste this command into the terminal to run your test

*** Test Cases ***
Unimaginative test name
    Run CBT test