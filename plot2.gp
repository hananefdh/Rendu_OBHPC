set terminal pngcairo enhanced font 'Verdana,12'
# Définir le séparateur de champ
set datafile separator ";"

# Définir les colonnes de données
mibs_col = 12

# Titre du graphique
set title "Histogramme en fonction de Mib/s"

# Étiquettes des axes
set xlabel "versions"
set ylabel "vitesse"

set yrange [0:*]

# Style d'histogramme
set style data histograms
set style histogram cluster gap 1

# Configurer le format des étiquettes sur l'axe x
set xtics rotate by -45
set style fill solid border -1

set output 'hgcg.png'

# Charger les données depuis des fichiers texte
datafile1 = 'reduc/mesures_gcc/mg.txt'
datafile2 = 'reduc/mesures_clang/mg.txt'

# Dessiner l'histogramme en superposant les données
plot \
    datafile1 every ::1 using mibs_col:xtic(1) t " gcc" lc rgb "#C39BD3", \
    datafile2 every ::1 using mibs_col:xtic(1) t "clang" lc rgb "#3498db"