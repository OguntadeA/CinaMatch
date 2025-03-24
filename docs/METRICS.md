Google HEART Framework Link ------> https://docs.google.com/presentation/d/1qdIyyKkeO84m2YoPqLx5t-hVEi5UQRF-FRH2f7wHygk/edit#slide=id.gc8216bd24_20_0 

## 1. Net Promoter Score (NPS)
**Firebase Collection:** Create a Firestore collection for user feedback.  

- **Collection:** `user_feedback`  
- **Document Fields:**  
  - `nps_score` (number)  
  - `user_id` (string)  
  - `timestamp` (timestamp)  

**FlutterFlow Integration:**  
1. Create a form where users can rate their likelihood to recommend your app (usually on a scale of 0 to 10).  
2. Categorize responses:  
   - **Promoters:** 9-10  
   - **Passives:** 7-8  
   - **Detractors:** 0-6  
3. Store the score in Firestore.  

---

## 2. Number of 5-Star Ratings
**Firebase Collection:** Create a Firestore collection for app ratings, could also be on the same survery for the NPS.

- **Collection:** `app_ratings`  
- **Document Fields:**  
  - `rating` (number)  
  - `user_id` (string)  
  - `timestamp` (timestamp)  

**FlutterFlow Integration:**  
1. Add a rating system (stars or similar) within your app, where users can submit a rating after using the app.  
2. Store ratings in Firestore.  
3. Calculate the count of 5-star ratings from your database.  

---
## 3. Time to Complete Signup/Signin

### Firebase Collection: Tracking Signup/Signin Time

**Collection:** `user_activity`

**Document Fields:**
- `user_id` (string) → User's Firebase UID
- `session_start` (timestamp) → Time when the user begins the signup/signin process
- `session_end` (timestamp) → Time when the signup/signin process completes
- `session_duration` (number) → Total time taken (in seconds)

---
## 4. Crash Rate of Users

### Firebase Collection: Crash Free Users

**Collection:** `user_success`

**Document Fields:**
- `user_id` (string) → User's Firebase UID
- `session_success` (boolean) → Returns True if the user does not crash using the app. (Using Firebase built in metric for A/B testing).

---
## 5. Adding to Watchlist

### Firebase Collection: Keeping Track of how often users add to their watchlists 

**Collection:** `add_movie`

**Document Fields:**
- `user_id` (string) → keeps track of the users id 
- `movie_id` (string) → keeps track of what the user added
- `timestamp` (timestamp) → when the user added
- `movie_action`(integer) → amount of times the user added

## 6: **Account Creation Rate**  


**Collection:** `account_creations`  

**Document Fields:**  
- `user_id` (string) → User's Firebase UID  
- `created_at` (timestamp) → Time when the user successfully creates an account  
- `source` (string) → The source of signup (e.g., email, Google, Apple)  

---


