# File_counter

# Directory File Counter

A simple Bash script to count how many regular files are in a given directory.

## 📝 Description

This script takes the absolute path to a directory as an argument and counts the number of regular files (not directories or symlinks) directly inside that directory. It does **not** count files in subdirectories.

## 📄 Usage

### 1. Make the script executable

```bash
chmod +x count_files.sh

2. Run the script
./count_files.sh <absolute-directory-path>
Replace <absolute-directory-path> with the full path to the directory you want to analyze.

Example:
./count_files.sh /home/user/Documents

🧪 Output
If the directory is valid:

There are 5 files in the directory '/home/user/Documents'.

If the directory does not exist:
Error: '/some/path' is not a valid directory.

⚠️ Notes
The script expects an absolute path to the directory.

Only regular files (not directories, symlinks, etc.) are counted.

The search is limited to the top-level only (no recursion).

🔧 Internals
The script uses:
find "$dir" -maxdepth 1 -type f | wc -l
