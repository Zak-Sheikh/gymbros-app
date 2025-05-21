## GymBros app: Interactions 

- User taps on a body part (e.g., shoulder, chest, arms) on the main body diagram
- App shows a list of workouts for that muscle group using `WorkoutListView`
- User taps a workout to navigate to `WorkoutDetailView`
- App displays:
  - Image or video (if available)
  - Workout description
  - Suggested reps
  - "Save" or "Unsave" button
- User clicks "Save" → workout is added to "My Workouts"
- User can return to the workout list from the detail page
- In "My Workouts", user sees a list of saved workouts
- Tapping a saved workout opens full detail view
- User can delete a saved workout with a swipe gesture
