# Tarteaucitron

A gem to install [tarteaucitron](https://opt-out.ferank.eu/fr/), GeoIP and provide helpers to show social network buttons.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tarteaucitron'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tarteaucitron

## Usage

Run the generator to import tarteaucitron and geodat in your public directory

```shell
rails g tarteaucitron
```

## Helpers

### Google analytics

Put this in your application layout or elsewhere

```ruby
<%= tarteaucitron(:google_analytics => "UA-XXXXXX-XX") %>
```

### Google analytics Universal

```ruby
<%= tarteaucitron(:google_analytics_universal => "UA-XXXXXX-XX") %>
```

### Google Tag Manager

```ruby
<%= tarteaucitron(:googletagmanager => "GTM-XXXXXX-XX") %>
```

### Google Maps

```ruby
<%= tarteaucitron(:googlemaps => "YOUR_API_KEY") %>
```

### Matamo (Piwik)

```ruby
<%= tarteaucitron(matomocloud: { id: "SITE_ID", url: "YOUR_MATOMO_URL", customJSPath: "PATH_TO_YOUR_MATOMO_JS }) %>
```

### Google +

```ruby
<%= tarteaucitron(:googleplus => true) %>
```

Here's its helper

```ruby
<%= googleplus %>
```

You can provide a hash of options. Default options are

```ruby
<%= {size: "small", annotation: "inline", width: "300"} %>
```

### Facebook

Example :

```ruby
<%= tarteaucitron(:facebook => true) %>
```

Here's its helper

```ruby
<%= facebook %>
```

You can provide a hash of options. Default options are

```ruby
<%= {layout: "standard", action: "like", share: "true"} %>
```

### Twitter

Example :

```ruby
<%= tarteaucitron(:twitter => {via: "twitter_username", count: "horizontal", dnt: "true"}) %>
```

Here's its helper

```ruby
<%= twitter %>
```

You can provide a hash of options. Default options are

```ruby
<%= {via: "twitter_username", count: "vertical", dnt: "true"} %>
```

[See all options on tarteaucitron](https://opt-out.ferank.eu/fr/install/)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/tarteaucitron/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
