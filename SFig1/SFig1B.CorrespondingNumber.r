###################################################################################################
################################     PARAMETER/FUNCTION DEFINE     ################################
###################################################################################################
# sys_argv <- commandArgs(T)
cccol <- c("#CE0013","#16557A","#C7A609","#87C232","#008792","#A14C94","#15A08C","#8B7E75","#1E7CAF","#EA425F","#46489A","#E50033","#0F231F","#1187CD")
cccol50 <- c("#CE001350","#16557A50","#C7A60950","#87C23250","#00879250","#A14C9450","#15A08C50","#8B7E7550","#1E7CAF50","#EA425F50","#46489A50","#E5003350","#0F231F50","#1187CD50")
options(scipen = 200)

###################################################################################################
################################            READ IN DATA           ################################
###################################################################################################
total <- 28217448

C2_C4 <- as.vector(read.table("../Data/2C_4C.CorrespondingNumber.txt")[,1])/total*100

C4_C8 <- as.vector(read.table("../Data/4C_8C.CorrespondingNumber.txt")[,1])/total*100

###################################################################################################
################################                PLOT               ################################
###################################################################################################
pdf("SFig1.CorrespondingRatioDistribution.pdf",width=3.6,height=4)
par(mgp=c(2.5,1,0))
hist(C2_C4,breaks=15,col=cccol[7],border=cccol[7],xlab="Percentange of CpG sites both detected(%)",main="2-cell vs 4-cell",xlim=c(0,100));box(lwd=2)
hist(C4_C8,breaks=15,col=cccol[7],border=cccol[7],xlab="Percentange of CpG sites both detected(%)",main="4-cell vs 8-cell",xlim=c(0,100));box(lwd=2)
dev.off()