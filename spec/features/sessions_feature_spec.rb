require 'spec_helper'

describe 'user sessions' do

  describe 'sign in page' do

    it 'allows user to sign in' do
      visit sign_in_path

      expect(page).to have_content('Sign in')
    end

  end

end