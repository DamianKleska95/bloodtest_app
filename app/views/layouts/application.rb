<!DOCTYPE html>
<html>
  <head>
    <title>Traveller</title>
    <%= csrf_meta_tags %>

    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>

    <!-- CSS Reset -->
    <link rel="stylesheet" href="//cdn.rawgit.com/necolas/normalize.css/master/normalize.css">

    <!-- Milligram CSS minified -->
    <link rel="stylesheet" href="//cdn.rawgit.com/milligram/milligram/master/dist/milligram.min.css">

  </head>

  <body>
    <header>
      <% if current_user %>
        Hi <%= current_user.name %>
        |
        <%= link_to 'Log out', logout_path, method: :delete %>
      <% else %>
        <%= link_to 'Log in', login_path %>
        |
        <%= link_to 'Sign up', new_user_path %>
      <% end %>
    </header>

    <%= yield %>
  </body>
</html>