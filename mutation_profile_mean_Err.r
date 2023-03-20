### def function
cal_mean_sd=function(work_dir,samples,out_file){
  tmp_all=data.frame()
  for (i in samples){
    f=read.table(file.path(work_dir,paste0(i,'_A_filt_profile.txt')),header = T,sep = '\t',stringsAsFactors = F)
    if (nrow(tmp_all)==0){
      tmp=f[,c("Pos","Base","Y")]
      colnames(tmp)[3]=i
      tmp_all=tmp
    }else{
      tmp=f[,c("Pos","Y")]
      colnames(tmp)[2]=i
      tmp_all=merge(tmp_all,tmp,by = 'Pos')
    }
  }
  tmp_all$Y=rowMeans(tmp_all[,3:ncol(tmp_all)])
  tmp_all$Err=apply(tmp_all,1,function(x)sd(x[3:ncol(tmp_all)])/sqrt(length(samples)))
  tmp_all=tmp_all[,c('Pos','Base','Y','Err')]
  write.table(tmp_all,out_file,sep = '\t',quote = F,row.names = F )
}

### analyze data
work_dir="/Volumes/HQ_data/filt_profile"

samples=c('HQ4643','HQ4644','HQ4415','HQ4512','HQ4695','HQ4707','HQ4708','HQ4673','HQ4677','HQ4701','HQ4413','HQ4716','HQ4623','HQ4624','HQ4705','HQ4611','HQ4612','HQ4613','HQ4614','HQ4615','HQ4648','HQ4532','HQ4533','HQ4255','HQ4256','HQ4257')
cal_mean_sd(work_dir,samples,out_file='./WT_filt_profile.txt')

samples=c('HQ4645','HQ4646','HQ4647')
cal_mean_sd(work_dir,samples,out_file='./Fen1_filt_profile.txt')

samples=c('HQ4416','HQ4513','HQ4514')
cal_mean_sd(work_dir,samples,out_file='./UNG_filt_profile.txt')

samples=c('HQ4696','HQ4709','HQ4710','HQ4799')
cal_mean_sd(work_dir,samples,out_file='./53BP1_filt_profile.txt')

samples=c('HQ4676','HQ4702','HQ4797','HQ4798')
cal_mean_sd(work_dir,samples,out_file='./ATM_filt_profile.txt')

samples=c('HQ4516','HQ4641')
cal_mean_sd(work_dir,samples,out_file='./H2AX_filt_profile.txt')

samples=c('HQ4414','HQ4711','HQ4800')
cal_mean_sd(work_dir,samples,out_file='./XLF_filt_profile.txt')

samples=c('HQ4417','HQ4418','HQ4419','HQ4420')
cal_mean_sd(work_dir,samples,out_file='./Polh_filt_profile.txt')

samples=c('HQ4678','HQ4717','HQ4795')
cal_mean_sd(work_dir,samples,out_file='./Msh2_filt_profile.txt')

samples=c('HQ4680','HQ4699')
cal_mean_sd(work_dir,samples,out_file='./Msh2_UNG_He_filt_profile.txt')

samples=c('HQ4698')
cal_mean_sd(work_dir,samples,out_file='./UM_filt_profile.txt')

samples=c('HQ4626','HQ4627','HQ4704','HQ4706')
cal_mean_sd(work_dir,samples,out_file='./Exo1_filt_profile.txt')

samples=c('HQ4617','HQ4619','HQ4620','HQ4621','HQ4622')
cal_mean_sd(work_dir,samples,out_file='./Pms2_filt_profile.txt')

samples=c('HQ4649','HQ4650','HQ4651','HQ4652')
cal_mean_sd(work_dir,samples,out_file='./MLH1_filt_profile.txt')

samples=c('HQ4534','HQ4535','HQ4628')
cal_mean_sd(work_dir,samples,out_file='./Ape2_male_filt_profile.txt')

samples=c('HQ4713','HQ4714','HQ4715')
cal_mean_sd(work_dir,samples,out_file='./Ape2_female_filt_profile.txt')


samples=c('HQ4258','HQ4259','HQ4260','HQ4261','HQ4262','HQ4263')
cal_mean_sd(work_dir,samples,out_file='./AID_filt_profile.txt')












