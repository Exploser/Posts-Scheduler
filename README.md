# Twitter Post Scheduler

Twitter Post Scheduler is a Ruby on Rails application that integrates with the Twitter API to allow users to schedule tweets to be posted at a future time. Using OAuth and OmniAuth strategies for secure authentication, it streamlines the tweeting process by enabling format scheduling through an intuitive web interface.

## DEPRICATED
  This project had to be taken down but due to the changes with twitterAPI, it's currently in a non-functioning state
  ![image](https://github.com/Exploser/Posts-Scheduler/assets/126280113/9c105c29-f2ba-4c40-a56b-e994380ff3be)

  Logo
  ![logo](https://github.com/Exploser/Posts-Scheduler/assets/126280113/978bec8a-2c55-43e4-b667-e8b4da19a517)
## Images of the site
  ![image](https://github.com/Exploser/Posts-Scheduler/assets/126280113/d0a71f8c-62fe-400f-bf15-764b023f68b6)
  ![image2](https://github.com/Exploser/Posts-Scheduler/assets/126280113/74dbd6c9-5920-43f2-8121-08bd4e869248)


## Features

- **OAuth Authentication**: Secure login through Twitter, ensuring that your credentials are safely handled.
- **OmniAuth Integration**: Allows for future integration with other services.
- **Twitter Account Retrieval**: Fetches and displays your connected Twitter account details.
- **Tweet Formatting and Scheduling**: Create tweets and schedule them to be posted at a specific date and time.

## Dependencies & Versions

To run the Twitter Post Scheduler, you will need:

- Ruby 3.3
- Rails 7.1
- SQLite 1.4
- Omniauth 2.1
- Omniauth-Twitter2 1.0
- X 0.14

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


## Credits

Twitter Post Scheduler is made with https://gorails.com/

