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

## 3. Time Spent on Application Weekly
**Firebase Collection:** Track user activity with timestamps or logs.  

- **Collection:** `user_activity`  
- **Document Fields:**  
  - `user_id` (string)  
  - `session_start` (timestamp)  
  - `session_end` (timestamp)  
  - `session_duration` (number)  
