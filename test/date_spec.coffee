require('../lib/date');

describe 'Date', ->

  describe '#monthOfYear()', ->
    date = new Date '2011-05-23 21:57:31'

    it 'returns the full month name', ->
      date.monthOfYear().should.equal "May"


  describe '#dayOfWeek()', ->

    it 'returns the day of the week', ->
      date1 = new Date '2011-05-23 21:57:31'
      date1.dayOfWeek().should.equal "Monday"
      

  describe '#time()', ->
    date = new Date '2011-05-23 21:57:31'
    
    it 'returns a time in the format hh:hh ampm', ->
      date.time().should.equal "9:57pm"


  describe '#verbose()', ->
    date = null

    it 'returns a pretty date', ->
      date = new Date '2011-05-23 21:57:31'
      date.verbose().should.equal "Monday, May 23, 2011 at 9:57pm"
    
    it 'returns a date with "Today" when it is the current day', ->
      date = new Date
      date.verbose().should.include 'Today'
    
    it 'returns a date with "Yesterday" when it is the previous day', ->
      today = new Date
      date  = new Date(today - 86400000)
      date.verbose().should.include 'Yesterday'

    it 'returns a date with "Tomorrow" when it is the next day', ->
      today = new Date
      date  = new Date(today - (86400000*-1))
      date.verbose().should.include 'Tomorrow'




