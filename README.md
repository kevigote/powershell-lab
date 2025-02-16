# This is the Powershell Lab

# PowerShell Challenges

## Exercise 1: File and Directory Management

### **Challenge:**
1. Create a new directory called `DevOpsScripts` in your user’s home folder.
2. Inside `DevOpsScripts`, create a text file named `log.txt` and write `"Log initialized at [current timestamp]"` inside it.
3. Copy `log.txt` to a new file called `backup-log.txt`.
4. Display the contents of both files.
5. Delete `backup-log.txt` and confirm it's removed.

### **Expected Outcome:**
- A directory named `DevOpsScripts` is created.
- `log.txt` contains a log message with a timestamp.
- `backup-log.txt` is created as a copy of `log.txt`.
- Both files' contents are displayed.
- `backup-log.txt` is deleted successfully.

---

## Challenge 2: User Input & Validation

### **Challenge**
1. Ask the user to input a number.
2. Validate that the input is a numeric value.
3. If valid, display whether the number is **even** or **odd**.
4. If the user types `"exit"`, terminate the script gracefully.
5. If the input is invalid (non-numeric), prompt an error message.

### **Expected Outcome**
- If the user enters `4`, the script prints: The number 4 is even
- If the user enters `7`, the script prints: The number 7 is odd
- If the user enters `"hello"`, the script prints: Invalid input. Please add a numeric value, because 'hello' is not a valid number
- If the user types `"exit"`, the script stops with: Exiting the script

### **Bonus**
- The script should handle accidental spaces in input (`" 42 "` should be treated as `42`).
- The exit message should appear after breaking the loop.
