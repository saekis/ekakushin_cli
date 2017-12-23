## Description
`attendance` is CLI tool for automatically submitting daily attendance using selenium.

## Installation
```sh
# install chrome driver for selenium
$ brew install chromedriver

# set project
$ git clone https://github.com/saekis/attendance.git
$ cd attendance
$ bundle install

# set env file
$ cat << EOF> .env
ATTENDANCE_URL="xxxxxxx"
CUSTOMER_CODE="xxxxxxx"
USER_CODE="xxxxxxx"
PASSWORD="xxxxxxx"
EOF
```

## Requirement
- Ruby
- chromedriver

## Usage
### clock in
```
$ cd <your project path>
$ bundle exec ruby main.rb --in
```

### clock out
```
$ cd <your project path>
$ bundle exec ruby main.rb --out
```