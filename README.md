# Twitter Post Scheduler

Twitter Post Scheduler is a Ruby on Rails application that integrates with the Twitter API to allow users to schedule tweets to be posted at a future time. Using OAuth and OmniAuth strategies for secure authentication, it streamlines the tweeting process by enabling format scheduling through an intuitive web interface.

## INFO
  This project was hosted earlier but due to the change with twitterAPI it's currently in a non-(completely)functioning state

## Features

- **OAuth Authentication**: Secure login through Twitter, ensuring that your credentials are safely handled.
- **OmniAuth Integration**: Allows for future integration with other services.
- **Twitter Account Retrieval**: Fetches and displays your connected Twitter account details.
- **Tweet Formatting and Scheduling**: Create tweets and schedule them to be posted at a specific date and time.

## System Requirements

To run the Twitter Post Scheduler, you will need:

- Ruby (version specified in `.ruby-version`)
- Rails (version specified in `Gemfile`)
- PostgreSQL

## Local Installation

Follow these steps to install and run the application:

1. Clone the repository to your local machine:
  `git clone https://github.com/your-username/twitter-post-scheduler.git`
2. Change into the app directory:
  `cd twitter-post-scheduler`
3. Install dependencies:
   `bundle install`
4. Set up the database:
  `rails db:create db:migrate`
5. Start the Rails server:
   `rails server`

## Usage

1. Visit the local server at `http://localhost:3000`.
2. Click on 'Login with Twitter' to authenticate using your Twitter account.
3. Once logged in, navigate to 'Schedule a Tweet'.
4. Enter the tweet details and set the time for when you want the tweet to be posted.
5. Click 'Schedule' to set your tweet.

## Contributing

We welcome contributions to the Twitter Post Scheduler. Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new Pull Request.

Please make sure to update tests as appropriate.

## Credits

Twitter Post Scheduler was created by [Your Name] and contributors. We appreciate all the help and contributions that have made this project possible.

## License

This application is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Deployment

The application is deployed on Heroku. You can access the live version [here](#).

