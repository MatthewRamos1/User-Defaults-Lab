# Pursuit-Core-iOS-UserDefaults-Lab


Use the endpoint at: http://sandipbgt.com/theastrologer/api/horoscope/gemini/today to build a Horoscope app.


This app will have two states:

- No user defaults set
- User defaults set


When the app loads (App Delegate), it should check User Defaults to see whether a user's information was saved with a name and horoscope sign.
 

### State -  No user defaults (aka first launch)

In this state there are no defaults saved. Prompt the user to add and save this info. However you choose: present a UI that lets them select their horoscope.  Save it into UserDefaults.  Then, show a VC that displays their horoscope information to them.


### State - Defaults are saved (aka subsequent launches)

Immediately present the user's current horoscope.

Your user should always be able to edit their name and horoscope to see their updated horoscope, and persist that information to UserDefaults.

## V2: Birthday

Refactor you app to instead prompt for the user's birthday.  Then, translate the birthday into the appropriate horoscope sign.

- Aries dates: March 21 – April 19
- Taurus dates: April 20 – May 20
- Gemini dates: May 21 – June 20
- Cancer dates: June 21 – July 22
- Leo dates: July 22 – August 22
- Virgo dates: August 23 – September 22
- Libra dates: September 23 – October 22
- Scorpio dates: October 23 – November 21
- Sagittarius dates: November 22 – December 21
- Capricorn dates: December 22 – January 19
- Aquarius dates: January 20 – February 18
- Pisces dates:February 19 – March 20

