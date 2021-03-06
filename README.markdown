# Cache Test

Original repository: <http://github.com/ferblape/cache_test>

A plugin for testing generation and expiration of page cacge, action cache and fragment cached. Based on [cache test plugin](http://blog.cosinux.org/pages/page-cache-test) and [relevance-cache_test](http://github.com/relevance/cache_test/tree/master)


## Example of usage

You can use all the new asserts in functional tests, in this way:

    assert_cache_fragment({:fragment => 'total_posts'}) do
      get :index, :user_id => users(:first)
      assert_response :success
    end


## List of asserts

### Testing page cache

#### Generation

  - `assert_cache_page`
  - `assert_cache_pages`
  - `assert_not_cache_page`
  - `assert_not_cache_pages`

#### Expiration

  - `assert_expire_page`
  - `assert_expire_pages`
  - `assert_not_expire_page`
  - `assert_not_expire_pages`

### Testing action cache

#### Generation

  - `assert_cache_action`
  - `assert_cache_actions`
  - `assert_not_cache_action`
  - `assert_not_cache_actions`

#### Expiration

  - `assert_expire_cache_action`
  - `assert_expire_cache_actions`
  - `assert_not_expire_cache_action`
  - `assert_not_expire_cache_actions`

### Testing fragment cache

#### Generation

  - `assert_cache_fragment`
  - `assert_cache_fragments`
  - `assert_not_cache_fragment`
  - `assert_not_cache_fragments`

#### Expiration

  - `assert_expire_cache_fragment`
  - `assert_expire_cache_fragments`
  - `assert_not_expire_cache_fragment`
  - `assert_not_expire_cache_fragments`
  
## Fork Notes

This version mixes the action cache and fragment cache assertions with the page cache assertions from [relevance-cache_test](http://github.com/relevance/cache_test/tree/master).

## About

This plugin is inspired by [cache_test](http://blog.cosinux.org/pages/page-cache-test), a great plugin that allowed you to test cache in Rails 1.x. 

It was so useful for me that I decided to upgrade it to Rails 2.x and add some tests. 

The test suite was extracted from the test suit of [shoulda](http://github.com/thoughtbot/shoulda), another great plugin.

Copyright (c) 2008 [Fernando Blat](http://www.inwebwetrust.net), released under the MIT license
