#!/bin/bash

#Create a folder titled your name
mkdir noreen
#Create another new directory titled biocomputing and change to that directory with one line of command
mkdir biocomputing
#Download these 3 files
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk 
#move the .fna file to the folder titled your name directly.
mv ~/biocomputing/wildtype.fna ~/noreen/
#delete gbk
rm biocomputing/wildtype.gbk
#confirm if wildtype or mutant
cd ..
cd noreen
grep -i "tata" wildtype.fna
grep -i "tatatata" wildtype.fna
grep -i "tata" wildtype.fna



#download rbcl genefor Zeamays
wget https://www.ncbi.nlm.nih.gov/nuccore/NC_001666.2?report=fasta&from=56874&to=58304
#How many lines are in the FASTA file (with the exception of the header)
grep -v '^>' 'NC_001666.2?report=fasta' | wc -l
#How many times does A occur
grep -o 'A' 'NC_001666.2?report=fasta' | wc -l
#How many times does G occur
grep -o 'G' 'NC_001666.2?report=fasta' | wc -l
#How many times does C occur
grep -o 'C' 'NC_001666.2?report=fasta' | wc -l
#How many times does T occur
grep -o 'T' 'NC_001666.2?report=fasta' | wc -l
#Calculate the %GC content of your gene
# Assign the nucleotide counts 
g_count=83
c_count=283
t_count=124
a_count=113
# Calculate the total nucleotide count
total_count=$((a_count + t_count + g_count + c_count))
# Print the total count
echo "Total nucleotide count: $total_count"
# Calculate %GC content
gc_content=$(echo "scale=2; (($g_count + $c_count) / $total_count) * 100" | bc)
echo "GC content: $gc_content%"
#Create a nucleotide (.fasta) file title your name
echo ">nasambu_sequence" > nasambu.fasta
echo” the following into the file using >>: the number of A, G, T and C in the file you created aecho "Number of A: $a_count" >> nasambu.fasta
echo "Number of G: $g_count" >> nasambu.fasta
echo "Number of T: $t_count" >> nasambu.fasta
echo "Number of C: $c_count" >>nasambu.fasta 
echo "Number of A: $a_count" >>nasambu.fasta
git config --global user.email "noreenjuma18@gmail.com"                            
git clone https://github.com/Noreenjuma/amr-in-cancer-group.git
#Upload the file to your team’s github repo in a folder called /output
 cd amr-in-cancer-group
cd noreen
mv nasambu.fasta amr-in-cancer-group/output/ 
cd amr-in-cancer-group
git add output/nasambu.fasta
git commit -m "Add nasambu.fasta to the output folder"
git branch
git push origin main





