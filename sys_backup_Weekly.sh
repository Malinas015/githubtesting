#!/bin/bash
#
# Back up script /etc /var/www /var/log
# dmv van var_date krijgen we telkens een timestamp , makkelijker om de backups van elkaar te onderscheiden.

var_date =`date+%Y%m%d.%H%M`

# We slaan onze wekelijkse backup -tar bestand-, voorzien van de datum dmv var_date variabele, op in de map /opt/downloads 
# map downloads moet bestaan!
#Backups bestaan uit de mappen /etc /var/www en /var/log // indien je meerdere wenst voeg ze hier toe
tar czf /opt/backups/Weekly-$var_date.tar.gz /etc /var/www /var/log