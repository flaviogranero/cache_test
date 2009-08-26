require 'cache_test/test_store'
include ActiveSupport::Cache

require 'cache_test/fragment_cache_test'
require 'cache_test/page_cache_test'

ActionController::Base.class_eval do
	include PageCacheTest::ClassCachingMethods
end

Test::Unit::TestCase.class_eval do
	include PageCacheTest::IntegrationTestMethods
  include CacheTest::Assertions
end

