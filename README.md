![](https://img.shields.io/badge/Microverse-blueviolet)

# Private_events

In this private-event project we created a simple website where user must first login before creating events. Users also can exchange invitations only for their own events.

## Built With

- Ruby on Rails
- Active Record
- Bootstrap 4
- Ruby

## Getting Started

To get a local copy of the repository please run the following commands on your terminal:

```
$ cd <folder>
```

```
$ git clone https://github.com/elyor-doniyorov/Private_Events.git 
```

```
$ cd private-events
```
> Install webpack
```
$ rails webpacker:install 
```

> Migrate the database

```
$ rails db:migrate
```
> Install Rspec gems

```
$ bundle install
```

> Run the rails server

```
$ rails server
```

> In order to use the website signup here:

```
$ http://localhost:3000/signup
```

> To create an event , navigate to:

```
$ http://localhost:3000/events/new
```
> To invite a friend , navigate to:

- User's show page by clicking on <name>'s Page navigation link in the top right navbar. 
- Event show page by clicking on the show button on your event card.
- Choose friend's name from the select options and click invite.

## Rspec testing
 > To test all models and scopes, write the following in your terminal:
 ```
$ rspec spec/models/user_spec.rb
```
```
$ rspec spec/models/event_spec.rb
```
```
$ rspec spec/models/invite_spec.rb
```
## Author

👤 Elyor Doniyorov

- Github: [@elyor-doniyorov](https://github.com/elyor-doniyorov)
- Twitter: [@elyor-doniyorov](https://twitter.com/elyor-doniyorov)

## Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/elyor-doniyorov/Private_Events/issues/1#issue-895479869).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## License

- This project is [MIT](https://opensource.org/licenses/MIT) licensed.
