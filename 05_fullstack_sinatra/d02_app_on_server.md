## 5.2 HOW DO WE GET AN APP ON OUR SERVER?

1. We need a Git repository!
	- Use HTTPS
	- *Example*:  https://github.com/ga-chicago/wedding-rsvp.git
2. We also need a working database!
	- Opening PSQL
	- Copy / run migrations + hit enter
	- Exit with \q
3. Change into the directory
4. `bundle`
6. `nohup bundle exec rackup -p 80 --host 0.0.0.0`
