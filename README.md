# MatBucketList

[![Code Climate](https://codeclimate.com/github/andela-oojewale/matbucketlist/badges/gpa.svg)](https://codeclimate.com/github/andela-oojewale/matbucketlist)

[![Test Coverage](https://codeclimate.com/github/andela-oojewale/matbucketlist/badges/coverage.svg)](https://codeclimate.com/github/andela-oojewale/matbucketlist/coverage)


The Bucket List is here!

This API allows a user to create an account and create as many bucket lists as they want. Everyone has one thing that they want to do-  where they want to be, things they want to buy, people they want to meet et al- in their lifetime.

This API is created to meet just that need.

The endpoints that the API provides are listed below:

| Http verb | Endpoint | Description
|--- | --- | ---
| POST | /users/create |  Creates a new user.
| POST | /auth/login | Logs in a user
| GET | /auth/logout | Logs a user out
| POST | /v1/bucketlists/ | Creates a new bucket list
| GET  | /v1/bucketlists/ | Lists all the created bucket lists
| GET | /v1/bucketlists/:id | Gets single bucket list
| GET | /v1/bucketlists?q=name | Gets bucket list with the name specified
| GET | /v1/bucketlists?page=2&limit=23 | Paginates your bucket lists.
| PUT | /v1/bucketlists/:id | Updates this bucket list
| DELETE | /v1/bucketlists/:id | Deletes this single bucket list
| POST | /v1/bucketlists/:id/items/ | Creates a new item in bucket list
| PUT | /v1/bucketlists/:id/items/:item_id | Updates a bucket list item
| DELETE | /v1/bucketlists/:id/items/:item_id | Deletes an item in a bucket list

Only the new user creation and user login endpoints are accessible without being logged in. All others require the user to be logged in.

All operations of a user are only within the scope of the users' bucket list(s) and/or item(s).

* To create a user, access `[POST /users/create]` with the following parameters:

  `username - this should be of the type string`

  `password - should be string and must not be less than 8 characters`

* To login, access `[POST /auth/login]` with the following parameters:

  `username - should be a registered username`

  `password - should be a registered password`

  This returns an authentication token. Which must be present as an Authorization header in all requests made until after you log out or when the token expires. It should be used this way:

  `Authorization: "aaaaaaaaaaaaaaa.bbbbbbbbbbbbbbb.ccccccccccccccc"`


* To view all bucketlists, access `[GET /bucketlists/]`

  This shows all your bucketlists with their corresponding items, if you have any.

* To create a bucketlist, access `[POST /bucketlists/]` with the following parameters:

  `name - name of your bucketlist`

* To get a bucketlist with a particular id, access `[GET /bucketlists/id]`

  This fetches the bucket list with the specified id.

* To get a bucketlist with a particular id, access `[GET /bucketlists?q=name]`

  This fetches the bucket list with the specified name.

* To get a bucketlist with a particular id, access `[GET /bucketlists?page=2&limit=23]`

  Gets bucket lists and paginates them as stated. In this case, it lists 23 bucket lists per page.

  The default number of bucket lists for pagination is 20 per page but you can specify that you want as much as 100 on a page.

* To update a bucketlist, access `[PUT /bucketlists/:id]` with the following parameters:

  `name - name of the bucket list you want to update`

* To delete a bucketlist, access `[DELETE /bucketlists/id]`.

  Deletes the bucket list with the specified id and all it associated items.

* To create a bucketlist item, access `[POST /bucketlists/:bucketlist_id/items]` with the following parameters:

  `name - name of your bucketlist item`

* To update a bucketlist item, access `[PUT /bucketlists/:bucketlist_id/items/:id] ` with the following parameters:

  `name - name of your bucketlist item`

  `status - This states whether you have achieved or done this particular item. Defaults to false. Only change to true if you want to check it as done.`


* To delete a bucketlist item, access `[DELETE /bucketlists/:bucketlist_id/items/:id]`.

  Deletes the bucket list item with the specified id.

**Notice**
* All usernames for this API may not be less than 3 characters in length.
* All passwords may not be less than 8 characters in length.
* This API is versioned. All endpoints should be accessed prefixed with `api/v1/`
* You may test this API using Postman or cURL if you do not have a front-end client.

You can also find the documentation for this awesome API [here](http://matbucketlist.herokuapp.com/)

## API URI
You can access the API with this URI and point to the any of the available endpoints. [https://matbucketlist.herokuapp.com/api/{endpoint}](https://matbucketlist.herokuapp.com).

## Development Dependencies
* This API was built using rails-api.
* JWT was used for token authentication.
* Rspec was used for full end-to-end testing.
* Active Model Serializers was used for formatting json response.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/andela-oojewale/matbucketlist.

* Fork it ( https://github.com/andela-oojewale/matbucketlist/fork)
* Create your feature branch (git checkout -b feature/my-new-feature)
* Commit your changes (git commit -am 'Add some feature')
* Push to the branch (git push origin feature/my-new-feature)
* Create a new Pull Request

Thanks.