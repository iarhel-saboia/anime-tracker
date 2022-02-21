# README 
<h1 align="center">Anime Tracker</h1>

## Project Report
<p align="left">This project was made to keep track of what animes you want to follow and what are your favorite animes</p>

<p align="center">
<img src="http://img.shields.io/static/v1?label=STATUS&message=IN%20DEVELOPMENT&color=YELLOW&style=for-the-badge"/>
</p>

<h4 align="center"> 
	🚧  Anime Tracker is currently in development...  🚧
</h4>

### Setting up the Back-end

```bash
# Clone this repository:
$ git clone <https://https://github.com/iarhel-saboia/anime-tracker>

# Access the directory you just cloned the project to:
$ cd anime-tracker

# Install dependencies
$ bundle:install

# Execute the application
$ rails s

# The server will start on the default route:3000 - acesse <http://localhost:3000>
```

```bash
##For Admin
# Clone this repository:
$ git clone <https://https://github.com/iarhel-saboia/anime-tracker>

# Access the directory you just cloned the project to:
$ cd anime-tracker

# Install dependencies
$ bundle:install

# Execute the application
$ rails s

# The server will start on the default route:3000 - acesse <http://localhost:3000>
Register email and password

#Create the admin role:
$rails console
$user = User.first
$user.role = 0
$user.save

#Now you will have all admin privileges
```

### Technologies

Technologies implemented on this project:

- [Rails](https://rubyonrails.org)
- [Ruby](https://www.ruby-lang.org)
- [SQLite3](https://www.sqlite.org/index.html)
- [Pundit](https://www.rubydoc.info/gems/pundit/1.0.1)
- [Devise](https://rubygems.org/gems/devise/versions/4.2.0?locale=pt-BR)

### Author
  Made by Iarhel Andrade Sabóia
  [![Linkedin Badge](https://img.shields.io/badge/-Iarhel-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/iarhel-andrade-saboia/)](https://www.linkedin.com/in/iarhel-andrade-sabóia)

Copyright (c) <2020> <Iarhel Andrade Sabóia>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
