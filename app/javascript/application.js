// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "rails-ujs"

import * as bootstrap from 'bootstrap';
window.Modal = bootstrap.Modal;

import jQuery from "jquery";
// jQuery를 전역 변수로 설정
window.$ = window.jQuery = jQuery;
import {Fancybox} from "fancybox";
import 'common'
import 'index'

document.addEventListener("turbo:load", function() {
    Fancybox.bind('[data-fancybox="gallery"]', {
        //
    });
})