# angular.module('factories').factory 'Category', ['$resource', '$http',
#   ($resource, $http) ->
#     baseUrl = '/api/v1/categories/'
#
#
#     all = ->
#       $http.get(baseUrl).then ((res) ->
#         return res.data), (res) ->
#           return res
#
#     {
#       all: all
#     }
# ]
