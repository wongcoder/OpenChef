# README

This was a really old Rails project that I attempted to get off the ground running using nothing but Rails tutorial. Overall, the application doesn't work as intended.

There were quite a bit of complications along the way, but the primary one was creating the queue system. I think a middle-man should have been created--otherwise, what would end up happening, is that a person would be matched up with a user without even getting a single notification. 

The database had a few calls that would identify if another person was in the queue, and would set a database flag. This is incredibly slow, and should not be done on a production database. 


