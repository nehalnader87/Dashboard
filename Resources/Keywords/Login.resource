*** Settings ***
Library     Browser  timeout=100   run_on_failure=Take Screenshot \ fail-screenshot-{index}

*** Keywords ***
Begin Test on Test server
    new browser      chromium    headless=false    timeout=100
    Set Browser Timeout        100
    #Set Browser Timeout   timeout=2m   scope=Global
    New Context   viewport={'width': 1280, 'height': 720}
    New Page   https://new-mowathiq-frontend.aks.thiqah.sa/

End Test on server
    close browser