// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

$('document').ready(function() {
    $('#messages').animate({scrollTop: 1000000}, 800);
});

document.addEventListener("turbo:before-stream-render", function(e){
    $('document').ready(function() {
        $('#messages').animate({scrollTop: 1000000}, 800);
    });
});