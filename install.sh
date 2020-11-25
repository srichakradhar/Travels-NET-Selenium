cd SeleniumTestAutomation
rm -rf bin
dotnet build
cd bin
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
wget https://chromedriver.storage.googleapis.com/86.0.4240.22/chromedriver_linux64.zip
unzip chromedriver_linux64.zip 
rm -rf chromedriver_linux64.zip 
cd ../..
cd CucumberSetup
cd web
python3 -u -m http.server 8000 > logs 2>&1 &