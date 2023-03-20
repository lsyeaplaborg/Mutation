
#for i in *txt; do python pmm_baseexchange.py -sn $i; done
import argparse
parser = argparse.ArgumentParser(description="")
parser.add_argument('-sn', default=False, dest='samplename', help="HQxxx的xxx")

args = parser.parse_args()

with open(args.samplename, 'r') as f:
	f = f.readlines()
	a_count, g_count, c_count, t_count, ac_subs, ag_subs, at_subs, ca_subs, cg_subs, ct_subs, ga_subs, gc_subs, gt_subs, ta_subs, tc_subs, tg_subs  = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
	for i in range(20, len(f)):
		if f[i].split('\t')[1] == 'A':
			a_count += float(f[i].split('\t')[2])
			ac_subs += float(f[i].split('\t')[7])
			ag_subs += float(f[i].split('\t')[6])
			at_subs += float(f[i].split('\t')[8])
		if f[i].split('\t')[1] == 'G':
			g_count += float(f[i].split('\t')[2])
			ga_subs += float(f[i].split('\t')[5])
			gc_subs += float(f[i].split('\t')[7])
			gt_subs += float(f[i].split('\t')[8])
		if f[i].split('\t')[1] == 'C':
			c_count += float(f[i].split('\t')[2])
			ca_subs += float(f[i].split('\t')[5])
			cg_subs += float(f[i].split('\t')[6])
			ct_subs += float(f[i].split('\t')[8])
		if f[i].split('\t')[1] == 'T':
			t_count += float(f[i].split('\t')[2])
			ta_subs += float(f[i].split('\t')[5])
			tc_subs += float(f[i].split('\t')[7])
			tg_subs += float(f[i].split('\t')[6])
with open(args.samplename+'_baseexchange.txt', 'w') as o:
	o.write('\t'+args.samplename+'_A\n')
	o.write("A_totalreads\t"+str(a_count)+'\n')
	o.write("C_totalreads\t"+str(c_count)+'\n')
	o.write("G_totalreads\t"+str(g_count)+'\n')
	o.write("T_totalreads\t"+str(t_count)+'\n')
	o.write("ac_subs\t"+str(ac_subs)+'\n')
	o.write("ag_subs\t"+str(ag_subs)+'\n')
	o.write("at_subs\t"+str(at_subs)+'\n')
	o.write("ca_subs\t"+str(ca_subs)+'\n')
	o.write("cg_subs\t"+str(cg_subs)+'\n')
	o.write("ct_subs\t"+str(ct_subs)+'\n')
	o.write("ga_subs\t"+str(ga_subs)+'\n')
	o.write("gc_subs\t"+str(gc_subs)+'\n')
	o.write("gt_subs\t"+str(gt_subs)+'\n')
	o.write("ta_subs\t"+str(ta_subs)+'\n')
	o.write("tc_subs\t"+str(tc_subs)+'\n')
	o.write("tg_subs\t"+str(tg_subs)+'\n')
	o.write("ac_freq\t"+str(ac_subs/a_count)+'\n')
	o.write("ag_freq\t"+str(ag_subs/a_count)+'\n')
	o.write("at_freq\t"+str(at_subs/a_count)+'\n')
	o.write("ca_freq\t"+str(ca_subs/c_count)+'\n')
	o.write("cg_freq\t"+str(cg_subs/c_count)+'\n')
	o.write("ct_freq\t"+str(ct_subs/c_count)+'\n')
	o.write("ga_freq\t"+str(ga_subs/g_count)+'\n')
	o.write("gc_freq\t"+str(gc_subs/g_count)+'\n')
	o.write("gt_freq\t"+str(gt_subs/g_count)+'\n')
	o.write("ta_freq\t"+str(ta_subs/t_count)+'\n')
	o.write("tc_freq\t"+str(tc_subs/t_count)+'\n')
	o.write("tg_freq\t"+str(tg_subs/t_count)+'\n')
	

	
	
	
	
	
	
	