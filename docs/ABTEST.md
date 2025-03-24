# A/B Test 1: Add to Watchlist: Homepage Button vs. Watchlist Page Button

**US4 (Golden Path)**

## Metrics:
- **Engagement:** Click-through rate of the "Add to Watchlist" button.
- **Task Completion Rate:** Percentage of users who add at least one movie to their watchlist after clicking the button.
- **Drop-off Rate:** How many users abandon the action of adding a movie to the watchlist after clicking the button/ Number of people who press the cancel button.

## Hypothesis:
We hypothesize that users will engage more with the "Add to Watchlist" button on the **Watchlist Page** rather than on the **Homepage**. The Watchlist page is where users are likely already in the mindset of managing and saving content, so having the "Add to Watchlist" button there will make it more intuitive and aligned with their task. In contrast, placing the button on the homepage could feel out of context, disrupting the browsing experience and leading to lower engagement.

## Problem:
Currently, users can only add movies to their watchlist from the **Watchlist Page**. This could work better as users on this page are focused on managing and reviewing their saved content. By moving the "Add to Watchlist" button to the Watchlist page, we may see higher conversion rates and less drop-off.

## Experiment Setup:
### Experiment Audience:
- Split the audience into two groups (50% for each variation).
- Users will be randomly assigned to either **Variation A** (Add to Watchlist on Watchlist Page) or **Variation B** (Add to Watchlist on Homepage).

### Firebase Setup:
- Use **Firebase A/B Testing** to randomly assign users to one of the two variations.
- Track the following events using **Firebase Analytics**:
  - `add_to_watchlist_clicked`: When users click the "Add to Watchlist" button.
  - `movie_added_to_watchlist`: When users successfully add a movie to their watchlist.
  - `session_duration`: Time spent on the homepage or watchlist page before interacting with the button.
  - `drop_off`: Track how many users click the "Add to Watchlist" button but do not complete the action.

### Tracking:
- Track how many users click the "Add to Watchlist" button.
- Track how many users successfully add at least one movie to their watchlist.
- Measure any drop-offs after users click the button to understand if there’s friction in the process.

## Variations: [Click here to view basic outline](https://docs.google.com/document/d/1ewG0rj8BM-iQooA9LbZTTXjJQSRKBjqYJGDLYB-hOUQ/edit?tab=t.0)
### Variation A (Add to Watchlist on Watchlist Page):
- **Button Placement:** The "Add to Watchlist" button is visible only on the Watchlist page, where users can manage their saved content.
- **Button Text:** "Add to Watchlist" (or another call-to-action text like "Save for Later").
- **Button Style:** Consistent with current design.

### Variation B (Add to Watchlist on Homepage):
- **Button Placement:** The "Add to Watchlist" button is placed on the homepage, allowing users to add movies while browsing through different content on the main screen.
- **Button Text:** "Add to Watchlist" (or another text like "Save for Later").
- **Button Style:** Prominent and easy to find.

## Rationale:
By keeping the "Add to Watchlist" button on the **Watchlist Page**, we align the action of saving content with the user's intent to manage and organize their saved movies. The Watchlist page already acts as a central hub for users' saved content, so having the button here may feel more intuitive and natural. This test will help us understand if users are more likely to interact with the button when they are in the right context.


# A/B Test 2: Streamlined Sign-Up vs. Guided Tour

**US1 (Sign Up and Login)**

## Metrics:
- **New Sign-ups:** How many users successfully create an account.
- **Use Retetion Rate:** Number of users who leave during sign-up or while exploring the guided tour.

## Hypothesis:
We hypothesize that **Variant A** (minimal fields + quick intro) will boost adoption rates due to lower friction. Meanwhile, **Variant B** (guided tour overlay) could better educate new users on CinaMatch’s features, potentially enhancing longer-term engagement, but may also lead to higher drop-off if the tour feels lengthy.

## Problem:
If the onboarding process is either too brief or too complicated, new users may not see the value of CinaMatch’s core features (like watch list creation or personalized recommendations) and abandon the platform early. Striking the right balance between simplicity and thorough explanation is crucial to maximizing user adoption.

## Experiment Setup:
### Experiment Audience:
- Split new users into two groups (50% each).
- Users are randomly assigned to either **Variant A** (Streamlined Sign-Up) or **Variant B** (Guided Tour).

### Firebase Setup:
- Use **Firebase A/B Testing** to randomly assign users.
- Track events in **Firebase Analytics** such as:
  - `signup_started`
  - `signup_completed`
  - `onboarding_dropoff`

### Tracking:
- Number of sign-ups completed in each variant.
- How many users engage with core features within their first session.
- Where and when users drop off during the onboarding flow.

### Variation A (Streamlined Sign-Up):
- **Flow:** Minimal required fields (e.g., email, password) followed by a concise intro to CinaMatch’s features.
- **Design:** Emphasis on a quick, easy start to reduce friction.

### Variation B (Guided Tour Overlay):
- **Flow:** Standard sign-up fields, then an overlay that guides users through key features like watch list creation and personalized recommendations.
- **Design:** Step-by-step introduction, highlighting each feature’s benefits and how to use them.

## Rationale:
By comparing a **fast, frictionless** sign-up (Variant A) with a **feature-rich guided** experience (Variant B), we will discover which approach best fosters initial adoption without compromising user understanding. The results will inform how to balance simplicity and guidance in CinaMatch’s onboarding to maximize both immediate sign-ups and sustained engagement.

# A/B Test 3: Adoption – Onboarding Prompt vs. No Prompt for Watchlist Feature

**US1 (USER LOGIN AND SIGN UP)**

## Metrics:
- **Watchlist Adoption Rate:** Percentage of new users who add at least one movie to their watchlist within their first session.
- **Sign-Up Completion Rate:** Percentage of users who complete the sign-up process after seeing the Watchlist prompt.
- **Time to First Watchlist Addition:** Average time it takes for a new user to add their first movie to the watchlist.
- **Retention Rate:** Percentage of users who return and interact with their watchlist within 7 days.
- **Drop-off Rate:** Percentage of users who dismiss the onboarding prompt without adding a movie or signing up.

## Hypothesis:
We hypothesize that introducing a Watchlist onboarding prompt during sign-up will increase adoption. If users understand the benefits of the Watchlist early, they will be more likely to engage with the feature and return to the app. Without this introduction, users may overlook the Watchlist or delay using it, leading to lower adoption rates.

## Problem:
New users may not recognize the value of the Watchlist or may not engage with it immediately after signing up. If the feature isn't introduced early, it may go unused, reducing retention and user satisfaction. By guiding users during sign-up or their first session, we expect to increase Watchlist usage.

## Experiment Setup:

### Experiment Audience:
- New users split into two groups (50% each).
- Random assignment to:
  - **Variation A (Onboarding Prompt Shown):** A Watchlist prompt appears during or immediately after sign-up.
  - **Variation B (No Onboarding Prompt):** Users discover the Watchlist on their own.

### Firebase Setup:
- **Trigger onboarding prompt for Variation A** during or immediately after sign-up.
- Track key events:
  - **sign_up_completed**: When a user completes the sign-up process.
  - **watchlist_prompt_shown**: When the onboarding prompt appears.
  - **watchlist_prompt_dismissed**: If the user closes the prompt without adding a movie.
  - **movie_added_to_watchlist_first_time**: First successful addition to the Watchlist.
  - **watchlist_return_visit**: If the user interacts with their Watchlist again within 7 days.

### Tracking:
- Compare **watchlist adoption rate** between the two groups.
- Measure if the prompt **affects sign-up completion** (does it encourage or discourage users?).
- Analyze **time to first use** to see if the prompt accelerates Watchlist engagement.
- Measure **retention impact** (return visits to the Watchlist).

## Variations:

### Variation A (Onboarding Prompt Shown):
- After signing up or signing in for the first time, users see a pop-up:
  - *"Welcome to Cinamatch! Start building your Watchlist and never lose track of what you want to watch."*
  - Includes a **“Start Your Watchlist”** button leading them to the feature.

### Variation B (No Onboarding Prompt):
- No guidance; users must discover the Watchlist feature naturally.

## Rationale:
Introducing the Watchlist early in the user journey may drive higher adoption rates, helping users engage with Cinamatch's core features. If the test shows a significant increase in Watchlist usage and retention, the onboarding prompt could be implemented permanently.

# A/B Test 4: Dedicated Search Page vs. Homepage Search Bar for Movie Discovery

**US4 - Golden Path**

## Metrics:
- **Happiness:** User satisfaction ratings (via surveys or feedback).
- **Engagement:** Number of searches performed per session.
- **Adoption:** Percentage of users who use the search feature.
- **Retention:** Return rate of users who used the search function.
- **Task Success:** Time taken to find and select a movie.

## Hypothesis:
A dedicated search page for movies will improve search engagement and discovery by providing a focused experience, leading to more searches and higher user satisfaction compared to having a search bar on the homepage.

## Problem:
Currently, users search for movies using a search bar on the homepage, which may not be as prominent or intuitive. If users struggle to locate or effectively use the search bar, they may abandon their search, reducing engagement and retention. By testing a dedicated search page, we aim to determine whether a more structured and immersive search experience leads to higher interaction rates and better movie discovery.

## Experiment Setup:
### Experiment Audience:
- Target Audience: 50% of users will be randomly assigned to the control (homepage search bar) and the other 50% to the variant (dedicated search page).
  
### Firebase Setup:
- Use **Firebase A/B Testing** to randomly assign users.
- 50% of users will be randomly assigned to the control (homepage search bar) and the other 50% to the variant (dedicated search page).

### Tracking:
- Search engagement (number of searches per user session).
- Click-through rate (CTR) on search results.
- Time spent on search interactions.
- Bounce rate from search results page.
- Conversion rate (how many users select a movie to watch).

### Variation A (Existing Setup):
Users search for movies using a search bar located on the homepage.
Minimal search suggestions or filters.

# A/B Test 5: Personalized Recommendations vs. No Recommendations


**US5 (Recommendation Feature)**

## Metrics:
- **Time Spent in App:** Average session duration per user.  
- **Watchlist Shares:** Number of times users share their watchlists.  
- **Movies Added to Watchlists:** Number of new movies/shows added to watchlists.  
- **User Retention Rate:** Percentage of users returning to interact with watchlists after initial engagement.

## Hypothesis  
We hypothesize that **Variant A** (personalized recommendations) will increase user engagement by suggesting relevant content, leading to more movies added and higher retention. **Variant B** (no recommendations) serves as the baseline, allowing us to measure natural user behavior without any intervention.  

## Problem  
If users don’t receive relevant recommendations, they may not explore new content, therefore reducing overall engagement and increasing drop-off rates. However, overly aggressive suggestions could overwhelm users and lead to unengagement. Getting the right balance between personalized recommendations and discovery is essential for boosting retention.  

## Experiment Setup  

### Experiment Audience  
- Split new and existing users into two groups (50% each).  
- New users are get assigned to **Variant B** (No Recommendations) and existing users are assigneed to **Variant A** (Personalized Recommendations).

### Firebase Setup  
- Use **Firebase A/B Testing** to assign variants.  
- Track events in **Firebase Analytics** such as:  
  - `watchlist_add` – Movie added to a watchlist.  
  - `watchlist_share` – Watchlist shared.  
  - `recommendation_clicked` – Recommendation engaged with.  
  - `session_duration` – Time spent in the app.
 
  ###  Tracking  
- Number of movies added to watchlists.  
- Frequency of watchlist shares.  
- Retention rate after 7 and 14 days of initial engagement.  
- Engagement with recommended content.  
- Average session duration after adding to a watchlist.

## Variation A (Personalized Recommendations)  
- **Flow:** After a user adds a movie to their watchlist, display a **“Recommended for You”** section suggesting similar movies.  
- **Design:** Recommendations are personalized based on watchlist content and viewing history. 
- **Goal:** Increase watchlist activity and time spent in the app by suggesting relevant content.  

## Variation B (No Recommendations)  
- **Flow:** After adding a movie to the watchlist, users only see their existing watchlist with no suggestions.  
- **Design:** Standard interface without a recommendation section.  
- **Goal:** Measure baseline behavior and assess the impact of recommendations by comparing against natural user interactions.  

## Rationale  
By comparing **personalized recommendations** (Variant A) with **no recommendations** (Variant B), we can evaluate the impact of personalized suggestions on user engagement and retention. The results will guide future improvements to watchlist management and recommendation strategies in CinaMatch.  


