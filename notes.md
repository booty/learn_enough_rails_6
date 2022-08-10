# Learn Enough (Rails 6)

This is not a comprehensive set of notes on Rails.

These are notes on things I learned or brushed up on when working through the book.

## Random Useful Things


`#presence` is nifty for some things.

```
"abc".presence      # => "abc"
"".presence         # => nil
nil.presence        # => nil
```


## 3.3 Getting Started With Testing

These are all minitest, which is weird... but fast and therefore interesting.


`assert_select` takes a CSS selector as the first argument, and a string literal *or* a regex as the second argument.

```
# sample_app/test/controllers/static_pages_controller_test.rb
require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", /home/i
  end

  # etc.
end
```

## 3.4.3 Layouts and Embedded Ruby

```
<% provide(:title, "Home") %>
```

...provides text for:

```
<%= yield(:title) %>
```

## 5.2.1 The Asset Pipeline

Rails guides: [for 6.1](https://guides.rubyonrails.org/v6.1/), or [for current](https://guides.rubyonrails.org/asset_pipeline.html)

Where the heck do assets go?

- app/assets: assets specific to the present application
- lib/assets: assets for libraries written by your dev team
- vendor/assets: assets from third-party vendors (not present by de- fault)

In development, changes to anything in `app/assets/stylesheets` get picked up and compiled.

Reminder: Sass lets you nest things.

```sass
 .center {
  text-align: center;
  h1 {
    margin-bottom: 10px;
  }
}
```