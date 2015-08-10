# river_height_records

A Basic API+Admin Panel for Manually Tracking River Height Records in Myanmar. The application was developed for quick usage during recent floods(July-August 2015) in Myanmar.


##Getting Started

Prerequisites are typical RAILS 4 setup:

- ruby version 2.1.5
- rails version 4.2.3
- postgresql 9.3

I used [figaro](https://github.com/laserlemon/figaro) to setup ENV variables in application.yml. 

After cloning the repo, setup necessary config in `application.yml`(Please See the example.application.yml for sample values.), and run:

```sh
  bundle install
  rake db:create
  rake db:migrate
  rails s
``


##Contributing

Any form of feedback or contribution is welcome. Please do post an issue if there is something you would like to add as a feature or if you find a bug. An issue/pull request can make the contributors of the project very happy. Don't be shy or afraid!

If you would like to contribute then

Fork it ( https://github.com/dreamingblackcat/mmunicode_rails/fork )

Create your feature branch (git checkout -b my-new-feature)

Commit your changes (git commit -am 'Add some feature')

Push to the branch (git push origin my-new-feature)

Create a new Pull Request

