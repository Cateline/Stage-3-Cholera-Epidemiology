#!/bin/bash

# Stage 1: BASh Basic Project

# 1. Login to your coding workspace
# Assuming you are already logged in and at the terminal prompt.

# 2. Create a folder titled your name
mkdir CateOumaHackbio

# 3. Create another new directory titled biocomputing and change to that directory with one line of command
mkdir Biocomputing && cd Biocomputing

# 4. Download the three files
# a. wildtype.fna
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
# b. wildtype.gbk
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
# c. another wildtype.gbk (this seems to be a duplicate, so it's the same as b)
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk

# 5. Move the .fna file to the folder titled your name directly
mv wildtype.fna ../CateOumaHackbio/

# 6. Delete the duplicate gbk file
rm wildtype.gbk.1

# 7. Check if the file is mutant or wildtype
# Confirm if the file contains the mutant sequence "tatatata" or the wildtype "tata"
grep -i "tatatata" wildtype.gbk
grep -i "tata" wildtype.gbk

# 8. If it is mutant, print all lines showing it is a mutant into a new file
grep -i "tatatata" wildtype.gbk > mutant_sequences.txt

# 9. Define your favorite gene
FAVORITE_GENE="FOXP2"

# 10. Download the fasta format of the gene from NCBI Nucleotide
wget "https://www.ncbi.nlm.nih.gov/nuccore/NM_014491.4?report=fasta" -O FOXP2.fasta

# 11. Count the number of lines in the FASTA file (excluding the header)
grep -v "^>" FOXP2.fasta | wc -l

# 12. Count how many times A occurs
grep -o "A" FOXP2.fasta | wc -l

# 13. Count how many times G occurs
grep -o "G" FOXP2.fasta | wc -l

# 14. Count how many times C occurs
grep -o "C" FOXP2.fasta | wc -l

# 15. Count how many times T occurs
grep -o "T" FOXP2.fasta | wc -l

# 16. Calculate the %GC content of your gene
G_count=$(grep -o "G" FOXP2.fasta | wc -l)
C_count=$(grep -o "C" FOXP2.fasta | wc -l)
A_count=$(grep -o "A" FOXP2.fasta | wc -l)
T_count=$(grep -o "T" FOXP2.fasta | wc -l)
total_count=$((G_count + C_count + A_count + T_count))
GC_content=$((G_count + C_count))
percent_GC=$((100 * GC_content / total_count))
echo "GC Content: $percent_GC%"

# 17. Create a nucleotide (.fasta) file titled your name
nano Cateline_O.fasta

# 18. Echo the counts of A, G, T, and C into the file you created above
A_count=$(grep -o "A" FOXP2.fasta | wc -l)
G_count=$(grep -o "G" FOXP2.fasta | wc -l)
C_count=$(grep -o "C" FOXP2.fasta | wc -l)
T_count=$(grep -o "T" FOXP2.fasta | wc -l)
# 19. Upload the file to your team’s GitHub repo in a folder called /output
git add Cateline_O.fasta
git commit -m "Adding nucleotide counts for FOXP2 gene"
# Generating an SSH Key Pair
ssh-keygen -t ed25519 -C "oumacate2000@gmail.com"
#Displaying the Public Key
cat ~/.ssh/id_ed25519.pub
#Adding the SSH Key to GitHub and updating Git Remote to SSH
git remote set-url origin git@github.com:Cateline/HackBio-Internship.git
#Pushing Changes to GitHub:
git push origin main
# 19. Adding codes to script
# Add the Cateline.sh file to the Git staging area, preparing it to be committed.
git add Cateline.sh
# Commit the changes
git commit -m "Add Cateline.sh script"
# Push the committed changes to the remote repository (GitHub)
git push origin main
