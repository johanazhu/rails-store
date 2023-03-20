// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

var alertList = document.querySelectorAll('.alert')
console.log('alertList', alertList)
var alerts =  [].slice.call(alertList).map(function (element) {
  return new bootstrap.Alert(element)
});