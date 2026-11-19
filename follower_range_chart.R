print(getwd())

# Read the data from the CSV file
df <- read.table("twitterUserCounts_byFollowerRange.csv", header = TRUE, sep = ",")
print(df)

# Load library
library(ggplot2)

# Plot the bar chart
plt <- ggplot(data=df, aes(x=Range.of.Followers, y=Number.of.Twitter.Users)) +
  geom_bar(stat="identity", fill="blue") +
  labs(title="Number of Twitter Users by Follower Range",
       x="Number of Followers",
       y="Number of Twitter Users") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Output the plot into a PNG file
ggsave(filename="twitterUserCounts_byFollowerRange.png", plot = plt, width = 10, height = 6, dpi = 300)

# Display the plot
print(plt)