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
## 4. Retention Rate

### Firebase Collection: Create a Firestore collection for tracking user retention.

**Collection:** `user_retention`

**Document Fields:**
- `user_id` (string) → User's Firebase UID
- `first_session` (timestamp) → Timestamp of the user’s first session
- `last_session` (timestamp) → Timestamp of the most recent session
- `session_count`  (number) → Total number of sessions within a given period

---
## 5. Time spent on search page 

### Firebase Collection: Keeping Track of how long the usre is on the search page for. 

**Collection:** `search_time`

**Document Fields:**
- `user_id` (string) → keeps track of the users id 
- `num_search` (string) → keeps track of how many times this user searches
- `search_len` (integer) → how long the user is on the page for

## 6: **Account Creation Rate**  


**Collection:** `account_creations`  

**Document Fields:**  
- `user_id` (string) → User's Firebase UID  
- `created_at` (timestamp) → Time when the user successfully creates an account  
- `source` (string) → The source of signup (e.g., email, Google, Apple)  

---



## 1. Media Search Utalization

### Firebase Collection: Keeps track of how many times a user as has searched for someting.

**Collection:** 'user_search'

** Document Fields **
- 'search' (string) → tracks what they searched
- 'timestamp' (timestamp) → when the searched for something

More fields can be added when filters and other specific search modifiers get added


