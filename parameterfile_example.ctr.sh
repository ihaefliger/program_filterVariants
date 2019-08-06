#!/bin/bash

#parameters for program filterVariants.sh

# enter the vcf file with the whole path
#(e.g.: vcf=/data/vcfFiles/Bos_taurus/cows.242.txt)
vcf=/data/vcfFiles/Bos_taurus/cows.242.txt
job_name=BV-7-40-44


#####################################
## define region to be analysed 

#enter gene name - several genes possible
# (e.g.: genes='ATP50 SIRPB1')
# if no input leave genes=''
genes=''

#enter chromosome as used in the vcf file - several chromosomes possible
# (e.g.: in pigs for chromosome 1 write: chromosomes='1'; in cattle for chromosome 1 write: chromosomes='Chr1 Chr21 Chr37' )
# if no input leave chromosomes=''
chromosomes='Chr7'

#define the start and end of a certain region in Mb
# ! only applying if one single chromosome is defined 
# (e.g.: start='17'; end='19')
# if no input leave start='' and end=''
start='40'
end='44'


#####################################
## define animals which are the cases

#write a list with each labID to be analysed
# (e.g.: cases='RM998 RM1118 RM763' )
# if no input leave cases=''
cases='RM937 RM806'  
        									
#define possible genotypes of target animals in one variable
# ! if you define a case you HAVE to define a genotype for the case
# (e.g.: cases_genotypes='0/1 1/1')
# if no input leave cases_genotypes=''
cases_genotypes='1/1'


#####################################
## define control animals 

#write a list with each labID to be analyzed or type ALL, which will take all animals (except the cases) as controls
# (e.g.: controls='RM998 RM153' or controls='ALL' )
# if no input leave controls=''
controls='RM951 RM948 NDA002'

#define possible genotypes of control animals in one variable
# ! if you define a control you HAVE to define genotypes for the control
# (e.g.: controls_genotypes='0/0 0/1 ./.')
# if no input leave controls_genotypes=''
controls_genotypes='0/0 ./. 0/1'


#####################################
## define animals which shall be excluded from the evaluation

#write a list with each labID that will be excluded from the analysis
# (e.g.: exclude='RM998' )
# if no input leave exclude=''
exclude='RM998'  


#####################################
## define additional filters

#write a list with impacts that need to be kept in the file
# (e.g.: impacts='HIGH MODERATE')
# if no selection leave impacts='ALL'
impacts='ALL'

#write a list with impacts that need to be kept in the file
# (e.g.: quality_filter='PASS GATKstd')
# if no selection leave quality_filter='ALL'
quality_filter='PASS'

