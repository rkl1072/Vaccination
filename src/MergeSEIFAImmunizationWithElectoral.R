seifa_df=read.csv("/Users/priya/Downloads/Vaccination/cleaned_data/seifa_merged.csv")
dim(seifa_df)
electoral_df=read.csv("/Users/priya/Downloads/Vaccination/cleaned_data/elec_results_PC_all.csv")
head(seifa_df)
head(electoral_df)
length(unique(seifa_df$postcode))

length(electoral_df$Postcode)
all_df=merge(seifa_df,electoral_df,by.x='postcode',by.y='Postcode',how='left')
write.csv(all_df,"~/Downloads/Vaccination/cleaned_data/immunization_with_everything.csv")
all_df=read.csv("~/Downloads/Vaccination/cleaned_data/immunization_with_everything.csv")
head(all_df)
colnames(all_df)
