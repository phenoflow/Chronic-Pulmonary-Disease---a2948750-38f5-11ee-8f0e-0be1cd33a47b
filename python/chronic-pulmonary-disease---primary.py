# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"14H4.00","system":"readv2"},{"code":"H310100","system":"readv2"},{"code":"H350.00","system":"readv2"},{"code":"H352000","system":"readv2"},{"code":"H352100","system":"readv2"},{"code":"H356.00","system":"readv2"},{"code":"H35y000","system":"readv2"},{"code":"H35y500","system":"readv2"},{"code":"H55..11","system":"readv2"},{"code":"H563.11","system":"readv2"},{"code":"H57..00","system":"readv2"},{"code":"H570.00","system":"readv2"},{"code":"H57y000","system":"readv2"},{"code":"H57y100","system":"readv2"},{"code":"H57y200","system":"readv2"},{"code":"H57y300","system":"readv2"},{"code":"H57y500","system":"readv2"},{"code":"H58y400","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chronic-pulmonary-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chronic-pulmonary-disease---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chronic-pulmonary-disease---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chronic-pulmonary-disease---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
