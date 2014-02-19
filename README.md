# hologram_rails

Add a styleguide to your Rails app using [Hologram](http://github.com/trulia/hologram).

Sample Rails app with hologram_rails: https://github.com/ckundo/hologram-rails-example

### 1. add hologram_rails to your Gemfile and install:

```
$ echo 'gem "hologram_rails"' >> Gemfile
$ bundle install
```


### 2. Generate a hologram config file:

```
$ mkdir app/assets/hologram/ && cd !$
$ touch hologram_config.yml
```


### 3. Add this to your hologram_config.yml:

```
# hologram_config.yml
source: ../stylesheets
destination: ../../views/pages
documentation_assets: ./doc_assets
index: basics
```


### 4. Create an application route:

```
# config/routes.rb
mount HologramRails::Engine, at: "/styleguide"
```


### 5. Import code highlighting and layout styles:

```
# application.scss
@import 'hologram_rails/github';
@import 'hologram_rails/docs';
```


### 6. Add documentation to an application stylesheet (per [Hologram readme](https://github.com/trulia/hologram#documenting-your-styles)):

```
    /*doc
    ---
    title: Input with label
    name: label-input
    category: basics
    ---
    Horizontal inputs with labels.
    ```html_example
      <label for='name'>Name</label>
      <input type='text' id='name' placeholder='John Doe' />
    ```
    */
```


### 7. Build the styleguide assets (set up Guard or Watchr if you want live updates)

```
$ cd app/assets/hologram/ && hologram
```
