# Micro Reddit

A simple rails console app based on the [reddit](https://reddit.com) platform.

## Getting started

- Clone the repo `https://github.com/taiwo2/micro-reddit.git`
- `cd` into the directory
- Run `git checkout -b micro-reddit`
- Run `git pull origin micro-reddit`
- Run `bundle install`
- Setup your db, and run `rails db:create db:migrate`

## Features

- Users can register themselves
- Create a post

## Usage

The first thing that you need to do is to fire up a `rails console`.

Let's get started by creating a `user`.

```ruby
user = Author.create!(full_name: 'John Doe', email_address: 'johnny@ex.com', password: 'secretpassword')
=> #<User id: 1, full_name: "John Doe", email_address: "johnny@ex.com", password_digest: [FILTERED], ...etc>

# Try quering `user.password`, you'll probably get `nil`. This is because the password's are hashed before storing.
```

> Before storing the `email_address`, they are normalized and checked for a valid `email_address`.

Now, let's create a post. We will reference the above created `user` when creating a `post`.

```ruby
post = Author.posts.create!(title: 'My first blog post', body: 'Hello world, an awesome day indeed')
=> #<Post id: 1, title: "My first blog post", content: "Hello world, an awesome day indeed", votes_count: 0, user_id: 1, .... etc>
```

> This creates a `post` and the `author_id` column is populated with the `author`'s id.


## Author

👤 Taiwo Adetona

- Github: [@taiwo2](https://github.com/taiwo2)

- LinkedIn: [Taiwo Adetona](https://www.linkedin.com/in/taiwo-adetona/)

- Twitter: [@TaiwoAdetona4](https://twitter.com/TaiwoAdetona4/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the issues page.

Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is a collaboration project. All rights are reserved for Taiwo.