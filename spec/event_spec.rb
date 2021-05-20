require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'checks validations' do
    it 'returns false if the description field is not filled in' do
      e = Event.new(date: '05/19/2021')
      e.save
      expect(e).to_not be_valid
    end

    it 'returns false if the date field is not filled in' do
      e = Event.new(discription: 'study')
      e.save
      expect(e).to_not be_valid
    end

    it 'returns true if the description and date fields are filled in' do
      u = User.create(name: 'elyor')
      e = Event.new(date: '05/12/2021', discription: 'study', creator_id: u.id)
      e.save
      expect(e).to be_valid
    end
  end

  context 'scopes' do
    it 'returns two for past_events' do
      u = User.create(name: 'elyor')
      Event.create(date: '05/01/2021', discription: 'study', creator_id: u.id)
      Event.create(date: '12/01/2021', discription: 'study', creator_id: u.id)
      Event.create(date: '05/05/2021', discription: 'study', creator_id: u.id)
      Event.create(date: '01/06/2021', discription: 'study', creator_id: u.id)
      Event.create(date: '03/07/2021', discription: 'study', creator_id: u.id)
      expect(Event.past_events.count).to eq(3)
    end

    it 'returns three for upcoming_events' do
      u = User.create(name: 'elyor')
      Event.create(date: '05/01/2021', discription: 'study', creator_id: u.id)
      Event.create(date: '12/01/2021', discription: 'study', creator_id: u.id)
      Event.create(date: '05/05/2021', discription: 'study', creator_id: u.id)
      Event.create(date: '01/06/2021', discription: 'study', creator_id: u.id)
      Event.create(date: '03/07/2021', discription: 'study', creator_id: u.id)
      expect(Event.upcoming_events.count).to eq(2)
    end
  end
end