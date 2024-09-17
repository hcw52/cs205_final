# 001 
# Woodruff
# Hunter
# hcw52
BEGIN{FS="\t"}
{
if (NR!=1){
#Counts the number of lines in the file subtracts headers for total number of pokemon
sum+=1


#Fines Mean hp of pokemon
hp+=($6)
hpMean = hp/(sum-1)

#Fines mean of attack values
attack+=($7)
attackMean = attack/(sum-1)
}
}
END{
# Prints the number of lines in the file
print "======= SUMMARY OF POKEMON.DAT ======"
print "Total Pokemon: " sum
print "Avg. HP: " hpMean
print "Avg. Attack: " attackMean
print "======= END SUMMARY ======="}

