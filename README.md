# Ruby Capstone Project: Web Scraper.

> Ruby Capstone Project of Microverse, which students have to complete a real-world-like project within 72 hours according to [this project specifications](https://www.notion.so/microverse/Build-your-own-scraper-f54eaca54d8a4d758a5f0141468127a8)

I challenged myself to do a 3-in-1 Web Scraper, which allows users to parse all courses from udacity.com and jobs from indeed.com and remote.io into CSV file.

## Built With

- Ruby
- Nokogiri gem
- HTTParty

## Project Structure

```
├── README.md
├── bin
│   └── main.rb
└── lib
    └── scraper.rb
    └── udacity_scraper.rb
    └── indeed_scraper.rb
    └── remoteio_scraper.rb
└── rspec
    └── scraper_spec.rb
    └── indeed_spec.rb
    └── remoteio_spec.rb
    └── udacity_spec.rb
    └── spec_helper.rb
```

## Video Presentation
Feel free to check out this [link](https://www.loom.com/share/4e3c2779510740759876c791aacf9868) for a 3min video walkthrough :)

## Deployment
1) Git clone this repo and cd the to the `web_scraper` directory.
2) Run `bundle install` in command line to install Nokogiri and HTTParty Gem.
3) Run `bin/main.rb`.
4) Input either 'udacity', 'indeed', or 'remote.io' and follows the respective commands.
5) Tada! 'udacity_courses.csv', 'indeed_jobs.csv', or 'remote_io.csv' would be created at the root directory respectively :)

## Run tests
1) Git clone this repo and cd the to the `web_scraper` directory.
2) Install rspec with `gem install rspec`.
3) Run `rspec` in Command Line.
4) You would see failures because all 3 scraped files haven't been created yet.
5) To solve it, run `ruby bin/main.rb` and input 'udacity', 'indeed', and 'remote.io' for every execution.
6) Run `rspec` in CLI again. The test cases would success upon each file created :)

## Authors

👤 **Eri**

- Github: [@errea](https://github.com/errea)
- Twitter: [@Erreakay](https://github.com/errea)
- Linkedin: [Eri Okereafor](https://www.linkedin.com/in/eri-ngozi-okereafor/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/errea/Ruby_Capstone_Scrapper/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- Nokogiri gem
- HTTParty Parser
- Udacity.com
- Indeed.com
- Remote.io

## 📝 License

This project is [MIT](./MIT.md) licensed.
