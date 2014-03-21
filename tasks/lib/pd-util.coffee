"use strict"

exports.init = (grunt) ->
  shell = require "shelljs"
  exports = {}

  exports.acf_import = () ->
    cmd = 'wp acf import all'
    shell.exec(cmd, silent: true )

  exports.convert_data = () ->
    cmd = 'wp eval-file core/conversion-script.php'
    console.log shell.exec(cmd, silent: true ).output

  exports.pd_wp_cli = () ->
    cmd = 'wp theme deactive pizzad-theme'
    console.log shell.exec(cmd, silent: true ).output

    cmd = 'wp theme activate pizza-d-theme'
    console.log shell.exec(cmd, silent: true ).output

exports