Welcome to your mood monitor! This repository is the back-end. The front end can be found here: https://github.com/jillbowen/mood_monitor_frontend

This app allows you to monitor your mood daily or throughout the day.

To install: -clone this repository: git clone git@github.com:jillbowen/mood-monitor-backend.git -cd mood-monitor-backend

Be sure to check your Ruby version (ruby -v this project uses ruby '2.6.1', use rbenv to get to the correct version)

Also be sure you have bundle dependencies installed.

Initialize the database: -rails db:create -rails db:migrate

Seed some data if you want to see examples of how your mood check-ins will look on the frontend: -rails db:seed

Start the server: rails s

And then head over to the front end: https://github.com/jillbowen/mood_monitor_frontend

Enjoy! 