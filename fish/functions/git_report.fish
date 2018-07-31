function git_report
  switch (uname)
    case Linux
      set report_date (date --date="1 week ago" "+%Y/%m/%d")
    case Darwin
      set report_date (date -v-1w "+%Y/%m/%d")
  end
  git log --since $report_date --oneline --author (git config user.name)
end
