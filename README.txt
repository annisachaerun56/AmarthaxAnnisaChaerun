#AUTOMATION SOUCEDEMO.COM ANNISA CHAERUNNISA
Software Automation Testing for using ruby and cucumber

  ```
 Setup Gem

  ```
    rvm use 2.6.3@web-test --create
    gem install bundler
    bundle install
  ```

 Run the Test

  ```
    cucumber -f pretty  BROWSER=chrome HEADLESS=no -t @about
  ```
