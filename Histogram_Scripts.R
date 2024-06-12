 
#     Please find below all additional analyses
#       that reviewers asked us to produce in 
#         the first round of revisions

#########################################
# Importing all packages and dependencies
#########################################

library(ggplot2)

###################
# 1. PLV HISTOGRAMS
###################

# DELTA

# Subset the dataframe
Delta_Auditory <- Delta[Delta$Modality == "Auditory", ]
Delta_Auditory_M1 <- Delta_Auditory[Delta_Auditory$Motor_Region == "M1", ]
Delta_Auditory_vPMC <- Delta_Auditory[Delta_Auditory$Motor_Region == "vPMC", ]
Delta_Auditory_dPMC <- Delta_Auditory[Delta_Auditory$Motor_Region == "dPMC", ]

Delta_Visual <- Delta[Delta$Modality == "Visual", ]
Delta_Visual_M1 <- Delta_Visual[Delta_Visual$Motor_Region == "M1", ]
Delta_Visual_vPMC <- Delta_Visual[Delta_Visual$Motor_Region == "vPMC", ]
Delta_Visual_dPMC <- Delta_Visual[Delta_Visual$Motor_Region == "dPMC", ]

# Create the AUDITORY-MOTOR histograms

ggplot(Delta_Auditory_vPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Delta-band PLVs (A1-vPMC)",
       x = "Delta PLVs (A1-vPMC)",
       y = "Frequency") + 
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1)) 

ggplot(Delta_Auditory_M1, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Delta-band PLVs (A1-M1)",
       x = "Delta PLVs (A1-M1)",
       y = "Frequency") + 
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Delta_Auditory_dPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Delta-band PLVs (A1-dPMC)",
       x = "Delta PLVs (A1-dPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

# Create the VISUOMOTOR histograms

ggplot(Delta_Visual_vPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Delta-band PLVs (V1-vPMC)",
       x = "Delta PLVs (V1-vPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Delta_Visual_M1, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Delta-band PLVs (V1-M1)",
       x = "Delta PLVs (V1-M1)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Delta_Visual_dPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Delta-band PLVs (V1-dPMC)",
       x = "Delta PLVs (V1-dPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))





# THETA

# Subset the dataframe
Theta_Auditory <- Theta[Theta$Modality == "Auditory", ]
Theta_Auditory_M1 <- Theta_Auditory[Theta_Auditory$Motor_Region == "M1", ]
Theta_Auditory_vPMC <- Theta_Auditory[Theta_Auditory$Motor_Region == "vPMC", ]
Theta_Auditory_dPMC <- Theta_Auditory[Theta_Auditory$Motor_Region == "dPMC", ]

Theta_Visual <- Theta[Theta$Modality == "Visual", ]
Theta_Visual_M1 <- Theta_Visual[Theta_Visual$Motor_Region == "M1", ]
Theta_Visual_vPMC <- Theta_Visual[Theta_Visual$Motor_Region == "vPMC", ]
Theta_Visual_dPMC <- Theta_Visual[Theta_Visual$Motor_Region == "dPMC", ]

# Create the AUDITORY-MOTOR histograms

ggplot(Theta_Auditory_vPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Theta-band PLVs (A1-vPMC)",
       x = "Theta PLVs (A1-vPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Theta_Auditory_M1, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Theta-band PLVs (A1-M1)",
       x = "Theta PLVs (A1-M1)",
       y = "Frequency") + 
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Theta_Auditory_dPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Theta-band PLVs (A1-dPMC)",
       x = "Theta PLVs (A1-dPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

# Create the VISUOMOTOR histograms

ggplot(Theta_Visual_vPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Theta-band PLVs (V1-vPMC)",
       x = "Theta PLVs (V1-vPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Theta_Visual_M1, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Theta-band PLVs (V1-M1)",
       x = "Theta PLVs (V1-M1)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Theta_Visual_dPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Theta-band PLVs (V1-dPMC)",
       x = "Theta PLVs (V1-dPMC)",
       y = "Frequency") + 
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))






# ALPHA

# Subset the dataframe
Alpha_Auditory <- Alpha[Alpha$Modality == "Auditory", ]
Alpha_Auditory_M1 <- Alpha_Auditory[Alpha_Auditory$Motor_Region == "M1", ]
Alpha_Auditory_vPMC <- Alpha_Auditory[Alpha_Auditory$Motor_Region == "vPMC", ]
Alpha_Auditory_dPMC <- Alpha_Auditory[Alpha_Auditory$Motor_Region == "dPMC", ]

Alpha_Visual <- Alpha[Alpha$Modality == "Visual", ]
Alpha_Visual_M1 <- Alpha_Visual[Alpha_Visual$Motor_Region == "M1", ]
Alpha_Visual_vPMC <- Alpha_Visual[Alpha_Visual$Motor_Region == "vPMC", ]
Alpha_Visual_dPMC <- Alpha_Visual[Alpha_Visual$Motor_Region == "dPMC", ]

# Create the AUDITORY-MOTOR histograms

ggplot(Alpha_Auditory_vPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Alpha-band PLVs (A1-vPMC)",
       x = "Alpha PLVs (A1-vPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Alpha_Auditory_M1, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Alpha-band PLVs (A1-M1)",
       x = "Alpha PLVs (A1-M1)",
       y = "Frequency") + 
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Alpha_Auditory_dPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Alpha-band PLVs (A1-dPMC)",
       x = "Alpha PLVs (A1-dPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

# Create the VISUOMOTOR histograms

ggplot(Alpha_Visual_vPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Alpha-band PLVs (V1-vPMC)",
       x = "Alpha PLVs (V1-vPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Alpha_Visual_M1, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Alpha-band PLVs (V1-M1)",
       x = "Alpha PLVs (V1-M1)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Alpha_Visual_dPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Alpha-band PLVs (V1-dPMC)",
       x = "Alpha PLVs (V1-dPMC)",
       y = "Frequency") + 
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))



# BETA

# Subset the dataframe
Beta_Auditory <- Beta[Beta$Modality == "Auditory", ]
Beta_Auditory_M1 <- Beta_Auditory[Beta_Auditory$Motor_Region == "M1", ]
Beta_Auditory_vPMC <- Beta_Auditory[Beta_Auditory$Motor_Region == "vPMC", ]
Beta_Auditory_dPMC <- Beta_Auditory[Beta_Auditory$Motor_Region == "dPMC", ]

Beta_Visual <- Beta[Beta$Modality == "Visual", ]
Beta_Visual_M1 <- Beta_Visual[Beta_Visual$Motor_Region == "M1", ]
Beta_Visual_vPMC <- Beta_Visual[Beta_Visual$Motor_Region == "vPMC", ]
Beta_Visual_dPMC <- Beta_Visual[Beta_Visual$Motor_Region == "dPMC", ]

# Create the AUDITORY-MOTOR histograms

ggplot(Beta_Auditory_vPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Beta-band PLVs (A1-vPMC)",
       x = "Beta PLVs (A1-vPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Beta_Auditory_M1, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Beta-band PLVs (A1-M1)",
       x = "Beta PLVs (A1-M1)",
       y = "Frequency") + 
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Beta_Auditory_dPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Beta-band PLVs (A1-dPMC)",
       x = "Beta PLVs (A1-dPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

# Create the VISUOMOTOR histograms

ggplot(Beta_Visual_vPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Beta-band PLVs (V1-vPMC)",
       x = "Beta PLVs (V1-vPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Beta_Visual_M1, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Beta-band PLVs (V1-M1)",
       x = "Beta PLVs (V1-M1)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Beta_Visual_dPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Beta-band PLVs (V1-dPMC)",
       x = "Beta PLVs (V1-dPMC)",
       y = "Frequency") + 
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))



# GAMMA1 

# Subset the dataframe
Gamma1_Auditory <- Gamma1[Gamma1$Modality == "Auditory", ]
Gamma1_Auditory_M1 <- Gamma1_Auditory[Gamma1_Auditory$Motor_Region == "M1", ]
Gamma1_Auditory_vPMC <- Gamma1_Auditory[Gamma1_Auditory$Motor_Region == "vPMC", ]
Gamma1_Auditory_dPMC <- Gamma1_Auditory[Gamma1_Auditory$Motor_Region == "dPMC", ]

Gamma1_Visual <- Gamma1[Gamma1$Modality == "Visual", ]
Gamma1_Visual_M1 <- Gamma1_Visual[Gamma1_Visual$Motor_Region == "M1", ]
Gamma1_Visual_vPMC <- Gamma1_Visual[Gamma1_Visual$Motor_Region == "vPMC", ]
Gamma1_Visual_dPMC <- Gamma1_Visual[Gamma1_Visual$Motor_Region == "dPMC", ]

# Create the AUDITORY-MOTOR histograms

ggplot(Gamma1_Auditory_vPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma1-band PLVs (A1-vPMC)",
       x = "Gamma1 PLVs (A1-vPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Gamma1_Auditory_M1, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma1-band PLVs (A1-M1)",
       x = "Gamma1 PLVs (A1-M1)",
       y = "Frequency") + 
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Gamma1_Auditory_dPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma1-band PLVs (A1-dPMC)",
       x = "Gamma1 PLVs (A1-dPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

# Create the VISUOMOTOR histograms

ggplot(Gamma1_Visual_vPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma1-band PLVs (V1-vPMC)",
       x = "Gamma1 PLVs (V1-vPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Gamma1_Visual_M1, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma1-band PLVs (V1-M1)",
       x = "Gamma1 PLVs (V1-M1)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Gamma1_Visual_dPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma1-band PLVs (V1-dPMC)",
       x = "Gamma1 PLVs (V1-dPMC)",
       y = "Frequency") + 
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))




# Subset the dataframe
Gamma2_Auditory <- Gamma2[Gamma2$Modality == "Auditory", ]
Gamma2_Auditory_M1 <- Gamma2_Auditory[Gamma2_Auditory$Motor_Region == "M1", ]
Gamma2_Auditory_vPMC <- Gamma2_Auditory[Gamma2_Auditory$Motor_Region == "vPMC", ]
Gamma2_Auditory_dPMC <- Gamma2_Auditory[Gamma2_Auditory$Motor_Region == "dPMC", ]

Gamma2_Visual <- Gamma2[Gamma2$Modality == "Visual", ]
Gamma2_Visual_M1 <- Gamma2_Visual[Gamma2_Visual$Motor_Region == "M1", ]
Gamma2_Visual_vPMC <- Gamma2_Visual[Gamma2_Visual$Motor_Region == "vPMC", ]
Gamma2_Visual_dPMC <- Gamma2_Visual[Gamma2_Visual$Motor_Region == "dPMC", ]

# Create the AUDITORY-MOTOR histograms

ggplot(Gamma2_Auditory_vPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PLVs (A1-vPMC)",
       x = "Gamma2 PLVs (A1-vPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Gamma2_Auditory_M1, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PLVs (A1-M1)",
       x = "Gamma2 PLVs (A1-M1)",
       y = "Frequency") + 
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Gamma2_Auditory_dPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PLVs (A1-dPMC)",
       x = "Gamma2 PLVs (A1-dPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

# Create the VISUOMOTOR histograms

ggplot(Gamma2_Visual_vPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PLVs (V1-vPMC)",
       x = "Gamma2 PLVs (V1-vPMC)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Gamma2_Visual_M1, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PLVs (V1-M1)",
       x = "Gamma2 PLVs (V1-M1)",
       y = "Frequency") +
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

ggplot(Gamma2_Visual_dPMC, aes(x = PLV)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PLVs (V1-dPMC)",
       x = "Gamma2 PLVs (V1-dPMC)",
       y = "Frequency") + 
  scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.1))

# SAVE ALL HISTOGRAMS

plots.dir.path <- list.files(tempdir(), pattern="rs-graphics", full.names = TRUE); 
plots.png.paths <- list.files(plots.dir.path, pattern=".png", full.names = TRUE)

file.copy(from=plots.png.paths, to="C:/Users/usuario/Desktop/OMEGA_MANUSCRIPT/Extra_Analyses/Histograms/PLVs/Delta")







###############################
# 2. PLV_differences HISTOGRAMS
###############################

# DELTA

delta_data <- ANOVA_BANDS$delta

# vPMC

delta_data$`A1-vPMC` = as.numeric(delta_data$`A1-vPMC`)
delta_data$`V1-vPMC` = as.numeric(delta_data$`V1-vPMC`)

delta_vPMC <- delta_data$`A1-vPMC` - delta_data$`V1-vPMC`
delta_vPMC <- as.data.frame(delta_vPMC)

ggplot(delta_vPMC, aes(x = delta_vPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Delta-band PLV differences (A1-vPMC minus V1-vPMC)",
       x = "Delta PLV differences (A1-vPMC minus V1-vPMC)",
       y = "Frequency") 

# M1

delta_data$`A1-M1` = as.numeric(delta_data$`A1-M1`)
delta_data$`V1-M1` = as.numeric(delta_data$`V1-M1`)

delta_M1 <- delta_data$`A1-M1` - delta_data$`V1-M1`
delta_M1 <- as.data.frame(delta_M1)

ggplot(delta_M1, aes(x = delta_M1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Delta-band PLV differences (A1-M1 minus V1-M1)",
       x = "Delta PLV differences (A1-M1 minus V1-M1)",
       y = "Frequency") 

# dPMC

delta_data$`A1-dPMC` = as.numeric(delta_data$`A1-dPMC`)
delta_data$`V1-dPMC` = as.numeric(delta_data$`V1-dPMC`)

delta_dPMC <- delta_data$`A1-dPMC` - delta_data$`V1-dPMC`
delta_dPMC <- as.data.frame(delta_dPMC)

ggplot(delta_dPMC, aes(x = delta_dPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Delta-band PLV differences (A1-dPMC minus V1-dPMC)",
       x = "Delta PLV differences (A1-dPMC minus V1-dPMC)",
       y = "Frequency") 

# THETA 

theta_data <- ANOVA_BANDS$theta

# vPMC

theta_data$`A1-vPMC` = as.numeric(theta_data$`A1-vPMC`)
theta_data$`V1-vPMC` = as.numeric(theta_data$`V1-vPMC`)

theta_vPMC <- theta_data$`A1-vPMC` - theta_data$`V1-vPMC`
theta_vPMC <- as.data.frame(theta_vPMC)

ggplot(theta_vPMC, aes(x = theta_vPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Theta-band PLV differences (A1-vPMC minus V1-vPMC)",
       x = "Theta PLV differences (A1-vPMC minus V1-vPMC)",
       y = "Frequency") 

# M1

theta_data$`A1-M1` = as.numeric(theta_data$`A1-M1`)
theta_data$`V1-M1` = as.numeric(theta_data$`V1-M1`)

theta_M1 <- theta_data$`A1-M1` - theta_data$`V1-M1`
theta_M1 <- as.data.frame(theta_M1)

ggplot(theta_M1, aes(x = theta_M1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Theta-band PLV differences (A1-M1 minus V1-M1)",
       x = "Theta PLV differences (A1-M1 minus V1-M1)",
       y = "Frequency") 

# dPMC

theta_data$`A1-dPMC` = as.numeric(theta_data$`A1-dPMC`)
theta_data$`V1-dPMC` = as.numeric(theta_data$`V1-dPMC`)

theta_dPMC <- theta_data$`A1-dPMC` - theta_data$`V1-dPMC`
theta_dPMC <- as.data.frame(theta_dPMC)

ggplot(theta_dPMC, aes(x = theta_dPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Theta-band PLV differences (A1-dPMC minus V1-dPMC)",
       x = "Theta PLV differences (A1-dPMC minus V1-dPMC)",
       y = "Frequency") 

# ALPHA 

alpha_data <- ANOVA_BANDS$alpha

# vPMC

alpha_data$`A1-vPMC` = as.numeric(alpha_data$`A1-vPMC`)
alpha_data$`V1-vPMC` = as.numeric(alpha_data$`V1-vPMC`)

alpha_vPMC <- alpha_data$`A1-vPMC` - alpha_data$`V1-vPMC`
alpha_vPMC <- as.data.frame(alpha_vPMC)

ggplot(alpha_vPMC, aes(x = alpha_vPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Alpha-band PLV differences (A1-vPMC minus V1-vPMC)",
       x = "Alpha PLV differences (A1-vPMC minus V1-vPMC)",
       y = "Frequency") 

# M1

alpha_data$`A1-M1` = as.numeric(alpha_data$`A1-M1`)
alpha_data$`V1-M1` = as.numeric(alpha_data$`V1-M1`)

alpha_M1 <- alpha_data$`A1-M1` - alpha_data$`V1-M1`
alpha_M1 <- as.data.frame(alpha_M1)

ggplot(alpha_M1, aes(x = alpha_M1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Alpha-band PLV differences (A1-M1 minus V1-M1)",
       x = "Alpha PLV differences (A1-M1 minus V1-M1)",
       y = "Frequency") 

# dPMC

alpha_data$`A1-dPMC` = as.numeric(alpha_data$`A1-dPMC`)
alpha_data$`V1-dPMC` = as.numeric(alpha_data$`V1-dPMC`)

alpha_dPMC <- alpha_data$`A1-dPMC` - alpha_data$`V1-dPMC`
alpha_dPMC <- as.data.frame(alpha_dPMC)

ggplot(alpha_dPMC, aes(x = alpha_dPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Alpha-band PLV differences (A1-dPMC minus V1-dPMC)",
       x = "Alpha PLV differences (A1-dPMC minus V1-dPMC)",
       y = "Frequency")

# BETA

beta_data <- ANOVA_BANDS$beta

# vPMC

beta_data$`A1-vPMC` = as.numeric(beta_data$`A1-vPMC`)
beta_data$`V1-vPMC` = as.numeric(beta_data$`V1-vPMC`)

beta_vPMC <- beta_data$`A1-vPMC` - beta_data$`V1-vPMC`
beta_vPMC <- as.data.frame(beta_vPMC)

ggplot(beta_vPMC, aes(x = beta_vPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Beta-band PLV differences (A1-vPMC minus V1-vPMC)",
       x = "Beta PLV differences (A1-vPMC minus V1-vPMC)",
       y = "Frequency") 

# M1

beta_data$`A1-M1` = as.numeric(beta_data$`A1-M1`)
beta_data$`V1-M1` = as.numeric(beta_data$`V1-M1`)

beta_M1 <- beta_data$`A1-M1` - beta_data$`V1-M1`
beta_M1 <- as.data.frame(beta_M1)

ggplot(beta_M1, aes(x = beta_M1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Beta-band PLV differences (A1-M1 minus V1-M1)",
       x = "Beta PLV differences (A1-M1 minus V1-M1)",
       y = "Frequency") 

# dPMC

beta_data$`A1-dPMC` = as.numeric(beta_data$`A1-dPMC`)
beta_data$`V1-dPMC` = as.numeric(beta_data$`V1-dPMC`)

beta_dPMC <- beta_data$`A1-dPMC` - beta_data$`V1-dPMC`
beta_dPMC <- as.data.frame(beta_dPMC)

ggplot(beta_dPMC, aes(x = beta_dPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Beta-band PLV differences (A1-dPMC minus V1-dPMC)",
       x = "Beta PLV differences (A1-dPMC minus V1-dPMC)",
       y = "Frequency")




# GAMMA1

gamma1_data <- ANOVA_BANDS$gamma1

# vPMC

gamma1_data$`A1-vPMC` = as.numeric(gamma1_data$`A1-vPMC`)
gamma1_data$`V1-vPMC` = as.numeric(gamma1_data$`V1-vPMC`)

gamma1_vPMC <- gamma1_data$`A1-vPMC` - gamma1_data$`V1-vPMC`
gamma1_vPMC <- as.data.frame(gamma1_vPMC)

ggplot(gamma1_vPMC, aes(x = gamma1_vPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma1-band PLV differences (A1-vPMC minus V1-vPMC)",
       x = "Gamma1 PLV differences (A1-vPMC minus V1-vPMC)",
       y = "Frequency") 

# M1

gamma1_data$`A1-M1` = as.numeric(gamma1_data$`A1-M1`)
gamma1_data$`V1-M1` = as.numeric(gamma1_data$`V1-M1`)

gamma1_M1 <- gamma1_data$`A1-M1` - gamma1_data$`V1-M1`
gamma1_M1 <- as.data.frame(gamma1_M1)

ggplot(gamma1_M1, aes(x = gamma1_M1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma1-band PLV differences (A1-M1 minus V1-M1)",
       x = "Gamma1 PLV differences (A1-M1 minus V1-M1)",
       y = "Frequency") 

# dPMC

gamma1_data$`A1-dPMC` = as.numeric(gamma1_data$`A1-dPMC`)
gamma1_data$`V1-dPMC` = as.numeric(gamma1_data$`V1-dPMC`)

gamma1_dPMC <- gamma1_data$`A1-dPMC` - gamma1_data$`V1-dPMC`
gamma1_dPMC <- as.data.frame(gamma1_dPMC)

ggplot(gamma1_dPMC, aes(x = gamma1_dPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma1-band PLV differences (A1-dPMC minus V1-dPMC)",
       x = "Gamma1 PLV differences (A1-dPMC minus V1-dPMC)",
       y = "Frequency")


# GAMMA2

gamma2_data <- ANOVA_BANDS$gamma2

# vPMC

gamma2_data$`A1-vPMC` = as.numeric(gamma2_data$`A1-vPMC`)
gamma2_data$`V1-vPMC` = as.numeric(gamma2_data$`V1-vPMC`)

gamma2_vPMC <- gamma2_data$`A1-vPMC` - gamma2_data$`V1-vPMC`
gamma2_vPMC <- as.data.frame(gamma2_vPMC)

ggplot(gamma2_vPMC, aes(x = gamma2_vPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PLV differences (A1-vPMC minus V1-vPMC)",
       x = "Gamma2 PLV differences (A1-vPMC minus V1-vPMC)",
       y = "Frequency") 

# M1

gamma2_data$`A1-M1` = as.numeric(gamma2_data$`A1-M1`)
gamma2_data$`V1-M1` = as.numeric(gamma2_data$`V1-M1`)

gamma2_M1 <- gamma2_data$`A1-M1` - gamma2_data$`V1-M1`
gamma2_M1 <- as.data.frame(gamma2_M1)

ggplot(gamma2_M1, aes(x = gamma2_M1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PLV differences (A1-M1 minus V1-M1)",
       x = "Gamma2 PLV differences (A1-M1 minus V1-M1)",
       y = "Frequency") 

# dPMC

gamma2_data$`A1-dPMC` = as.numeric(gamma2_data$`A1-dPMC`)
gamma2_data$`V1-dPMC` = as.numeric(gamma2_data$`V1-dPMC`)

gamma2_dPMC <- gamma2_data$`A1-dPMC` - gamma2_data$`V1-dPMC`
gamma2_dPMC <- as.data.frame(gamma2_dPMC)

ggplot(gamma2_dPMC, aes(x = gamma2_dPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.002, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PLV differences (A1-dPMC minus V1-dPMC)",
       x = "Gamma2 PLV differences (A1-dPMC minus V1-dPMC)",
       y = "Frequency")

# SAVE ALL HISTOGRAMS

plots.dir.path <- list.files(tempdir(), pattern="rs-graphics", full.names = TRUE); 
plots.png.paths <- list.files(plots.dir.path, pattern=".png", full.names = TRUE);

file.copy(from=plots.png.paths, to="C:/Users/usuario/Desktop/OMEGA_MANUSCRIPT/Extra_Analyses/Histograms/PLV_differences")


###################
# 3. PTE HISTOGRAMS
###################

# THETA

# Subset the dataframe

Theta_Auditory = ANOVA_BANDS$theta[ANOVA_BANDS$theta$Hemisphere == "L", ]

# Theta_Auditory_A1dPMC <- Theta_Auditory$`A1-dPMC`
# Theta_Auditory_A1dPMC = as.numeric(Theta_Auditory_A1dPMC)
# Theta_Auditory_A1dPMC = as.data.frame(Theta_Auditory_A1dPMC)

Theta_Auditory_dPMCA1 <- Theta_Auditory$`dPMC-A1`
Theta_Auditory_dPMCA1 = as.numeric(Theta_Auditory_dPMCA1)
Theta_Auditory_dPMCA1 = as.data.frame(Theta_Auditory_dPMCA1)

Theta_Auditory_M1A1 <- Theta_Auditory$`M1-A1`
Theta_Auditory_M1A1 = as.numeric(Theta_Auditory_M1A1)
Theta_Auditory_M1A1 = as.data.frame(Theta_Auditory_M1A1)

Theta_Auditory_vPMCA1 <- Theta_Auditory$`vPMC-A1`
Theta_Auditory_vPMCA1 = as.numeric(Theta_Auditory_vPMCA1)
Theta_Auditory_vPMCA1 = as.data.frame(Theta_Auditory_vPMCA1)

ggplot(Theta_Auditory_dPMCA1, aes(x = Theta_Auditory_dPMCA1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "purple", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Theta-band PTEs in LEFT HEMISPHERE (dPMC to A1 direction)",
       x = "Theta-band PTEs in RIGHT HEMISPHERE (dPMC to A1 direction)",
       y = "Frequency")

ggplot(Theta_Auditory_M1A1, aes(x = Theta_Auditory_M1A1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "purple", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Theta-band PTEs in LEFT HEMISPHERE (M1 to A1 direction)",
       x = "Theta-band PTEs in RIGHT HEMISPHERE (M1 to A1 direction)",
       y = "Frequency")

ggplot(Theta_Auditory_dPMCA1, aes(x = Theta_Auditory_dPMCA1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "purple", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Theta-band PTEs in LEFT HEMISPHERE (vPMC to A1 direction)",
       x = "Theta-band PTEs in RIGHT HEMISPHERE (vPMC to A1 direction)",
       y = "Frequency")

# Subset the dataframe

Theta_Auditory = ANOVA_BANDS$theta[ANOVA_BANDS$theta$Hemisphere == "R", ]

# Theta_Auditory_A1dPMC <- Theta_Auditory$`A1-dPMC`
# Theta_Auditory_A1dPMC = as.numeric(Theta_Auditory_A1dPMC)
# Theta_Auditory_A1dPMC = as.data.frame(Theta_Auditory_A1dPMC)

Theta_Auditory_dPMCA1 <- Theta_Auditory$`dPMC-A1`
Theta_Auditory_dPMCA1 = as.numeric(Theta_Auditory_dPMCA1)
Theta_Auditory_dPMCA1 = as.data.frame(Theta_Auditory_dPMCA1)

ggplot(Theta_Auditory_dPMCA1, aes(x = Theta_Auditory_dPMCA1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Theta-band PTEs in RIGHT HEMISPHERE (dPMC to A1 direction)",
       x = "Theta-band PTEs in RIGHT HEMISPHERE (dPMC to A1 direction)",
       y = "Frequency") 

# ALPHA

Alpha_Auditory = ANOVA_BANDS$alpha[ANOVA_BANDS$alpha$Hemisphere == "L", ]

Alpha_Auditory_A1dPMC <- Alpha_Auditory$`A1-dPMC`
Alpha_Auditory_A1dPMC = as.numeric(Alpha_Auditory_A1dPMC)
Alpha_Auditory_A1dPMC = as.data.frame(Alpha_Auditory_A1dPMC)

Alpha_Auditory_A1M1 <- Alpha_Auditory$`A1-M1`
Alpha_Auditory_A1M1 = as.numeric(Alpha_Auditory_A1M1)
Alpha_Auditory_A1M1 = as.data.frame(Alpha_Auditory_A1M1)

Alpha_Auditory_A1vPMC <- Alpha_Auditory$`A1-vPMC`
Alpha_Auditory_A1vPMC = as.numeric(Alpha_Auditory_A1vPMC)
Alpha_Auditory_A1vPMC = as.data.frame(Alpha_Auditory_A1vPMC)

ggplot(Alpha_Auditory_A1dPMC, aes(x = Alpha_Auditory_A1dPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "forestgreen", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Alpha-band PTEs in LEFT HEMISPHERE (A1 to dPMC direction)",
       x = "Alpha-band PTEs in LEFT HEMISPHERE (A1 to dPMC direction)",
       y = "Frequency")

ggplot(Alpha_Auditory_A1M1, aes(x = Alpha_Auditory_A1M1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "forestgreen", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Alpha-band PTEs in LEFT HEMISPHERE (A1 to M1 direction)",
       x = "Alpha-band PTEs in LEFT HEMISPHERE (A1 to M1 direction)",
       y = "Frequency")

ggplot(Alpha_Auditory_A1vPMC, aes(x = Alpha_Auditory_A1vPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "forestgreen", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Alpha-band PTEs in LEFT HEMISPHERE (A1 to vPMC direction)",
       x = "Alpha-band PTEs in LEFT HEMISPHERE (A1 to vPMC direction)",
       y = "Frequency")

# Subset the dataframe

Alpha_Auditory = ANOVA_BANDS$alpha[ANOVA_BANDS$alpha$Hemisphere == "R", ]

Alpha_Auditory_A1dPMC <- Alpha_Auditory$`A1-dPMC`
Alpha_Auditory_A1dPMC = as.numeric(Alpha_Auditory_A1dPMC)
Alpha_Auditory_A1dPMC = as.data.frame(Alpha_Auditory_A1dPMC)

Alpha_Auditory_A1vPMC <- Alpha_Auditory$`A1-vPMC`
Alpha_Auditory_A1vPMC = as.numeric(Alpha_Auditory_A1vPMC)
Alpha_Auditory_A1vPMC = as.data.frame(Alpha_Auditory_A1vPMC)

ggplot(Alpha_Auditory_A1dPMC, aes(x = Alpha_Auditory_A1dPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "forestgreen", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Alpha-band PTEs in RIGHT HEMISPHERE (A1 to dPMC direction)",
       x = "Alpha-band PTEs in RIGHT HEMISPHERE (A1 to dPMC direction)",
       y = "Frequency")

ggplot(Alpha_Auditory_A1vPMC, aes(x = Alpha_Auditory_A1vPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "forestgreen", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Alpha-band PTEs in RIGHT HEMISPHERE (A1 to vPMC direction)",
       x = "Alpha-band PTEs in RIGHT HEMISPHERE (A1 to vPMC direction)",
       y = "Frequency")

# BETA

# First we do the left

Beta_Auditory = ANOVA_BANDS$beta[ANOVA_BANDS$beta$Hemisphere == "L", ]

Beta_Auditory_M1A1 <- Beta_Auditory$`A1-M1`
Beta_Auditory_M1A1 = as.numeric(Beta_Auditory_M1A1)
Beta_Auditory_M1A1 = as.data.frame(Beta_Auditory_M1A1)

ggplot(Beta_Auditory_M1A1, aes(x = Beta_Auditory_M1A1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "yellow", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Beta-band PTEs in RIGHT HEMISPHERE (M1 to A1 direction)",
       x = "Beta-band PTEs in RIGHT HEMISPHERE (M1 to A1 direction)",
       y = "Frequency")

# Now the right

Beta_Auditory = ANOVA_BANDS$beta[ANOVA_BANDS$beta$Hemisphere == "R", ]

Beta_Auditory_dPMCA1 <- Beta_Auditory$`A1-dPMC`
Beta_Auditory_dPMCA1 = as.numeric(Beta_Auditory_dPMCA1)
Beta_Auditory_dPMCA1 = as.data.frame(Beta_Auditory_dPMCA1)

Beta_Auditory_M1A1 <- Beta_Auditory$`A1-M1`
Beta_Auditory_M1A1 = as.numeric(Beta_Auditory_M1A1)
Beta_Auditory_M1A1 = as.data.frame(Beta_Auditory_M1A1)

ggplot(Beta_Auditory_dPMCA1, aes(x = Beta_Auditory_dPMCA1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "dodgerblue", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Beta-band PTEs in RIGHT HEMISPHERE (dPMC to A1 direction)",
       x = "Beta-band PTEs in RIGHT HEMISPHERE (dPMC to A1 direction)",
       y = "Frequency") 

ggplot(Beta_Auditory_M1A1, aes(x = Beta_Auditory_M1A1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "yellow", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Beta-band PTEs in RIGHT HEMISPHERE (M1 to A1 direction)",
       x = "Beta-band PTEs in RIGHT HEMISPHERE (M1 to A1 direction)",
       y = "Frequency")


# GAMMA2

# First we do the left

Gamma2_Auditory = ANOVA_BANDS$gamma2[ANOVA_BANDS$gamma2$Hemisphere == "L", ]

Gamma2_Auditory_A1dPMC <- Gamma2_Auditory$`A1-dPMC`
Gamma2_Auditory_A1dPMC = as.numeric(Gamma2_Auditory_A1dPMC)
Gamma2_Auditory_A1dPMC = as.data.frame(Gamma2_Auditory_A1dPMC)

Gamma2_Auditory_A1M1 <- Gamma2_Auditory$`A1-M1`
Gamma2_Auditory_A1M1 = as.numeric(Gamma2_Auditory_A1M1)
Gamma2_Auditory_A1M1 = as.data.frame(Gamma2_Auditory_A1M1)

Gamma2_Auditory_A1vPMC <- Gamma2_Auditory$`A1-vPMC`
Gamma2_Auditory_A1vPMC = as.numeric(Gamma2_Auditory_A1vPMC)
Gamma2_Auditory_A1vPMC = as.data.frame(Gamma2_Auditory_A1vPMC)

ggplot(Gamma2_Auditory_A1dPMC, aes(x = Gamma2_Auditory_A1dPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "forestgreen", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PTEs in LEFT HEMISPHERE (A1 to dPMC direction)",
       x = "Gamma2-band PTEs in LEFT HEMISPHERE (A1 to dPMC direction)",
       y = "Frequency")

ggplot(Gamma2_Auditory_A1M1, aes(x = Gamma2_Auditory_A1M1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "forestgreen", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PTEs in LEFT HEMISPHERE (A1 to M1 direction)",
       x = "Gamma2-band PTEs in LEFT HEMISPHERE (A1 to M1 direction)",
       y = "Frequency")

ggplot(Gamma2_Auditory_A1vPMC, aes(x = Gamma2_Auditory_A1vPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "forestgreen", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PTEs in LEFT HEMISPHERE (A1 to vPMC direction)",
       x = "Gamma2-band PTEs in LEFT HEMISPHERE (A1 to vPMC direction)",
       y = "Frequency")

# Now the right

Gamma2_Auditory = ANOVA_BANDS$gamma2[ANOVA_BANDS$gamma2$Hemisphere == "R", ]

Gamma2_Auditory_A1dPMC <- Gamma2_Auditory$`A1-dPMC`
Gamma2_Auditory_A1dPMC = as.numeric(Gamma2_Auditory_A1dPMC)
Gamma2_Auditory_A1dPMC = as.data.frame(Gamma2_Auditory_A1dPMC)

Gamma2_Auditory_A1M1 <- Gamma2_Auditory$`A1-M1`
Gamma2_Auditory_A1M1 = as.numeric(Gamma2_Auditory_A1M1)
Gamma2_Auditory_A1M1 = as.data.frame(Gamma2_Auditory_A1M1)

Gamma2_Auditory_A1vPMC <- Gamma2_Auditory$`A1-vPMC`
Gamma2_Auditory_A1vPMC = as.numeric(Gamma2_Auditory_A1vPMC)
Gamma2_Auditory_A1vPMC = as.data.frame(Gamma2_Auditory_A1vPMC)

ggplot(Gamma2_Auditory_A1dPMC, aes(x = Gamma2_Auditory_A1dPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "forestgreen", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PTEs in RIGHT HEMISPHERE (A1 to dPMC direction)",
       x = "Gamma2-band PTEs in RIGHT HEMISPHERE (A1 to dPMC direction)",
       y = "Frequency")

ggplot(Gamma2_Auditory_A1M1, aes(x = Gamma2_Auditory_A1M1)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "forestgreen", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PTEs in RIGHT HEMISPHERE (A1 to M1 direction)",
       x = "Gamma2-band PTEs in RIGHT HEMISPHERE (A1 to M1 direction)",
       y = "Frequency")

ggplot(Gamma2_Auditory_A1vPMC, aes(x = Gamma2_Auditory_A1vPMC)) +
  geom_histogram(aes(y = ..density..), binwidth = 0.005, fill = "forestgreen", color = "gray") +
  geom_density(color = "red", size = 1) +
  labs(title = "Histogram of Gamma2-band PTEs in RIGHT HEMISPHERE (A1 to vPMC direction)",
       x = "Gamma2-band PTEs in RIGHT HEMISPHERE (A1 to vPMC direction)",
       y = "Frequency")

# You may use the following code to export all plots at once (change last argument to your output directior of choice)

plots.dir.path <- list.files(tempdir(), pattern="rs-graphics", full.names = TRUE); 
plots.png.paths <- list.files(plots.dir.path, pattern=".png", full.names = TRUE)

file.copy(from=plots.png.paths, to="C:/Users/usuario/Desktop/OMEGA_MANUSCRIPT/Extra_Analyses/Histograms/PTEs")






