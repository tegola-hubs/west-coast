base_cost = 88

print """\
\\begin{tabular}{lrr}
width & 6 GHz & 11 GHz\\\\
\hline\\\\\
"""
for bw in (10, 20, 30, 40, 56):
    cells = ["%d MHz" % bw]
    for band_factor in (0.74, 0.43):
        cells.append("\\pounds %d" % (bw * base_cost * band_factor))
    print " & ".join(cells) + "\\\\"
print """\
\\end{tabular}
"""
