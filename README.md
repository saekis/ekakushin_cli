## Description
`ekakushin_cli` is CLI tool for automatically submitting daily attendance using selenium.

## Installation
```sh
# install chrome driver for selenium
$ brew install chromedriver

# set project
$ git clone https://github.com/saekis/ekakushin_cli.git
$ cd attendance
$ bundle install

# set env file
$ cat << EOF> .env
CUSTOMER_CODE="xxxxxxx"
USER_CODE="xxxxxxx"
PASSWORD="xxxxxxx"
EOF
```

## Requirement
- Ruby 2.4.0+
- ChromeDriver 2.0+

## Usage
### clock in
```
$ cd <your project path>
$ bundle exec bin/ekakushin_cli --in
```

### clock out
```
$ cd <your project path>
$ bundle exec bin/ekakushin_cli --out
```
