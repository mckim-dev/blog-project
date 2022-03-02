# README

## The Travel Sanctuary - Ruby on Rails 6

### Author: Robin Mckim

[<img src="https://user-images.githubusercontent.com/84540978/151291120-50f05604-2533-4b30-bc19-64c392d444d0.png" height="70"/>][4] [<img src="https://user-images.githubusercontent.com/84540978/151291114-62f2ac26-86c6-45b1-9d3b-1520057a00a3.png" height="70"/>][2]

[2]: https://www.linkedin.com/in/robin-mckim-dev/
[4]: mailto:robinmckim@outlook.com

# Project Description:

This project is a demonstration of a simple Ruby on Rails Travel blog. The project goal was to learn more about the Rails 6 framework and build knowledge related to user session handling and restriction of content based on authoritative use and authentication.

Demo Site Hosted at: https://mckim-blog-rubyrails.herokuapp.com/

<table align="center"> 
  <tr>
    <th> Landing Page </th>
    <th> Responsive View </th>
  </tr>
   <tr>
    <td>
      <img align="center" title="Home Page" width = "400px" 
           src="https://user-images.githubusercontent.com/84540978/156265123-bdd39fa0-b8cc-4a17-afe6-e6428d361f45.png" />
    </td>
     <td>
      <img align="center" title="Home Page - Responsive" width = "400px" 
           src="https://user-images.githubusercontent.com/84540978/156265287-a359da08-4174-4dbb-b947-6b6489ef5e6c.png" />
    </td>
  </tr>
</table>

# Current Features Include:

- User and content management as an administrative user
- User registration allows visitors to register and write articles
- User Profiles include information about the relationship age with the user, as well as their total contribution count of articles.
- Authentication restricts content, allowing only the author (and admin) of the article to make changes or delete their own article.
- The user can choose one or more categories to link their article to.
- A list page of articles is presented using pagination to limit the number of items per page.
- A list page of user member authors of article content.
- A list page of categories is accessible to all; however, an admin user is the only one who may create or destroy categories.
- Each article has a restful route location address unique to itself.
- Each category has a page of its own that contains a list of the articles that are related to it.
- Each user profile page contains a list of all of their articles, and makes use of a gravatar image for a profile picture when available.
- Random images delivered for articles and categories via Lorem Picsum: https://picsum.photos/
- Responsive layout.

<table align="center"> 
  <tr>
    <th> Login </th>
    <th> Author list page</th>
    <th> Author profile page</th>
  </tr>
   <tr>
    <td>
      <img align="center" title="User Login" width = "275px" 
           src="https://user-images.githubusercontent.com/84540978/156265449-3e784ea8-d35a-4377-8081-c993c255af8a.png" />
    </td>
     <td>
      <img align="center" title="User (Author) List" width = "275px" 
           src="https://user-images.githubusercontent.com/84540978/156265567-3c8f7e31-4875-42b6-b81a-4b14f1d6c532.png" />
    </td>
     <td>
      <img align="center" title="User (Author) List" width = "275px" 
           src="https://user-images.githubusercontent.com/84540978/156265720-4ea94451-b9f4-46b0-af7e-a64c8317f720.png" />
    </td>
  </tr>
</table>

<table align="center"> 
  <tr>
    <th> Article List Page </th>
    <th> Category List page</th>
  </tr>
   <tr>
    <td>
      <img align="center" title="Article List Page" width = "400px" 
           src="https://user-images.githubusercontent.com/84540978/156266612-57ec979b-39c7-4820-bafc-c04a00c56c9d.png" />
    </td>
     <td>
      <img align="center" title="Category List Page" width = "400px" 
           src="https://user-images.githubusercontent.com/84540978/156266069-00c128c6-8d1f-45f5-b635-8ca5c9b4a982.png" />
    </td>
  </tr>
</table>

<table align="center"> 
  <tr>
    <th> Individual Category Page </th>
    <th> -cont-</th>
  </tr>
   <tr>
    <td>
      <img align="center" title="Single Category Page 1" width = "400px" 
           src="https://user-images.githubusercontent.com/84540978/156266378-9d5d6a18-7d1a-4611-ba85-0400673d5f4a.png" />
    </td>
     <td>
      <img align="center" title="Single Category Page 2" width = "400px" 
           src="https://user-images.githubusercontent.com/84540978/156266482-5ef78230-41bf-4168-b2b5-31d55ec54e6a.png" />
    </td>
  </tr>
</table>

## Gems / version details

- ruby '2.7.4'
- gem 'rails', 6.1.4, >= 6.1.4.1
- gem 'sass-rails', >= 6
- gem 'bcrypt', ' 3.1.7'
- gem 'will_paginate', 3.1.0'
- gem 'sqlite3', 1.4' (for dev and testing)

## Features yet to be added with future development:

- Comment Section on articles
- Profile page / Image upload
- Article Page - Image upload
- Article thumbs up button
- Article share button
- Other features...

## Dependencies

    "@rails/actioncable": "^6.0.0",
    "@rails/activestorage": "^6.0.0",
    "@rails/ujs": "^6.0.0",
    "@rails/webpacker": "5.4.2",
    "bootstrap": "4.6.0",
    "jquery": "^3.6.0",
    "popper.js": "^1.16.1",
    "turbolinks": "^5.2.0",
    "webpack": "4.46.0",
    "webpack-cli": "3.3.12"
