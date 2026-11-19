print(getwd())

# Read the data from the CSV file
df <- read.table("twitterUserCounts_byFollowerRange.csv", header=TRUE, sep=",")
df2 <- read.table("nonRetweetTwitterUserCounts_byFollowerRange.csv", header=TRUE, sep=",")
print(df2)
df$variable <- "Include Retweet Users"
df2$variable <- "Non-Retweet Users"

# Combine the two data frames
df3 <- rbind(df, df2)

# Load library
library(ggplot2)

# Plot a side by side bar chart to visualize the data in df3
plt2 <- ggplot(data=df3, aes(x=Range.of.Followers, y=Number.of.Twitter.Users, fill=variable)) +
  geom_bar(stat="identity", position="dodge", width=0.8) +
  labs(title="Number of Twitter Users by Follower Range", x="Number of Followers", y="Number of Twitter Users") +
  scale_fill_manual(values = c("Include Retweet Users" = "coral", "Non-Retweet Users" = "cyan")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Display the plot
print(plt2)