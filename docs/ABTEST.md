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
