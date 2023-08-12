# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"14B4.00","system":"readv2"},{"code":"173A.00","system":"readv2"},{"code":"173c.00","system":"readv2"},{"code":"173d.00","system":"readv2"},{"code":"1780","system":"readv2"},{"code":"1O2..00","system":"readv2"},{"code":"6.63E+02","system":"readv2"},{"code":"6.63E+102","system":"readv2"},{"code":"663N.00","system":"readv2"},{"code":"663N000","system":"readv2"},{"code":"663N100","system":"readv2"},{"code":"663N200","system":"readv2"},{"code":"663O.00","system":"readv2"},{"code":"663O000","system":"readv2"},{"code":"663P.00","system":"readv2"},{"code":"663P000","system":"readv2"},{"code":"663P100","system":"readv2"},{"code":"663P200","system":"readv2"},{"code":"663Q.00","system":"readv2"},{"code":"663U.00","system":"readv2"},{"code":"663V.00","system":"readv2"},{"code":"663V000","system":"readv2"},{"code":"663V100","system":"readv2"},{"code":"663V200","system":"readv2"},{"code":"663V300","system":"readv2"},{"code":"663W.00","system":"readv2"},{"code":"663d.00","system":"readv2"},{"code":"663e.00","system":"readv2"},{"code":"663f.00","system":"readv2"},{"code":"663h.00","system":"readv2"},{"code":"663j.00","system":"readv2"},{"code":"663m.00","system":"readv2"},{"code":"663n.00","system":"readv2"},{"code":"663p.00","system":"readv2"},{"code":"663q.00","system":"readv2"},{"code":"663r.00","system":"readv2"},{"code":"663s.00","system":"readv2"},{"code":"663t.00","system":"readv2"},{"code":"663u.00","system":"readv2"},{"code":"663v.00","system":"readv2"},{"code":"663w.00","system":"readv2"},{"code":"663y.00","system":"readv2"},{"code":"66YC.00","system":"readv2"},{"code":"66YP.00","system":"readv2"},{"code":"66Yq.00","system":"readv2"},{"code":"66Yr.00","system":"readv2"},{"code":"66Ys.00","system":"readv2"},{"code":"66Yu.00","system":"readv2"},{"code":"G581.11","system":"readv2"},{"code":"H312000","system":"readv2"},{"code":"H33..00","system":"readv2"},{"code":"H33..11","system":"readv2"},{"code":"H330.00","system":"readv2"},{"code":"H330.11","system":"readv2"},{"code":"H330.12","system":"readv2"},{"code":"H330.13","system":"readv2"},{"code":"H330.14","system":"readv2"},{"code":"H330000","system":"readv2"},{"code":"H330011","system":"readv2"},{"code":"H330100","system":"readv2"},{"code":"H330111","system":"readv2"},{"code":"H330z00","system":"readv2"},{"code":"H331.00","system":"readv2"},{"code":"H331.11","system":"readv2"},{"code":"H331000","system":"readv2"},{"code":"H331100","system":"readv2"},{"code":"H331111","system":"readv2"},{"code":"H331z00","system":"readv2"},{"code":"H332.00","system":"readv2"},{"code":"H333.00","system":"readv2"},{"code":"H334.00","system":"readv2"},{"code":"H335.00","system":"readv2"},{"code":"H33z.00","system":"readv2"},{"code":"H33z011","system":"readv2"},{"code":"H33z100","system":"readv2"},{"code":"H33z111","system":"readv2"},{"code":"H33z200","system":"readv2"},{"code":"H33zz00","system":"readv2"},{"code":"H33zz11","system":"readv2"},{"code":"H33zz12","system":"readv2"},{"code":"H35y700","system":"readv2"},{"code":"SLF7z00","system":"readv2"},{"code":"TJF7.00","system":"readv2"},{"code":"TJF7z00","system":"readv2"},{"code":"U60F600","system":"readv2"},{"code":"U60F611","system":"readv2"},{"code":"U60F61A","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chronic-pulmonary-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chronic-pulmonary-disease-antiasthmatics---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chronic-pulmonary-disease-antiasthmatics---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chronic-pulmonary-disease-antiasthmatics---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
