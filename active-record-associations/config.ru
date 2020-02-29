# frozen_string_literal: true

require 'sinatra'
require 'pry'
require_relative './config/environment'

class MyApp < Sinatra::Base
  get '/' do
    'Hello world!'
  end

  get '/somethingelse' do
    'hey this is working'
  end

  post '/hi/:asdf/:asdf2' do
    'respond with this'
  end

  post '/patients' do
    Patient.create(name: params[:name], age: params[:age])
  end

  get '/patients/new' do
    erb :patient_form
  end

  post '/hi' do
    'ignore me'
  end
end

run MyApp
