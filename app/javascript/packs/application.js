// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"
import './src/application.scss'
Rails.start()
Turbolinks.start()
ActiveStorage.start()
require('jquery')
require('popper.js');
import "cocoon";

$(document).ready(function () {
  $('#task_name').on("change", function () {
    let a = $(this).val();
    $('#text_name').val(a)
  });
  $('#pr_link').on("change", function () {
    let a = $(this).val();
    $('#text_pr').val(a)
  });
  $('#time').on("change", function () {
    let a = $(this).val();
    $('#text_hours').val(a)
  });
});