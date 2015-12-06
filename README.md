# Helper Methods Practice

This is a simple app to help students practice writing helper methods. The front-end is done. The specs are written. It's now up to our server-side web developer to fill out the logic for the application in the first 3 helper methods of [our `MethodsPracticeHelper` module](https://github.com/chrisvfritz/codelab-sinatra-tdd-helper-methods/blob/master/helpers/methods_practice_helpers.rb).

Just one file. Yet the very fate of our app depends on it. Are you up to the task?

## How to work on this

First, complete the usual first steps of the project to create and then download the repo folder. Then we'll `cd` into that folder and make sure the project's dependencies are installed.

``` bash
bundle install
```

And finally, we'll run guard, which is set up to watch our [methods_practice_helpers.rb](https://github.com/chrisvfritz/codelab-sinatra-tdd-helper-methods/blob/master/helpers/methods_practice_helpers.rb) file and re-run our specs whenever we save a change.

```
bundle exec guard
```

> __If you're on Windows__, guard unfortunately doesn't work very well, so you'll have to just run `bundle exec rspec` each time you want to run your specs.

Now start with one of the specs in `spec/helpers/methods_practice_helpers`. When you start working on a method, remove the `, :pending` from the `describe` line with your method's name. For example, in `spec/helpers/methods_practice/image_tag_spec.rb`, we would change this line:

``` ruby
describe '#image_tag', :pending do
```

to:

``` ruby
describe '#image_tag' do
```

__Note that I removed not only the word `:pending`, but also the comma (`,`) right before it.__

As we make progress and keep saving, the results in the terminal should make their way from scary red to comforting green. When all our specs are green, that means everything should be working as it should. At the end, we can run our app with `bundle exec rackup` to confirm that everything on the front-end does indeed look great.

> __If you're on Windows__ and do _not_ see any colors, you should be able to fix this with [these instructions](http://softkube.com/blog/ansi-command-line-colors-under-windows).
