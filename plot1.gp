set terminal pngcairo enhanced font 'Verdana,12'

# Définir le séparateur de champ
set datafile separator ";"

# Définir les colonnes de données
mibs_col = 12

# Titre du graphique
set title "Histogramme en fonction de Mib/s"

# Étiquettes des axes
set xlabel "Versions"
set ylabel "Mib/s"

set yrange [0:*]

# Style d'histogramme
set style data histograms
set style histogram cluster gap 1

# Configurer le format des étiquettes sur l'axe x
set xtics rotate by -45
set style fill solid border -1



# Charger les données depuis des fichiers texte

d1 = 'reduc/mesures_clang/m0.txt'
d2 = 'reduc/mesures_clang/m1.txt'
d3 = 'reduc/mesures_clang/m2.txt'
d4 = 'reduc/mesures_clang/m3.txt'
d5 = 'reduc/mesures_clang/mf.txt'
d6 = 'reduc/mesures_clang/ms.txt'
d7 = 'reduc/mesures_clang/mg.txt'




# Dessiner l'histogramme1
set output ' clang reduc-Ofast.png'
set key left top
plot d5 every ::1 using mibs_col:xtic(1) t "  -Ofast" lc rgb "#3498db"


# Dessiner l'histogramme2
set output ' clang reduc-O0.png'
set key left top
plot d1 every ::1 using mibs_col:xtic(1) t " -O0" lc rgb "#3498db"

# Dessiner l'histogramme3
set output 'clang  reduc-O1.png'
set key left top
plot d2 every ::1 using mibs_col:xtic(1) t "  -O1" lc rgb "#3498db"

# Dessiner l'histogramme4
set output 'clang  reduc-O2.png
set key left top
plot d3 every ::1 using mibs_col:xtic(1) t "   -O2" lc rgb "#3498db"

# Dessiner l'histogramme5
set output 'clang  reduc-O3.png'
set key left top
plot d4 every ::1 using mibs_col:xtic(1) t  "  -O3" lc rgb "#3498db"
# Dessiner l'histogramme6
set output 'clang  reduc-Os.png'
set key left top
plot d6 every ::1 using mibs_col:xtic(1) t "  -Os" lc rgb "#3498db"
# Dessiner l'histogramme7
set output 'clang  reduc-Og.png'
set key left top
plot d7 every ::1 using mibs_col:xtic(1) t "  -Og" lc rgb "#3498db"
