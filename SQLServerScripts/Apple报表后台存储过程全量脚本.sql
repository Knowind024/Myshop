-----------------------------------------------------------------------------------------------------------------
-- $Author:: Jijiang               $  
-- $Date:: 05-06-07 14:19          $  
-- $Modtime:: 05-06-06 17:10       $  
-- $Revision:: 5                   $  
------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------
--Apple Release2 �����̨�洢����ȫ���ű�
--����: �Խ�  20031009
--ִ��λ�ã�
--	ҵ������������ݿ�	AppleCMStock
--	�ŵ���������ݿ�	AppleSHStock
--	�����������ݿ�		AppleDCStock
--ע�⣺                                
--	1. ִ��ʱ�����ִ��λ���޸�ѡ�����ݿ�����
-----------------------------------------------------------------
--�洢�������£�

--TL_getS_EWeek		����һ���� �������������ܵ���һ����ĩ����
--TL_GetQuarterDate	���㼾����ֹ����
--TL_GetTablesName	ȡ��������ر�
--rp_421101 �ɹ�����ͳ�Ʊ�
--rp_421102 ���н������ܱ�
--rp_421103 �ŵ�����/���䵥һ����
--rp_421104 �������ܱ���
--rp_421105 �ŵ걨��/���õ���һ����
--rp_421107 ��Ӧ����������һ����
--rp_421108 �����㹺������һ����
--rp_421109 ������������ۻ��ܱ�
--rp_423203 ����汨��
--rp_423204 �ߵͿ�汨��
--rp_423205 ����������һ����
--rp_425101 �����ձ���
--rp_425102 С���������ձ���
--rp_425104 �˿��˻���Ʒ��ϸ����
--rp_423430 ��Ӧ�̲ɹ������±�
--rp_423460 �ɹ�Աֹͣ�����嵥
--rp_423440 �ؼ���Ʒ���۷�������һ��
--rp_419205 �ܲ�ʵʱ���۲�ѯ
--rp_424500 �ŵ���Ʒ������ҵ��/ë������
--rp_424510 ӪҵƺЧ��
--rp_424590 �ŵ겹��Ҫ�����
--rp_424600 �ŵ���Ʒ��ת���а�
--rp_423500 ���ŵ�ռ�������ȥ��ͬ�ڱ�
--rp_426710 ��Ӧ�̵�����ͳ��(��������������ȱ����ͳ��)
--rp_426570 ��ǰ������Ʒ�ۼ۲�ѯ
--rp_424620 �߿����ͳ��
--rp_427530 ���յ�������
--rp_427500 ��ë�����ܱ���
--rp_427490 �ۼƹ������������
--rp_427480 �ۼƹ�����ɹ���ë������
--rp_427540 ��Ӧ���ͻ�������
--rp_427860 ҵ�񵥾�һ����(δȷ��)
--rp_427861 ҵ�񵥾�һ����(��ȷ��)
--rp_422410 �ŵ���̭�п����Ʒ����
--rp_422420 ���ŵ���̭��Ʒ�嵥
--rp_422430 ��������̭����Ʒ�����±�
--rp_422440 �������ĺ��ŵ���̭��Ʒ����嵥
--rp_422480 ����������Ʒ����� ��CM��
--rp_423410 DM��Ʒ����Ч������
--rp_426440 �������������±�-����
--rp_427730 ��Ʒ����˰����ϸ��
--rp_426450 �������ĳ����ձ�
--rp_427413 ��Ʒ�������а�
--rp_427416 ��Ʒ��ë�����ܱ���
--rp_427417 ��Ʒ��ë����ϸ����
--rp_427512 �������۳ɱ�ë��ռ���ۺϷ�������
--rp_427516 �������۳ɱ�ë��ռ���ۺϷ�������
--rp_427517 ������ר�������۳ɱ�ë��ռ���ۺϷ�������
--rp_427513 ���ŷ�˰�����۳ɱ�ë���ۺϷ�������
--rp_427514 �����������۳ɱ�ë���ۺϷ�������
--rp_427515 ������������Ӧ�����۳ɱ�ë���ۺϷ�������
--rp_427612 ����ר��Ӧ�����ۻ��ܱ�
--rp_427613 ר����Ʒ���ۻ��ܱ�
--rp_427720 ҵ�񵥾ݻ��ܱ�
--rp_427780 �����ۼ۽��һ����
--rp_423470 �ŵ궩����Ʒ��;���ձ�
--rp_423530 ��ë������
--rp_427790 �������ۻ����ձ���
--rp_426720 ��������ȱ�������ϸ��ѯ
--rp_423531 �����������ܱ�
--rp_423533 �����ջ����ܱ�
--rp_423535 �����˻����ܱ�
--rp_424627 ������Ʒ��������ܱ�
--rp_424628 ������Ʒ������ÿ�ձ�
--rp_421335 ������Ӧ�̽�������ܱ�
--rp_421334 ������Ӧ�̽�����ÿ�ձ���
--rp_423537 ����DM�������ܱ�

--rp_424629 ��������Ʒ�����ѻ��ܱ�
--rp_424630 ��������Ʒ��������ϸ��

--rp_427740 �������ڳɱ���̯��
--rp_427770 ������Ʒ���۳ɱ���̯��
--rp_427820 ������Ʒ����/�����ϸ��
--rp_427830 ������Ӧ������/�����ܱ�
--rp_427870 ��Ʒ���������ϸ��
--rp_427871 DM��Ʒ����������ϸ����
--rp_427872 ��Ʒ��������ܱ�
--rp_429020 �������˳ɱ������ϸ��
--rp_429030 ũ����Ʒ�չ�����ɱ�˰���

--rp_423539 ���������ۻ��ܱ�
--rp_423541 �������ۼۻ��ܱ�
--rp_423543 ��������Ա�ۻ��ܱ�
--rp_424621 ���������춯���ܱ�
--rp_424623 �����Ż��ۿۻ��ܱ�
--rp_425103 ����������ϸ��

--rp_421205 �ŵ걨��/������Ʒ��ϸ��
--rp_425114 �����������ձ���

--rp_423440 DM��Ʒ����������ϸ����
--rp_421204 �����˻���ϸ��
--rp_425302 ʱ�������ձ���

--rp_427881 ��Ӧ�̸�����������
--rp_427890 ��Ʒ���������ϸ�� 
--rp_427891 ��Ʒ�����ʻ��ܱ���
--rp_427892 ���Ž�������ܱ�
--rp_427898 ��Ӧ�̿�������ܱ�
--rp_427899 ��Ѷ��Ʒ�����ٱ��� 
--rp_427900 ��Ʒҵ��������ٱ��� 
--rp_427901 �ŵ�����ת����ͳ�Ʊ� 
--rp_427902  ��Ӧ�̿����ת����ͳ�Ʊ�

--rp_429910 ����ԱЧ�ʿ����ձ�

--��Ʒ�����溬˰�ձ���(�̶���)
--SP_RPTBase1001_Stock ��Ʒ�����溬˰�ձ������洢����
--SP_RPTBase1001 ������Ʒ�����溬˰�ձ���

--getSaleCost �������㱨��[����]


--use AppleCMStock
--use AppleSHStock
--use AppleDCStock
go

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO

-----------------------------------------------------------------------------------------
--TL_getS_EWeek	����һ���� �������������ܵ���һ����ĩ����
if exists (select * from sysobjects where id = object_id('dbo.TL_getS_EWeek') and sysstat & 0xf = 4)
    drop procedure dbo.TL_getS_EWeek
GO

create procedure dbo.TL_getS_EWeek @Sdate datetime,@startdate datetime output,@enddate datetime output
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030807_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  select @startdate=@sdate-datepart(dw,@sdate-1)+1;
  select @enddate=@sdate+(7-datepart(dw,@sdate-1));  
  return 0;   
End
Go

-----------------------------------------------------------------
--TL_GetQuarterDate			���㼾����ֹ����
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.11
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.TL_GetQuarterDate') and sysstat & 0xf = 4)
    drop procedure dbo.TL_GetQuarterDate
GO

create procedure dbo.TL_GetQuarterDate @Sdate datetime,@begindate datetime output,@enddate datetime output
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_200308011_01,Last Mender:SHJ
-----------------------------------------------------------------
AS BEGIN
  declare @Flag			int;
  	
  select @Flag=datepart(qq,@SDate)
  if @Flag=1  begin 
	select @begindate=convert(datetime,left(convert(char(4),@Sdate,112),4)+'0101')
	select @enddate=convert(datetime,left(convert(char(4),@Sdate,112),4)+'0330')
   end
  if @Flag=2 begin
	select @begindate=convert(datetime,left(convert(char(4),@Sdate,112),4)+'0401')
	select @enddate=convert(datetime,left(convert(char(4),@Sdate,112),4)+'0630')
  end
  
  if @Flag=3   begin
	select @begindate=convert(datetime,left(convert(char(4),@Sdate,112),4)+'0701')
	select @enddate=convert(datetime,left(convert(char(4),@Sdate,112),4)+'0930')
  end
  if @Flag=4   begin
	select @begindate=convert(datetime,left(convert(char(4),@Sdate,112),4)+'1001')
	select @enddate=convert(datetime,left(convert(char(4),@Sdate,112),4)+'1231')
  end

  return 0;   
End
Go

-----------------------------------------------------------------
--ȡ��������ر�TL_GetTablesName
--��������ʼ���ڡ��������ڡ����������ر�������,������
--˵��������ʼ���ںͽ�������ȡ�����б���������ԭʼ�����ͱ��ݱ�������,����
--���أ��ɹ�0		�ϵ��(35955X)
--��
--�㷨��
--�������Խ� 2003-8-21 16:03
--�޸ģ��δ�ϲ 2007.06.08 ���@begindate����@enddate�׳��쳣
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.TL_GetTablesName') and sysstat & 0xf = 4)
    drop procedure dbo.TL_GetTablesName
GO
create procedure dbo.TL_GetTablesName @begindate datetime,@enddate datetime,
    @tablename char(64),@tables char(1024) output
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030821_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);

  declare @strTableName char(32);
  declare @str1 char(4);
  declare @str2 char(2);
  if @enddate<@begindate 
  begin
    select @Msg='ȡ����ʱ����@enddate<@begindate',@BreakPoint=359550;
    goto ErrHandle;
  end

  select @tables=ltrim(rtrim(@tablename));
  select @str1=Year(@begindate);
  select @str2=Month(@begindate);
  if len(@str2)=1 select @str2='0'+@str2;
  select @strTableName=ltrim(rtrim(@tablename))+@str1+@str2;
  if exists (select * from dbo.sysobjects where name=@strTableName)
    select @tables=ltrim(rtrim(@tables))+','+ltrim(rtrim(@strtablename));
  while not ((Year(@begindate)=Year(@enddate)) and (Month(@begindate)=Month(@enddate))) begin
    select @begindate=dateadd(mm,1,@begindate);
    select @str1=Year(@begindate);
    select @str2=Month(@begindate);
    if len(@str2)=1 select @str2='0'+@str2;
    select @strTableName=ltrim(rtrim(@tablename))+@str1+@str2;
    if exists (select * from dbo.sysobjects where name=@strTableName)
      select @tables=ltrim(rtrim(@tables)) +',' +ltrim(rtrim(@strtablename));
  end;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=359551;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  return 0;
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go
/* ȡ����ʹ�þ���
declare @tables char(1024);
declare @subTableName char(32);
declare @i int;
exec tl_gettablesname '20030601','20030801','salecost',@tables output
select @tables;

select @tables as tablesname into #427730tmp
while 1=1 begin
    select @i=charindex(',',tablesname) from #427730tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427730tmp;              --û��,ȡ��ǰֵ
       select @subTableName;--�˴�����д�Լ��Ĵ���
       break;
    end
    else begin 
      select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427730tmp;
      select @subTableName;--�˴�����д�Լ��Ĵ���
      update #427730tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
end;

*/

-----------------------------------------------------------------
--rp_421101			�ɹ�����ͳ�Ʊ���ʷ�������ͳ�ƣ�
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������Ф�� 2003.06.13
--�޸ģ����� 2003.10.24 ȡ�������ű�ѡԼ�������ӻ�������
--			��������״̬=100
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_421101') and sysstat & 0xf = 4)
    drop procedure dbo.rp_421101
GO
create procedure dbo.rp_421101 @Begindate datetime,@enddate datetime,@shopid char(4)
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20031024_01,Last Mender:VL
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  SET NOCOUNT ON
  
  create table #xy_temp1(
    	shopid 		char(4),
	managedeptid	int,
	sheetid		char(16),  
	goodsid		int,
	cost		dec(12,4),
	qty		dec(12,3),
	venderid	int
  );

  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420000,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  if rtrim(@shopid)='' 
    insert into #xy_temp1
      select a.shopid,floor(c.deptid/@levelvalue) managedeptid,b.sheetid,b.goodsid,b.cost,b.qty,a.venderid 
      from purchase a,purchaseitem b,goods c
      where a.sheetid=b.sheetid and b.goodsid=c.goodsid and a.flag=100
        and a.checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112);
  else
    insert into #xy_temp1
      select a.shopid,floor(c.deptid/@levelvalue) managedeptid,b.sheetid,b.goodsid,b.cost,b.qty,a.venderid 
      from purchase a,purchaseitem b,goods c
      where a.sheetid=b.sheetid and b.goodsid=c.goodsid and a.flag=100 and shopid=@shopid
        and a.checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112);

  select @Err=@@Error,@BreakPoint=420020,@msg='�Ӷ���ȡ����ʱ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  insert into #421101(shopid,managedeptid,sheetidsum,vendersum,goodssum,goodscount,costvalue)
    select shopid,managedeptid,count (distinct sheetid),count(distinct venderid),count(distinct goodsid),
	sum(qty) as count,sum(qty*cost)
	from #xy_temp1 group by shopid,managedeptid;
  select @Err=@@Error,@BreakPoint=420030,@msg='����д����ʱ����ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  drop table #xy_temp1;
  return 0;    
ErrHandle:  
  drop table #xy_temp1;
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

------421102���н������ܱ�
if exists (select * from sysobjects where id = object_id('dbo.rp_421102') and sysstat & 0xf = 4)
    drop procedure dbo.rp_421102
GO
create procedure dbo.rp_421102 @Begindate  datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030613_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @sheettypename char(16);
  declare @tempflag      int;
  declare @managename    char(16);
  declare @deptlevel     int;
  declare @levelvalue    int;
  SET NOCOUNT ON
  select @tempflag=0;
  create table #temp_421102
  (shopid     char(4)  not null,
   sheetid    char(16) not null,
   sheettype  int      not null,
   venderid   int      not null,
   managedeptid     int      not null,
   costtaxrate  dec(4,2) not null,
   costvalue    dec(14,4) not null,
   notaxcostvalue dec(14,4) not null,
   costtaxvalue dec(12,2) not null
   );
   select @Err=@@Error,@BreakPoint=421000,@Msg='������ʱ���ݱ�ʱ����';
   if @Err != 0 goto ErrHandle;
   select @Tempflag=1;

  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=421010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=421020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
   
  insert into #temp_421102(shopid,sheetid,sheettype,venderid,managedeptid,costtaxrate,costvalue,notaxcostvalue,costtaxvalue)
  select shopid,sheetid,sheettype,venderid,round(deptid/@levelvalue,0),costtaxrate,
          sum(case sheettype when 2323 then costvalue*(-1) else costvalue end),
          sum(case sheettype when 2323 then (costvalue-costtaxvalue)*(-1) else costvalue-costtaxvalue end),
          sum(case sheettype when 2323 then costtaxvalue*(-1) else costtaxvalue end)
          from unbalsheet0 where  sheettype in (2301,2323,5205) and
            checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
            group by shopid,sheetid,sheettype,venderid,round(deptid/@levelvalue,0),costtaxrate;
  select @Err=@@Error,@Msg='ȡ�ٱ�����ʱ����',@BreakPoint=421030;          
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  insert into #temp_421102(shopid,sheetid,sheettype,venderid,managedeptid,costtaxrate,costvalue,notaxcostvalue,costtaxvalue)
  select shopid,sheetid,sheettype,venderid,round(deptid/@levelvalue,0),costtaxrate,
          sum(case sheettype when 2323 then costvalue*(-1) else costvalue end),
          sum(case sheettype when 2323 then (costvalue-costtaxvalue)*(-1) else costvalue-costtaxvalue end),
          sum(case sheettype when 2323 then costtaxvalue*(-1) else costtaxvalue end)
          from unbalsheet where sheettype in (2301,2323,5205) and
            checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
            group by shopid,sheetid,sheettype,venderid,round(deptid/@levelvalue,0),costtaxrate;
  select @Err=@@Error,@Msg='ȡ��ʽ������ʱ����',@BreakPoint=421040;          
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  insert into #421102(shopid,shopname,sheetid,sheettype,managedeptid,managename,costtaxrate,costvalue,costtaxvalue,notaxcostvalue)
  select a.shopid,b.name,a.sheetid,a.sheettype,a.managedeptid,c.name,a.costtaxrate,a.costvalue,a.costtaxvalue,a.notaxcostvalue
  from #temp_421102 a,shop b,sgroup c  where a.shopid=b.id  and a.managedeptid=c.id
  select @Err=@@Error,@BreakPoint=421050;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
                  
  drop table #temp_421102;
  
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_421102;
  return -1;
End
Go 


-----421103�ŵ�����/���䵥һ����
if exists (select * from sysobjects where id = object_id('dbo.rp_421103') and sysstat & 0xf = 4)
    drop procedure dbo.rp_421103
GO

create procedure dbo.rp_421103 @begindate datetime,@enddate datetime,@sheetflag int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030613_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @tempflag=0;
  create table #temp_421103
  (shopid         char(4),
   managedeptid   int,
   sheetid        char(16),
   costvalue      dec(14,4),
   notaxcostvalue dec(14,4),
   costtaxvalue   dec(12,2) 
  );
  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  insert into #temp_421103(shopid,managedeptid,sheetid,costvalue,notaxcostvalue,costtaxvalue)
    select shopid,round(deptid/@levelvalue,0),sheetid,sum(costvalue),sum(costvalue-costtaxvalue),sum(costtaxvalue)
    from UnaccSheet0 where convert(char(10),checkdate,120) between @begindate and @enddate 
         and sheettype=2332  
    group by shopid,round(deptid/@levelvalue,0),sheetid;
    select @Err=@@Error,@Msg='ȡ��ʱ���ݳ�����',@BreakPoint=420030;
    if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  insert into #temp_421103(shopid,managedeptid,sheetid,costvalue,notaxcostvalue,costtaxvalue)
    select shopid,round(deptid/@levelvalue,0),sheetid,sum(costvalue),sum(costvalue-costtaxvalue),sum(costtaxvalue)
    from UnaccSheet where convert(char(10),checkdate,120) between @begindate and @enddate 
        and sheettype=2332  
    group by shopid,round(deptid/@levelvalue,0),sheetid;
    select @Err=@@Error,@Msg='ȡ��ʽ���ݳ�����',@BreakPoint=420040;
    if (@Err is null) or (@Err!=0)  goto ErrHandle;

  if @sheetflag=1  begin
      insert into #421103(shopid,shopname,managedeptid,managename,sheetid,costvalue,notaxcostvalue,costtaxvalue)
        select a.shopid,c.name,a.managedeptid,b.name,a.sheetid,a.costvalue,a.notaxcostvalue,a.costtaxvalue
        from #temp_421103 a,sgroup b,shop c
        where a.managedeptid=b.id  and a.shopid=c.id and c.shoptype=21;
      select @Err=@@Error,@msg='��������ʱ��!!',@BreakPoint=420050;
      if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end else  begin
      insert into #421103(shopid,shopname,managedeptid,managename,sheetid,costvalue,notaxcostvalue,costtaxvalue)
        select a.shopid,c.name,a.managedeptid,b.name,a.sheetid,a.costvalue,a.notaxcostvalue,a.costtaxvalue
        from #temp_421103 a,sgroup b,shop c
        where a.managedeptid=b.id  and a.shopid=c.id and c.shoptype != 21;
      select @Err=@@Error,@msg='��������ʱ��!!',@BreakPoint=420060;
      if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end;
  update #421103 set RationType=b.Rationtype
  from #421103 a,Ration b
  where a.sheetid=b.sheetid;
  
  drop table #temp_421103
  return  0;  
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_421103;
  return -1;
End
Go


-----421104 �������ܱ���
--�޸ģ��Խ� 2003-10-20 12:30 ���������������ͻ����ơ������ˡ�����ˡ�������־
if exists (select * from sysobjects where id = object_id('dbo.rp_421104') and sysstat & 0xf = 4)
    drop procedure dbo.rp_421104
GO

create procedure dbo.rp_421104 @Begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030613_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=421000,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=421010,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select shopid,shopid2,sheetid,round(deptid/@levelvalue,0) managedeptid,sum(costvalue) costvalue,
         sum(pricevalue) pricevalue,sum(costtaxvalue) costtaxvalue,sum(pricetaxvalue) pricetaxvalue 
         into #temp_421104
         from unaccsheet0 where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
              and sheettype=2451
         group by shopid,shopid2,sheetid,round(deptid/@levelvalue,0) ;
  select @Err=@@Error,@BreakPoint=421030,@msg='ȡ��ʱ���ݱ�����ʱ������';      
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tempflag=1;
  
  insert into #temp_421104(shopid,shopid2,sheetid,managedeptid,costvalue,pricevalue,costtaxvalue,pricetaxvalue)
  select shopid,shopid2,sheetid,round(deptid/@levelvalue,0) managedeptid,sum(costvalue) costvalue,
         sum(pricevalue) pricevalue,sum(costtaxvalue) costtaxvalue,sum(pricetaxvalue) pricetaxvalue
         from unaccsheet where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
              and sheettype=2451
         group by shopid,shopid2,sheetid,round(deptid/@levelvalue,0);     
          
  select @Err=@@Error,@BreakPoint=421040,@msg='ȡ���ݱ�����ʱ������';      
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  insert into #421104(shopid,shopname,managedeptid,managename,custno,sheetid,costvalue,notaxcostvalue,
                                        costtaxvalue,pricevalue,notaxpricevalue,pricetaxvalue)
      select a.shopid,b.name,a.managedeptid,c.name,a.shopid2,a.sheetid,a.costvalue,a.costvalue-a.costtaxvalue,
                             a.costtaxvalue,a.pricevalue,a.pricevalue-a.pricetaxvalue,a.pricetaxvalue
                             from  #temp_421104 a,shop b,sgroup c
                             where a.shopid=b.id and a.managedeptid=c.id
  select @Err=@@Error,@msg='��������ʱ����',@BreakPoint=421050;                           
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #temp_421104;
  update #421104 set custno=b.GuestID,Editor=b.Editor,Checker=b.checker,RetFlag=b.RetFlag
    from #421104 a,WholeSale b
    where a.sheetid*=b.sheetid;
  update #421104 set custname=b.GuestName
    from #421104 a, WholeGuest b
    where a.custno=b.ID;

  return 0;   
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_421104;
  return -1;
End
Go

-------421105�ŵ걨��/���õ���һ����
--�޸ģ��Խ� 2003-10-16 10:46 ���������ˡ�����ˡ���ע
--�޸�: cmg 2006-12-06 rp_421205ȡ����wastebook���˴�ȡ����unaccsheet��ͳһΪwastebook

if exists (select * from sysobjects where id = object_id('dbo.rp_421105') and sysstat & 0xf = 4)
    drop procedure dbo.rp_421105
GO

create procedure dbo.rp_421105 @Begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030613_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  
  
  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;
  
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=421000,@msg='ȡ�����ż���ʱ������';
  if @Err!=0  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=421010,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;


select * into #421105Wastebook from Wastebook where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'Wastebook',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42120512;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #421105tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #421105tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #421105tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #421105Wastebook select * from '
           + ltrim(rtrim(@subTableName))
           + ' where  sheettype in (2413,2423,2473) and convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112) +'''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #421105tablename;
       select @SQLString='insert into #421105Wastebook select * from '
           + ltrim(rtrim(@subTableName))
           + ' where  sheettype in (2413,2423,2473) and convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112) +'''';
      execute (@SQLString);
      update #421105tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42120513;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #421105tablename;




  select shopid,sheetid,sheettype,venderid,round(deptid/@levelvalue,0) managedeptid,sum(costvalue) costvalue,
         sum(costtaxvalue) costtaxvalue
         into #temp_421105
         --from unaccsheet0 where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112) 
         --cmg modify
         from #421105Wastebook where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
       
         group by shopid,round(deptid/@levelvalue,0),sheettype,sheetid,venderid ;
  select @Err=@@Error,@BreakPoint=421030,@msg='ȡ��ʱ���ݱ�����ʱ������';      
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tempflag=1;
  
  --insert into #temp_421105(shopid,sheetid,sheettype,venderid,managedeptid,costvalue,costtaxvalue)
  --select shopid,sheetid,sheettype,venderid,round(deptid/@levelvalue,0) managedeptid,sum(costvalue),sum(costtaxvalue)
  --       from unaccsheet where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
  --            and sheettype in (2413,2423,2473)
  --       group by shopid,round(deptid/@levelvalue,0),sheettype,sheetid,venderid ;
                   
  --select @Err=@@Error,@BreakPoint=421040,@msg='ȡ���ݱ�����ʱ������';      
  --if (@Err is null) or (@Err!=0)  goto ErrHandle;

  insert into #421105(shopid,shopname,venderid,vendername,managedeptid,managename,sheettype,sheetid,costvalue,notaxcostvalue,costtaxvalue)
   select a.shopid,b.name,a.venderid,d.name,a.managedeptid,c.name,a.sheettype,a.sheetid,a.costvalue,a.costvalue-a.costtaxvalue,a.costtaxvalue
                             from  #temp_421105 a,shop b,sgroup c,vender d
                             where a.shopid=b.id and a.managedeptid=c.id and a.venderid=d.venderid
  
  update #421105 set Editor=b.Editor,Checker=b.checker,Reason=b.Reason
    from #421105 a,Xtran b
    where a.sheettype=2423 and a.sheetid*=b.sheetid;
    
  update #421105 set Editor=b.Editor,Checker=b.checker,Reason=''
    from #421105 a,SaleStuff b
    where a.sheettype=2473 and a.sheetid*=b.sheetid;
      
  update #421105 set Editor=b.Editor,Checker=b.checker,Reason=''
    from #421105 a,Lost b
    where a.sheettype=2413 and a.sheetid*=b.sheetid;   
    
  
  select @Err=@@Error,@msg='��������ʱ����',@BreakPoint=421050;                           
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 drop table #temp_421105;
 return 0;   
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_421105;
  return -1;
End
GO



----421107 ��Ӧ����������һ����
--�޸ģ��Խ� 2003-10-10 12:21 ȥ���ظ�����
--�޸ģ�κޱ 2003-11-05 �޸��˻������ʾ
-----------------------------------------------------------------
--rp_421107			��Ӧ����������һ����洢
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.20
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_421107') and sysstat & 0xf = 4)
    drop procedure dbo.rp_421107
GO
create procedure rp_421107 @beginDate datetime,@enddate datetime,@venderid int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030613_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tmpflag	int;
  SET NOCOUNT ON
  select @tmpflag=0;
     create table #421107tmp
    (
    checkdate      datetime   not null,
    sheettype      int        not null,
    sheetid        char(16)   not null,
    shopid         char(4)    not null,
    CostValue      dec(14,4)  not null,
    NoTaxCostValue dec(14,4)  not null,
    CostTaxValue   dec(14,2)  not null,
    paytype        char(1)    not null,
    payabledate    datetime       null,
    hsflag         smallint   not null, 		    
    fkflag         smallint   not null, 
    billheadsheetid  char(16)    null
    );
  select @tmpflag=1;
 -- δ����,δ��������浥��      
    insert into #421107(checkdate,sheettype,sheetid,shopid,paytype,hsflag,fkflag,
                                                   CostValue,NoTaxCostValue,CostTaxValue,payabledate,billheadsheetid)
    select a.checkdate,a.sheettype,a.sheetid,a.shopid,b.paytypesortid,0,0,
	  sum(case a.sheettype when 2323 then a.CostValue else a.CostValue end ),
	  sum(case a.sheettype when 2323 then (a.costvalue-a.costtaxvalue) else (a.costvalue-a.costtaxvalue) end), 
	  sum(case a.sheettype when 2323 then a.costtaxvalue else a.costtaxvalue end),null,null
	  from unbalsheet0 a,paytype b
	  where a.paytypeid = b.id and a.venderid = @VenderID and
	   a.checkdate between convert(char(8),@BeginDate,112) and convert(char(8),@EndDate,112)
			and a.sheettype in (2301,2323,5205) and a.affirmant is null
			group by a.checkdate,a.sheettype,a.sheetid,a.shopid,b.paytypesortid;
   select @Err=@@Error,@msg='ȡδ��������ʱ��������',@BreakPoint=421000;
   if (@Err is null) or (@Err!=0)  goto ErrHandle;

   insert into #421107(checkdate,sheettype,sheetid,shopid,paytype,hsflag,fkflag,
                                                  CostValue,NoTaxCostValue,CostTaxValue,payabledate,billheadsheetid)
   select a.checkdate,a.sheettype,a.sheetid,a.shopid,b.paytypesortid,1,0,
	  sum(case a.sheettype when 2323 then a.CostValue else a.CostValue end ),
	  sum(case a.sheettype when 2323 then (a.costvalue-a.costtaxvalue) else (a.costvalue-a.costtaxvalue) end), 
	  sum(case a.sheettype when 2323 then a.costtaxvalue else a.costtaxvalue end),null,null
	  from unbalsheet0 a,paytype b
	  where a.paytypeid = b.id and a.venderid = @VenderID and
	   a.checkdate between convert(char(8),@BeginDate,112) and convert(char(8),@EndDate,112)
			and a.sheettype in (2301,2323,5205) and a.affirmant is not null
			group by a.checkdate,a.sheettype,a.sheetid,a.shopid,b.paytypesortid;
   select @Err=@@Error,@msg='ȡδ��������ʱ��������',@BreakPoint=421010;
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
   
   insert into #421107(checkdate,sheettype,sheetid,shopid,paytype,hsflag,fkflag,
                                                  CostValue,NoTaxCostValue,CostTaxValue,payabledate,billheadsheetid)
   select a.checkdate,a.sheettype,a.sheetid,a.shopid,b.paytypesortid,1,0,
	  sum(case a.sheettype when 2323 then a.CostValue else a.CostValue end ),
	  sum(case a.sheettype when 2323 then (a.costvalue-a.costtaxvalue) else (a.costvalue-a.costtaxvalue) end), 
	  sum(case a.sheettype when 2323 then a.costtaxvalue else a.costtaxvalue end),null,null
	  from unbalsheet a,paytype b
	  where a.paytypeid = b.id and a.venderid = @VenderID and 
	   a.checkdate between convert(char(8),@BeginDate,112) and convert(char(8),@EndDate,112)
			and a.sheettype in (2301,2323,5205) and b.paytypesortid !='g'
			group by a.checkdate,a.sheettype,a.sheetid,a.shopid,b.paytypesortid;
   select @Err=@@Error,@msg='ȡ�Ѹ�������ʱ��������',@BreakPoint=421020;
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
		
	
----�Ѿ���������
   insert into #421107tmp(checkdate,sheettype,sheetid,shopid,paytype,hsflag,fkflag,
                                                CostValue,NoTaxCostValue,CostTaxValue,payabledate,billheadsheetid)
      select a.checkdate,a.sheettype,a.sheetid,a.shopid,'g',1,1,
			sum(a.costvalue),sum(a.costvalue-a.costtaxvalue),sum(a.costtaxvalue),convert(char(8),a.payabledate,112),a.BillheadSheetID
			from unpaidsheet a 
			where a.checkdate between convert(char(8),@BeginDate,112) and convert(char(8),@EndDate,112)
			   and  a.venderid = @VenderID
			group by a.checkdate,a.sheettype,a.sheetid,a.shopid,a.payabledate,a.BillheadSheetID;			
     select @Err=@@Error,@msg='ȡ�ѽ�������ʱ��������',@BreakPoint=421030;
     if (@Err is null) or (@Err!=0)  goto ErrHandle;
---δ���㵥��     
   insert into #421107tmp(checkdate,sheettype,sheetid,shopid,paytype,hsflag,fkflag,
                                                CostValue,NoTaxCostValue,CostTaxValue,payabledate,billheadsheetid)
      select a.checkdate,a.sheettype,a.sheetid,a.shopid,'g',1,0,
			sum(a.costvalue),sum(a.costvalue-a.costtaxvalue),sum(a.costtaxvalue),convert(char(8),a.payabledate,112),a.BillheadSheetID
			from unpaidsheet0 a 
			where a.checkdate between convert(char(8),@BeginDate,112) and convert(char(8),@EndDate,112)
			       and a.venderid = @VenderID
			group by a.checkdate,a.sheettype,a.sheetid,a.shopid,a.payabledate,a.BillheadSheetID;			
     select @Err=@@Error,@msg='ȡδ��������ʱ��������',@BreakPoint=421040;
     if (@Err is null) or (@Err!=0)  goto ErrHandle;
     
  delete from #421107
    from #421107 a,#421107tmp b
    where a.sheetid=b.sheetid and a.sheettype=b.sheettype;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  insert into #421107 select * from #421107tmp;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #421107tmp;
  return 0;   
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tmpflag=1 drop table #421107tmp;
  return -1;
End
Go

-----------421108�����㹺������һ����
if exists (select * from sysobjects where id = object_id('dbo.rp_421108') and sysstat & 0xf = 4)
    drop procedure dbo.rp_421108
GO

create procedure dbo.rp_421108 @payabledate datetime,@datasumfalg int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030613_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @begindate    datetime;
  declare @enddate      datetime;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @tempflag=0;
 create table #temp_421108
 (
  serialno   int       not null ,
  notes     char(32)   not null,
  shopid    char(4)    not null,
  shopname  char(16)   not null,
  venderid  int        not null,
  venname   char(64)   not null,
  managedeptid   int   not null,
  managename     char(32) not null,
  costvalue  dec(14,4) not null,
  costtaxvalue  dec(14,4) not null
  );
  select @Err=@@Error,@BreakPoint=421000,@Msg='������ʱ��ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tempflag=1;
  select @begindate=@payabledate-30;
  select @Enddate=@payabledate-30;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 10,'30��ǰӦ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and a.payabledate<convert(char(8),@enddate,112)
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421010,@Msg='����30����ǰ�����ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;


  select @begindate=@payabledate-30;
  select @Enddate=@payabledate-15;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 20,'15��ǰӦ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>=convert(char(8),@begindate,112)) 
            and (a.payabledate<convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421020,@Msg='����15����ǰ�����ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate-15;
  select @Enddate=@payabledate-7;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 30,'7��ǰӦ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>=convert(char(8),@begindate,112)) 
            and (a.payabledate<convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421030,@Msg='����7����ǰ�����ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate-7;
  select @Enddate=@payabledate;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 40,'������֮ǰӦ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>=convert(char(8),@begindate,112)) 
            and (a.payabledate<convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421040,@Msg='������֮ǰ�����ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @begindate=@payabledate;
  select @Enddate=@payabledate;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 50,'������Ӧ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and a.payabledate=convert(char(8),@begindate,112) 
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421050,@Msg='�����յ����ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @begindate=@payabledate;
  select @Enddate=@payabledate+7;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 60,'7����Ӧ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>convert(char(8),@begindate,112)) 
            and (a.payabledate<=convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421060,@Msg='ȡ7�������ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate+7;
  select @Enddate=@payabledate+15;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 70,'15����Ӧ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>convert(char(8),@begindate,112)) 
            and (a.payabledate<=convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421070,@Msg='ȡ15�������ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate+15;
  select @Enddate=@payabledate+30;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 80,'30����Ӧ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>convert(char(8),@begindate,112)) 
            and (a.payabledate<=convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421080,@Msg='ȡ30�������ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate;
  select @Enddate=@payabledate+30;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 90,'30���Ӧ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and a.payabledate>convert(char(8),@enddate,112)
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421090,@Msg='ȡ30������ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  if @datasumfalg=1  begin
     insert into #421108(serialno,notes,shopid,shopname,venderid,venname,costvalue,costtaxvalue)
      select serialno,notes,shopid,shopname,venderid,venname,sum(costvalue),sum(costtaxvalue)
      from #temp_421108
      group by serialno,notes,shopid,shopname,venderid,venname;
      select @Err=@@Error,@BreakPoint=421090,@Msg='����Ӧ�̷������ݴ���!!';
      if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end else begin
     insert into #421108(serialno,notes,shopid,shopname,venderid,venname,costvalue,costtaxvalue)
      select serialno,notes,shopid,shopname,managedeptid,managename,sum(costvalue),sum(costtaxvalue)
      from #temp_421108
      group by serialno,notes,shopid,shopname,managedeptid,managename;
      select @Err=@@Error,@BreakPoint=421090,@Msg='�������ŷ������ݴ���!!';
      if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end;
 drop table #temp_421108; 
 return 0;   
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_421108;
  return -1;
End
Go


----------421109������������ۻ��ܱ�
if exists (select * from sysobjects where id = object_id('dbo.rp_421109') and sysstat & 0xf = 4)
    drop procedure dbo.rp_421109
GO

create procedure dbo.rp_421109 @payabledate datetime,@datasumfalg int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030613_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @begindate    datetime;
  declare @enddate      datetime;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @tempflag=0;
 create table #temp_421109
 (
  serialno   int       not null ,
  notes     char(32)   not null,
  shopid    char(4)    not null,
  shopname  char(16)   not null,
  venderid  int        not null,
  venname   char(64)   not null,
  managedeptid   int   not null,
  managename     char(32) not null,
  costvalue  dec(14,4) not null,
  costtaxvalue  dec(14,4) not null
  );
  select @Err=@@Error,@BreakPoint=421000,@Msg='������ʱ��ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tempflag=1;
  select @begindate=@payabledate-30;
  select @Enddate=@payabledate-30;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 10,'30��ǰӦ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and a.payabledate<convert(char(8),@enddate,112)
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421010,@Msg='����30����ǰ�����ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;


  select @begindate=@payabledate-30;
  select @Enddate=@payabledate-15;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 20,'15��ǰӦ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>=convert(char(8),@begindate,112)) 
            and (a.payabledate<convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421020,@Msg='����15����ǰ�����ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate-15;
  select @Enddate=@payabledate-7;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 30,'7��ǰӦ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>=convert(char(8),@begindate,112)) 
            and (a.payabledate<convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421030,@Msg='����7����ǰ�����ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate-7;
  select @Enddate=@payabledate;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 40,'������֮ǰӦ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>=convert(char(8),@begindate,112)) 
            and (a.payabledate<convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421040,@Msg='������֮ǰ�����ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @begindate=@payabledate;
  select @Enddate=@payabledate;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 50,'������Ӧ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and a.payabledate=convert(char(8),@begindate,112) 
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421050,@Msg='�����յ����ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @begindate=@payabledate;
  select @Enddate=@payabledate+7;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 60,'7����Ӧ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>convert(char(8),@begindate,112)) 
            and (a.payabledate<=convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421060,@Msg='ȡ7�������ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate+7;
  select @Enddate=@payabledate+15;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 70,'15����Ӧ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>convert(char(8),@begindate,112)) 
            and (a.payabledate<=convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421070,@Msg='ȡ15�������ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate+15;
  select @Enddate=@payabledate+30;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 80,'30����Ӧ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>convert(char(8),@begindate,112)) 
            and (a.payabledate<=convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421080,@Msg='ȡ30�������ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate;
  select @Enddate=@payabledate+30;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 90,'30���Ӧ��',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and a.payabledate>convert(char(8),@enddate,112)
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421090,@Msg='ȡ30������ݴ���!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  if @datasumfalg=1  begin
     insert into #421109(serialno,notes,shopid,shopname,venderid,venname,costvalue,costtaxvalue)
      select serialno,notes,shopid,shopname,venderid,venname,sum(costvalue),sum(costtaxvalue)
      from #temp_421109
      group by serialno,notes,shopid,shopname,venderid,venname;
      select @Err=@@Error,@BreakPoint=421090,@Msg='����Ӧ�̷������ݴ���!!';
      if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end else begin
     insert into #421109(serialno,notes,shopid,shopname,venderid,venname,costvalue,costtaxvalue)
      select serialno,notes,shopid,shopname,managedeptid,managename,sum(costvalue),sum(costtaxvalue)
      from #temp_421109
      group by serialno,notes,shopid,shopname,managedeptid,managename;
      select @Err=@@Error,@BreakPoint=421090,@Msg='�������ŷ������ݴ���!!';
      if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end;
 drop table #temp_421109; 
 return 0;   
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_421109;
  return -1;
End
Go

-----423203����汨��
if exists (select * from sysobjects where id=object_id('dbo.rp_423203') and sysstat & 0xf =4)
     drop procedure dbo.rp_423203
GO
create procedure dbo.rp_423203 @shopid char(4)
WITH ENCRYPTION
-----------------------------------------------------------------
---Version Number:Apple1.0_20030613_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare  @Err     int;
  declare  @BreakPoint   int;
  declare  @Msg          varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare  @tempflag     int;
  SET NOCOUNT ON
  select @tempflag=0;
  create table #temp_423203
  (shopid      char(4)   not null,
   managedeptid   int    not null,
   goodsid     int       not null,
   barcodeid   char(13)  not null,
   gname       char(64)  not null,
   qty         dec(12,3) not null,
   );
   select @Err=@@Error,@BreakPoint=423000,@Msg='������ʱ��ʱ����!!!';
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
   
   select @deptlevel=value from config where name='�����ż���';
   select @Err=@@Error,@BreakPoint=423010,@msg='ȡ�����ż���ʱ������';
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
   select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
   select @Err=@@Error,@BreakPoint=423020,@msg='ȡ������Ȩֵ����!!';
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
   
   insert into #temp_423203(shopid,managedeptid,goodsid,barcodeid,gname,qty)
   select a.shopid,round(b.deptid/@levelvalue,0),a.goodsid,b.barcodeid,b.name,a.qty
    from inventory a,goods b
    where a.goodsid=b.goodsid and a.shopid=@shopid  and a.qty<=0;
   select @Err=@@Error,@breakPoint=423030,@msg='ȡ��ϸ����ʱ����';
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
   select @tempflag=1;
   
   insert into #423203(shopid,shopame,managedeptid,managename,goodsid,barcodeid,gname,qty,cost,costvalue)
   select a.shopid,b.name,a.managedeptid,c.name,a.goodsid,a.barcodeid,a.gname,a.qty,d.cost,a.qty*d.cost
   from #temp_423203 a,shop b,sgroup c,cost d
   where a.shopid=b.id and a.managedeptid=c.id and a.goodsid=d.goodsid 
   and a.shopid=d.shopid and a.shopid=@shopid and d.flag=0;
   select @Err=@@Error,@breakPoint=423040,@msg='������ϸ����ʱ����';
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
   drop table #temp_423203;
  return 0;
  ErrHandle:
    raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 drop table #temp_423203;
    return -1;
End
go

-----423204�ߵͿ�汨��
--�޸ģ� �δ�ϲ 2007-05-28 #5260 ��ݸ��Ϳͻ�������hightstockdays��LowStockDays��StockDays��ȡ����Ϊ����ÿ�겻ͬ
if exists (select * from sysobjects where id=object_id('dbo.rp_423204') and sysstat & 0xf =4)
     drop procedure dbo.rp_423204
GO
create procedure dbo.rp_423204 @checkflag    int
WITH ENCRYPTION
-----------------------------------------------------------------
---Version Number:Apple1.0_20030618_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare  @Err     int;
  declare  @BreakPoint   int;
  declare  @Msg          varchar(255);
  declare  @deptlevel    int;
  declare  @levelvalue   int
  declare  @tempflag     int;

  declare  @ThisUserID as varchar(50)
  select @ThisUserID=Value from config where Name='�ͻ�����'
  if @ThisUserID is null set @ThisUserID=''

  SET NOCOUNT ON
  select @tempflag=0;
  create table #temp_423204
  (shopid        char(4) not null,
   managedeptid  int     not null,
   goodsid       int     not null,
   gname         char(64)  not null,
   dms           dec(12,3) not null,
   qty           dec(12,3) not null,
   costvalue     dec(12,3) not null,
   HighStockDays  int      not null,
   LowStockDays   int      not null
   );
   select @Err=@@Error,@Msg='������ʱ��ʱ����!',@BreakPoint=423010;
   if (@Err != 0) or (@Err is null) goto ErrHandle;

   select @deptlevel=value from config where name='�����ż���';
   select @Err=@@Error,@BreakPoint=423020,@msg='ȡ�����ż���ʱ������';
   if (@Err != 0) or (@Err is null) goto ErrHandle;
  
   select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
   select @Err=@@Error,@BreakPoint=423030,@msg='ȡ������Ȩֵ����!!';
   if (@Err != 0) or (@Err is null) goto ErrHandle;
 ----���ǵ�ȡ�ɱ���RPT_Base0001��û����inventory   
 --�޸ģ� �δ�ϲ 2007-05-28 #5260 ��ݸ��Ϳͻ�������hightstockdays��LowStockDays��StockDays��ȡ����Ϊ����ÿ�겻ͬ
   if @ThisUserID='DGTH' 
   begin
     insert into  #temp_423204(shopid,managedeptid,goodsid,gname,dms,qty,costvalue,highstockdays,lowstockdays)
     select a.shopid,round(b.deptid/@levelvalue,0),a.goodsid,b.name,a.dms,a.closeqty,a.closecostv,isnull(c.highdays,d.highStockDays),isnull(c.lowdays,d.lowStockDays)
     from RPT_Base0001 a,goods b 
     left join StockDays c on b.deptid=c.deptid and a.ShopID=c.ShopId
     left join dept d on b.deptid=d.id
     where a.goodsid=b.goodsid and convert(char(8),a.sdate,112)=convert(char(8),getdate()-1,112)
   end 
   else 
   begin
     insert into  #temp_423204(shopid,managedeptid,goodsid,gname,dms,qty,costvalue,highstockdays,lowstockdays)
     select a.shopid,round(b.deptid/@levelvalue,0),a.goodsid,b.name,a.dms,a.closeqty,a.closecostv,c.highstockdays,c.lowstockdays
     from RPT_Base0001 a,goods b,dept c
     where a.goodsid=b.goodsid and b.deptid=c.id and convert(char(8),a.sdate,112)=convert(char(8),getdate()-1,112)
   end;

   select @Err=@@Error,@breakPoint=423040,@msg='������ϸ����ʱ����';
   if (@Err != 0) or (@Err is null) goto ErrHandle;
 
   if @checkflag=1 begin
       insert into #423204(shopid,shopname,managedeptid,managename,goodsid,gname,qty,costvalue)
       select a.shopid,b.name,a.managedeptid,b.name,a.goodsid,a.gname,a.qty,a.costvalue
       from #temp_423204 a,shop b,sgroup c
       where a.shopid=b.id and a.managedeptid=c.id and a.qty>a.dms* a.highstockdays;
       select @Err=@@Error,@BreakPoint=423050,@Msg='���ظ߿�����ݳ���!';
       if (@Err != 0) or (@Err is null) goto ErrHandle;
    end else begin
       insert into #423204(shopid,shopname,managedeptid,managename,goodsid,gname,qty,costvalue)
       select a.shopid,b.name,a.managedeptid,b.name,a.goodsid,a.gname,a.qty,a.costvalue
       from #temp_423204 a,shop b,sgroup c
       where a.shopid=b.id and a.managedeptid=c.id and a.qty<a.dms* a.lowstockdays;
       select @Err=@@Error,@BreakPoint=423060,@Msg='���ظ߿�����ݳ���!';
       if (@Err != 0) or (@Err is null) goto ErrHandle;
   end;  

  drop table #temp_423204;
  return 0;
  ErrHandle:
    raiserror('%s,�ϵ�=%d,Err=%d',19,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 drop table #temp_423204;
    return -1;
End
GO

----423205����������һ����
--�޸ģ��Խ� 20031018 ���������ˡ�����ˡ���ע���Ƿ������Ӧ�̽�������
if exists (select * from sysobjects where id = object_id('dbo.rp_423205') and sysstat & 0xf = 4)
    drop procedure dbo.rp_423205
GO

create procedure dbo.rp_423205 @Begindate datetime,@enddate datetime,@sheettype int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030613_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @tempflag=0;
  create table #temp_423205
  (shopid        char(4)        not null,
   managedeptid      int        not null,  
   sheettype         int        not null,
   sheetid       char(16)       not null,
   costvalue     dec(12,2)      not null,
   notaxcostvalue dec(12,2)     not null,
   costtaxvalue   dec(12,2)     not null
   );
   select @Err=@@Error,@BreakPoint=423000,@Msg='������ʱ��ʱ����!!!';
  if (@Err != 0) or (@Err is null) goto ErrHandle;

  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=423010,@msg='ȡ�����ż���ʱ������';
  if (@Err != 0) or (@Err is null) goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=423020,@msg='ȡ������Ȩֵ����!!';
  if (@Err != 0) or (@Err is null) goto ErrHandle;
  if @sheettype=1 begin
      insert into #temp_423205(shopid,managedeptid,sheettype,sheetid,costvalue,notaxcostvalue,costtaxvalue)
      select shopid,round(deptid/@levelvalue,0),sheettype,sheetid,sum(costvalue),sum(costvalue-costtaxvalue),sum(costtaxvalue)
         from unaccsheet0 where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         and sheettype in (2432,2431,2445)
         group by shopid,round(deptid/@levelvalue,0),sheettype,sheetid,venderid ;
      select @Err=@@Error,@BreakPoint=421030,@msg='ȡ��ʱ���ݱ�����ʱ������';      
      if (@Err != 0) or (@Err is null) goto ErrHandle;
  
      insert into #temp_423205(shopid,managedeptid,sheettype,sheetid,costvalue,notaxcostvalue,costtaxvalue)
      select shopid,round(deptid/@levelvalue,0),sheettype,sheetid,sum(costvalue),sum(costvalue-costtaxvalue),sum(costtaxvalue)
         from unaccsheet where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         and sheettype in (2432,2431,2445)
         group by shopid,round(deptid/@levelvalue,0),sheettype,sheetid,venderid ;
      select @Err=@@Error,@BreakPoint=421040,@msg='ȡ��ʽ���ݱ�����ʱ������';      
      if (@Err != 0) or (@Err is null) goto ErrHandle;
  end else begin
      insert into #temp_423205(shopid,managedeptid,sheettype,sheetid,costvalue,notaxcostvalue,costtaxvalue)
      select shopid,round(deptid/@levelvalue,0),sheettype,sheetid,sum(costvalue),sum(costvalue-costtaxvalue),sum(costtaxvalue)
         from unaccsheet0 where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         and sheettype=@sheettype
         group by shopid,round(deptid/@levelvalue,0),sheettype,sheetid,venderid ;
      select @Err=@@Error,@BreakPoint=421050,@msg='ȡ��ʱ���ݱ�����ʱ������';      
      if (@Err != 0) or (@Err is null) goto ErrHandle;
  
      insert into #temp_423205(shopid,managedeptid,sheettype,sheetid,costvalue,notaxcostvalue,costtaxvalue)
      select shopid,round(deptid/@levelvalue,0),sheettype,sheetid,sum(costvalue),sum(costvalue-costtaxvalue),sum(costtaxvalue)
         from unaccsheet where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         and sheettype=@sheettype
         group by shopid,round(deptid/@levelvalue,0),sheettype,sheetid,venderid ;
      select @Err=@@Error,@BreakPoint=421060,@msg='ȡ��ʽ���ݱ�����ʱ������';      
      if (@Err != 0) or (@Err is null) goto ErrHandle;
  end;    
  insert into #423205(shopid,shopname,managedeptid,managename,sheettype,sheetid,costvalue,notaxcostvalue,costtaxvalue)
  select a.shopid,b.name,a.managedeptid,c.name,a.sheettype,a.sheetid,a.costvalue,a.notaxcostvalue,a.costtaxvalue
        from  #temp_423205 a,shop b,sgroup c     where a.shopid=b.id and a.managedeptid=c.id;
        
  update #423205 set Editor=b.Editor,Checker=b.checker,Reason=b.Notes,VenderPayableFlag=b.VenderPayableFlag
    from #423205 a,UpdGoodsCost b
    where a.sheettype=2445 and a.sheetid*=b.sheetid;
    
  update #423205 set Editor=b.Editor,Checker=b.checker,Reason=b.Note,VenderPayableFlag=b.VenderPayableFlag
    from #423205 a,UpdCostValue b
    where a.sheettype=2431 and a.sheetid*=b.sheetid;
      
  update #423205 set Editor=b.Editor,Checker=b.checker,Reason='',VenderPayableFlag=0
    from #423205 a,UpdShopsStock b
    where a.sheettype=2432 and a.sheetid*=b.sheetid;   
  select @Err=@@Error,@msg='��������ʱ����',@BreakPoint=421070;                           
  if (@Err != 0) or (@Err is null) goto ErrHandle;
 drop table #temp_423205;
 return 0;   
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_423205;
  return -1;
End
GO



--------425101�����ձ���
if exists (select * from sysobjects where id=object_id('dbo.rp_425101') and sysstat & 0xf =4)
     drop procedure dbo.rp_425101
GO
create procedure dbo.rp_425101 @Begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
---Version Number:Apple1.0_20030619_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare  @Err     int;
  declare  @BreakPoint   int;
  declare  @Msg          varchar(255);
  declare  @levelvalue   int;
  declare  @tempflag     int;
  declare  @salevalue    dec(12,2);
  SET NOCOUNT ON

  select   @tempflag=0;
  create table #temp_425101
  (shopid         char(4)   not null, 
   managedeptid   int       not null,
   salevalue    dec(12,2) not null,
   discvalue    dec(12,2) not null,
   truevalue    dec(12,2) not null,
   stvalue        dec(12,2) not null,
   cmvalue        dec(12,2) not null
   );
  create table #temp_425101_a
  (shopid      char(4)  not null,
   truevalue   dec(12,2) not null
   );
   create table #temp_425101_b
  (shopid      char(4)  not null,
   managedeptid  int    not null,
   salevalue   dec(12,2) not null,
   discvalue   dec(12,2) not null,
   truevalue   dec(12,2) not null
   );

  select @Err=@@Error,@msg='������ʱ��ʱ����',@breakpoint=425000; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  select @tempflag=1;
  
  select @salevalue=sum(salevalue-discvalue) from RPT_SaleGroup 
                       where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112);
  select @Err=@@Error,@breakPoint=425010,@msg='ȡ��������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  insert into #temp_425101_a(shopid,truevalue) 
         select shopid,sum(salevalue-discvalue) from RPT_SaleGroup
         where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         group by  shopid;
  select @Err=@@Error,@breakPoint=425020,@msg='ȡ�ֵ��������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;

  insert into #temp_425101_b(shopid,managedeptid,salevalue,discvalue,truevalue) 
         select shopid,managedeptid,sum(salevalue),sum(discvalue),sum(salevalue-discvalue) from RPT_SaleGroup 
         where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         group by  shopid,managedeptid;
  select @Err=@@Error,@breakPoint=425030,@msg='ȡ�ֵ��������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  insert into #temp_425101(shopid,managedeptid,salevalue,truevalue,stvalue,cmvalue,discvalue)
       select a.shopid,a.managedeptid,a.salevalue,a.truevalue,b.truevalue,@salevalue,a.discvalue
       from #temp_425101_b a,#temp_425101_a b
       where a.shopid=b.shopid;
  select @Err=@@Error,@breakPoint=425040,@msg='������ʱ����ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  insert into #425101(shopid,shopname,managedeptid,managename,salevalue,discvalue,truevalue,managedeptzb,shopzb)
             select a.shopid,b.name,a.managedeptid,c.name,a.salevalue,a.discvalue,a.truevalue,100*a.truevalue/a.stvalue,100*a.stvalue/a.cmvalue
             from #temp_425101 a,shop b,sgroup c
             where a.shopid=b.id and a.managedeptid=c.id;
  select @Err=@@Error,@breakPoint=425050,@msg='��������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
         
  drop table #temp_425101;
  drop table #temp_425101_a;
  drop table #temp_425101_b;
  return 0;
  ErrHandle:
    raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 begin
       drop table #temp_425101;
       drop table #temp_425101_a;
       drop table #temp_425101_b;
    end;   
    return -1;
End

GO

-----425102С���������ձ���
if exists (select * from sysobjects where id=object_id('dbo.rp_425102') and sysstat & 0xf =4)
     drop procedure dbo.rp_425102
GO
create procedure dbo.rp_425102 @Begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
---Version Number:Apple1.0_20030619_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare  @Err     int;
  declare  @BreakPoint   int;
  declare  @Msg          varchar(255);
  declare  @levelvalue   int;
  declare  @tempflag     int;
  SET NOCOUNT ON  

  select   @tempflag=0;
  create table #temp_425102
  (shopid         char(4)   not null, 
   managedeptid    int not null,
   deptid   int       not null,
   salevalue    dec(12,2) not null,
   discvalue    dec(12,2) not null,
   truevalue    dec(12,2) not null,
   stvalue        dec(12,2) not null,
   mvalue        dec(12,2) not null
   );
   
  create table #temp_425102_a
  (shopid      char(4)  not null,
   managedeptid  int    not null,
   deptid      int      not null,
   salevalue   dec(12,2) not null,
   discvalue   dec(12,2) not null, 
   truevalue   dec(12,2) not null
   );
   create table #temp_425102_b
  (shopid      char(4)  not null,
   truevalue   dec(12,2) not null
   );
   create table #temp_425102_c
   (shopid             char(4)   not null,
    managedeptid       int       not null,
    truevalue          dec(12,2) not null
    );
    
  select @Err=@@Error,@msg='������ʱ��ʱ����',@breakpoint=425000; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  select @tempflag=1;
     
  execute @LevelValue=TL_ManageDeptGene;
  if @LevelValue <= 0 begin
	select @Err=0;
	select @BreakPoint=425010;
	select @Msg='����������ļ������Ӵ���!';
	goto ErrHandle;
  end;
  insert into #temp_425102_a(shopid,managedeptid,deptid,salevalue,discvalue,truevalue) 
         select shopid,round(deptid/@levelvalue,0),deptid,sum(salevalue),sum(discvalue),sum(salevalue-discvalue) from RPT_SaleDept
         where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         group by  shopid,round(deptid/@levelvalue,0),deptid;
  select @Err=@@Error,@breakPoint=425020,@msg='ȡ�ֵ��������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;

  insert into #temp_425102_b(shopid,truevalue) 
         select shopid,sum(salevalue-discvalue) from RPT_SaleDept
         where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         group by  shopid;
  select @Err=@@Error,@breakPoint=425030,@msg='ȡ�ֵ��������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;

  insert into #temp_425102_c(shopid,managedeptid,truevalue) 
         select shopid,round(deptid/@levelvalue,0),sum(salevalue-discvalue) from RPT_SaleDept
         where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         group by  shopid,round(deptid/@levelvalue,0);
  select @Err=@@Error,@breakPoint=425040,@msg='ȡ�ֵ��������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  insert into #temp_425102(shopid,deptid,salevalue,truevalue,stvalue,mvalue,discvalue,managedeptid)
       select a.shopid,a.deptid,a.salevalue,a.truevalue,b.truevalue,c.truevalue,a.discvalue,c.managedeptid
       from #temp_425102_a a,#temp_425102_b b,#temp_425102_c c
       where a.shopid=b.shopid and a.shopid=c.shopid and a.managedeptid=c.managedeptid;
       
  select @Err=@@Error,@breakPoint=425050,@msg='������ʱ����ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  insert into #425102(shopid,shopname,deptid,deptname,salevalue,discvalue,truevalue,stsalerate,msalerate,managedeptid)
             select a.shopid,b.name,a.deptid,c.name,a.salevalue,a.discvalue,a.truevalue,100*a.truevalue/a.stvalue,100*a.truevalue/a.mvalue,a.managedeptid
             from #temp_425102 a,shop b,dept c
             where a.shopid=b.id and a.deptid=c.id;
  select @Err=@@Error,@breakPoint=425060,@msg='��������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
         
  drop table #temp_425102;
  drop table #temp_425102_a;
  drop table #temp_425102_b;
  drop table #temp_425102_c;
  return 0;
  ErrHandle:
    raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 begin
       drop table #temp_425102;
       drop table #temp_425102_a;
       drop table #temp_425102_b;
       drop table #temp_425102_c;
    end;   
    return -1;
End
GO


----��Ӧ�̲ɹ������±�(423430)��ҵ�����ġ��ŵ��
----�ɹ�Աֹͣ�����嵥(423460)��ҵ�����ġ��ŵ��

-----------------------------------------------------------------------------------------
----��Ӧ�̲ɹ������±���423430��
if exists (select * from sysobjects where id = object_id('dbo.rp_423430') and sysstat & 0xf = 4)
    drop procedure dbo.rp_423430
GO

create procedure dbo.rp_423430 @Sdate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030807_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @monthId        int   ;
  declare @monthqty       int   ;
  declare @monthtype     int;
  
  SET NOCOUNT ON
  
  select @BreakPoint=423001;
  select @monthid=year(@sdate)*100+month(@sdate);
  select @Err=@@Error,@msg='ƴд���³���';
  if (@Err !=0) or (@Err is null ) goto ErrHandle;
  
  select  @BreakPoint=423010;
  select @monthtype=month(@Sdate);
  select @Err=@@Error;
  if  (@Err is null) or (@Err !=0 ) goto ErrHandle;
  if @monthtype in (1,3,5,7,8,10,12) 
     select @monthqty=31
  else if @monthtype in (4,6,9,11) 
     select @monthqty=30
  else if @monthtype =2
     select @monthqty=28;
  
  select @Err=@@Error  ;
  if @Err !=0  goto ErrHandle;
  if @monthqty is null select @monthqty=31;
  
  select @BreakPoint=423030;
  insert into #423430(shopid,shopname,venderid,vname,invalue,salevalue,closevalue,outvalue,dayvalue)
  select a.shopid,c.name,a.venderid,d.name,sum(a.ReceiptValue),sum(a.salevalue),sum(b.costvalue),sum(a.retvalue),
             sum(a.salevalue)/@monthqty
        from RPT_Base0013 a,ShopsStock b,shop c,vender d
        where a.goodsid=b.goodsid and a.shopid=b.shopid and a.shopid=c.id and a.venderid=d.venderid
              and a.monthid=@monthid
        group by a.shopid,c.name,a.venderid,d.name     
  select @Err=@@Error,@msg='���ݲ����ѯ�����';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  return 0;   
ErrHandle:

  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------------------------------
---�ɹ�Աֹͣ�����嵥(423460) 
if exists (select * from sysobjects where id = object_id('dbo.rp_423460') and sysstat & 0xf = 4)
    drop procedure dbo.rp_423460
GO
create procedure dbo.rp_423460 @Sdate datetime,@selecttype int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030807_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @startdate    datetime;
  declare @enddate      datetime;
  declare @tempflag     int;
  
  select @BreakPoint=423100;
  select @tempflag=0;
  
  create table #temp_423460
  (sdate   datetime,
   goodsid    int
   );
    select @Err=@@Error,@msg='������ʱ��ʱ����';
   if (@Err is null) or (@Err !=0) goto ErrHandle;
   select @tempflag=1;
   select @BreakPoint=423010;
   
   if @selecttype=0 begin
      select @startdate=@sdate;
      select @enddate=@sdate;
   end else if @selecttype=1 begin
      execute @Err=TL_getS_EWeek @Sdate,@startdate output,@enddate output;
   end;
   select @err=@@Error,@msg='���㿪ʼ�������ڴ���';
   if @Err !=0 goto ErrHandle;
   
   select @BreakPoint=423010;
   if @selecttype in (0,1) begin
     insert into #temp_423460(sdate,goodsid)
            select a.checkdate,b.goodsid from updategoods a,updategoodsitem b
            where  a.sheetid=b.sheetid and b.uflag=1 and b.flag=1 
            and a.checkdate between @startdate and @enddate
            group by a.checkdate,b.goodsid;            
     select @err=@@Error,@msg='��ѯ�������ݳ���';       
     if (@Err is null) or (@Err !=0) goto ErrHandle;
   end else begin
     select @BreakPoint=423020;
     insert into #temp_423460(sdate,goodsid)
            select a.checkdate,b.goodsid from updategoods a,updategoodsitem b
            where  a.sheetid=b.sheetid and b.uflag=1 and b.flag=1 
            and year(a.checkdate)=year(@sdate) and month(a.checkdate)=month(@sdate);
     select @err=@@Error,@msg='��ѯ�����ݳ���';       
     if (@Err is null) or (@Err !=0) goto ErrHandle;
   end;   
   select @BreakPoint=423030;  
   insert into #423460(stopdate,shopid,shopname,goodsid,gname,logistics,spec,closeqty,closevalue)
          select a.sdate,d.shopid,c.name,a.goodsid,b.name,e.logistics,b.spec,d.qty,d.costvalue
          from #temp_423460 a,goods b,shop c,shopsstock d,goodsshop e
          where a.goodsid=b.goodsid and a.goodsid=d.goodsid and a.goodsid=e.goodsid
            and c.id=d.shopid and d.goodsid=e.goodsid and d.shopid=e.shopid
  select @Err=@@Error,@msg='����������ݴ���';          
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  drop table #temp_423460;
  return 0;   
ErrHandle:
  if @tempflag=1 drop table #temp_423460;
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

--��˾�ŵ�
-----------------------------------------------------------------
--rp_423440			�ؼ���Ʒ���۷�������һ��		
--����������
--���أ���־0=�ɹ�		�ϵ��(99999XXX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.07
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_423440') and type = 'P')
  drop procedure dbo.rp_423440
GO
create procedure rp_423440 @SDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030807_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);
  
  declare @MonthID		int;     
  declare @BeginDate		datetime;
  declare @EndDate		datetime;
  declare @SDatebetween		char(32);

  SET NOCOUNT ON
  select @Msg = '',@Err=0;

  select @BreakPoint = 9999000
  select @Sdate=convert(char(8),@SDate,112);
  select @MonthID=Year(@SDate)*100+Month(@SDate);
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='��������ֹ���ڴ���';
	goto ErrHandle;
  end
  select @BreakPoint = 9999010
  set @SDatebetween=convert(char(8),@BeginDate,112)+'<---->'+convert(char(8),@EndDate,112);
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  --insert into #423440(SheetID,SheetType,SDatebetween,ShopName,GoodsID,VenderID,GName,
  -- 	SaleQty,Price,SaleValue,PromPrice,PromSaleValue,PromDiscValue)
  select @BreakPoint = 9999015
  select A.RefSheetID as SheetID,A.RefSheetType as SheetType,@SDatebetween as SDatebetween,B.Name as ShopName,A.GoodsID,A.VenderID,C.Name as GName, 
 	sum(A.Qty) as SaleQty,A.Price,sum(A.SaleValue) as SaleValue,A.PromPrice,sum(A.SaleValue-A.DiscValue) as PromSaleValue,
 	sum(A.DiscValue)  as  PromDiscValue 
 	into  #temp_423440
 	from RPT_SalePromotion A,shop B with (NOLOCK),Goods C with (NOLOCK)
 	where A.ShopID=B.ID and A.GoodsID=C.GoodsID and A.RefSheetType in(2271,2512)
 	and A.SDate>=@BeginDate and A.SDate<=@EndDate
 	group by A.RefSheetID,A.RefSheetType,B.Name,A.GoodsID,A.VenderID,C.Name,A.Price,A.PromPrice; 
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
 	
  --�ӵ�����ȡ��������Ӧʱ��
  select @BreakPoint = 9999020
  select SheetID,SheetType,GoodsID into #temp_423440_1 from #temp_423440  	
  	group  by SheetID,SheetType,GoodsID    
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999025
  select distinct A.SheetID,A.SheetType,A.GoodsID,(convert(char(8),B.PriceBeginDate,112)+'<---->'+convert(char(8),B.PriceEndDate,112)) as SDatebetween
  	into #temp_423440_2
  	from #temp_423440_1 A,NowPPitem B with (NOLOCK)
  	where A.SheetID=B.SheetID and A.SheetType=2512 and A.GoodsID=B.GoodsID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  select @BreakPoint = 9999030	
  insert into #temp_423440_2
  select distinct A.SheetID,A.SheetType,A.GoodsID,convert(char(8),B.StartDate,112)+'<---->'+convert(char(8),B.EndDate,112)
  	from #temp_423440_1 A,PriceUpd B with (NOLOCK)
  	where A.SheetID=B.SheetID and A.SheetType=2271;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999035	
  drop table #temp_423440_1;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999035	
  update #temp_423440
    	set SDatebetween=B.SDatebetween
    	from #temp_423440 A,#temp_423440_2 B
    	where A.SheetID=B.SheetID and A.SheetType=B.SheetType and A.GoodsID=b.GoodsID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999040	
  drop table #temp_423440_2;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  select @BreakPoint = 9999045
  insert into  #423440
  	select *  from   #temp_423440;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  	
  select @BreakPoint = 9999050
  drop table #temp_423440;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
    	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go

-----------------------------------------------------------------
--rp_419205			ʵʱ���۲�ѯ		
--����������
--���أ���־0=�ɹ�		�ϵ��(99999XXX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.07
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_419205') and type = 'P')
  drop procedure dbo.rp_419205
GO
create procedure rp_419205 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030807_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);
  
  declare @SDate 		datetime;              
  declare @SDatetime 		datetime;
  declare @ShopID 		char(4);
  

  SET NOCOUNT ON
  select @Msg = '',@Err=0;

  select @BreakPoint = 9999100
  select @Sdate=convert(char(8),GetDate(),112);
     
  --ȡ���ϴ��ŵ�
  select ShopID into #Shop from PosSaleRunTime
  	group by ShopID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  	
  select @BreakPoint = 9999105
  DECLARE Cur_Shop cursor local for
	select ShopID from #Shop  order by ShopID
  OPEN Cur_Shop
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  WHILE (1=1)
  BEGIN
	if @@Error != 0 goto ErrHandle;
	FETCH NEXT FROM Cur_Shop INTO @ShopID
	if @@fetch_status !=0 break;
	
	select @BreakPoint = 9999110
	select Top 1 @SDatetime=Sdate  from PosSaleRunTime	where ShopID=@ShopID
		group by SDate order by sdate desc;
	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
	select @BreakPoint = 9999115
	insert into #419205 (ShopID,SDate,PayType,PayName,SaleValue,Amount,MSaleValue,SaleRate)
		select ShopID,SDate,PayType,PayName,SaleValue,Amount,0,0
		from PosSaleRunTime where ShopID=@ShopID and SDate=@SDatetime;
	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
	
  END
  CLOSE Cur_Shop
  DEALLOCATE Cur_Shop
  
  select @BreakPoint = 9999116
  drop table #Shop    
    	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go 	
 	

-----------------------------------------------------------------
--rp_424500			�ŵ���Ʒ������ҵ��/ë������
--����������
--���أ���־0=�ɹ�		�ϵ��(999992XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.11
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424500') and type = 'P')
  drop procedure dbo.rp_424500
GO
create procedure rp_424500 @SDate datetime,@ShopID char(4),@Flag int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030811_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);
  
  declare @BeginDate		datetime;
  declare @EndDate		datetime;
  declare @SaleValue		dec(12,2);
  declare @MaoLi		dec(12,2);
  

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999200
  if @Flag=1  execute TL_Gets_Eweek @SDate,@BeginDate out,@EndDate out
  else execute @Err=TL_GetMonthDate @SDate,@BeginDate out,@EndDate out;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  select @BreakPoint = 9999205
  insert into #424500 (ManageDeptID,GroupName,SaleValue,SaleRate,MaoLi,MaoLiRate)
 	select A.ManageDeptID,B.Name ,sum(A.SaleValue-A.DiscValue),0,sum(A.SaleValue-A.DiscValue-A.CostValue),0
 	from RPT_SaleGroup A,sGroup B
 	where A.ShopID=@ShopID and A.ManageDeptID*=b.ID and A.SDate>=@BeginDate and A.SDate<=@EndDate
 	group by A.ManageDeptID,B.Name; 	
 select @Err = @@error;
 if @Err != 0 goto ErrHandle;
 
 select @BreakPoint = 9999210
 select @SaleValue=sum(SaleValue-DiscValue),@MaoLi=sum(SaleValue-DiscValue-CostValue) from RPT_SaleGroup where ShopID=@ShopID and 
 	SDate>=@BeginDate and SDate<=@EndDate;
 select @Err = @@error;
 if @Err != 0 goto ErrHandle;
 
 select @BreakPoint = 9999215
 if @SaleValue is not null and @SaleValue<>0  update #424500 set SaleRate=Round(SaleValue/@SaleValue,2);
 select @Err = @@error;
 if @Err != 0 goto ErrHandle;
 
 select @BreakPoint = 9999220
 if @MaoLi is not null and @MaoLi<>0  update #424500 set MaoLiRate=Round(MaoLi/@MaoLi,2);
 select @Err = @@error;
 if @Err != 0 goto ErrHandle;
    	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go

-----------------------------------------------------------------
--rp_424510			ӪҵƺЧ��
--����������
--���أ���־0=�ɹ�		�ϵ��(999992XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.11
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424510') and type = 'P')
  drop procedure dbo.rp_424510
GO
create procedure rp_424510 @SDate datetime,@ShopID char(4),@Flag int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030811_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);
  
  declare @BeginDate		datetime;
  declare @EndDate		datetime;
  declare @SaleValue		dec(12,2);
  declare @MaoLi		dec(12,2);
  

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999200
  --@Flag: 1=�� 2=�� 3=��
  if @Flag=1 execute @Err=TL_GetMonthDate @SDate,@BeginDate out,@EndDate out
  else 
  if @Flag=2 begin--��
  	execute TL_GetQuarterDate @Sdate ,@begindate  output,@enddate  output
  end
  else begin--��
  	select @BeginDate=year(@SDate)+'0101';
  	select @EndDate =convert(char(8), GetDate(),112);
  end
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  select @BreakPoint = 9999205
  insert into #424510 (ManageDeptID,GroupName,SaleValue,SaleRate,MaoLi,MaoLiRate,WorkArea,SaleAreaRate)
 	select A.ManageDeptID,B.Name ,sum(A.SaleValue-A.DiscValue),0,sum(A.SaleValue-A.DiscValue-A.CostValue),0,isnull(C.WorkArea,1),0
 	from RPT_SaleGroup A,sGroup B,Shop C
 	where A.ShopID=@ShopID and A.ManageDeptID*=b.ID and A.SDate>=@BeginDate and A.SDate<=@EndDate and C.ID=@ShopID
 	group by A.ManageDeptID,B.Name,C.WorkArea; 	
 select @Err = @@error;
 if @Err != 0 goto ErrHandle;
 
 select @BreakPoint = 9999210
 select @SaleValue=sum(SaleValue-DiscValue),@MaoLi=sum(SaleValue-DiscValue-CostValue) from RPT_SaleGroup where ShopID=@ShopID and 
 	SDate>=@BeginDate and SDate<=@EndDate;
 select @Err = @@error;
 if @Err != 0 goto ErrHandle;
 
 select @BreakPoint = 9999215
 if @SaleValue is not null and @SaleValue<>0  update #424510 set SaleRate=Round(SaleValue/@SaleValue*100,2);
 select @Err = @@error;
 if @Err != 0 goto ErrHandle;
 
 select @BreakPoint = 9999220
 if @MaoLi is not null and @MaoLi<>0  update #424510 set MaoLiRate=Round(MaoLi/@MaoLi*100,2);
 select @Err = @@error;
 if @Err != 0 goto ErrHandle;
 
 select @BreakPoint = 9999225
 update #424510 set SaleAreaRate=SaleValue/WorkArea where WorkArea<>0;
 select @Err = @@error;
 if @Err != 0 goto ErrHandle;
    	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go

-----------------------------------------------------------------
--rp_424590			�ŵ겹��Ҫ�����(���ŵ�ʹ��)
--����������,�ܡ��±�־ (1=��,2=��)
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.13
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424590') and type = 'P')
  drop procedure dbo.rp_424590
GO
create procedure rp_424590 @SDate datetime,@Flag int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030813_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);
  declare @RowCount		int;
  
  declare @BeginDate		datetime;
  declare @EndDate		datetime;
  declare @WeekID               int;
  declare @MonthID              int;
  

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999300
  if @Flag=1  begin--��
  	execute TL_GetWeekDate @SDate,@BeginDate out,@EndDate out
  	select @Err = @@error;
        if @Err != 0 goto ErrHandle;
        select @BreakPoint = 9999305
  	execute TL_GetWeekID @SDate,@WeekID output
  	insert into #424590(GoodsID,GName,MakeUpAskQty,ReceiptQty,Spec,Qty)
  		select A.GoodsID,A.Name,0,B.ReceiptQty,A.Spec,0
  		from Goods A,RPT_Base0002 B
  		where A.GoodsID=B.GoodsID and B.WeekID=@WeekID and B.ReceiptQty<>0;
  	select @Err=@@Error,@RowCount=@@RowCount;
        if @Err != 0 goto ErrHandle;
        select @BreakPoint = 9999310
  	if @RowCount<>0 begin--��������ȡ���������͵�ǰ���
  		select B.GoodsID,Sum(B.Qty) as MakeUpAskQty,999999 as Qty into #temp_PurchaseAskItem
  			from PurchaseAsk A,PurchaseAskItem B
  			where A.SheetID=B.SheetID and 	A.Checkdate>=@BeginDate and A.Checkdate<=@EndDate
  			group by B.GoodsID;
  		select @Err = @@error;
        	if @Err != 0 goto ErrHandle;
        	select @BreakPoint = 9999315
  		update #temp_PurchaseAskItem
  			set Qty=B.Qty
  			from #temp_PurchaseAskItem A,ShopsStock B
  			where A.GoodsID=B.GoodsID;
  		select @Err = @@error;
        	if @Err != 0 goto ErrHandle;
        	select @BreakPoint = 9999320
  		update #temp_PurchaseAskItem set Qty=0 where Qty=999999;
  		select @Err = @@error;
        	if @Err != 0 goto ErrHandle;
        	select @BreakPoint = 9999325
  		update #424590
  			set MakeUpAskQty=B.MakeUpAskQty,Qty=B.Qty
  			from #424590 A,#temp_PurchaseAskItem  B
  			where A.GoodsID=B.GoodsID
  		select @Err = @@error;
        	if @Err != 0 goto ErrHandle;
        	select @BreakPoint = 9999330
  		insert into #424590 (GoodsID,GName,MakeUpAskQty,ReceiptQty,Spec,Qty)
  			select A.GoodsID,A.Name,B.MakeUpAskQty,0,A.Spec,B.Qty
  			from Goods A,#temp_PurchaseAskItem B
  			where A.GoodsID=B.GoodsID and B.GoodsID not in (select GoodsID from #424590);
  		select @Err = @@error;
        	if @Err != 0 goto ErrHandle;
        	select @BreakPoint = 9999335
  		drop table #temp_PurchaseAskItem;
  		select @Err = @@error;
        	if @Err != 0 goto ErrHandle;
	end  	
  end
  else begin--��
  	execute @Err=TL_GetMonthDate @SDate,@BeginDate out,@EndDate out;
  	select @MonthID=Year(@SDate)*100+Month(@SDate)
  	insert into #424590(GoodsID,GName,MakeUpAskQty,ReceiptQty,Spec,Qty)
  		select A.GoodsID,A.Name,0,B.ReceiptQty,A.Spec,0
  		from Goods A,RPT_Base0003 B
  		where A.GoodsID=B.GoodsID and B.MonthID=@MonthID and B.ReceiptQty<>0;
  	select @Err=@@Error,@RowCount=@@RowCount;
        if @Err != 0 goto ErrHandle;
        select @BreakPoint = 9999311
  	if @RowCount<>0 begin--��������ȡ���������͵�ǰ���
  		select B.GoodsID,Sum(B.Qty) as MakeUpAskQty,999999 as Qty into #temp_PurchaseAskItem1
  			from PurchaseAsk A,PurchaseAskItem B
  			where A.SheetID=B.SheetID and 	A.Checkdate>=@BeginDate and A.Checkdate<=@EndDate
  			group by B.GoodsID;
  		select @Err = @@error;
        	if @Err != 0 goto ErrHandle;
        	select @BreakPoint = 9999316
  		update #temp_PurchaseAskItem1
  			set Qty=B.Qty
  			from #temp_PurchaseAskItem1 A,ShopsStock B
  			where A.GoodsID=B.GoodsID;
  		select @Err = @@error;
        	if @Err != 0 goto ErrHandle;
        	select @BreakPoint = 9999321
  		update #temp_PurchaseAskItem1 set Qty=0 where Qty=999999;
  		select @Err = @@error;
        	if @Err != 0 goto ErrHandle;
        	select @BreakPoint = 9999326
  		update #424590
  			set MakeUpAskQty=B.MakeUpAskQty,Qty=B.Qty
  			from #424590 A,#temp_PurchaseAskItem1  B
  			where A.GoodsID=B.GoodsID
  		select @Err = @@error;
        	if @Err != 0 goto ErrHandle;
        	select @BreakPoint = 9999331
  		insert into #424590 (GoodsID,GName,MakeUpAskQty,ReceiptQty,Spec,Qty)
  			select A.GoodsID,A.Name,B.MakeUpAskQty,0,A.Spec,B.Qty
  			from Goods A,#temp_PurchaseAskItem1 B
  			where A.GoodsID=B.GoodsID and B.GoodsID not in (select GoodsID from #424590);
  		select @Err = @@error;
        	if @Err != 0 goto ErrHandle;
        	select @BreakPoint = 9999336
  		drop table #temp_PurchaseAskItem1;
  		select @Err = @@error;
        	if @Err != 0 goto ErrHandle;
	end  	
  end
      	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go
 
 
 -----------------------------------------------------------------
--rp_424600			�ŵ���Ʒ��ת���а�
--����������,��ѯ��ʽ
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.13
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424600') and type = 'P')
  drop procedure dbo.rp_424600
GO
create procedure rp_424600 @SDate datetime,@Flag int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030813_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);
  
  declare @MonthID		int;
  declare @MonthID1		int;
  declare @YearDay		int;
  

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999350
  select @MonthID=Year(@SDate)*100+Month(@SDate)  
  select @MonthID1=Year(@SDate)*100+Month('2003-01-01')
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  --@Flag: 1=��  2=��
  if @Flag=1 begin
  	select @BreakPoint = 9999355
  	insert into  #424600(ShopID,ShopName,GoodsID,SaleValue,SumCloseCostV,TOInventory)
  		select A.ShopID,B.Name,A.GoodsID,A.SaleValue,A.SumCloseCostV,A.TOInventory
  		from RPT_Base0003 A,Shop B
  		where A.ShopID=B.ID and A.MonthID=@MonthID
  		order by A.TOInventory desc;
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  end 
  else begin  	
  	select @BreakPoint = 9999360
  	select A.ShopID,B.Name,A.GoodsID,sum(A.SaleValue) as SaleValue,sum(A.SumCloseCostV) as SumCloseCostV,
  		9999999.99 as TOInventory,sum(A.SumDMS) as SumDMS
  		into #temp_424600	
  		from RPT_Base0003 A,Shop B
  		where A.ShopID=B.ID and A.MonthID>=@MonthID1 and A.MonthID<=@MonthID
  		group by A.ShopID,B.Name,A.GoodsID
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  	--���� TOInventory
  	select @BreakPoint = 9999365
  	Update #temp_424600  set TOInventory =0 where 1=1;
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  	--������굽���������
  	select @BreakPoint = 9999370
  	select @YearDay=DATEDIFF(day,ltrim(rtrim(str(year(@sdate))))+'01'+'01',@sdate);
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  	select @BreakPoint = 9999375
  	Update #temp_424600  set TOInventory=SumCloseCostV/(@YearDay*@YearDay*SumDMS) where SumDMS <> 0
  	insert into  #424600(ShopID,ShopName,GoodsID,SaleValue,SumCloseCostV,TOInventory)
  		select ShopID,ShopName,GoodsID,SaleValue,SumCloseCostV,TOInventory
  		from #temp_424600
  		order by TOInventory desc;
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  	select @BreakPoint = 9999380
  	drop table #temp_424600	;  	
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  end 
    	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go

-----------------------------------------------------------------
--rp_423500			���ŵ�ռ�������ȥ��ͬ�ڱ�
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.20
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_423500') and type = 'P')
  drop procedure dbo.rp_423500
GO
create procedure rp_423500 @SDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030820_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);
  
  declare @MonthID		int;--�����º�
  declare @MonthID1		int;--ȥ���º�
  

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999350
  select @MonthID=Year(@SDate)*100+Month(@SDate);
  select @MonthID1=(Year(@SDate)-1)*100+Month(@SDate);    
  
  --��ѯд���������
  select @BreakPoint = 9999360
  insert into #423500(ShopID,ShopName,ManageDeptID,ManageName,SaleValue1,SaleRate1,SaleValue2,
  	SaleRate2,amplitude1,MaoLi1,MaoLiRate1,MaoLi2,MaoLiRate2,amplitude2)
  	select ShopID,'11',ManageDeptID,'-1',SaleValue,SaleRate,0,
  	0,0,(SaleValue-SaleCost),Round((SaleValue-SaleCost)/(SaleValue+0.00000001),2),0,0,0
  	from RPT_Base0023
  	where MonthID=@MonthID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  select @BreakPoint = 9999370
  --��ѯд��ȥ������
  insert into #423500(ShopID,ShopName,ManageDeptID,ManageName,SaleValue1,SaleRate1,SaleValue2,
  	SaleRate2,amplitude1,MaoLi1,MaoLiRate1,MaoLi2,MaoLiRate2,amplitude2)
  	select ShopID,'11',ManageDeptID,'-1',0,0,SaleValue,
  	SaleRate,0,0,0,(SaleValue-SaleCost),Round((SaleValue-SaleCost)/(SaleValue+0.00000001),2),0
  	from RPT_Base0023
  	where MonthID=@MonthID1;  
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  select @BreakPoint = 9999380
  --��������
  update #423500
  	set amplitude1=SaleRate1-SaleRate2,
  	amplitude2=MaoLiRate1-MaoLiRate2
  	where 1=1;  
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  select @BreakPoint = 9999390  
  update #423500
  	set shopname=B.Name
  	from #423500 A,Shop B
  	where A.ShopID=B.ID  
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  select @BreakPoint = 9999400  
  update #423500
  	set ShopName='δ֪'
  	where ShopName='11'
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  	
  select @BreakPoint = 9999405
  update #423500
  	set ManageName=B.Name
  	from #423500 A,sgroup B
  	where A.ManageDeptID=B.ID  
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  select @BreakPoint = 9999410
  update #423500
  	set ManageName='δ֪'
  	where ManageName='-1'  
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  	  
    	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go 



-----------------------------------------------------------------
--rp_426710			��Ӧ�̵�����ͳ��(��������������ȱ����ͳ��)
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.20
--�޸ģ����� ȡ�����ջ���Ʒ����ͳ�Ʒ�Χ�����������ж����⣻
--	������Ʒ�Ƚϣ�����Ϊ��ͨ����ȡֵ��Χ
--	�����ͻ���
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_426710') and type = 'P')
  drop procedure dbo.rp_426710
GO
create procedure rp_426710 @beginDate datetime,@endDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20031021_01,Last Mender:VL
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);
    

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999350
  
  --ȡ��������Ʒ������������Ϊ��ͨ���������Ҳ�д������յĶ�����
  select A.ShopID,A.RefSheetID,A.VenderID,B.GoodsID,Sum(B.Qty) as Qty,sum(b.PresentQty) PresentQty
  	into #temp1
  	from Purchase A,PurchaseItem B
  	where A.SheetID=B.SheetID and convert(char(8),A.checkdate,112)>=convert(char(8),@begindate,112)
  	   and convert(char(8),A.checkdate,112)<=convert(char(8),@enddate,112) and PurchaseFlag=0 and Flag=100
  	   and RefSheetID not in (select RefSheetID from Receipt0 where ReceiptFlag=0)
  	group by A.ShopID,A.RefSheetID,A.VenderID,B.GoodsID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999360
  --ȡ��������Ʒ����
  select A.ShopID,A.VenderID,B.GoodsID,Sum(B.Qty) as Qty,sum(b.PresentQty) PresentQty
  	into #temp2
  	from receipt A,receiptItem B
  	where A.SheetID=B.SheetID and A.RefSheetID in (select distinct RefSheetID from #temp1)
		and ReceiptFlag=0 and Flag=100
  	group by A.ShopID,A.VenderID,B.GoodsID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999370
  --���붩����	
  insert into #426710(ShopID,VenderID,PurchaseQty,ReceiptQty,OrderPresentQty,PresentQty,diffQty,PurchaseGoodsQty,receiptGoodsQty,
  	diffGoodsQty,Rate1,Rate2,Rate3,Rate4)
  	select ShopID,VenderID,sum(Qty),0,sum(PresentQty),0,0,0,0,
  	0,0,0,0,0
  	from #temp1 group by ShopID,VenderID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999380
    
  --���㵽����
  select ShopID,VenderID,sum(Qty) as Qty,sum(PresentQty) PresentQty
  	into #temp3
  	from #temp2
  	group by ShopId,VenderID;
  
  update #426710
  	set ReceiptQty=B.Qty,PresentQty=b.PresentQty
  	from #426710 A,#temp3 B
  	where a.ShopID=b.ShopID and A.VenderID=B.VenderID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999390

  --����Ʒ����  
  select ShopID,VenderID,count(distinct goodsID) as Qty
  	into #temp4
  	from #temp1
  	group by ShopID,VenderID
  
  update #426710
  	set PurchaseGoodsQty=B.Qty
  	from #426710 A,#temp4 B
  	where a.ShopID=b.ShopID and A.VenderID=B.VenderID;
  	
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999400
  
  select ShopID,VenderID,count(distinct goodsID) as Qty
  	into #temp5
  	from #temp2
  	group by ShopID,VenderID
  
  update #426710
  	set receiptGoodsQty=B.Qty
  	from #426710 A,#temp5 B
  	where a.ShopID=b.shopID and A.VenderID=B.VenderID;
  
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999410
  
  update #426710
  	set diffQty=PurchaseQty+OrderPresentQty-ReceiptQty-PresentQty,
  	diffGoodsQty=PurchaseGoodsQty-receiptGoodsQty,
  	Rate1=Round((ReceiptQty+PresentQty)*100/(PurchaseQty+OrderPresentQty+0.000001),2),
  	Rate2=Round((PurchaseQty+OrderPresentQty-ReceiptQty-PresentQty)*100/(PurchaseQty+OrderPresentQty+0.000001),2),
  	Rate3=round(receiptGoodsQty*100/(PurchaseGoodsQty+0.000001),2),
  	Rate4=round((PurchaseGoodsQty-receiptGoodsQty)*100/(PurchaseGoodsQty+0.000001),2);
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999420
  
  drop table #temp1;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999450
  drop table #temp2;
  drop table #temp3;
  drop table #temp4;
  drop table #temp5;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;	  
    	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go 

-----------------------------------------------------------------
--rp_426570			��ǰ������Ʒ�ۼ۲�ѯ
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.21
--�޸ģ��Խ� 2003-10-30 11:43 ���ƿ�ʼ����С�ڵ��ڽ���
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_426570') and type = 'P')
  drop procedure dbo.rp_426570
GO
create procedure rp_426570 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030821_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);
  
  declare @LevelValue		int;

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @LevelValue=LevelValue from deptlevel where deptlevelid=1;
  select @BreakPoint = 9999350
  insert into #426570 (GoodsID,GName,Spec,PromPrice,beginDate,
 	endDate,Price,SGroupID,SGroupName)
 	select GoodsID,'-1','',Price,PriceBeginDate,
 	PriceEndDate,-1,'-1','-1'
 	from NowPPItem where PriceEndDate>=GetDate() and PriceBegindate<=GetDate();
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999360
 		
 insert into #426570 (GoodsID,GName,Spec,PromPrice,beginDate,
 	endDate,Price,SGroupID,SGroupName)
 	select B.GoodsID,'-1','',B.NewPrice,A.StartDate,
 	A.EndDate,B.OldPrice,'-1','-1'
 	from PriceUpd A,PriceUpdItem B where A.SheetID=B.SheetID
 	and A.TypeFlag=1 and A.EndDate>=GetDate() and A.StartDate<=GetDate();
 select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999370
 	
 update #426570
 	set barcodeid=b.barcodeid,GName=B.Name,spec=B.spec
 	from #426570 A,Goods B
 	where A.GoodsID=B.GoodsID
 select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999380
 	
 update #426570
 	set Price=B.NormalPrice
 	from #426570 A,GoodsShop B
 	where A.GoodsID=B.GoodsID and A.Price=-1;
 select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999390
 	
 update #426570
 	set SGroupID=C.ID,SGroupName=c.Name
 	from #426570 A,Goods B,SGroup C
 	where A.GoodsID=B.GoodsID and floor(B.DeptID/@LevelValue)=c.ID 	
 select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999395
 	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go 

--rp_424620 �߿����ͳ��
if exists (select * from sysobjects where id = object_id('dbo.rp_424620') and sysstat & 0xf = 4)
    drop procedure dbo.rp_424620
GO

create procedure dbo.rp_424620 @Sdate datetime,@typeflag int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030815_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @weekid       char(6);
  declare @monthid      int;
  declare @managelevel  int;
    
  SET NOCOUNT ON

  select @BreakPoint=424001;
  execute @ManageLevel=TL_ManageDeptGene;
  if @ManageLevel <= 0 begin
	select @Err=0;
	select @Msg='����������ļ������Ӵ���!';
	goto ErrHandle;
  end
  select @BreakPoint=423005;
  if @typeflag=1 begin
     select @BreakPoint=423010;
     execute TL_GetWeekID @SDate,@WeekID output;
     insert into #424620(shopid,shopname,managedeptid,goodsid,gname,costv)
     select a.shopid,b.name,round(c.deptid/@managelevel,0),a.goodsid,c.name,SumCloseCostV 
     from  RPT_Base0002 a,shop b,goods c
     where weekid=@weekid and a.shopid=b.id and a.goodsid=c.goodsid;
     select @Err=@@Error,@msg='׼����Ʒ����ʱ���󣡣���';
     if (@Err is null) or (@Err !=0) goto ErrHandle;
  end;
  else begin
     select @Breakpoint=423015;
     select @MonthID=Year(@SDate)*100+Month(@SDate);
     insert into #424620(shopid,shopname,managedeptid,goodsid,gname,costv)
     select a.shopid,b.name,round(c.deptid/@managelevel,0),a.goodsid,c.name,SumCloseCostV 
     from  RPT_Base0003 a,shop b,goods c
     where monthid=@monthid and a.shopid=b.id and a.goodsid=c.goodsid;
     select @Err=@@Error,@msg='׼����Ʒ����ʱ���󣡣���';
     if (@Err is null) or (@Err !=0) goto ErrHandle;
  end;   
  return 0;   
ErrHandle:

  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go



-----------------------------------------------------------------
--rp_427530			���յ�������
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.25
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427530') and type = 'P')
  drop procedure dbo.rp_427530
GO
create procedure rp_427530 @SDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030825_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);  
  declare @Begindate		datetime;--�³�
  declare @Enddate		datetime;--��ĩ

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='��������ֹ���ڴ���';
	goto ErrHandle;
  end
  select @BreakPoint = 9999010
  insert into  #427530(ShopID,ShopName,SheetID,CheckDate,CostValue)
  	select A.ShopID,'-1',A.SheetID,A.Checkdate,sum(B.Qty*B.Cost) as CostValue
  		from receipt A,receiptItem B
  		where A.SheetID=B.SheetID and A.Checkdate>=@BeginDate and  A.Checkdate<=@EndDate
  		group by A.ShopID,A.SheetID,A.Checkdate
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999015
  update #427530
  	set shopname=B.Name
  	from #427530 A,Shop B
  	where A.ShopID=B.ID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999020
  insert into  #427530(ShopID,ShopName,SheetID,CostValue)
  	select ShopID,shopname,'�ֵ�ϼ�',sum(CostValue)
  	from #427530
  	group by ShopID,shopname
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;  
 	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go 


-----------------------------------------------------------------
--rp_427500			��ë�����ܱ���
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.25
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427500') and type = 'P')
  drop procedure dbo.rp_427500
GO
create procedure rp_427500 @SDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030825_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);  
  declare @Begindate		datetime;--�³�
  declare @Enddate		datetime;--��ĩ
  declare @MaoLi		dec(12,2);--��ë��

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='��������ֹ���ڴ���';
	goto ErrHandle;
  end
  select @BreakPoint = 9999010
  insert into #427500(ShopID,ShopName,sgroupID,MaoLi,Rate)
  	select shopid,' ',ManageDeptID,sum(MSaleTotal-MDiscTotal-MCostValue),0.00
  		from RPT_SaleGroup where SDate=@EndDate 
  		group by shopid,ManageDeptID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999015
  select ShopID,Sum(Maoli) as MaoLi
  	into #temp1
  	from #427500 
  	group by shopID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999020
  	
  update #427500
  	set Rate=Round(A.MaoLi/(B.MaoLi+0.00001),2)
  	from #427500 A,#temp1 B
  	where A.ShopID=B.ShopID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999025
  
  drop table #temp1;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999030
  
  update  #427500
  	set shopname=B.Name
  	from  #427500 A,Shop B
  	where a.ShopID=B.ID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999035
  
  insert into #427500(ShopID,ShopName,sgroupID,MaoLi,Rate)
  	select ShopID,ShopName,'�ֵ�ϼ�',sum(MaoLi),0.00
  	from #427500 group by ShopID,ShopName
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999040
  select @MaoLi=0
  select @MaoLi=sum(MaoLi)  from #427500 where sgroupID='�ֵ�ϼ�'
  if @MaoLi<>0 begin
  	select @BreakPoint = 9999045
  	update  #427500
  		set rate=Round(MaoLi/@MaoLi,2)
  		where sgroupID='�ֵ�ϼ�'
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  end
  
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
 	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go 


-----------------------------------------------------------------
--rp_427490			�ۼƹ������������
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.25
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427490') and type = 'P')
  drop procedure dbo.rp_427490
GO
create procedure rp_427490 @SDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030825_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);  
  declare @Begindate		datetime;--�³�
  declare @Enddate		datetime;--��ĩ
  declare @SaleValue		dec(12,2);--�����۶�

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='��������ֹ���ڴ���';
	goto ErrHandle;
  end
  select @BreakPoint = 9999010
  insert into #427490(ShopID,sgroupID,PromSaleValue,PriceSaleValue,diffSaleValue,Rate)
  	select ShopID,ManageDeptID,Sum(SaleValue-DiscValue),sum(SaleValue),sum(DiscValue),0
  	from RPT_SaleGroup where SDate>=@BeginDate and SDate<=@EndDate
  	group by ShopID,ManageDeptID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999015
  
  --����ռ��
  select ShopID,Sum(PromSaleValue) as PromSaleValue
  	into #temp1
  	from #427490
  	group by ShopID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999020
  
  update #427490
  	set Rate=Round(A.PromSaleValue/(B.PromSaleValue+0.000001),2)
  	from #427490 A,#temp1 B
  	where A.ShopID=B.ShopID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999025
  
  drop table #temp1;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999030
  
  update #427490
  	set shopname=B.Name
  	from #427490 a,Shop B
  	where A.ShopID=B.ID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999035
  --�ֵ�ϼ�
  insert into #427490(ShopID,shopname,sgroupID,PromSaleValue,PriceSaleValue,diffSaleValue,Rate)
  	select ShopID,shopname,'�ֵ�ϼ�',sum(PromSaleValue),sum(PriceSaleValue),sum(diffSaleValue),0
  	from #427490
  	group by ShopID,shopname
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999040
  --�ֵ�ռ��
  select @SaleValue=0 
  select @SaleValue=sum(PromSaleValue)   from #427490 where sgroupID='�ֵ�ϼ�';
  if @SaleValue<>0 begin
  	update #427490
  		set Rate=Round(PromSaleValue/@SaleValue,2)
  		where sgroupID='�ֵ�ϼ�';
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  end
    
 	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go
 
 
-----------------------------------------------------------------
--rp_427480			�ۼƹ�����ɹ���ë������
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.25
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427480') and type = 'P')
  drop procedure dbo.rp_427480
GO
create procedure rp_427480 @SDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030825_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);  
  declare @Begindate		datetime;--�³�
  declare @Enddate		datetime;--��ĩ
  declare @SaleValue		dec(12,2);--�����۶�

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='��������ֹ���ڴ���';
	goto ErrHandle;
  end
  select @BreakPoint = 9999010
  insert into #427480(ShopID,ShopName,sgroupID,SaleValue,CostValue,targetMaoLi,MaoLi,diffMaoLi,Rate)
  	select shopid,' ',ManageDeptID,sum(MSaleTotal-MDiscTotal),sum(MCostValue),0,sum(MSaleTotal-MDiscTotal-MCostValue),0,0.00
  		from RPT_SaleGroup where SDate=@EndDate 
  		group by shopid,ManageDeptID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999015
  select ShopID,Sum(SaleValue) as SaleValue
  	into #temp1
  	from #427480 
  	group by shopID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999020
  	
  update #427480
  	set Rate=Round(A.SaleValue/(B.SaleValue+0.00001),2)
  	from #427480 A,#temp1 B
  	where A.ShopID=B.ShopID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999025
  
  drop table #temp1;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999030
  
  update  #427480
  	set shopname=B.Name
  	from  #427480 A,Shop B
  	where a.ShopID=B.ID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999035
  --����ƻ�ë��
  update  #427480
  	set targetMaoLi=Round(A.SaleValue*B.target/100,2)
  	from #427480 A,CMTargetDept B
  	where A.shopid=B.shopid and A.sgroupID=B.deptid and B.salemonth=year(@SDate)
  --ë������
  update  #427480
  	set diffMaoLi=MaoLi-targetMaoLi
  	where targetMaoLi<>0
  --�ֵ�ϼ�
  insert into #427480(ShopID,ShopName,sgroupID,SaleValue,CostValue,targetMaoLi,MaoLi,diffMaoLi,Rate)
  	select ShopID,ShopName,'�ֵ�ϼ�',sum(SaleValue),sum(CostValue),sum(targetMaoLi),sum(MaoLi),sum(diffMaoLi),0
  	from #427480 group by ShopID,ShopName
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999040
  select @SaleValue=0
  select @SaleValue=sum(SaleValue)  from #427480 where sgroupID='�ֵ�ϼ�'
  if @SaleValue<>0 begin
  	select @BreakPoint = 9999045
  	update  #427480
  		set rate=Round(SaleValue/@SaleValue,2)
  		where sgroupID='�ֵ�ϼ�'
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  end
  
 	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go


 
 -----------------------------------------------------------------
--rp_427540			��Ӧ���ͻ�������
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.25
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427540') and type = 'P')
  drop procedure dbo.rp_427540
GO
create procedure rp_427540 @SDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030825_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);  
  declare @Begindate		datetime;--�³�
  declare @Enddate		datetime;--��ĩ

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='��������ֹ���ڴ���';
	goto ErrHandle;
  end
  select @BreakPoint = 9999010
  --�������յ�
  insert into #427540(VenderID,VenderName,ReceiptSheet,PurchaseSheet,ReceiptQty,ReceiptCostValue)
  	select A.VenderID,'',count(distinct a.sheetID),0,sum(B.Qty+B.PresentQty),sum(B.Qty*B.Cost)
  	from  receipt a,receiptitem b
  	where a.sheetid=b.sheetid  and a.checkdate>=@BeginDate and  a.checkdate<=@EndDate
  	group by A.VenderID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999015
  
  update #427540
  	set VenderName=B.Name
  	from #427540 A,Vender B
  	where A.VenderID=B.VenderID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999020
  
  --���㶩������
  select VenderID,count(distinct sheetID) as PurchaseSheet
  	into #temp1
  	from  PurchaseConfirm
  	where checkdate>=@BeginDate and  checkdate<=@EndDate
  	group by VenderID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999025
  
  update #427540
  	set PurchaseSheet=B.PurchaseSheet
  	from #427540  A,#temp1 B
  	where A.VenderID=B.VenderID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999030
  	
  drop table #temp1
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  	 	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go

--427860 ҵ�񵥾�һ����(δȷ��)
--����˵�� 08.26 ������ȷ��   δȷ����ָδ���
--�ϼ���ָ����ϼ�,���ºϼ���ָ���кϼ�
--��ѯ������ָ���µ���ѯ����ֹ
--������û�в�����Ϣ��ȡgoods����
--Ŀǰֻȡ ��Ʒ���յ�����Ʒ����������Ʒ�˻�������Ʒ�����۵��ݡ���Ʒ�̳��̶̵�����Ʒ���ۣ����𣩵�
--������Դȡ���е���������
--��������ȡ�Ƶ�����
 
 -----------------------------------------------------------------
--rp_427860			ҵ�񵥾�һ����(δȷ��)
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.26
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427860') and type = 'P')
  drop procedure dbo.rp_427860
GO
create procedure rp_427860 @SDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030826_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);  
  declare @Begindate		datetime;--�³�
  declare @Enddate		datetime;--��ĩ
  declare @LevelValue		int;
  declare @value		dec(12,2);--�ܽ��

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='��������ֹ���ڴ���';
	goto ErrHandle;
  end
  select @BreakPoint = 9999010
  
  select @levelvalue=1
  select @levelvalue=levelvalue from deptlevel where deptlevelid=1
  if @levelvalue is null or @levelvalue=0 select @levelvalue=1;
  
  --���յ�
  select @BreakPoint = 9999015
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2301,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.Cost*B.Qty) as Value,a.shopid
  	from receipt0 a,receiptitem0 b
  	where a.sheetid=b.sheetid and a.editdate>=@BeginDate and a.editdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999020
  
  --��Ʒ������ (ȡת����,�ۼ�,ת������)
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2342,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.OutPrice*B.OutQty) as Value,a.outshopid
  	from Transfer0 a,Transferitem0 b
  	where a.sheetid=b.sheetid and a.editdate>=@BeginDate and a.editdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.outshopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999025
  --��Ʒ�˻���
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2323,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.Cost*B.PlanQty) as Value,a.shopid
  	from ret0 a,retitem0 b
  	where a.sheetid=b.sheetid and a.editdate>=@BeginDate and a.editdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999030
  --��Ʒ�����۵���(���д��)
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2261,floor(c.DeptID/@LevelValue) as SGroupID,0,a.shopid
  	from costupd0 a,costupditem0 b,goods c
  	where a.sheetid=b.sheetid and a.editdate>=@BeginDate and a.editdate<=@sDate and b.goodsid=c.goodsid
  	group by A.SheetID,floor(c.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999035
  --��Ʒ�̳��̶̵�
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2444,A.ManageDeptID,sum(c.ContractCost*B.Qty) as Value,a.shopid
  	from PDYK0 a,PDYKitem0 b,cost c,config d
  	where a.sheetid=b.sheetid and a.editdate>=@BeginDate and a.editdate<=@sDate 
  	and d.name='�����' and c.shopid=d.value and b.goodsid=c.goodsid and c.flag=0
  	group by A.SheetID,A.ManageDeptID,a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999040
  --��Ʒ���۵�
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2503,floor(c.DeptID/@LevelValue) as SGroupID,sum(B.NewPrice*B.CheckQty),a.shopid
  	from cut0 a,cutitem0 b,goods c
  	where a.sheetid=b.sheetid and a.editdate>=@BeginDate and a.editdate<=@sDate and b.goodsid=c.goodsid
  	group by A.SheetID,floor(c.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999045	
  --��Ʒ����(�ۼ�)
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2413,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.Price*B.checkQty) as Value,a.shopid
  	from lost0 a,lostitem0 b
  	where a.sheetid=b.sheetid and a.editdate>=@BeginDate and a.editdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  --���벿��ϼ�
  select @BreakPoint = 9999050	
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  	select '�ϼ�:',SheetType,SGroupID,sum(Value),ShopID
  	from #427860
  	group by SheetType,SGroupID,ShopID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999055	
  --ȡ�ܺϼ�
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  	select '�����ۼ�:',SheetType,'',sum(Value),ShopID
  	from #427860 where SheetID='�ϼ�:'
  	group by SheetType,ShopID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  	 	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go



--427860 ҵ�񵥾�һ����(��ȷ��)
--����˵�� 08.26 ������ȷ��   ��ȷ����ָδ���
--�ϼ���ָ����ϼ�,���ºϼ���ָ���кϼ�
--��ѯ������ָ���µ���ѯ����ֹ
--������û�в�����Ϣ��ȡgoods����
--Ŀǰֻȡ ��Ʒ���յ�����Ʒ����������Ʒ�˻�������Ʒ�����۵��ݡ���Ʒ�̳��̶̵�����Ʒ���ۣ����𣩵�
--������Դȡ���е���������
--��������ȡ�������

 
 -----------------------------------------------------------------
--rp_427861			ҵ�񵥾�һ����(��ȷ��)
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.26
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427861') and type = 'P')
  drop procedure dbo.rp_427861
GO
create procedure rp_427861 @SDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030826_01,Last Mender:SHJ
-----------------------------------------------------------------
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);  
  declare @Begindate		datetime;--�³�
  declare @Enddate		datetime;--��ĩ
  declare @LevelValue		int;
  declare @value		dec(12,2);--�ܽ��

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='��������ֹ���ڴ���';
	goto ErrHandle;
  end
  select @BreakPoint = 9999010
  
  select @levelvalue=1
  select @levelvalue=levelvalue from deptlevel where deptlevelid=1
  if @levelvalue is null or @levelvalue=0 select @levelvalue=1;
  
  --���յ�
  select @BreakPoint = 9999015
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2301,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.Cost*B.Qty) as Value,a.shopid
  	from receipt a,receiptitem b
  	where a.sheetid=b.sheetid and a.checkdate>=@BeginDate and a.checkdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999020
  
  --��Ʒ������ (ȡ costvalue)
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2342,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.costvalue) as Value,a.outshopid
  	from Transfer a,Transferitem b
  	where a.sheetid=b.sheetid and a.checkdate>=@BeginDate and a.checkdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.outshopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999025
  --��Ʒ�˻���
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2323,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.Cost*B.realQty) as Value,a.shopid
  	from ret a,retitem b
  	where a.sheetid=b.sheetid and a.checkdate>=@BeginDate and a.checkdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999030
  --��Ʒ�����۵���(���д��)
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2261,floor(c.DeptID/@LevelValue) as SGroupID,0,a.shopid
  	from costupd a,costupditem b,goods c
  	where a.sheetid=b.sheetid and a.checkdate>=@BeginDate and a.checkdate<=@sDate and b.goodsid=c.goodsid
  	group by A.SheetID,floor(c.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999035
  --��Ʒ�̳��̶̵�
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2444,A.ManageDeptID,sum(B.Cost*B.Qty) as Value,a.shopid
  	from PDYK a,PDYKCostitem b
  	where a.sheetid=b.sheetid and a.checkdate>=@BeginDate and a.checkdate<=@sDate 
  	group by A.SheetID,A.ManageDeptID,a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999040
  --��Ʒ���۵�
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2503,floor(c.DeptID/@LevelValue) as SGroupID,sum(B.Cost*B.Qty),a.shopid
  	from cut a,cutitem b,goods c
  	where a.sheetid=b.sheetid and a.checkdate>=@BeginDate and a.checkdate<=@sDate and b.goodsid=c.goodsid
  	group by A.SheetID,floor(c.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999045	
  --��Ʒ����
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2413,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.Price*B.Qty) as Value,a.shopid
  	from lost a,lostitem b
  	where a.sheetid=b.sheetid and a.checkdate>=@BeginDate and a.checkdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  --���벿��ϼ�
  select @BreakPoint = 9999050	
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  	select '�ϼ�:',SheetType,SGroupID,sum(Value),ShopID
  	from #427861
  	group by SheetType,SGroupID,ShopID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999055	
  --ȡ�ܺϼ�
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  	select '�����ۼ�:',SheetType,'',sum(Value),ShopID
  	from #427861 where SheetID='�ϼ�:'
  	group by SheetType,ShopID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  	 	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go


--422410 �ŵ���̭�п����Ʒ����
if exists (select * from sysobjects where id = object_id('dbo.rp_422410') and sysstat & 0xf = 4)
    drop procedure dbo.rp_422410
GO
create procedure dbo.rp_422410 @shopid char(4)
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030807_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @sheettypename char(16);
  declare @tempflag      int;
  declare @managename    char(16);
  declare @deptlevel     int;
  declare @levelvalue    int;
  SET NOCOUNT ON
  select @tempflag=0;
  create table #temp_422410
  (GoodsID		int		null,		--����
   GoodsName		char(64)	null,		--������
   Spec			char(16)	null,		--��Ʒ���
   UnitName		char(8)		null,		--������λ
   Package		char(8)		null,		--���۰�װ
   Price		dec(10,2)	null,		--ִ���ۼ�(���ڵ�ǰִ�е������ۻ������)
   Qty			dec(12,3)	null,		--����������������ƷΪ�ο�������
   ClearDate		datetime 	default getdate(),	--ֹͣ��������
   Logistics		int		default 1 not null,	--�ͻ���ʽ:1=ֱ�� 2=ֱͨ 3=����
   VenderID		int		null,		--��Ӧ�̱��
   VenderName		char(64)	null,		--��Ӧ������
   Note			char(64)  	null
   );
  select @Err=@@Error,@BreakPoint=422410,@Msg='������ʱ���ݱ�ʱ����';
  if @Err != 0 goto ErrHandle;
  select @Tempflag=1;
  
  insert into #temp_422410(goodsid,goodsname,spec,unitname,package,price,qty,Logistics,Venderid,VenderName)
    select gs.goodsid,g.name,g.spec,g.unitname,g.package,gs.Price,0,gs.Logistics,c.Venderid,v.Name
    from goodsshop gs,goods g,cost c,Vender v
    where gs.flag=2 and gs.shopid=@shopid and gs.goodsid=g.goodsid
      and gs.goodsid=c.goodsid and c.flag=0
      and c.venderid=v.venderid and c.shopid=gs.shopid;
  select @Err=@@Error,@Msg='ȡ��ʱ������ʱ����',@BreakPoint=422411;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #temp_422410 set qty=ss.qty
    from #temp_422410 a,shopsstock ss
    where a.goodsid=ss.goodsid and ss.shopid=@shopid
  select @Err=@@Error,@Msg='ȡ��ʱ������ʱ����',@BreakPoint=422412;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  insert into #422410 select * from #temp_422410;
  drop table #temp_422410;
  
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_422410;
  return -1;
End
Go 

--422420 ���ŵ���̭��Ʒ�嵥
-----------------------------------------------------------------
--rp_422420			���ŵ���̭��Ʒ�嵥
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--������ʩ���� 2003.08.20
--�޸ģ�κޱ 2003.11.05 ������ۼ۽���Ϊ�ɱ����޸�ƽ���ɱ�����
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_422420') and sysstat & 0xf = 4)
    drop procedure dbo.rp_422420
GO
create procedure dbo.rp_422420
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20031022_02,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @sheettypename char(16);
  declare @tempflag      int;
  declare @managename    char(16);
  declare @deptlevel     int;
  declare @levelvalue    int;
  SET NOCOUNT ON
  select @tempflag=0;
  create table #temp_422420
  (   
   ShopID		char(4)		null,			--��������
   ShopName		char(16)	null,			--��������
   deptID		int		null,			--�������
   deptName		char(16)	null,			--��������
   GoodsID		int		null,			--����
   GoodsName		char(64)	null,			--������
   Spec			char(16)	null,			--��Ʒ���
   UnitName		char(8)		null,			--������λ
   Package		char(8)		null,			--���۰�װ
   Cost 		dec(10,2)	null,			--ƽ������(qtycost/qty)
   Qty			dec(16,4)	null,			--����������������ƷΪ�ο�������
   QtyCost		dec(16,4)	null,			--���ɱ����������ƷΪ�ο�������
   SaleDate		datetime 	null,			--�����������
   Logistics		int		default 1 not null,	--�ͻ���ʽ:1=ֱ��,2=ֱͨ,3=����
   VenderID		int		null,			--��Ӧ�̱��
   VenderName		char(64)	null,			--��Ӧ������
   Note			char(64)  	null
   ); 
  select @Err=@@Error,@BreakPoint=422420,@Msg='������ʱ���ݱ�ʱ����';
  if @Err != 0 goto ErrHandle;
  select @Tempflag=1;
  
  insert into #temp_422420(shopid,deptid,goodsid,goodsname,spec,unitname,package,cost,qty,qtycost,Logistics,Venderid,VenderName)
    select gs.shopid,g.deptid,gs.goodsid,g.name,g.spec,g.unitname,g.package,0.00,0.0000,0.0000,gs.Logistics,c.Venderid,v.Name
    from goodsshop gs,goods g,cost c,Vender v
    where gs.flag=2 and gs.goodsid=g.goodsid
      and gs.goodsid=c.goodsid and c.flag=0
      and c.venderid=v.venderid and c.shopid=gs.shopid;
  select @Err=@@Error,@Msg='ȡ��ʱ������ʱ����',@BreakPoint=422411;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #temp_422420 set qty=ss.qty,qtycost=ss.costvalue 
    from #temp_422420 a,shopsstock ss
    where a.goodsid=ss.goodsid and a.shopid=ss.shopid
  select @Err=@@Error,@Msg='ȡ�������ʱ����',@BreakPoint=422412;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #temp_422420 set Cost=QtyCost/Qty where qty<>0;
  
  update #temp_422420 set shopname=s.name
    from #temp_422420 a,shop s
    where a.shopid=s.id
  select @Err=@@Error,@Msg='ȡ��������ʱ����',@BreakPoint=422414;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #temp_422420 set saledate=d.saledate
    from #temp_422420 a,LatelyGoodsList d
    where a.goodsid=d.goodsid and a.shopid=d.shopid
  select @Err=@@Error,@Msg='ȡ�����������ʱ����',@BreakPoint=422415;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=422416,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=422417,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #temp_422420 set deptid=deptid/@levelvalue,deptname=s.name
    from #temp_422420 a,sgroup s
    where a.deptid/@levelvalue=s.id;
  select @Err=@@Error,@Msg='ȡ������Ϣʱ����',@BreakPoint=422418;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  insert into #422420 select * from #temp_422420;
  drop table #temp_422420;
  
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_422420;
  return -1;
End
Go



--422430 ��������̭����Ʒ�����±�
if exists (select * from sysobjects where id = object_id('dbo.rp_422430') and sysstat & 0xf = 4)
    drop procedure dbo.rp_422430
GO
create procedure dbo.rp_422430 @Begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030807_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  declare @sheetidsum  int;
  declare @vendersum   int;
  declare @goodssum    int;
  declare @goodscount   dec(12,3);
  declare @costvalue   dec(12,3);
  declare @managename  char(16);
  SET NOCOUNT ON
    
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=422000,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=422010,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  create table #temp_422430
  (shopid	char(4)		null,		--��������
   shopName	char(16)	null,		--��������
   sGroupID	int		null,		--���������
   sGroupName	char(16)	null,		--����������
   WashCount	int		null,		--��̭����
   NewCount	int		null,		--��Ʒ����
   StockCount	int		null		--������
  );

  select @tempflag=1;   

--ȡ����
select gs.shopid,gs.goodsid,g.deptid,sg.id,sg.name
  into #422430tmp3
  from goodsshop gs,goods g,sgroup sg,shop sh
  where gs.goodsid=g.goodsid
    and sg.ID=round(g.deptid/@levelvalue,0)
    and gs.shopid=sh.id
    and sh.shoptype>10 and sh.shoptype<90;
insert into #temp_422430(shopid,sGroupID,sGroupName,StockCount,Washcount,NewCount)
  select shopid,id sgid,max(name) sgname,count(*) stockCount,0,0
  from #422430tmp3
  group by shopid,id
 order by shopid,id;
drop table #422430tmp3;
delete from #temp_422430 where stockcount=0;
--ȡ����
update #temp_422430 set shopName=s.Name
  from #temp_422430 a,shop s
  where a.shopid=s.id

--ȡ��̭��Ʒ
select gs.shopid,gs.goodsid,g.deptid,sg.id,sg.name
  into #422430tmp1
  from goodsshop gs,goods g,sgroup sg
  where gs.goodsid=g.goodsid
    and sg.ID=round(g.deptid/@levelvalue,0)
    and gs.flag=2;
select shopid,id sgid,max(name) sgname,count(*) washcount
  into #422430tmp10
  from #422430tmp1
  group by shopid,id
  order by shopid,id;
drop table #422430tmp1;
update #temp_422430 set WashCount=b.washcount
  from #temp_422430 a,#422430tmp10 b
  where a.shopid=b.shopid and a.sGroupID=b.sgID;
drop table #422430tmp10;

--ȡ��Ʒ
select gs.shopid,gs.goodsid,g.deptid,sg.id,sg.name
  into #422430tmp2
  from goodsshop gs,goods g,sgroup sg
  where g.goodsdate<=@Enddate and g.goodsdate>=@Begindate
    and gs.goodsid=g.goodsid
    and sg.ID=round(g.deptid/@levelvalue,0);
select shopid,id sgid,max(name) sgname,count(*) newcount
  into #422430tmp20
  from #422430tmp2
  group by shopid,id
  order by shopid,id;
drop table #422430tmp2;
update #temp_422430 set NewCount=b.newcount
  from #temp_422430 a,#422430tmp20 b
  where a.shopid=b.shopid and a.sGroupID=b.sgID;
drop table #422430tmp20;

  --WashRate	char(8)		null,		--��̭��
  --NewRate	dec(5,2)	null		--��Ʒ������
  insert into #422430(shopid,shopname,sgroupid,sgroupname,
      washcount,newcount,stockcount,washrate,newrate)
    select shopid,shopname,sgroupid,sgroupname,washcount,newcount,stockcount,
      cast(cast(washcount as dec(8,2))/cast(stockcount as dec(8,2)) as dec(5,2)),
      cast(cast(newcount as dec(8,2))/cast(stockcount as dec(8,2)) as dec(5,2))
    from #temp_422430;
  select @Err=@@Error,@BreakPoint=422070,@msg='����д����ʱ����ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  drop table #temp_422430;
 return 0;    
ErrHandle:
  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_422430;
  return -1;
End
Go
  
--422440 �������ĺ��ŵ���̭��Ʒ����嵥
if exists (select * from sysobjects where id = object_id('dbo.rp_422440') and sysstat & 0xf = 4)
    drop procedure dbo.rp_422440
GO
create procedure dbo.rp_422440
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030807_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag      int;
  
  SET NOCOUNT ON
  select @tempflag=0;
  create table #temp_422440
  (shopid	char(4)		null,		--��������
   shopName	char(16)	null,		--��������
   WashCount	int		null,		--��̭Ʒ����
   WashValue	dec(10,4)	null,		--��̭Ʒ�����
   GoodsCount	int		null,		--��ƷƷ����
   GoodsValue	dec(10,4)	null		--��Ʒ���
   );
   
  select @Err=@@Error,@BreakPoint=422440,@Msg='������ʱ���ݱ�ʱ����';
  if @Err != 0 goto ErrHandle;
  select @Tempflag=1;
  
insert into #temp_422440(shopid,shopName,WashCount,WashValue,GoodsCount,GoodsValue)
select distinct gs.shopid,s.name,0,0,0,0  
  from goodsshop gs,shop s
  where gs.flag=2 and gs.shopid=s.id
    and s.shoptype>10 and s.shoptype<90
  order by gs.shopid

--ȡ��Ʒ�������ܿ����
select gs.shopid,count(gs.goodsid) gcount
  into #422440tmp1
  from goodsshop gs,shop sh
  where gs.flag<3 and gs.shopid=sh.id and sh.shoptype>10 and sh.shoptype<90
  group by gs.shopid

select shopid,sum(costValue) sumValue
  into #422440tmp2
  from shopsstock
  group by shopid

--ȡ��̭Ʒ�����Ϳ����
select gs.shopid,count(gs.goodsid) washcount
  into #422440tmp10
  from goodsshop gs,shop sh
  where gs.flag=2 and gs.shopid=sh.id and sh.shoptype>10 and sh.shoptype<90
  group by gs.shopid
select gs.shopid,sum(ss.costValue) washValue
  into #422440tmp20
  from goodsshop gs,shopsstock ss,shop sh
  where gs.goodsid=ss.goodsid and gs.shopid=ss.shopid
    and gs.flag=2 and gs.shopid=sh.id and sh.shoptype>10 and sh.shoptype<90
group by gs.shopid

--������ʱ������
update #temp_422440 set WashCount=b.washcount,WashValue=c.washValue,
  GoodsCount= d.gcount,GoodsValue=e.sumValue
  from #temp_422440 a,#422440tmp10 b,#422440tmp20 c,#422440tmp1 d,#422440tmp2 e
  where a.shopid=b.shopid and a.shopid=c.shopid 
    and a.shopid=d.shopid and a.shopid=e.shopid
    
drop table #422440tmp10;
drop table #422440tmp1;
drop table #422440tmp20;
drop table #422440tmp2;
    
  select @Err=@@Error,@Msg='ȡ��ʱ������ʱ����',@BreakPoint=422411;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --WashCRate	dec(10,4)	null,		--��̭Ʒ����ռ��
  --WashVRate	dec(10,4)	null,		--��̭Ʒ���ռ��
  
  insert into #422440(shopid,shopName,WashCount,WashValue,WashCRate,WashVRate)
    select shopid,shopName,WashCount,WashValue,
      cast(cast(washcount as dec(8,2))/cast(GoodsCount as dec(8,2)) as dec(5,2)),
      cast(cast(WashValue as dec(8,2))/cast(GoodsValue as dec(8,2)) as dec(5,2))
    from #temp_422440;

  drop table #temp_422440;
  return 0;
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_422440;
  return -1;
End
Go 

--422480 ����������Ʒ����� ��CM��
--�޸ģ��Խ� 2003-10-23 11:13 ��д����DM��Ʒ����ظ�Ϊ������Ʒ�����
--      ���벿����Ϣ��������־���ۼۿ����
--�޸ģ������� 2006.03.16 �޸�������Ƴ���Ϊchar(40)
if exists (select * from sysobjects where id = object_id('dbo.rp_422480') and sysstat & 0xf = 4)
    drop procedure dbo.rp_422480
GO
create procedure dbo.rp_422480 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20031023_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @sheettypename char(16);
  declare @tempflag      int;
  declare @managename    char(16);
  declare @deptlevel     int;
  declare @levelvalue    int;
  declare @localShopID	 char(4);
  declare @defaultStock	 char(4);
  
  SET NOCOUNT ON
  select @tempflag=0;
  create table #temp_422480
  (GoodsID	int		null,			--��Ʒ����
   Barcodeid	char(13)	null,			--��Ʒ����
   GoodsName	char(64)	null,			--��Ʒ����
   Spec		char(16)	null,			--��Ʒ���
   deptid	int		null,			--������
   deptname	char(40)	default '' null,	--�������
   StockQty	dec(16,4)	default 0 null,		--�������Ŀ��
   PriceValue	dec(16,4)	default 0 null,		--�ۼۿ����
   DayOutQty	dec(16,4)	default 0 null,		--�վ�������
   DaySaleQty	dec(16,4)	default 0 null,		--�վ�������
   OpenMakeupQty	dec(16,4)	default 0 null,	--��;��������(��˾���벹�����Ѿ���׼������)
   OpenOrderQty		dec(16,4)	default 0 null,	--��;��������(�ѷ��������Ķ�������) 
   OpenRationQty	dec(16,4)	default 0 null,	--��;��������(�����ͳ���ĳ�������) 
   VenderID	int		null,			--��Ӧ�̱��
   VenderName	char(64)	null,			--��Ӧ������
   Promflag	int		default 0 null		--������־��0=����,1=���ۼ�/�������ۼ�,2=DM����
   );
  select @Err=@@Error,@BreakPoint=42248010,@Msg='������ʱ���ݱ�ʱ����';
  if @Err != 0 goto ErrHandle;
  select @Tempflag=1;
  
  select @localShopID=Value from config where Name='�����';
  select @defaultStock=Value from config where Name='Ĭ�����Ͳֿ�';
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42248011;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42248012,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42248013,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
insert into #temp_422480(goodsid,Barcodeid,goodsName,Spec,deptid,StockQty)
  select g.goodsid,g.barcodeid,g.Name,g.spec,g.deptid/@levelvalue,isNull(ss.Qty,0)
    from goods g,shopsstock ss
    where g.goodsid*=ss.goodsid and ss.shopid=@defaultStock 
select @Err=@@Error,@BreakPoint=42248020,@msg='ȡ���ʱ����!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;

update #temp_422480 set deptname=sg.name
  from #temp_422480 a,sgroup sg
  where a.deptid=sg.id
select @Err=@@Error,@BreakPoint=42248030,@msg='ȡ������Ϣʱ����!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;

update #temp_422480 set Venderid=c.venderid,VenderName=v.name
  from #temp_422480 a,cost c,Vender v
  where a.goodsid=c.goodsid and c.shopid=@defaultStock 
    and c.flag=0 and c.venderid=v.venderid
select @Err=@@Error,@BreakPoint=42248032,@msg='ȡĬ�Ϲ�Ӧ����Ϣʱ����!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;

update #temp_422480 set DayOutQty=d.NDMS,OpenMakeupQty=d.OpenMakeupQty,
    OpenOrderQty=d.OpenOrderQty,OpenRationQty=d.OpenRationQty
  from #temp_422480 a,demand d
  where a.goodsid=d.goodsid and d.shopid=@defaultStock
select @Err=@@Error,@BreakPoint=42248035,@msg='ȡ����ָ��ʱ����!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;

select d.goodsid,sum(d.NDMS) DaySaleQty into #422480tmp2
  from demand d,shop s
  where d.shopid=s.id and s.shoptype>10 and s.shoptype<21
  group by d.goodsid
select @Err=@@Error,@BreakPoint=42248040,@msg='ȡ�վ�����ʱ����!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;  
update #temp_422480 set DaySaleQty=b.DaySaleQty
  from #temp_422480 a, #422480tmp2 b
  where a.goodsid=b.goodsid;
select @Err=@@Error,@BreakPoint=42248040,@msg='ȡ�վ�����ʱ����!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;
drop table #422480tmp2;

update #temp_422480 set Promflag=1 where goodsid in (
    select distinct goodsid from promotion where sheettype=2271)
select @Err=@@Error,@BreakPoint=42248050,@msg='ȡ��ͨ������־����!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;
update #temp_422480 set Promflag=2 where goodsid in (
    select distinct goodsid from promotion where sheettype=2512)
select @Err=@@Error,@BreakPoint=42248051,@msg='ȡDM������־����!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;

update #temp_422480 set PriceValue=a.stockqty*b.price
  from #temp_422480 a,goodsshop b
  where a.goodsid=b.goodsid and b.shopid=@defaultstock;
select @Err=@@Error,@BreakPoint=42248055,@msg='ȡ�ۼۿ����ʱ����!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;

insert into #422480
  select goodsid,barcodeid,goodsname,spec,deptid,deptname,stockQty,PriceValue,DayOutQty,DaySaleQty,
    StockQty/(case DayOutQty when 0 then 1 else DayOutQty end),
    StockQty/(case DaySaleQty when 0 then 1 else DaySaleQty end),
    OpenMakeupQty,OpenOrderQty,OpenRationQty,VenderId,VenderName,Promflag
  from #temp_422480  
select @Err=@@Error,@BreakPoint=42248060,@msg='��������ʱ����!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #temp_422480;
  
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_422480;
  return -1;
End


Go


--423410 DM��Ʒ����Ч������
--�޸ģ��Խ� 2003-10-28 15:47 �����ʱ���Ʒ�ۺϹ��׶ȼ���
--�޸ģ��Խ� 2003-11-4 17:52 ���¼��㹱�׶ȣ���ֹ�������
--�ʱ���Ʒ�ۺϹ��׶ȼ��㹫ʽ:
--	30%��������������ռ�ȡ�Ʒ����ռ�ȣ�+40%�����������۶�ռ�ȡ�Ʒ����ռ�ȣ�+30%��������ë����ռ�ȡ�Ʒ����ռ�ȣ�
if exists (select * from sysobjects where id = object_id('dbo.rp_423410') and sysstat & 0xf = 4)
    drop procedure dbo.rp_423410
GO
create procedure dbo.rp_423410 @PlanID int,@shopid char(4)
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20031104_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  declare @begindate	datetime;
  declare @enddate	datetime;
  declare @prebegindate datetime;
  declare @preenddate	datetime;
  
  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;

  SET NOCOUNT ON
    
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=423410,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=423411,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select * into #tmpPromotionPlan from NowPromotionPlan0;
  insert into #tmpPromotionPlan(SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
      PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime)
    select SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
      PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime from NowPromotionPlan;   
  select @begindate=min(PriceBeginDate),@enddate=max(PriceEndDate) 
    from #tmpPromotionPlan 
    where PlanID=@PlanID and ShopID=@ShopID;
  select @Err=@@Error,@BreakPoint=423412,@msg='ȡ�����ƻ���ֹ���ڳ���!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  select @preBeginDate=dateadd(mm,-1,@begindate);--ȡ������ʼ����
  select @preEndDate=dateadd(mm,-1,@enddate);--ȡ���½�������
  
  create table #temp_423410
  (sGroupID	int		null,		--���������
   sGroupName	char(16)	null,		--����������
   DMGoodsNum	int		default 0  null,		--DM��ƷƷ����
   DMSaleNum	int		default 0  null,		--DM������Ʒ��
   DMSaleQty	dec(16,4)	default 0  null,		--DM��Ʒ�������ܺ�
   DMSaleValue	dec(16,4)	default 0  null,		--DM��Ʒ���۶��ܺ�
   DMCost	dec(16,4)	default 0  null,		--DM������Ʒ�ɱ����
   SaleGoodsNum	int		default 0  null,		--������ƷƷ����
   SaleQty	dec(16,4)	default 0  null,		--��������Ʒ����������
   SaleValue	dec(16,4)	default 0  null,		--��������Ʒ�������۶�
   SaleCost	dec(16,4)	default 0  null,		--���ж�����Ʒ�ɱ����
   GoodsNum	int		default 0  null,		--��������ƷƷ����
   PreMonValue	dec(16,4)	default 0  null			--����ͬ�ڹ�������Ʒ���۶�
  );
  select @tempflag=1;   
  insert into #temp_423410(sGroupId,sGroupName,GoodsNum)
    select sg.id sgid,sg.name sgname,count(g.goodsid) GoodsNum 
      from goods g,sgroup sg
      where sg.id*=(g.deptid/@levelvalue)
        and sg.deptlevelid=@deptlevel
        group by sg.id,sg.name
        order by sgid;
--���ձ���ȡ����
  select ManageDeptID,sum(SaleValue) salevalue,sum(DMSaleValue) DMSaleValue,
      sum(DMCostValue) DMCostValue,sum(saleCost) saleCost
    into #423410tmp1
    from RPT_Base0021 a
    where SDate>=@begindate and SDate<=@enddate
      and shopid=@shopid
    group by managedeptid,shopid

  update #temp_423410 set Salevalue=b.salevalue,DMSaleValue=b.dmsalevalue,
      DMCost=b.dmcostvalue,SaleCost=b.salecost
    from #temp_423410 a,#423410tmp1 b
    where a.sGroupID=b.ManageDeptID

--����ʱ��
--���´�������ͳ��
  select * into #423410RPT_Base from RPT_Base0001 where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #423410tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #423410tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #423410tmp;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #423410RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #423410tmp;
       select @SQLString='insert into #423410RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
      execute (@SQLString);
      update #423410tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  
--DMSaleNum,DMSaleQty
  select npp.goodsid,g.deptid/@levelvalue sgid 
    into #423410tmp2
    from #tmpPromotionPlan npp,goods g
    where npp.PlanID=@planid and npp.ShopID=@shopid
      and npp.goodsid=g.goodsid
  select g.deptid/@levelvalue sgid,count(distinct a.goodsid) DMSaleNum,sum(a.saleQty) DMSaleQty
    into #423410tmp3
    from #423410RPT_Base a,goods g
    where a.goodsid in (select goodsid from #423410tmp2)
      and a.goodsid=g.goodsid
    group by g.deptid/@levelvalue
    order by sgid

--SaleGoodsNum,SaleQty
  select g.deptid/@levelvalue sgid,count(distinct a.goodsid) SaleGoodsNum,sum(a.saleQty) SaleQty
    into #423410tmp4
    from #423410RPT_Base a,goods g
    where a.goodsid=g.goodsid
    group by g.deptid/@levelvalue
    order by sgid

--DMGoodsNum
  select g.deptid/@levelvalue sgid,count(npp.goodsid) DMGoodsNum
    into #423410tmp5
    from #tmpPromotionPlan npp,goods g
    where npp.PlanID=@planid and npp.ShopID=@shopid
      and npp.goodsid=g.goodsid
    group by g.deptid/@levelvalue
    order by sgid
  
--���´�������ͳ��
  select * into #423410RPT_Base2 from RPT_Base0001 where 1=2;--����ʱ��
  exec tl_gettablesname @preBeginDate,@preEndDate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #423410tmp7
  while 1=1 begin
    select @i=charindex(',',tablesname) from #423410tmp7;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #423410tmp7;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #423410RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@preBeginDate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@preEndDate,112)
           + ''' and shopid=''' + @shopid +'''';
       execute (@SQLString);
       break;
    end
    else begin
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #423410tmp7; 
       select @SQLString='insert into #423410RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@preBeginDate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@preEndDate,112)
           + ''' and shopid=''' + @shopid +'''';
      execute (@SQLString);
      update #423410tmp7 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
--PreMonValue
  select g.deptid/@levelvalue sgid,sum(SaleValue) PreMonValue
    into #423410tmp6
    from #423410RPT_Base2 a,goods g
    where a.goodsid=g.goodsid
    group by g.deptid/@levelvalue
    order by sgid

--�������ձ����¼
  update #temp_423410 set DMSaleNum=b.DMSaleNum,DMSaleQty=b.DMSaleQty
    from #temp_423410 a,#423410tmp3 b
    where a.sgroupid=b.sgid
      
  update #temp_423410 set SaleGoodsNum=c.SaleGoodsNum,SaleQty=c.SaleQty
    from #temp_423410 a,#423410tmp4 c
    where a.sgroupid=c.sgid 
      
  update #temp_423410 set DMGoodsNum=d.DMGoodsNum
    from #temp_423410 a,#423410tmp5 d
    where a.sgroupid=d.sgid
      
  update #temp_423410 set PreMonValue=e.PreMonValue
    from #temp_423410 a,#423410tmp6 e
    where a.sgroupid=e.sgid
  
  drop table #423410tmp;
  drop table #423410tmp1;
  drop table #423410tmp2;
  drop table #423410tmp3;
  drop table #423410tmp4;
  drop table #423410tmp5;
  drop table #423410tmp6;
  drop table #423410tmp7;
  drop table #423410RPT_Base;
  drop table #423410RPT_Base2;
  drop table #tmpPromotionPlan;
  
  insert into #423410
    select sGroupID,sGroupName,DMGoodsNum,DMSaleNum,
      cast(100*DMSaleNum as dec(16,4))/cast((case DMGoodsNum when 0 then 1 else DMGoodsNum end) as dec(16,4)),
      DMSaleQty,DMSaleValue,100*(DMSaleValue-DMCost)/((case DMCost when 0 then 1 else DMCost end)),      
      SaleGoodsNum,SaleQty,SaleValue,100*(SaleValue-SaleCost)/(case SaleCost when 0 then 1 else SaleCost end),
      cast(100*DMGoodsNum as dec(16,4))/cast((case GoodsNum when 0 then 1 else GoodsNum end) as dec(16,4)),
      100*DMSaleQty/(case SaleQty when 0 then 1 else SaleQty end),
      100*DMSaleValue/(case SaleValue when 0 then 1 else SaleValue end),0,      
      PreMonValue,0,0 from #temp_423410;
      
  update #423410 set SaleCostRate=DMSaleCost/(case SaleRate when 0 then 1 else SaleRate end);
  update #423410 set increaseRate=SaleValue/(case PreMonValue when 0 then 1 else PreMonValue end);
  update #423410 
    set DMRate=30*(SaleNumRate/(case NumRate when 0 then 1 else Numrate end))
        +40*(SaleValueRate/(case NumRate when 0 then 1 else Numrate end))
        +30*(SaleCostRate/(case NumRate when 0 then 1 else Numrate end));
  drop table #temp_423410;
 return 0;    
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_423410;
  return -1;
End
Go


--426440 �������������±�-����
if exists (select * from sysobjects where id = object_id('dbo.rp_426440') and sysstat & 0xf = 4)
    drop procedure dbo.rp_426440
GO
create procedure dbo.rp_426440 @SDatetime datetime,@shopid char(4)
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030807_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @begindate datetime;
  declare @enddate datetime;
  declare @closedate datetime;
  
  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;
  SET NOCOUNT ON
  exec TL_GetMonthDate @SDatetime,@begindate out,@enddate out;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=426440;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  if @begindate is Null select @begindate=getdate();
  if @enddate is Null select @enddate=getdate();
  
  select * into #426440RPT_Base from RPT_Base0001 where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #426440tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #426440tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #426440tmp;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #426440RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #426440tmp; 
       select @SQLString='insert into #426440RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
      execute (@SQLString);
      update #426440tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  drop table #426440tmp;
  insert into #426440
  select a.goodsid,g.name,g.spec,0.00 as preQty,0.00 as CloseQty,sum(ReceiptQty) as ReceiptQty,
      sum(TransferInQty) as TransferInQty,sum(ReceiptQty)+sum(TransferInQty) as InQty,
      sum(RetQty) as RetQty,sum(TransferOutQty) as TransferOutQty,sum(LostQty) as LostQty,
      sum(WSaleQty) as WSaleQty,sum(UseQty) as UseQty,
      sum(RetQty)+sum(TransferOutQty)+sum(LostQty)+sum(WSaleQty)+sum(UseQty) as OutQty,
      sum(PDQty) as PDQty,sum(AdjustQty) as AdjustQty
    from #426440RPT_Base a,goods g
    where a.goodsid=g.goodsid 
    group by a.goodsid,g.name,g.spec;
  select @Err=@@Error,@Msg='ȡ��������ʱ����',@BreakPoint=426447;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #426440 set preQty=b.CloseQty 
    from #426440 a,#426440RPT_Base b 
    where a.goodsid=b.goodsid and b.sdate=@begindate-1;
  select @Err=@@Error,@Msg='ȡ�ڳ���ʱ����',@BreakPoint=426448;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  if month(getdate())=month(@enddate) begin
    select @closedate=max(sdate) from #426440RPT_Base
  end
  else select @closedate=@enddate;

  update #426440 set CloseQty=b.CloseQty 
    from #426440 a,#426440RPT_Base b 
    where a.goodsid=b.goodsid and b.sdate=@closedate;
  
  select @Err=@@Error,@Msg='ȡ��ĩ��ʱ����',@BreakPoint=426449;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go 

--427730 ��Ʒ����˰����ϸ��(�ŵꡢ��˾)
if exists (select * from sysobjects where id = object_id('dbo.rp_427730') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427730
GO
create procedure dbo.rp_427730 @shopid char(4),@sdate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030807_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag      int;
  declare @begindate datetime;
  declare @enddate datetime;
  declare @Taxflag	int;

  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;
  SET NOCOUNT ON
  exec TL_GetMonthDate @sdate,@begindate out,@enddate output;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=427730;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  if @begindate is Null select @begindate=getdate();
  if @enddate is Null select @enddate=getdate();
  select * into #427730SaleCost from SaleCost where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'salecost',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=427731;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427730tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427730tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427730tmp;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #427730SaleCost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),saledate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),saledate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +''' and venderid<>999999';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427730tmp;
       select @SQLString='insert into #427730SaleCost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),saledate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),saledate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +''' and venderid<>999999';
      execute (@SQLString);
      update #427730tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  
  select @Taxflag=value from config where name='�����Ƿ�˰';
  select @Err=@@Error,@Msg='ȡ�����Ƿ�˰����ʱ����',@BreakPoint=427733;
  if @Taxflag is null goto ErrHandle;
    

  insert into #427730
  select a.goodsid,a.deptid,g.barcodeid,g.name,g.agroflag,
      sum(a.qty),max(a.price),sum(a.costValue),sum(a.SaleValue-a.discValue),
      max(a.costtaxRate),max(a.SaleTaxRate),0,0
    from #427730SaleCost a,goods g
    where a.goodsid=g.goodsid
    group by a.goodsid,a.deptid,g.barcodeid,g.name,g.agroflag
    order by a.goodsid
  select @Err=@@Error,@Msg='ȡ��ʱ������ʱ����',@BreakPoint=427734;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427730SaleCost;  
  if (@TaxFlag=0) --����˰����
    update #427730 set CostTaxValue=CostValue*CostTaxRate/100,SaleTaxValue=SaleValue*SaleTaxRate/100;
  else		--��˰����
    update #427730 
      set 
        CostTaxValue=CostValue*CostTaxRate/(100+CostTaxRate*(1-AgroFlag)),
        SaleTaxValue=SaleValue*SaleTaxRate/100+SaleTaxRate; 
  
  select @Err=@@Error,@Msg='ȡ��ʱ������ʱ����',@BreakPoint=427735;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go


--426450 �������ĳ����ձ�
--�޸ģ��Խ� 2003-10-23 9:58 ���벿����Ϣ
if exists (select * from sysobjects where id = object_id('dbo.rp_426450') and sysstat & 0xf = 4)
    drop procedure dbo.rp_426450
GO
create procedure dbo.rp_426450 @SDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030825_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @shopid	char(4);
  declare @str1		char(4);
  declare @str2		char(2);  
  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;
  declare @deptlevel    int;
  declare @levelvalue   int;
  
  SET NOCOUNT ON
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42645010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42645011,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @shopid=Value from config where name='Ĭ�����Ͳֿ�';
  select * into #426450RPT_Base from RPT_Base0001 where 1=2;--����ʱ��
  if (Month(@SDate)=Month(getdate())) and (Year(@SDate)=Year(getdate())) begin
    insert into #426450RPT_Base
      select * from RPT_Base0001 
      where convert(char(8),sdate,112)=convert(char(8),@sdate,112)
        and shopid=@shopid;
  end
  else begin
    select @str1=Year(@sDate);
    select @str2=Month(@sDate);
    if len(@str2)=1 select @str2='0'+@str2;
    select @subTableName='RPT_Base0001'+@str1+@str2;
    select @SQLString='insert into #426450RPT_Base select * from '
             + ltrim(rtrim(@subTableName))
             + ' where convert(char(8),sdate,112)>=''' 
             + convert(char(8),@sdate,112) 
             + ''' and convert(char(8),sdate,112)<=''' 
             + convert(char(8),@sdate,112)
             + ''' and shopid=''' + @shopid +'''';
    execute (@SQLString);
  end;
  
  insert into #426450
  select g.deptid/@levelvalue,sg.name sgname,a.goodsid,g.name,g.spec,g.UnitName,sum(a.saleQty) saleQty,sum(a.saleValue) saleValue,
      sum(a.RetQty) RetQty,sum(a.RetValue) RetValue
    from #426450RPT_Base a,goods g,sgroup sg
    where a.goodsid=g.goodsid and g.deptid/@levelvalue=sg.id
    group by g.deptid/@levelvalue,sg.name,a.goodsid,g.name,g.spec,g.UnitName;
  select @Err=@@Error,@Msg='ȡ��������ʱ����',@BreakPoint=426447;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #426450RPT_Base;
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go 



--427416 ��Ʒ��ë�����ܱ���
if exists (select * from sysobjects where id = object_id('dbo.rp_427416') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427416
GO
create procedure dbo.rp_427416 @beginDate datetime,@endDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20031018_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=427416,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=427423,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select * into #427416RPT_Base from RPT_Base0001 where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=427433;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427416tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427416tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427416tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #427416RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and SaleCost>salevalue and SaleQty>0';
       execute (@SQLString);
       break;
    end
    else begin
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427416tablename;      
       select @SQLString='insert into #427416RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and SaleCost>salevalue and SaleQty>0';
      execute (@SQLString);
      update #427416tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  drop table #427416tablename;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=427443;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  create table #427416tmp
  ( 
    shopid	char(4)		null,
    shopName	char(16)	null,
    deptID	int		null,                           
    deptName	char(16)	null,                           
    goodsid	int		null,
    BarcodeID	char(13)	null,
    goodsName	char(64)	null,                           
    spec        char(16)    	null, 
    Promflag	int		null,			--������־��0=�޴���,1=�д�����                          
    cost	dec(10,2)	default 0 null,		--ƽ������
    Price	dec(10,2)	default 0 null,		--ƽ���ۼ�
    beginDate	datetime	null,			--��ë����ʼ��������
    LastDate	datetime	null,			--��ë�������������
    NSaleDay	int		null,			--��ë����������
    SaleQty	dec(12,2)	default 0 null,		--��������
    SaleValue	dec(12,2)	default 0 null,		--���۶�
    SaleCost	dec(12,2)	default 0 null,		--�ɱ����
    NValue	dec(12,2)	default 0 null,		--��ë�����
    NGPRate	dec(12,2)	default 0 null,		--��ë����
    CloseQty	dec(15,2)	default 0 null,		--��ǰ�������
    CValue	dec(15,2)	default 0 null,		--��ǰ����������۽��
    Venderid	int		null,               	--Ĭ�Ϲ�Ӧ��
    VenderName	char(64)	null    
  )
  select @tempflag=1;
  insert into #427416tmp
  select a.shopid,'',max(g.deptid/@levelvalue),'',a.goodsid,max(g.barcodeid),max(g.name),max(g.spec),
      case sum(a.PromSaleValue) when 0 then 0 else 1 end,0,0,min(a.sdate),max(a.sdate),count(a.sdate),
      sum(SaleQty),sum(SaleValue),sum(SaleCost),0,0,0,0,0,''
  from #427416RPT_Base a,goods g
  where a.goodsid=g.goodsid and a.salecost>a.salevalue
  group by a.shopid,a.goodsid;
  select @Err=@@Error,@BreakPoint=427451,@msg='ȡ�������ݳ���';  
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #427416tmp set NValue=SaleValue-SaleCost,NGPRate=(SaleValue-SaleCost)*100/(case SaleValue when 0 then 1 else SaleValue end)
    from #427416tmp;
    
  update #427416tmp set cost=c.cost, venderid=c.venderid
    from #427416tmp a,cost c
    where c.shopid=a.Shopid and a.goodsid=c.goodsid and c.flag=0;
  select @Err=@@Error,@BreakPoint=427452,@msg='ȡ���ۺ͹�Ӧ����Ϣ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #427416tmp set Price=gs.Price
    from #427416tmp a,goodsshop gs
    where gs.shopid=a.Shopid and a.goodsid=gs.goodsid;
  select @Err=@@Error,@BreakPoint=427453,@msg='ȡ�ۼ���Ϣ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #427416tmp set Price=SaleValue/SaleQty,cost=SaleCost/SaleQty
    from #427416tmp where SaleQty>0;
  select @Err=@@Error,@BreakPoint=427453,@msg='����ƽ�����ۺ�ƽ���ۼ۳���';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #427416tmp set CloseQty=ss.Qty,CValue=ss.Qty*(Price-cost)
    from #427416tmp a,shopsstock ss
    where ss.shopid=a.Shopid and a.goodsid=ss.goodsid;
  select @Err=@@Error,@BreakPoint=427454,@msg='ȡ��ǰ�����Ϣ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  insert into #427416 select * from #427416tmp order by shopid,deptid,goodsid;
  drop table #427416tmp;
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427416tmp;
  return -1;
End
Go 

--427417 ��Ʒ��ë����ϸ����
if exists (select * from sysobjects where id = object_id('dbo.rp_427417') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427417
GO
create procedure dbo.rp_427417 @beginDate datetime,@endDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20031018_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=427417,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=427423,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select * into #427417RPT_Base from RPT_Base0001 where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=427433;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427417tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427417tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427417tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #427417RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and SaleCost>salevalue and SaleQty>0';
       execute (@SQLString);
       break;
    end
    else begin
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427417tablename;      
       select @SQLString='insert into #427417RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and SaleCost>salevalue and SaleQty>0';
      execute (@SQLString);
      update #427417tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  drop table #427417tablename;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=427443;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  create table #427417tmp
  ( 
    sdate	datetime	null,
    shopid	char(4)		null,
    shopName	char(16)	null,
    deptID	int		null,                           
    deptName	char(16)	null,                           
    goodsid	int		null,
    BarcodeID	char(13)	null,
    goodsName	char(64)	null,                           
    spec        char(16)    	null, 
    Promflag	int		null,			--������־��0=�޴���,1=�д�����                          
    cost	dec(10,2)	default 0 null,		--ƽ������
    Price	dec(10,2)	default 0 null,		--ƽ���ۼ�
    beginDate	datetime	null,			--��ë����ʼ��������
    LastDate	datetime	null,			--��ë�������������
    SaleQty	dec(12,2)	default 0 null,		--��������
    SaleValue	dec(12,2)	default 0 null,		--���۶�
    SaleCost	dec(12,2)	default 0 null,		--�ɱ����
    NValue	dec(12,2)	default 0 null,		--��ë�����
    NGPRate	dec(12,2)	default 0 null,		--��ë����
    CloseQty	dec(15,2)	default 0 null,		--���ս������
    CValue	dec(15,2)	default 0 null,		--���ս���������۽��
    Venderid	int		null,               	--Ĭ�Ϲ�Ӧ��
    VenderName	char(64)	null    
  )
  select @tempflag=1;
  insert into #427417tmp
  select a.sdate,a.shopid,'',max(g.deptid/@levelvalue),'',a.goodsid,max(g.barcodeid),max(g.name),max(g.spec),
      case sum(a.PromSaleValue) when 0 then 0 else 1 end,0,0,min(a.sdate),max(a.sdate),
      sum(SaleQty),sum(SaleValue),sum(SaleCost),0,0,max(CloseQty),0,0,''
  from #427417RPT_Base a,goods g
  where a.goodsid=g.goodsid and a.salecost>a.salevalue and a.saleqty>0
  group by a.sdate,a.shopid,a.goodsid;
  select @Err=@@Error,@BreakPoint=427451,@msg='ȡ�������ݳ���';  
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #427417tmp set NValue=SaleValue-SaleCost,NGPRate=(SaleValue-SaleCost)*100/(case SaleValue when 0 then 1 else SaleValue end)
    from #427417tmp;
    
  update #427417tmp set cost=c.cost, venderid=c.venderid
    from #427417tmp a,cost c
    where c.shopid=a.Shopid and a.goodsid=c.goodsid and c.flag=0;
  select @Err=@@Error,@BreakPoint=427452,@msg='ȡ���ۺ͹�Ӧ����Ϣ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #427417tmp set Price=gs.Price
    from #427417tmp a,goodsshop gs
    where gs.shopid=a.Shopid and a.goodsid=gs.goodsid;
  select @Err=@@Error,@BreakPoint=427453,@msg='ȡ�ۼ���Ϣ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #427417tmp set Price=SaleValue/SaleQty,cost=SaleCost/SaleQty
    from #427417tmp where SaleQty>0;
  select @Err=@@Error,@BreakPoint=427453,@msg='����ƽ�����ۺ�ƽ���ۼ۳���';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #427417tmp set CValue=CloseQty*(Price-cost)
    from #427417tmp;
  
  insert into #427417 select * from #427417tmp order by shopid,deptid,goodsid;
  drop table #427417tmp;
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427417tmp;
  return -1;
End
Go 


--427512 �������۳ɱ�ë��ռ���ۺϷ�������
-----------------------------------------------------------------
--rp_427512		�������۳ɱ�ë��ռ���ۺϷ�������
--���������ڶΡ��������롢
--	���������루�󸻺�Ϊ1��������������Ʒ��2������ר������3����ٻ���
--˵����
--���أ��ɹ�0		�ϵ��(427512XX)
--��
--�㷨��
--�������Խ� 2003-9-24 9:53
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427512') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427512
GO
create procedure dbo.rp_427512 @beginDate datetime,@endDate datetime,@shopid char(4),@sgroupid int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030924_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @sgroupvalue	int;		--�������Ȩֵ
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42751210,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42751211,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--�󸻺��������Ȩֵ����@sgroupid��Ӧ
  select * into #427512RPT_Base from RPT_Base0001 where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42751212;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427512tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427512tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427512tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #427512RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427512tablename;
       select @SQLString='insert into #427512RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
      execute (@SQLString);
      update #427512tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42751213;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427512tablename;
  create table #427512Goodstmp
  ( 
    GoodsID	int		null,		--��Ʒ����
    DeptID	int		null,		--������
    AgroFlag	int		default 0 null,	--�Ƿ���˰ũ��Ʒ(0=���� 1=��)
    SaleQty	dec(16,4)	default 0 null,	--��������
    SaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    NSaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    SaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    NSaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    SaleTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
    CostTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
  )
  select @tempflag=1;
  create table #427512tmp
  ( 
    deptID	int		null,		--�������
    deptName	char(16)	null,		--��������
    SaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    NSaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    SaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    NSaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    GPValue	dec(16,4)	default 0 null,	--��˰ë��
    NGPValue	dec(16,4)	default 0 null,	--��˰ë��
    GPRate	dec(5,2)	default 0 null,	--��˰ë����
    NGPRate	dec(5,2)	default 0 null,	--��˰ë����
    SaleRate	dec(5,2)	default 0 null,	--����ռ�ȣ���ռ�����ıȣ�
    GPRRate	dec(5,2)	default 0 null,	--ë��ռ�ȣ���ռ�����ıȣ�
  )
  select @tempflag=2;

  --�������ڱ�����������
  delete from #427512RPT_Base where goodsid in (select goodsid from goods where deptid/@sgroupvalue<>@sgroupid);
  select @Err=@@Error,@Msg='ȡ��������ʱ����',@BreakPoint=42751214;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --׼����Ʒ��������
  insert into #427512Goodstmp(GoodsID,SaleQty,Salevalue,SaleCost)
    select GoodsID,SaleQty,Salevalue,SaleCost from #427512RPT_Base
  select @Err=@@Error,@Msg='ȡ��Ʒ��������ʱ����',@BreakPoint=42751220;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --ȡ��Ʒ������˰��ũ��Ʒ��ʶ������˰
  update #427512Goodstmp set SaleTaxRate=isNull(b.SaleTaxRate,0),AgroFlag=b.AgroFlag,DeptID=b.DeptID
    from #427512Goodstmp a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='ȡ��Ʒ����˰ʱ����',@BreakPoint=42751221;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #427512Goodstmp set CostTaxRate=isNull(b.CostTaxRate,0)
    from #427512Goodstmp a,cost b
    where a.goodsid=b.goodsid and b.shopid=@shopid;
  select @Err=@@Error,@Msg='ȡ��Ʒ����˰ʱ����',@BreakPoint=42751222;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --���㵥Ʒ��˰�ͺ�˰���밴һ����ʽ���㣬���迼���Ƿ���˰ũ��Ʒ��
  update #427512Goodstmp
    set NSaleValue=SaleValue*100/(100+SaleTaxRate),
        NSaleCost=(SaleCost*(100-CostTaxRate*AgroFlag))/(100+CostTaxRate*(1-AgroFlag));
  select @Err=@@Error,@Msg='���㵥Ʒ��˰�ͺ�˰���ʱ����',@BreakPoint=42751223;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  --׼�������������
  insert into #427512tmp
    select deptid/@levelvalue,'',sum(SaleValue),sum(NSaleValue), 
           sum(SaleCost),sum(NSaleCost),0,0,0,0,0,0
    from #427512Goodstmp
    group by deptid/@levelvalue;
  select @Err=@@Error,@Msg='׼�������������ʱ����',@BreakPoint=42751224;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427512Goodstmp;
  
  --���㲿��ë����������˰����˰��
  update #427512tmp 
    set GPValue=SaleValue-SaleCost,NGPValue=NSaleValue-NSaleCost
  select @Err=@@Error,@Msg='���㲿��ë��ʱ����',@BreakPoint=42751225;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --���㲿��ë���ʣ���˰����˰��
  update #427512tmp 
    set GPRate=isNull(GPValue,0)*100/(case SaleValue when 0 then 1 else SaleValue end),
        NGPRate=isNull(NGPValue,0)*100/(case NSaleValue when 0 then 1 else NSaleValue end);
  select @Err=@@Error,@Msg='���㲿��ë����ʱ����',@BreakPoint=42751226;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @sumSaleValue=sum(SaleValue) from #427512tmp;
  select @sumGPValue=sum(GPValue) from #427512tmp;
  if @sumSaleValue=0 select @sumSaleValue=1;
  if @sumGPValue=0 select @sumGpValue=1;
  --��������ռ��
  update #427512tmp set SaleRate=(SaleValue/@sumSaleValue)*100,GPRRate=(GPValue/@sumGPValue)*100;
  select @Err=@@Error,@Msg='��������ռ��ʱ����',@BreakPoint=42751226;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --���벿������
  update #427512tmp set DeptName=sg.Name
    from #427512tmp a,sgroup sg
    where a.deptid=sg.id;
  
  insert into #427512 select * from #427512tmp order by deptid;
  drop table #427512tmp;
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427512Goodstmp;
  if @tempflag=2 begin
    drop table #427512Goodstmp;
    drop table #427512tmp;
   end; 
  return -1;
End
Go 


--427516 �������۳ɱ�ë��ռ���ۺϷ�������
-----------------------------------------------------------------
--rp_427516		�������۳ɱ�ë��ռ���ۺϷ�������
--���������ڶΡ��������롢
--	���������루�󸻺�Ϊ1��������������Ʒ��2������ר������3����ٻ���
--˵����
--���أ��ɹ�0		�ϵ��(427516XX)
--��
--�㷨��
--�������Խ� 2003-9-24 15:02
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427516') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427516
GO
create procedure dbo.rp_427516 @beginDate datetime,@endDate datetime,@shopid char(4),@sgroupid int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030924_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @sgroupvalue	int;		--�������Ȩֵ
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42751610,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42751611,@msg='ȡ�������Ȩֵ����!';
  select @levelvalue=1000;		--�󸻺�����Ȩֵ
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--�󸻺��������Ȩֵ����@sgroupid��Ӧ
  select * into #427516RPT_Base from RPT_Base0001 where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42751612;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427516tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427516tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427516tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #427516RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427516tablename;
       select @SQLString='insert into #427516RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
      execute (@SQLString);
      update #427516tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42751613;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427516tablename;
  create table #427516Goodstmp
  ( 
    GoodsID	int		null,		--��Ʒ����
    DeptID	int		null,		--������
    AgroFlag	int		default 0 null,	--�Ƿ���˰ũ��Ʒ(0=���� 1=��)
    SaleQty	dec(16,4)	default 0 null,	--��������
    SaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    NSaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    SaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    NSaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    SaleTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
    CostTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
  )
  select @tempflag=1;
  create table #427516tmp
  ( 
    deptID	int		null,		--�������
    deptName	char(16)	null,		--��������
    SaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    NSaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    SaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    NSaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    GPValue	dec(16,4)	default 0 null,	--��˰ë��
    NGPValue	dec(16,4)	default 0 null,	--��˰ë��
    GPRate	dec(5,2)	default 0 null,	--��˰ë����
    NGPRate	dec(5,2)	default 0 null,	--��˰ë����
    SaleRate	dec(5,2)	default 0 null,	--����ռ�ȣ���ռ�����ıȣ�
    GPRRate	dec(5,2)	default 0 null,	--ë��ռ�ȣ���ռ�����ıȣ�
  )
  select @tempflag=2;

  --�������ڱ�����������
  delete from #427516RPT_Base where goodsid in (select goodsid from goods where deptid/@sgroupvalue<>@sgroupid);
  select @Err=@@Error,@Msg='ȡ��������ʱ����',@BreakPoint=42751614;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --׼����Ʒ��������
  insert into #427516Goodstmp(GoodsID,SaleQty,Salevalue,SaleCost)
    select GoodsID,SaleQty,Salevalue,SaleCost from #427516RPT_Base
  select @Err=@@Error,@Msg='ȡ��Ʒ��������ʱ����',@BreakPoint=42751620;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --ȡ��Ʒ������˰��ũ��Ʒ��ʶ������˰
  update #427516Goodstmp set SaleTaxRate=isNull(b.SaleTaxRate,0),AgroFlag=b.AgroFlag,DeptID=b.DeptID
    from #427516Goodstmp a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='ȡ��Ʒ����˰ʱ����',@BreakPoint=42751621;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #427516Goodstmp set CostTaxRate=isNull(b.CostTaxRate,0)
    from #427516Goodstmp a,cost b
    where a.goodsid=b.goodsid and b.shopid=@shopid;
  select @Err=@@Error,@Msg='ȡ��Ʒ����˰ʱ����',@BreakPoint=42751622;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --���㵥Ʒ��˰�ͺ�˰���밴һ����ʽ���㣬���迼���Ƿ���˰ũ��Ʒ��
  update #427516Goodstmp
    set NSaleValue=SaleValue*100/(100+SaleTaxRate),
        NSaleCost=(SaleCost*(100-CostTaxRate*AgroFlag))/(100+CostTaxRate*(1-AgroFlag));
  select @Err=@@Error,@Msg='���㵥Ʒ��˰�ͺ�˰���ʱ����',@BreakPoint=42751623;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  --׼�������������
  insert into #427516tmp
    select deptid/@levelvalue,'',sum(SaleValue),sum(NSaleValue), 
           sum(SaleCost),sum(NSaleCost),0,0,0,0,0,0
    from #427516Goodstmp
    group by deptid/@levelvalue;
  select @Err=@@Error,@Msg='׼�������������ʱ����',@BreakPoint=42751624;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427516Goodstmp;
  
  --�������ë����������˰����˰��
  update #427516tmp 
    set GPValue=SaleValue-SaleCost,NGPValue=NSaleValue-NSaleCost
  select @Err=@@Error,@Msg='�������ë��ʱ����',@BreakPoint=42751625;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --�������ë���ʣ���˰����˰��
  update #427516tmp 
    set GPRate=isNull(GPValue,0)/(case SaleValue when 0 then 1 else SaleValue end),
        NGPRate=isNull(NGPValue,0)/(case NSaleValue when 0 then 1 else NSaleValue end);
  select @Err=@@Error,@Msg='�������ë����ʱ����',@BreakPoint=42751626;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @sumSaleValue=sum(SaleValue) from #427516tmp;
  select @sumGPValue=sum(GPValue) from #427516tmp;
  if @sumSaleValue=0 select @sumSaleValue=1;
  if @sumGPValue=0 select @sumGpValue=1;
  --��������ռ��
  update #427516tmp set SaleRate=(SaleValue/@sumSaleValue)*100,GPRRate=(GPValue/@sumGPValue)*100;
  select @Err=@@Error,@Msg='��������ռ��ʱ����',@BreakPoint=42751626;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --����ë��ռ��
  update #427516tmp set GPRate=(GPValue/(case SaleValue when 0 then 1 else SaleValue end))*100;
  select @Err=@@Error,@Msg='����ë��ռ��ʱ����',@BreakPoint=42751627;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --�����������
  update #427516tmp set DeptName=sg.Name
    from #427516tmp a,sgroup sg
    where a.deptid=sg.id;
  
  insert into #427516 select * from #427516tmp order by deptid;
  drop table #427516tmp;
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427516Goodstmp;
  if @tempflag=2 begin
    drop table #427516Goodstmp;
    drop table #427516tmp;
   end; 
  return -1;
End
Go 


--427517 ������ר�������۳ɱ�ë��ռ���ۺϷ�������
-----------------------------------------------------------------
--rp_427517		������ר�������۳ɱ�ë��ռ���ۺϷ�������
--���������ڶΡ��������롢
--	���������루�󸻺�Ϊ1��������������Ʒ��2������ר������3����ٻ���
--˵����
--���أ��ɹ�0		�ϵ��(427517XX)
--��
--�㷨��
--�������Խ� 2003-9-24 15:07
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427517') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427517
GO
create procedure dbo.rp_427517 @beginDate datetime,@endDate datetime,@shopid char(4),@sgroupid int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030924_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @sgroupvalue	int;		--�������Ȩֵ
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42751710,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42751711,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--�󸻺��������Ȩֵ����@sgroupid��Ӧ
  select * into #427517RPT_Base from RPT_Base0001 where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42751712;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427517tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427517tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427517tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #427517RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427517tablename;
       select @SQLString='insert into #427517RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
      execute (@SQLString);
      update #427517tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42751713;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427517tablename;
  create table #427517Goodstmp
  ( 
    GoodsID	int		null,		--��Ʒ����
    DeptID	int		null,		--������
    AgroFlag	int		default 0 null,	--�Ƿ���˰ũ��Ʒ(0=���� 1=��)
    SaleQty	dec(16,4)	default 0 null,	--��������
    SaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    NSaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    SaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    NSaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    SaleTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
    CostTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
  )
  select @tempflag=1;
  create table #427517tmp
  ( 
    deptID	int		null,		--�������
    deptName	char(16)	null,		--��������
    SaleTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
    SaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    NSaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    SaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    NSaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    GPValue	dec(16,4)	default 0 null,	--��˰ë��
    NGPValue	dec(16,4)	default 0 null,	--��˰ë��
    GPRate	dec(5,2)	default 0 null,	--��˰ë����
    NGPRate	dec(5,2)	default 0 null,	--��˰ë����
    SaleRate	dec(5,2)	default 0 null,	--����ռ�ȣ���ռ�����ıȣ�
    GPRRate	dec(5,2)	default 0 null,	--ë��ռ�ȣ���ռ�����ıȣ�
  )
  select @tempflag=2;

  --�������ڱ�����������
  delete from #427517RPT_Base where goodsid in (select goodsid from goods where deptid/@sgroupvalue<>@sgroupid);
  select @Err=@@Error,@Msg='ȡ��������ʱ����',@BreakPoint=42751714;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --׼����Ʒ��������
  insert into #427517Goodstmp(GoodsID,SaleQty,Salevalue,SaleCost)
    select GoodsID,SaleQty,Salevalue,SaleCost from #427517RPT_Base
  select @Err=@@Error,@Msg='ȡ��Ʒ��������ʱ����',@BreakPoint=42751720;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --ȡ��Ʒ������˰��ũ��Ʒ��ʶ������˰
  update #427517Goodstmp set SaleTaxRate=isNull(b.SaleTaxRate,0),AgroFlag=b.AgroFlag,DeptID=b.DeptID
    from #427517Goodstmp a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='ȡ��Ʒ����˰ʱ����',@BreakPoint=42751721;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #427517Goodstmp set CostTaxRate=isNull(b.CostTaxRate,0)
    from #427517Goodstmp a,cost b
    where a.goodsid=b.goodsid and b.shopid=@shopid;
  select @Err=@@Error,@Msg='ȡ��Ʒ����˰ʱ����',@BreakPoint=42751722;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --���㵥Ʒ��˰�ͺ�˰���밴һ����ʽ���㣬���迼���Ƿ���˰ũ��Ʒ��
  update #427517Goodstmp
    set NSaleValue=SaleValue*100/(100+SaleTaxRate),
        NSaleCost=(SaleCost*(100-CostTaxRate*AgroFlag))/(100+CostTaxRate*(1-AgroFlag));
  select @Err=@@Error,@Msg='���㵥Ʒ��˰�ͺ�˰���ʱ����',@BreakPoint=42751723;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  --׼������������ݣ����ϰ�����˰����
  insert into #427517tmp
    select deptid/@levelvalue,'',SaleTaxRate,sum(SaleValue),sum(NSaleValue), 
           sum(SaleCost),sum(NSaleCost),0,0,0,0,0,0
    from #427517Goodstmp
    group by deptid/@levelvalue,SaleTaxRate;
  select @Err=@@Error,@Msg='׼�������������ʱ����',@BreakPoint=42751724;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427517Goodstmp;
  
  --���㲿��ë����������˰����˰��
  update #427517tmp 
    set GPValue=SaleValue-SaleCost,NGPValue=NSaleValue-NSaleCost
  select @Err=@@Error,@Msg='���㲿��ë��ʱ����',@BreakPoint=42751725;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --���㲿��ë���ʣ���˰����˰��
  update #427517tmp 
    set GPRate=isNull(GPValue,0)*100/(case SaleValue when 0 then 1 else SaleValue end),
        NGPRate=isNull(NGPValue,0)*100/(case NSaleValue when 0 then 1 else NSaleValue end);
  select @Err=@@Error,@Msg='���㲿��ë����ʱ����',@BreakPoint=42751726;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @sumSaleValue=sum(SaleValue) from #427517tmp;
  select @sumGPValue=sum(GPValue) from #427517tmp;
  if @sumSaleValue=0 select @sumSaleValue=1;
  if @sumGPValue=0 select @sumGpValue=1;
  --��������ռ��
  update #427517tmp set SaleRate=(SaleValue/@sumSaleValue)*100,GPRRate=(GPValue/@sumGPValue)*100;
  select @Err=@@Error,@Msg='��������ռ��ʱ����',@BreakPoint=42751726;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --���벿������
  update #427517tmp set DeptName=sg.Name
    from #427517tmp a,sgroup sg
    where a.deptid=sg.id;
  
  insert into #427517 select * from #427517tmp order by deptid;
  drop table #427517tmp;
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427517Goodstmp;
  if @tempflag=2 begin
    drop table #427517Goodstmp;
    drop table #427517tmp;
   end; 
  return -1;
End
Go 

--427513 ���ŷ�˰�����۳ɱ�ë���ۺϷ�������
-----------------------------------------------------------------
--rp_427513		���ŷ�˰�����۳ɱ�ë���ۺϷ�������
--���������ڶΡ��������롢
--	���������루�󸻺�Ϊ1��������������Ʒ��2������ר������3����ٻ���
--˵����
--���أ��ɹ�0		�ϵ��(427513XX)
--��
--�㷨��
--�������Խ� 2003-9-24 16:16
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427513') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427513
GO
create procedure dbo.rp_427513 @beginDate datetime,@endDate datetime,@shopid char(4),@sgroupid int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030924_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @sgroupvalue	int;		--�������Ȩֵ
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42751310,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42751311,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--�󸻺��������Ȩֵ����@sgroupid��Ӧ
  select * into #427513RPT_Base from RPT_Base0001 where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42751312;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427513tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427513tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427513tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #427513RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427513tablename;
       select @SQLString='insert into #427513RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
      execute (@SQLString);
      update #427513tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42751313;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427513tablename;
  create table #427513Goodstmp
  ( 
    GoodsID	int		null,		--��Ʒ����
    DeptID	int		null,		--������
    AgroFlag	int		default 0 null,	--�Ƿ���˰ũ��Ʒ(0=���� 1=��)
    SaleQty	dec(16,4)	default 0 null,	--��������
    SaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    NSaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    SaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    NSaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    SaleTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
    CostTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
  )
  select @tempflag=1;
  create table #427513tmp
  ( 
    deptID	int		null,		--�������
    deptName	char(16)	null,		--��������
    CostTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
    SaleTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
    SaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    NSaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    SaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    NSaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    GPValue	dec(16,4)	default 0 null,	--��˰ë��
    NGPValue	dec(16,4)	default 0 null,	--��˰ë��
    GPRate	dec(5,2)	default 0 null,	--��˰ë����
    NGPRate	dec(5,2)	default 0 null,	--��˰ë����
    SaleRate	dec(5,2)	default 0 null,	--����ռ�ȣ���ռ�����ıȣ�
    GPRRate	dec(5,2)	default 0 null,	--ë��ռ�ȣ���ռ�����ıȣ�
  )
  select @tempflag=2;

  --�������ڱ�����������
  delete from #427513RPT_Base where goodsid in (select goodsid from goods where deptid/@sgroupvalue<>@sgroupid);
  select @Err=@@Error,@Msg='ȡ��������ʱ����',@BreakPoint=42751314;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --׼����Ʒ��������
  insert into #427513Goodstmp(GoodsID,SaleQty,Salevalue,SaleCost)
    select GoodsID,SaleQty,Salevalue,SaleCost from #427513RPT_Base
  select @Err=@@Error,@Msg='ȡ��Ʒ��������ʱ����',@BreakPoint=42751320;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --ȡ��Ʒ������˰��ũ��Ʒ��ʶ������˰
  update #427513Goodstmp set SaleTaxRate=isNull(b.SaleTaxRate,0),AgroFlag=b.AgroFlag,DeptID=b.DeptID
    from #427513Goodstmp a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='ȡ��Ʒ����˰ʱ����',@BreakPoint=42751321;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #427513Goodstmp set CostTaxRate=isNull(b.CostTaxRate,0)
    from #427513Goodstmp a,cost b
    where a.goodsid=b.goodsid and b.shopid=@shopid;
  select @Err=@@Error,@Msg='ȡ��Ʒ����˰ʱ����',@BreakPoint=42751322;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --���㵥Ʒ��˰�ͺ�˰���밴һ����ʽ���㣬���迼���Ƿ���˰ũ��Ʒ��
  update #427513Goodstmp
    set NSaleValue=SaleValue*100/(100+SaleTaxRate),
        NSaleCost=(SaleCost*(100-CostTaxRate*AgroFlag))/(100+CostTaxRate*(1-AgroFlag));
  select @Err=@@Error,@Msg='���㵥Ʒ��˰�ͺ�˰���ʱ����',@BreakPoint=42751323;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  --׼������������ݣ����ϰ�����˰������˰����
  insert into #427513tmp
    select deptid/@levelvalue,'',CostTaxRate,SaleTaxRate,sum(SaleValue),sum(NSaleValue), 
           sum(SaleCost),sum(NSaleCost),0,0,0,0,0,0
    from #427513Goodstmp
    group by deptid/@levelvalue,CostTaxRate,SaleTaxRate;
  select @Err=@@Error,@Msg='׼�������������ʱ����',@BreakPoint=42751324;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427513Goodstmp;
  
  --���㲿��ë����������˰����˰��
  update #427513tmp 
    set GPValue=SaleValue-SaleCost,NGPValue=NSaleValue-NSaleCost
  select @Err=@@Error,@Msg='���㲿��ë��ʱ����',@BreakPoint=42751325;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --���㲿��ë���ʣ���˰����˰��
  update #427513tmp 
    set GPRate=isNull(GPValue,0)*100/(case SaleValue when 0 then 1 else SaleValue end),
        NGPRate=isNull(NGPValue,0)*100/(case NSaleValue when 0 then 1 else NSaleValue end);
  select @Err=@@Error,@Msg='���㲿��ë����ʱ����',@BreakPoint=42751326;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  select @sumSaleValue=sum(SaleValue) from #427513tmp;
  select @sumGPValue=sum(GPValue) from #427513tmp;
  if @sumSaleValue=0 select @sumSaleValue=1;
  if @sumGPValue=0 select @sumGpValue=1;
  --��������ռ��
  update #427513tmp set SaleRate=(SaleValue/@sumSaleValue)*100,GPRRate=(GPValue/@sumGPValue)*100;
  select @Err=@@Error,@Msg='��������ռ��ʱ����',@BreakPoint=42751326;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --���벿������
  update #427513tmp set DeptName=sg.Name
    from #427513tmp a,sgroup sg
    where a.deptid=sg.id;
  
  insert into #427513 select * from #427513tmp order by deptid;
  drop table #427513tmp;
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427513Goodstmp;
  if @tempflag=2 begin
    drop table #427513Goodstmp;
    drop table #427513tmp;
   end; 
  return -1;
End
Go 


--427514 �����������۳ɱ�ë���ۺϷ�������
-----------------------------------------------------------------
--rp_427514		�����������۳ɱ�ë���ۺϷ�������
--���������ڶΡ��������롢
--	���������루�󸻺�Ϊ1��������������Ʒ��2������ר������3����ٻ���
--˵����
--���أ��ɹ�0		�ϵ��(427514XX)
--��
--�㷨��
--�������Խ� 2003-9-25 11:08
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427514') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427514
GO
create procedure dbo.rp_427514 @beginDate datetime,@endDate datetime,@shopid char(4),@sgroupid int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20031009_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @sgroupvalue	int;		--�������Ȩֵ
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42751410,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42751411,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--�󸻺��������Ȩֵ����@sgroupid��Ӧ
  select * into #427514RPT_Base from RPT_Base0001 where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42751412;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427514tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427514tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427514tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #427514RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427514tablename;
       select @SQLString='insert into #427514RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
      execute (@SQLString);
      update #427514tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42751413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427514tablename;
  create table #427514Goodstmp
  ( 
    GoodsID	int		null,		--��Ʒ����
    DeptID	int		null,		--������
    AgroFlag	int		default 0 null,	--�Ƿ���˰ũ��Ʒ(0=���� 1=��)
    SaleQty	dec(16,4)	default 0 null,	--��������
    SaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    NSaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    SaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    NSaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    SaleTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
    CostTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
  )
  select @tempflag=1;
  create table #427514tmp
  ( 
    deptID	int		null,		--�������
    deptName	char(16)	null,		--��������
    SaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    NSaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    SaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    NSaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    GPValue	dec(16,4)	default 0 null,	--��˰ë��
    NGPValue	dec(16,4)	default 0 null,	--��˰ë��
    GPRate	dec(5,2)	default 0 null,	--��˰ë����
    NGPRate	dec(5,2)	default 0 null,	--��˰ë����
    SaleRate	dec(5,2)	default 0 null,	--����ռ�ȣ���ռ�����ıȣ�
    GPRRate	dec(5,2)	default 0 null,	--ë��ռ�ȣ���ռ�����ıȣ�
  )
  select @tempflag=2;

  --�������ڱ�����������
  delete from #427514RPT_Base where goodsid in (select goodsid from goods where deptid/@sgroupvalue<>@sgroupid);
  select @Err=@@Error,@Msg='ȡ��������ʱ����',@BreakPoint=42751414;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --ȥ���Ǵ�������
  select distinct goodsid into #427514dxtmp from cost
    where venderid in (select venderid from vender
                       where paytypeid in (select id from paytype 
                                           where paytypesortid='d')) 
      and shopid=(select value from config where name='�����');
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42751415;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  delete from #427514RPT_Base where goodsid not in (select goodsid from #427514dxtmp);
  select @Err=@@Error,@Msg='ȡ��������ʱ����',@BreakPoint=42751416;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427514dxtmp;
  --׼����Ʒ��������
  insert into #427514Goodstmp(GoodsID,SaleQty,Salevalue,SaleCost)
    select GoodsID,SaleQty,Salevalue,SaleCost from #427514RPT_Base
  select @Err=@@Error,@Msg='ȡ��Ʒ��������ʱ����',@BreakPoint=42751420;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --ȡ��Ʒ������˰��ũ��Ʒ��ʶ������˰
  update #427514Goodstmp set SaleTaxRate=isNull(b.SaleTaxRate,0),AgroFlag=b.AgroFlag,DeptID=b.DeptID
    from #427514Goodstmp a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='ȡ��Ʒ����˰ʱ����',@BreakPoint=42751421;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #427514Goodstmp set CostTaxRate=isNull(b.CostTaxRate,0)
    from #427514Goodstmp a,cost b
    where a.goodsid=b.goodsid and b.shopid=@shopid;
  select @Err=@@Error,@Msg='ȡ��Ʒ����˰ʱ����',@BreakPoint=42751422;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --���㵥Ʒ��˰�ͺ�˰���밴һ����ʽ���㣬���迼���Ƿ���˰ũ��Ʒ��
  update #427514Goodstmp
    set NSaleValue=SaleValue*100/(100+SaleTaxRate),
        NSaleCost=(SaleCost*(100-CostTaxRate*AgroFlag))/(100+CostTaxRate*(1-AgroFlag));
  select @Err=@@Error,@Msg='���㵥Ʒ��˰�ͺ�˰���ʱ����',@BreakPoint=42751423;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  --׼�������������
  insert into #427514tmp
    select deptid/@levelvalue,'',sum(SaleValue),sum(NSaleValue), 
           sum(SaleCost),sum(NSaleCost),0,0,0,0,0,0
    from #427514Goodstmp
    group by deptid/@levelvalue;
  select @Err=@@Error,@Msg='׼�������������ʱ����',@BreakPoint=42751424;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427514Goodstmp;
  
  --���㲿��ë����������˰����˰��
  update #427514tmp 
    set GPValue=SaleValue-SaleCost,NGPValue=NSaleValue-NSaleCost
  select @Err=@@Error,@Msg='���㲿��ë��ʱ����',@BreakPoint=42751425;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --���㲿��ë���ʣ���˰����˰��
  update #427514tmp 
    set GPRate=isNull(GPValue,0)*100/(case SaleValue when 0 then 1 else SaleValue end),
        NGPRate=isNull(NGPValue,0)*100/(case NSaleValue when 0 then 1 else NSaleValue end);
  select @Err=@@Error,@Msg='���㲿��ë����ʱ����',@BreakPoint=42751426;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @sumSaleValue=sum(SaleValue) from #427514tmp;
  select @sumGPValue=sum(GPValue) from #427514tmp;
  if @sumSaleValue=0 select @sumSaleValue=1;
  if @sumGPValue=0 select @sumGpValue=1;
  --��������ռ��
  update #427514tmp set SaleRate=(SaleValue/@sumSaleValue)*100,GPRRate=(GPValue/@sumGPValue)*100;
  select @Err=@@Error,@Msg='��������ռ��ʱ����',@BreakPoint=42751426;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --���벿������
  update #427514tmp set DeptName=sg.Name
    from #427514tmp a,sgroup sg
    where a.deptid=sg.id;
  
  insert into #427514 select * from #427514tmp order by deptid;
  drop table #427514tmp;
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427514Goodstmp;
  if @tempflag=2 begin
    drop table #427514Goodstmp;
    drop table #427514tmp;
   end; 
  return -1;
End
Go 


--427515 ������������Ӧ�����۳ɱ�ë���ۺϷ�������
-----------------------------------------------------------------
--rp_427515		������������Ӧ�����۳ɱ�ë���ۺϷ�������
--���������ڶΡ��������롢
--	���������루�󸻺�Ϊ1��������������Ʒ��2������ר������3����ٻ���
--˵����
--���أ��ɹ�0		�ϵ��(427515XX)
--��
--�㷨��
--�������Խ� 2003-9-25 15:38
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427515') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427515
GO
create procedure dbo.rp_427515 @beginDate datetime,@endDate datetime,@shopid char(4),@sgroupid int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030924_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @sgroupvalue	int;		--�������Ȩֵ
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42751510,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42751511,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--�󸻺��������Ȩֵ����@sgroupid��Ӧ
  select * into #427515SaleCost from SaleCost where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'SaleCost',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42751512;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427515tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427515tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427515tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #427515SaleCost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),saledate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),saledate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +''''
           + ' and venderid<999990';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427515tablename;
       select @SQLString='insert into #427515SaleCost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),saledate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),saledate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +''''
           + ' and venderid<999990';
      execute (@SQLString);
      update #427515tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42751513;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427515tablename;
  create table #427515Goodstmp
  ( 
    GoodsID	int		null,		--��Ʒ����
    DeptID	int		null,		--С����
    AgroFlag	int		default 0 null,	--�Ƿ���˰ũ��Ʒ(0=���� 1=��)
    VenderID	int		null,		--��Ӧ�̱��
    PaytypeID	char(2)		null,		--���㷽ʽ���
    SortID	char(1)		default 'g' null,	--���㷽ʽ������,g=����,d=����,q=����
    SaleQty	dec(16,4)	default 0 null,	--��������
    SaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    NSaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    SaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    NSaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    SaleTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
    CostTaxRate	dec(5,2)	default 0 null,	--��ǰ����˰
  )
  select @tempflag=1;
  create table #427515tmp
  ( 
    Venderid	int		null,		--��Ӧ�̱��
    VenderName	char(64)	null,		--��Ӧ������
    SortID	char(1)		null,		--���㷽ʽ������,g=����,d=����,q=����
    deptID	int		null,		--�������
    deptName	char(16)	null,		--��������
    SaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    NSaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    SaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    NSaleCost	dec(16,4)	default 0 null,	--��˰�ɱ����
    GPValue	dec(16,4)	default 0 null,	--��˰ë��
    NGPValue	dec(16,4)	default 0 null,	--��˰ë��
    GPRate	dec(5,2)	default 0 null,	--��˰ë����
    NGPRate	dec(5,2)	default 0 null,	--��˰ë����
    SaleRate	dec(5,2)	default 0 null,	--����ռ�ȣ���ռ�����ıȣ�
    GPRRate	dec(5,2)	default 0 null,	--ë��ռ�ȣ���ռ�����ıȣ�
  )
  select @tempflag=2;

  --�������ڱ�����������
  delete from #427515SaleCost where goodsid in (select goodsid from goods where deptid/@sgroupvalue<>@sgroupid);
  select @Err=@@Error,@Msg='ȡ��������ʱ����',@BreakPoint=42751514;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --׼����Ʒ��������
  insert into #427515Goodstmp(GoodsID,DeptID,VenderID,PaytypeID,SaleQty,Salevalue,SaleCost,SaleTaxRate,CostTaxRate)
    select GoodsID,DeptID,VenderID,PaytypeID,Qty,Salevalue-discvalue,CostValue,SaleTaxRate,CostTaxRate 
    from #427515SaleCost
  select @Err=@@Error,@Msg='ȡ��Ʒ��������ʱ����',@BreakPoint=42751520;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --ȡ��Ʒ��ũ��Ʒ��ʶ
  update #427515Goodstmp set AgroFlag=b.AgroFlag
    from #427515Goodstmp a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='ȡ��Ʒũ��Ʒ��־ʱ����',@BreakPoint=42751521;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  --���㵥Ʒ��˰�ͺ�˰���밴һ����ʽ���㣬���迼���Ƿ���˰ũ��Ʒ��
  update #427515Goodstmp
    set NSaleValue=SaleValue*100/(100+SaleTaxRate),
        NSaleCost=(SaleCost*(100-CostTaxRate*AgroFlag))/(100+CostTaxRate*(1-AgroFlag));
  select @Err=@@Error,@Msg='���㵥Ʒ��˰�ͺ�˰���ʱ����',@BreakPoint=42751523;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #427515Goodstmp set sortID=PayTypeSortID
    from #427515Goodstmp a,PayType p
    where a.paytypeid=p.id;
  select @Err=@@Error,@Msg='ȡ���㷽ʽ����ʱ����',@BreakPoint=42751524;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  --׼����Ӧ�̻�������
  insert into #427515tmp
    select venderid,'',SortID,deptid/@levelvalue,'',sum(SaleValue),sum(NSaleValue), 
           sum(SaleCost),sum(NSaleCost),0,0,0,0,0,0
    from #427515Goodstmp
    group by venderid,sortid,deptid/@levelvalue;
  select @Err=@@Error,@Msg='׼�������������ʱ����',@BreakPoint=42751530;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427515Goodstmp;
  
  --����ë����������˰����˰��
  update #427515tmp 
    set GPValue=SaleValue-SaleCost,NGPValue=NSaleValue-NSaleCost
  select @Err=@@Error,@Msg='���㲿��ë��ʱ����',@BreakPoint=42751531;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --����ë���ʣ���˰����˰��
  update #427515tmp 
    set GPRate=isNull(GPValue,0)/(case SaleValue when 0 then 1 else SaleValue end),
        NGPRate=isNull(NGPValue,0)/(case NSaleValue when 0 then 1 else NSaleValue end);
  select @Err=@@Error,@Msg='���㲿��ë����ʱ����',@BreakPoint=42751532;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @sumSaleValue=sum(SaleValue) from #427515tmp;
  select @sumGPValue=sum(GPValue) from #427515tmp;
  if @sumSaleValue=0 select @sumSaleValue=1;
  if @sumGPValue=0 select @sumGpValue=1;
  --��������ռ��
  update #427515tmp set SaleRate=(SaleValue/@sumSaleValue)*100,GPRRate=(GPValue/@sumGPValue)*100;
  select @Err=@@Error,@Msg='��������ռ��ʱ����',@BreakPoint=42751533;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --����ë��ռ��
  update #427515tmp set GPRate=(GPValue/(case SaleValue when 0 then 1 else SaleValue end))*100;
  select @Err=@@Error,@Msg='����ë��ռ��ʱ����',@BreakPoint=42751534;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --���벿������
  update #427515tmp set DeptName=sg.Name
    from #427515tmp a,sgroup sg
    where a.deptid=sg.id;
  --���빩Ӧ������
  update #427515tmp set VenderName=v.Name
    from #427515tmp a,vender v
    where a.Venderid=v.venderid;
  
  insert into #427515 select * from #427515tmp order by deptid;
  drop table #427515tmp;
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427515Goodstmp;
  if @tempflag=2 begin
    drop table #427515Goodstmp;
    drop table #427515tmp;
   end; 
  return -1;
End
Go 


--427612 ����ר��Ӧ�����ۻ��ܱ�
-----------------------------------------------------------------
--rp_427612		����ר��Ӧ�����ۻ��ܱ�
--���������ڶΡ��������롢
--	���������루�󸻺�Ϊ1��������������Ʒ��2������ר������3����ٻ���
--˵����������ȡ�������Ϊ1������
--���أ��ɹ�0		�ϵ��(427612XX)
--��
--�㷨��
--�������Խ� 2003-9-26 18:38
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427612') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427612
GO
create procedure dbo.rp_427612 @beginDate datetime,@endDate datetime,@shopid char(4),@sgroupid int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030924_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @sgroupvalue	int;		--�������Ȩֵ
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42761210,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42761211,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--�󸻺��������Ȩֵ����@sgroupid��Ӧ
  select * into #427612SaleCost from SaleCost where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'SaleCost',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42761212;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427612tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427612tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427612tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #427612SaleCost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),saledate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),saledate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +''''
           + ' and venderid<999990';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427612tablename;
       select @SQLString='insert into #427612SaleCost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),saledate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),saledate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +''''
           + ' and venderid<999990';
      execute (@SQLString);
      update #427612tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42761213;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427612tablename;
  create table #427612Goodstmp
  ( 
    GoodsID	int		null,		--��Ʒ����
    DeptID	int		null,		--С����
    VenderID	int		null,		--��Ӧ�̱��
    SaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    NSaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    SaleTaxRate	dec(5,2)	default 0 null	--��ǰ����˰
  )
  select @tempflag=1;
  create table #427612tmp
  ( 
    Venderid	int		null,		--��Ӧ�̱��
    VenderName	char(64)	null,		--��Ӧ������
    deptID	int		null,		--�������
    deptName	char(16)	null,		--��������
    SaleTaxRate	dec(5,2)	default 0 null,	--����˰��
    SaleValue	dec(16,4)	default 0 null,	--��˰���۽��
    NSaleValue	dec(16,4)	default 0 null,	--��˰���۽��
  )
  select @tempflag=2;

  --������Ҫ������
  delete from #427612SaleCost where goodsid in (select goodsid from goods where deptid/@sgroupvalue=@sgroupid);
  select @Err=@@Error,@Msg='ȡ��������ʱ����',@BreakPoint=42761214;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --׼����Ʒ��������
  insert into #427612Goodstmp(GoodsID,DeptID,VenderID,Salevalue,SaleTaxRate)
    select GoodsID,DeptID,VenderID,Salevalue-discvalue,SaleTaxRate
    from #427612SaleCost
  select @Err=@@Error,@Msg='ȡ��Ʒ��������ʱ����',@BreakPoint=42761220;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --���㵥Ʒ��˰�ͺ�˰���밴һ����ʽ���㣬���迼���Ƿ���˰ũ��Ʒ��
  update #427612Goodstmp
    set NSaleValue=SaleValue*100/(100+SaleTaxRate)
  select @Err=@@Error,@Msg='���㵥Ʒ��˰�ͺ�˰���ʱ����',@BreakPoint=42761223;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
      
  --׼����Ӧ�̻�������
  insert into #427612tmp
    select venderid,'',deptid/@levelvalue,'',SaleTaxRate,sum(SaleValue),sum(NSaleValue)
    from #427612Goodstmp
    group by venderid,deptid/@levelvalue,SaleTaxRate;
  select @Err=@@Error,@Msg='׼����Ӧ�̻�������ʱ����',@BreakPoint=42761230;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427612Goodstmp;

  --���벿������
  update #427612tmp set DeptName=sg.Name
    from #427612tmp a,sgroup sg
    where a.deptid=sg.id;
  --���빩Ӧ������
  update #427612tmp set VenderName=v.Name
    from #427612tmp a,vender v
    where a.Venderid=v.venderid;
  
  insert into #427612 select * from #427612tmp order by deptid;
  drop table #427612tmp;
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427612Goodstmp;
  if @tempflag=2 begin
    drop table #427612Goodstmp;
    drop table #427612tmp;
   end; 
  return -1;
End
Go 

--427613 ר����Ʒ���ۻ��ܱ�
-----------------------------------------------------------------
--rp_427613		ר����Ʒ���ۻ��ܱ�
--���������ڶΡ��������롢
--	���������루�󸻺�Ϊ1��������������Ʒ��2������ר������3����ٻ���
--˵����������ȡ�������Ϊ1������
--���أ��ɹ�0		�ϵ��(427613XX)
--��
--�㷨��
--�������Խ� 2003-9-26 18:38
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427613') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427613
GO
create procedure dbo.rp_427613 @beginDate datetime,@endDate datetime,@shopid char(4),@sgroupid int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030926_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @sgroupvalue	int;		--�������Ȩֵ
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42761310,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42761311,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--�󸻺��������Ȩֵ����@sgroupid��Ӧ
  select * into #427613SaleCost from SaleCost where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'SaleCost',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42761312;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427613tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427613tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427613tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #427613SaleCost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),saledate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),saledate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +''''
           + ' and venderid<999990';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427613tablename;
       select @SQLString='insert into #427613SaleCost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),saledate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),saledate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +''''
           + ' and venderid<999990';
      execute (@SQLString);
      update #427613tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42761313;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427613tablename;
  create table #427613Goodstmp
  ( 
    GoodsID	int		null,		--��Ʒ����
    VenderID	int		null,		--��Ӧ�̱��
    DeptID	int		null,		--С�����
    SaleQty	dec(16,4)	default 0 Null,	--��������
    SaleValue	dec(16,4)	default 0 null	--���۽��
  )
  select @tempflag=1;
  create table #427613tmp
  ( 
    GoodsID	int		null,		--��Ʒ����
    barcodeid	char(13)	null,		--��Ʒ������
    GName	char(64)	null,		--��Ʒ����
    Spec	char(16)	null,		--��Ʒ���
    UnitName	char(8)		null,		--������λ
    Venderid	int		null,		--��Ӧ�̱��
    VenderName	char(64)	null,		--��Ӧ������
    deptID	int		null,		--�������
    deptName	char(16)	null,		--��������
    SaleQty	dec(16,4)	default 0 Null,	--��������
    SaleValue	dec(16,4)	default 0 null,	--���۽��
  )
  select @tempflag=2;

  --������Ҫ������
  delete from #427613SaleCost where goodsid in (select goodsid from goods where deptid/@sgroupvalue=@sgroupid);
  select @Err=@@Error,@Msg='ȡ��������ʱ����',@BreakPoint=42761314;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --׼����Ʒ��������
  insert into #427613Goodstmp(GoodsID,VenderID,DeptID,SaleQty,Salevalue)
    select GoodsID,VenderID,DeptID,Qty,Salevalue-discvalue
    from #427613SaleCost
  select @Err=@@Error,@Msg='ȡ��Ʒ��������ʱ����',@BreakPoint=42761320;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
        
  --׼��ͳ�ƻ�������
  insert into #427613tmp
    select goodsid,'','','','',venderid,'',deptid/@levelvalue,'',sum(SaleQty),sum(SaleValue)
    from #427613Goodstmp
    group by goodsid,venderid,deptid/@levelvalue;
  select @Err=@@Error,@Msg='ͳ�ƻ�������ʱ����',@BreakPoint=42761330;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427613Goodstmp;

  --������Ʒ�����Ϣ
  update #427613tmp set barcodeid=g.barcodeid,gName=g.name,spec=g.spec,unitname=g.unitname
    from #427613tmp a,goods g
    where a.goodsid=g.goodsid;
  --���벿������
  update #427613tmp set DeptName=sg.Name
    from #427613tmp a,sgroup sg
    where a.deptid=sg.id;
  --���빩Ӧ������
  update #427613tmp set VenderName=v.Name
    from #427613tmp a,vender v
    where a.Venderid=v.venderid;
  
  insert into #427613 select * from #427613tmp order by deptid;
  drop table #427613tmp;
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427613Goodstmp;
  if @tempflag=2 begin
    drop table #427613Goodstmp;
    drop table #427613tmp;
   end; 
  return -1;
End
Go 

if exists (select * from sysobjects where id=object_id('dbo.rp_427720') and sysstat & 0xf =4)
     drop procedure dbo.rp_427720
GO
create procedure dbo.rp_427720 @sheetType  int,@bdate datetime,@edate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
---Version Number:Apple1.0_20030825_01,Last Mender:zgk
---427720	ҵ�񵥾ݻ��ܱ�
---���� �������ͣ���ʼ���ڣ���������
-----------------------------------------------------------------
AS BEGIN
  declare  @Err     int;
  declare  @BreakPoint   int;
  declare  @Msg          varchar(255);    
  
  declare  @VenderID3 int;      --output,
  declare  @PayTypeID3 int;     --output,
  declare  @Cost3 dec(12,2);    --output,
  declare  @TaxRate3 dec(12,2); -- output,
  declare  @DKRate3 dec(12,2);  --output,
  declare  @PromFlag3 dec(12,2); --output;  
  declare  @GoodsID int;
  declare  @ShopID char(4);
  declare  @VenderID int;
  declare  @sheetid char(30);
  declare  @qty dec(12,2);
  declare  @price dec(12,2);
  declare  @priceValue dec(12,2);
  declare  @costValue  dec(12,2);
  
  SET NOCOUNT ON  
 
 
  create table #temp_427720
 (
  SheetType       int        not null,
  sheetid         char(16)   not null,
  VenderName      char(64)   null,
  VenderId        int        not null,  
  PriceValue      dec(12,2)	default 0 not null,
  CostValue       dec(12,2)	default 0 not null
  );  
  
  select @Err=@@Error,@breakpoint=425000,@msg='������ʱ��ʱ����!!';
  if (@Err is null) or (@Err !=0) goto ErrHandle;

  if @sheetType=2301   begin         --2301-���յ�       
        insert into  #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
  		select @sheettype,a.sheetid,a.venderid,sum(b.qty*b.price) priceValue,sum(b.qty*b.cost) costvalue 
  		from receipt a,receiptitem b 
  		where a.sheetid=b.sheetid  and a.flag=100
		and a.checkdate between @bdate and @edate
		group by a.sheetid,a.venderid                    
  end 
  else if @sheetType=2323  begin         --2323-�˻���    
       insert into  #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		select @sheettype,a.sheetid,a.venderid,sum(b.realqty*b.price) priceValue,sum(b.realqty*b.cost) costValue
		from ret a,retitem b
		where a.sheetid=b.sheetid and a.flag=100
		      and a.checkdate between @bdate and @edate
		group by a.sheetid,a.venderid   
  end
  else if @sheetType=2413  begin  --2413-����     
        DECLARE Cur_Temp cursor local fast_forward for 
        select a.sheetid,a.shopid,b.goodsid,b.checkqty,b.price 
              from lost a,lostitem b 
              where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
              order by a.sheetid,b.goodsid;
        open  Cur_Temp   ;
        WHILE (1=1)
              BEGIN                                   
              FETCH NEXT FROM Cur_Temp INTO  @sheetid,@shopid,@goodsid,@qty,@price              
              if @@FETCH_STATUS != 0 break;
              
              select @venderid=max(venderid) from cost where goodsid=@Goodsid and shopid=@shopid and flag=0;              
    		  execute @Err=TL_GetDefaultCost @GoodsID,@ShopID,@VenderID,
  					@VenderID3 output,@PayTypeID3 output,@Cost3 output,
  					@TaxRate3 output,@DKRate3 output,@PromFlag3 output;
  			 
  			  select @PriceValue=@price*@qty
  			  select @CostValue=@Cost3*@qty
  		      update #temp_427720 set priceValue=PriceValue+@priceValue,CostValue=CostValue+@CostValue
  		            where Sheetid=@sheetid and venderid=@venderid
  		      if @@rowcount=0    --��ʱ�õ������͵��ֶδ�����Ʒ���   
  		      	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		      		values(@sheetType,@sheetid,@venderid3,@priceValue,@CostValue);
		      		
		 end;  		 
		 CLOSE Cur_Temp
         DEALLOCATE Cur_Temp
         select @Err = @@error;
         if @Err != 0 goto ErrHandle;
   end
   else if @sheetType=2332  begin  --2332-����/���䵥 
   		DECLARE Cur_Temp cursor local fast_forward for 
        select a.sheetid,a.outshopid,b.goodsid,(b.outprice*b.outqty) pricevalue,b.costValue
              from ration a,rationitem b
              where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
              order by a.sheetid,b.goodsid;
        open  Cur_Temp   ;
        WHILE (1=1)
              BEGIN                                   
              FETCH NEXT FROM Cur_Temp INTO  @sheetid,@shopid,@goodsid,@priceValue,@CostValue
              if @@FETCH_STATUS != 0 break;
              
              select @venderid=max(venderid) from cost where goodsid=@Goodsid and shopid=@shopid and flag=0;                  		  
  					
  		      update #temp_427720 set priceValue=PriceValue+@priceValue,CostValue=CostValue+@CostValue
  		            where Sheetid=@sheetid and venderid=@venderid
  		      if @@rowcount=0    --��ʱ�õ������͵��ֶδ�����Ʒ���   
  		      	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		      		values(@sheetType,@sheetid,@venderid,@priceValue,@CostValue);		      		
		 end;  		 
		 CLOSE Cur_Temp
         DEALLOCATE Cur_Temp
         select @Err = @@error;
         if @Err != 0 goto ErrHandle;
   end     
   else if @sheetType=2251  begin  --2251-ת�൥     
   		DECLARE Cur_Temp cursor local fast_forward for 
        select a.sheetid,b.goodsid,B.CostValue
              from deptchange a,deptchangeitem b
              where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
              order by a.sheetid,b.goodsid;
        open  Cur_Temp   ;
        WHILE (1=1)
              BEGIN                                   
              FETCH NEXT FROM Cur_Temp INTO  @sheetid,@goodsid,@CostValue
              if @@FETCH_STATUS != 0 break;
              
              select @venderid=max(venderid) from cost where goodsid=@Goodsid and shopid='A00A' and flag=0;                  		  
  					
  		      update #temp_427720 set CostValue=CostValue+@CostValue
  		            where Sheetid=@sheetid and venderid=@venderid
  		      if @@rowcount=0    --��ʱ�õ������͵��ֶδ�����Ʒ���   
  		      	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		      		values(@sheetType,@sheetid,@venderid,0,@CostValue);		      		
		 end;  		 
		 CLOSE Cur_Temp
         DEALLOCATE Cur_Temp
         select @Err = @@error;
         if @Err != 0 goto ErrHandle;     
   end   
  else if @sheetType=2342	 begin          --2342-��������        
   		DECLARE Cur_Temp cursor local fast_forward for 
        select a.sheetid,a.outshopid,b.goodsid,b.outprice,b.outqty,b.costValue
              from Transfer a,Transferitem b
              where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
              order by a.sheetid,b.goodsid;
        open  Cur_Temp   ;
        WHILE (1=1)
              BEGIN                                   
              FETCH NEXT FROM Cur_Temp INTO  @sheetid,@shopid,@goodsid,@price,@qty,@CostValue
              if @@FETCH_STATUS != 0 break;
              
              select @venderid=max(venderid) from cost where goodsid=@Goodsid and shopid=@shopid and flag=0;                  		  
  			  select @PriceValue=@price*@qty		
  		      update #temp_427720 set PriceValue=PriceValue+@priceValue,CostValue=CostValue+@CostValue
  		            where Sheetid=@sheetid and venderid=@venderid
  		      if @@rowcount=0    --��ʱ�õ������͵��ֶδ�����Ʒ���   
  		      	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		      		values(@sheetType,@sheetid,@venderid,@priceValue,@CostValue);		      		
		 end;  		 
		 CLOSE Cur_Temp
         DEALLOCATE Cur_Temp
         select @Err = @@error;
         if @Err != 0 goto ErrHandle;  
  end   
  else if @sheetType=2390	 begin          --2390-ת�������       
	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		select @sheettype,a.sheetid,c.VenderId,d.normalprice*b.outqty PriceValue,c.cost*b.outqty costValue
		from TransferGoods a,TransferGoodsitem b,cost c,GoodsShop d
		where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
		and b.outgoodsid=c.goodsid and a.shopid=c.shopid  
        and b.outgoodsid=d.goodsid and a.shopid=d.shopid                    
  end   
  /*else if @sheetType=2423	 begin          --2423-�������õ�    --������    
                select '1'
  end*/ 
  else if @sheetType=2431	 begin          --2431-���ɱ�������     
      insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		      select @sheetType sheettype,a.sheetid,a.venderid,sum(abs(c.price*b.CostValue/(b.newcost-b.oldcost))) PriceValue,sum(abs(b.newcost*b.CostValue/(b.newcost-b.oldcost))) CostValue
              from UpdCostValue a,UpdCostValueitem b,goodsshop c
              where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
                    and c.goodsid=b.goodsid and a.shopid=c.shopid
              group by a.sheetid,a.venderid            
  end 
  else if @sheetType=2432	 begin          --2432-����ʳɱ�������   
      insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		      select @sheetType sheettype,a.sheetid,d.venderid,abs(newqty-oldqty)*c.price PriceValue,abs(newqty-oldqty)*d.cost CostValue
              from UpdShopsStock a,UpdShopsStockitem b,goodsshop c,cost d
              where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
                    and c.goodsid=b.goodsid and a.shopid=c.shopid
                    and b.goodsid=d.goodsid and a.shopid=d.shopid                     
  end 
  else if @sheetType=2444	 begin          --2444-�̵�ӯ����         
       insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
               select @sheettype,a.sheetid,b.VenderId,0 priceValue,qty*cost CostValue
				from pdyk a,pdykcostitem b
				where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
  end 
  /*else if @sheetType=2445	 begin          --2445-��������������       
      insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		      select @sheetType sheettype,a.sheetid,a.venderid,0 PriceValue,sum(b.cost*b.adjustqty) CostValue
              from UpdGoodsCost a, UpdGoodsCostItem b
              where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
              group by a.sheetid,a.venderid                                      
  end */
  else if @sheetType=2451	 begin          --2451-������             
	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		select @sheettype,a.sheetid,c.VenderId,b.price*b.qty PriceValue,c.cost*b.qty costValue
		from WholeSale a,WholeSaleitem b,cost c
		where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
		and b.goodsid=c.goodsid and a.shopid=c.shopid  and a.retflag=0               
  end   
  /*else if @sheetType=2472	 begin          --2472-��Ӧ�����õ�       
               select '1'
  end
  */   
  else if @sheetType=2473	 begin          --2473-�ӹ����õ�          
	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		select @sheettype,a.sheetid,c.VenderId,b.price*b.qty PriceValue,c.cost*b.qty costValue
		from SaleStuff a,SaleStuffItem b,cost c
		where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
		and b.goodsid=c.goodsid and a.shopid=c.shopid              
  end 
  else if @sheetType=5203	 begin          --5203-����֪ͨ��           
	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)  
		select @sheettype,a.sheetid,a.VenderId,sum(b.SaleValue) PriceValue,sum(b.CostValue) costValue
		from billhead a,billheaditem b
		where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
		group by a.sheetid,a.venderid         
  end   
  else if @sheetType=5205	 begin          --5205-��Ӧ���������ݽ�������
	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)  
		select @sheettype,a.sheetid,a.VenderId,0 PriceValue,CostValue
		from UpdPayable a,UpdPayableitem b
		where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100		 
  end;        


  select @Err=@@Error,@breakpoint=425020,@Msg='ȡ����ʱ����';
  if (@Err is null) or (@Err !=0) goto ErrHandle;  
  
  insert into #427720 (sheettype,sheetid,VenderId,VenderName,priceValue,CostValue)
  select sheettype,sheetid,a.VenderId,b.Name,priceValue,CostValue from #temp_427720 a,vender b 
  where a.venderid=b.venderid  
  
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

end
go

--rp_427780			�����ۼ۽��һ����
if exists (select * from sysobjects where id=object_id('dbo.rp_427780') and sysstat & 0xf =4)
     drop procedure dbo.rp_427780
GO
create procedure dbo.rp_427780 @startdate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
---Version Number:Apple1.0_20030619_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN

  declare  @Err     int;
  declare  @BreakPoint   int;
  declare  @Msg          varchar(255);

  SET NOCOUNT ON
  select @BreakPoint=427780;
  insert into #427780(sdate,shopid,shopname,refsheetid,refsheettype,sheetname,goodsid,gname,deptid,
                      directflag,qty,price,cost,pricevalue,costvalue,salevalue)
      select a.sdate,a.shopid,b.name,a.refsheetid,a.refsheettype,c.name,a.goodsid,d.name,a.deptid,
             a.directflag,a.qty,a.price,a.cost,a.pricevalue,a.cost*a.qty,a.qty*price
      from RPT_PriceValueChange a,shop b,serialnumber c,goods d
      where a.shopid=b.id and a.refsheettype=c.serialid and a.goodsid=d.goodsid     
           and convert(char(8),a.sdate,112) between convert(char(8),@startdate,112) and convert(char(8),@enddate,112);
   select @Err=@@Error,@msg='�������ʱ������';
   if (@Err is null) or (@Err !=0) goto ErrHandle;
  return 0;
  ErrHandle:
    raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    return -1;
End

GO

--rp_423470			�ŵ궩����Ʒ��;���ձ�
--�޸ģ��Խ� 2003-10-16 15:37 ���벿�����
if exists (select * from sysobjects where id=object_id('dbo.rp_423470') and sysstat & 0xf =4)
     drop procedure dbo.rp_423470
GO
create procedure dbo.rp_423470 @startdate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
---Version Number:Apple1.0_20030828_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare  @Err     int;
  declare  @BreakPoint   int;
  declare  @Msg          varchar(255);
  declare  @tempflag     int;
  declare @deptlevel    int;
  declare @levelvalue   int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @BreakPoint=423000;
  create table #temp_423470_a
  (shopid    char(4),
   goodsid   int,
   dhqty  dec(12,3),
   shqty  dec(12,3),
   ysqty dec(12,3),
   ztqty      dec(12,3),
  );
  create table #temp_423470_b
  (shopid    char(4),
   goodsid   int,
   dhqty  dec(12,3),
   shqty  dec(12,3),
   ysqty dec(12,3),
   ztqty      dec(12,3),
   diffqty    dec(12,3),
  );

  select @Err=@@Error,@breakPoint=423010,@msg='������ʱ�������'; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=423011,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=423012,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  ----д����������  
  insert into  #temp_423470_a(shopid,goodsid,dhqty,shqty,ysqty,ztqty)
              select shopid,goodsid,0,0,sum(receiptqty),0
              from RPT_Base0001
              where convert(char(8),sdate,112) between convert(char(8),@startdate,112) and convert(char(8),@enddate,112)
                    and receiptqty !=0
              group by shopid,goodsid;
  select @Err=@@Error,@breakPoint=423020,@msg='ȡ��������ʱ������'; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;
 
  ----д������������
  insert into  #temp_423470_a(shopid,goodsid,dhqty,shqty,ysqty,ztqty)
              select a.shopid,b.goodsid,sum(b.qty),0,0,0
              from purchaseask a,purchaseaskitem b
              where convert(char(8),a.checkdate,112) between convert(char(8),@startdate,112) and convert(char(8),@enddate,112)
                    and a.sheetid=b.sheetid and b.qty!=0
              group by a.shopid,b.goodsid;
  select @Err=@@Error,@breakPoint=423030,@msg='ȡ������������ʱ������'; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  ----д������������
  insert into  #temp_423470_a(shopid,goodsid,dhqty,shqty,ysqty,ztqty)
              select a.shopid,b.goodsid,0,sum(b.qty),0,0
              from purchase a,purchaseitem b
              where convert(char(8),a.checkdate,112) between convert(char(8),@startdate,112) and convert(char(8),@enddate,112)
                    and a.sheetid=b.sheetid and b.qty!=0
              group by a.shopid,b.goodsid ;
  select @Err=@@Error,@breakPoint=423040,@msg='ȡ������������ʱ������'; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;
 -------��������                     
  insert into  #temp_423470_b(shopid,goodsid,dhqty,shqty,ysqty,ztqty,diffqty)
              select shopid,goodsid,sum(dhqty),sum(shqty),sum(ysqty),sum(shqty)-sum(ysqty),sum(dhqty)-sum(ysqty)
              from #temp_423470_a
              group by shopid,goodsid;
  select @Err=@@Error,@breakPoint=423050,@msg='��������ʱ������'; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;

  insert into #423470(shopid,shopname,goodsid,gname,deptid,dhqty,shqty,ysqty,ztqty,diffqty,orderrate)
             select a.shopid,b.name,a.goodsid,c.name,c.deptid/@levelvalue,a.dhqty,a.shqty,a.ysqty,a.ztqty,a.diffqty,
                    case when a.dhqty<=0 then 99999.99 else a.ysqty/a.dhqty end
             from #temp_423470_b a,shop b,goods c
             where a.shopid=b.id and a.goodsid=c.goodsid;
  select @Err=@@Error,@breakPoint=423060,@msg='��������ʱ������'; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;
           
                                          
  drop table #temp_423470_a;
  drop table #temp_423470_b;
  return 0;
  ErrHandle:
    raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 begin
      drop table #temp_423470_a;
      drop table #temp_423470_b;
    end;   
    return -1;
End
GO

--rp_423530			��ë������
if exists (select * from sysobjects where id=object_id('dbo.rp_423530') and sysstat & 0xf =4)
     drop procedure dbo.rp_423530
GO
create procedure dbo.rp_423530 @sdate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
---Version Number:Apple1.0_20030825_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare  @Err     int;
  declare  @BreakPoint   int;
  declare  @Msg          varchar(255);

  declare  @tempflag     int;

  SET NOCOUNT ON
  select @BreakPoint=423000;
  select @tempflag =0;
  create table #temp_423530_a
   (shopid     char(4),
    goodsid    int,
    closeqty   dec(12,3),
    saleqty    dec(12,3),
    salecost   dec(12,2),
    salevalue  dec(12,2),
    mlvalue    dec(12,2),
    mlrate     dec(5,2) 
   );
   create table #temp_423530_b
   (shopid     char(4),
    goodsid    int,
    cost       dec(12,4),
    price      dec(12,2),
    closeqty   dec(12,3),
    saleqty    dec(12,3),
    salecost   dec(12,2),
    salevalue  dec(12,2),
    mlvalue    dec(12,2),
    mlrate     dec(5,2) 
   );--E

  select @tempflag=1;
  select @BreakPoint=423010;
  insert into #temp_423530_a(shopid,goodsid,closeqty,saleqty,salecost,salevalue,mlvalue,mlrate)
          select shopid,goodsid,closeqty,saleqty,salecost,salevalue,salevalue-salecost,(salevalue-salecost)/salevalue
         from RPT_Base0001
         where sdate =convert(char(8),@sdate,112) and salevalue-salecost<0;
  select @Err=@@Error,@breakPoint=423010,@msg='ȡ��������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;

  insert into #temp_423530_b(shopid,goodsid,cost,price,closeqty,saleqty,salecost,salevalue,mlvalue,mlrate)
          select a.shopid,a.goodsid,b.cost,c.price,a.closeqty,a.saleqty,a.salecost,a.salevalue,a.mlvalue,a.mlrate
          from #temp_423530_a a,cost b,goodsshop c
          where a.shopid=b.shopid and a.goodsid=b.goodsid and b.flag=0 and a.shopid=c.shopid and a.goodsid=c.goodsid;
  select @Err=@@Error,@breakPoint=423020,@msg='ȡ��������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
          
  insert into #423530(shopid,shopname,goodsid,gname,cost,price,closeqty,saleqty,salecost,salevalue,mlvalue,mlrate)
              select a.shopid,b.name,a.goodsid,c.name,a.cost,a.price,a.closeqty,a.saleqty,a.salecost,a.salevalue,
                     a.mlvalue,a.mlrate
           from #temp_423530_b a,shop b,goods c
           where a.shopid=b.id and a.goodsid=c.goodsid          
  select @Err=@@Error,@breakPoint=423030,@msg='ȡ��������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
       
         
  drop table #temp_423530_a;
  drop table #temp_423530_b;
  return 0;
  ErrHandle:
    raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 begin
      drop table #temp_423530_a;
      drop table #temp_423530_b;
    end;   
    return -1;
End
GO

--427790	�������ۻ����ձ���
if exists (select * from sysobjects where id=object_id('dbo.rp_427790') and sysstat & 0xf =4)
     drop procedure dbo.rp_427790
GO
create procedure dbo.rp_427790 @sdate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
---Version Number:Apple1.0_20030619_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare  @Err     int;
  declare  @BreakPoint   int;
  declare  @Msg          varchar(255);
  declare  @levelvalue   int;
  declare  @tempflag     int;
  declare  @salevalue    dec(12,2);
  declare  @msalevalue   dec(12,2);
  SET NOCOUNT ON
  create table #temp_427790_a
  (shopid      char(4),
   managedeptid   int,
   saletaxrate dec(4,2),
   salevalue  dec(12,2),
   discvalue  dec(12,2),
   truevalue  dec(12,2),
   taxvalue   dec(12,2),
   );
  create table #temp_427790_b
  (shopid      char(4),
   managedeptid   int,
   saletaxrate dec(4,2),
   msalevalue  dec(12,2),
   mdiscvalue  dec(12,2),
   mtaxvalue   dec(12,2),
   );
   select @tempflag=1;
   select @BreakPoint=427000
  insert into #temp_427790_a(shopid,managedeptid,saletaxrate,salevalue,discvalue,truevalue,taxvalue) 
         select shopid,managedeptid,saletaxrate,sum(salevalue),sum(discvalue),sum(salevalue-discvalue),sum(saletaxvalue)
         from RPT_SaleGroup 
         where sdate =convert(char(8),@sdate,112)
         group by  shopid,managedeptid,saletaxrate;
  select @Err=@@Error,@breakPoint=427010,@msg='ȡ�ջ�������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  insert into #temp_427790_b(shopid,managedeptid,saletaxrate,msalevalue,mdiscvalue,mtaxvalue) 
         select shopid,managedeptid,saletaxrate,max(salevalue),max(discvalue),max(saletaxvalue)
         from RPT_SaleGroup 
         where year(sdate) =year(@sdate) and month(sdate)=month(@sdate)
         group by  shopid,managedeptid,saletaxrate;
  select @Err=@@Error,@breakPoint=427010,@msg='ȡ�»�������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  select @salevalue=sum(truevalue) from #temp_427790_a;
  select @Err=@@Error,@breakPoint=427020,@msg='ȡ�ֵ��ջ�������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  select @msalevalue=sum(salevalue-discvalue) from #temp_427790_a;
  select @Err=@@Error,@breakPoint=427030,@msg='ȡ�ֵ��ջ�������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;

  
  insert into #427790(shopid,shopname,managedeptid,mname,saletaxrate,salevalue,discvalue,truevalue,
                      taxvalue,salerate,msalevalue,mdiscvalue,mtruevalue,mtaxvalue,msalerate)
             select a.shopid,b.name,a.managedeptid,c.name,a.saletaxrate,a.salevalue,a.discvalue,a.truevalue,
               a.taxvalue,100*a.truevalue/@salevalue,d.msalevalue,d.mdiscvalue,d.msalevalue-d.mdiscvalue,
               d.mtaxvalue,100*(d.msalevalue-d.mdiscvalue)/@msalevalue
             from #temp_427790_a a,shop b,sgroup c,#temp_427790_b d
             where a.shopid=b.id and a.managedeptid=c.id and a.shopid=d.shopid 
                      and a.managedeptid=d.managedeptid and a.saletaxrate=d.saletaxrate;
  select @Err=@@Error,@breakPoint=427040,@msg='��������ʱ������';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
         
  drop table #temp_427790_a;
  drop table #temp_427790_b;
  return 0;
  ErrHandle:
    raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 begin
      drop table #temp_427790_a;
      drop table #temp_427790_b;
    end;   
    return -1;
End

GO

-----------------------------------------------------------------
--rp_426720			��������ȱ����Ʒ��ϸ��ѯ
--����������
--���أ���־0=�ɹ�		�ϵ��(999993XX)
--��	
--������
--�㷨��
--���������� 2003.09.11
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_426720') and type = 'P')
  drop procedure dbo.rp_426720
GO

create procedure rp_426720 @beginDate datetime,@endDate datetime
WITH ENCRYPTION
AS Begin
  declare @Err			int;
  declare @BreakPoint		int;
  declare @Msg			varchar(255);
    

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999350
  
  --д�붩����Ʒ������������Ϊ��ͨ���������Ҳ�д������յĶ�����
  insert into #426720(ShopID,SheetID,CheckDate,ReceiptSheetID,PromFlag,Logistics,VenderID,GoodsID,PurchaseQty,ReceiptQty,OrderPresentQty,PresentQty,diffQty,rate1,Rate2)
    select A.ShopID,A.RefSheetID,a.CheckDate,'',max(b.PromFlag),A.Logistics,A.VenderID,B.GoodsID,Sum(B.Qty) as Qty,0,sum(b.PresentQty) PresentQty,0,0,0,0
  	from Purchase A,PurchaseItem B
  	where A.SheetID=B.SheetID and PurchaseFlag=0 and a.Flag=100 
	   and convert(char(8),A.checkdate,112)>=convert(char(8),@begindate,112)
  	   and convert(char(8),A.checkdate,112)<=convert(char(8),@enddate,112) 
  	   and RefSheetID not in (select RefSheetID from Receipt0 where ReceiptFlag=0)
  	group by A.ShopID,A.RefSheetID,a.CheckDate,a.Logistics,A.VenderID,B.GoodsID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999360
  --ȡ��������Ʒ����
  select A.ShopId,a.RefSheetID,A.SheetID,A.Logistics,A.VenderID,B.GoodsID,Sum(B.Qty) as Qty,sum(b.PresentQty) PresentQty
  	into #temp2
  	from receipt A,receiptItem B
  	where A.SheetID=B.SheetID and ReceiptFlag=0 and A.Flag=100
		and A.RefSheetID in (select distinct RefSheetID from #426720) 
  	group by A.ShopID,a.RefSheetID,A.SheetID,A.Logistics,A.VenderID,B.GoodsID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999370
  --���㵽���� 
  update #426720
  	set ReceiptQty=B.Qty,PresentQty=b.PresentQty,ReceiptSheetID=b.SheetID
  	from #426720 A,#temp2 B
  	where A.ShopID=B.ShopID and a.SheetID=b.RefSheetID and A.VenderID=B.VenderID and a.GoodsID=b.GoodsID and A.Logistics=B.Logistics
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999390

  --�ۺϼ���
  update #426720
  	set diffQty=PurchaseQty+OrderPresentQty-ReceiptQty-PresentQty,
  	Rate1=Round((ReceiptQty+PresentQty)*100/(PurchaseQty+OrderPresentQty+0.000001),2),
  	Rate2=Round((PurchaseQty+OrderPresentQty-ReceiptQty-PresentQty)*100/(PurchaseQty+OrderPresentQty+0.000001),2)
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999420
  
  drop table #temp2;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
    	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go 

----------------------------------------------------------------------------------------
--rp_423531			�����������ܱ�
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��
--��	
--������
--�㷨��
--������������ 2003.09.10
--�޸ģ��Խ�  2003-10-20 10:19 ����ũ��Ʒ��˰������
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('rp_423531') and sysstat & 0xf = 4)
    drop procedure dbo.rp_423531;
GO

create procedure dbo.rp_423531 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030909_01,Last Mender:������
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  insert into #423531(SheetID,RefSheetID,VenderID,VenderName,managedeptid,managename,CostValue,NoTaxCostValue,Truevalue,Operator,Checker)
        select a.sheetid,a.refsheetid,a.venderid,c.name,d.ID,d.name,
          sum(b.qty*b.cost),sum(b.qty*b.cost*(100-b.TaxRate*e.AgroFlag)/(100+b.TaxRate*(1-e.AgroFlag))),sum(b.qty*b.cost),
          a.operator,a.checker
        from purchase a,purchaseitem b, vender c,sGroup d,Goods e
        where a.sheetid=b.sheetid and a.venderid=c.venderid and b.goodsid=e.goodsid
        and round(e.deptid/@levelvalue,0)=d.id
        and checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
        group by a.sheetid,a.refsheetid,a.venderid,c.name,d.id,d.name,a.operator,a.checker ;
      select @Err=@@Error,@msg='��������ʱ��!!',@BreakPoint=420050;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  return  0;  
ErrHandle:
  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO

----------------------------------------------------------------------------------------
--rp_423533			�����ջ����ܱ�
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������������ 2003.09.10
--�޸ģ��Խ�  2003-10-20 10:19 ����ũ��Ʒ��˰������
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_423533') and sysstat & 0xf = 4)
    drop procedure dbo.rp_423533
GO

create procedure dbo.rp_423533 @begindate datetime,@enddate datetime,@stocktype int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030909_01,Last Mender:ZhangHui 2005.1.3
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  declare @stocktypestr char(32);
  
  SET NOCOUNT ON
  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  if @stocktype=1 begin 
    insert into #423533(SheetID,RefSheetID,shopid,checkdate,VenderID,VenderName,managedeptid,managename,b.taxrate,CostValue,NoTaxCostValue,Truevalue,Pricevalue,Difvalue,Operator,Checker)
        select a.sheetid,a.refsheetid,a.shopid,a.checkdate,a.venderid,c.name,d.ID,d.name,b.taxrate,
          sum(b.qty*b.cost),sum(b.qty*b.cost/(100+b.TaxRate)*100),sum(b.qty*b.cost),sum((b.qty+b.presentqty)*b.Price),sum((b.qty+b.presentqty)*b.Price-b.qty*b.Cost),
          a.operator,a.checker
        from receipt a,receiptitem b, vender c,sGroup d, Goods e
        where a.sheetid=b.sheetid and a.venderid=c.venderid and a.flag=100
        and round(b.deptid/@levelvalue,0)=d.id and b.goodsid=e.goodsid 
        and convert(char(10),checkdate,120) between convert(char(10),@begindate,120) and convert(char(10),@enddate,120) 
        group by a.sheetid,a.refsheetid,a.shopid,a.checkdate,a.venderid,c.name,d.id,d.name,b.taxrate,a.operator,a.checker ;
      select @Err=@@Error,@msg='��������ʱ��!!',@BreakPoint=420050;
    if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end else begin
    insert into #423533(SheetID,RefSheetID,shopid,checkdate,VenderID,VenderName,managedeptid,managename,b.taxrate,CostValue,NoTaxCostValue,Truevalue,Pricevalue,Difvalue,Operator,Checker)
        select a.sheetid,a.refsheetid,a.shopid,a.checkdate,a.venderid,c.name,d.ID,d.name,b.taxrate,
          sum(b.qty*b.cost),sum(b.qty*b.cost/(100+b.TaxRate)*100),sum(b.qty*b.cost),sum((b.qty+b.presentqty)*b.Price),sum((b.qty+b.presentqty)*b.Price-b.qty*b.Cost),
          a.operator,a.checker
        from receipt a,receiptitem b, vender c,sGroup d, Goods e
        where a.sheetid=b.sheetid and a.venderid=c.venderid and a.flag=100 and e.stocktype<>1
        and round(b.deptid/@levelvalue,0)=d.id and b.goodsid=e.goodsid 
        and convert(char(10),checkdate,120) between convert(char(10),@begindate,120) and convert(char(10),@enddate,120)
        group by a.sheetid,a.refsheetid,a.shopid,a.checkdate,a.venderid,c.name,d.id,d.name,b.taxrate,a.operator,a.checker ;
      select @Err=@@Error,@msg='��������ʱ��!!',@BreakPoint=420050;
    if (@Err is null) or (@Err!=0)  goto ErrHandle;

  end;
   
  return  0;  
ErrHandle:
  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO


--rp_424627			������Ʒ��������ܱ�
----------------------------------------------------------------------------------------
--rp_424627			������Ʒ��������ܱ�
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������������ 2003.09.16
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424627') and type = 'P')
  drop procedure dbo.rp_424627
GO

create procedure dbo.rp_424627 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030916_01,Last Mender:������
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;

  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;

  SET NOCOUNT ON

  Create Table #424627tmp1
(
ShopID			char(4)		Not null,		--���
GoodsID			int    		Not null,		--��Ʒ����
startqty        dec(12,3)   default 0 not null,
startcostv      dec(12,2)   default 0 not null,
ReceiptValue		dec(12,2)	Not Null,		--���ս��
TransferInValue		dec(12,2)	Not Null,		--������
PriceChgValue		dec(12,3)	default 0 not null,	--��۽����õ��ۣ�
RetValue		dec(12,2)	Not Null,		--�˻����
UseValue		dec(12,2)	Not Null,		--���ý��
WSaleQty		dec(12,3)	Not Null,		--��������
WSaleValue		dec(12,2)	Not Null,		--�������
SaleQty			dec(12,3)	Not Null,		--��������
SaleValue		dec(12,2)	Not Null,		--���۽��
Salecost		dec(12,2)	Not Null,		--���۳ɱ����
TransferOutValue	dec(12,2)	Not Null,		--�������
endqty        dec(12,3)   default 0 not null,
endcostv      dec(12,2)   default 0 not null
)
 
  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  

select * into #tmpRPT_Base0001 from rpt_base0001 where 1=2;
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @begindate=@begindate-1
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #424627tmp;

  while 1=1 begin
    select @i=charindex(',',tablesname) from #424627tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #424627tmp;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #tmpRPT_Base0001 select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' ';
       execute (@SQLString);
       break;
    end
    else begin 
       select @SQLString='insert into #tmpRPT_Base0001 select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' ';
      execute (@SQLString);
      update #424627tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;

 
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

select @begindate=@begindate+1
insert into #424627tmp1(ShopID,GoodsID,startqty,startcostv,
  ReceiptValue,TransferInValue,PriceChgValue,RetValue,UseValue,WSaleQty,WSaleValue,SaleQty,SaleValue,SaleCost,TransferOutValue,
  endqty,endcostv)
  select ShopID,GoodsID,0,0,
  sum(ReceiptValue),sum(TransferInValue),sum(PriceChgValue),sum(RetValue),sum(UseValue),sum(WSaleQty),sum(WSaleValue),sum(SaleQty),sum(SaleValue),sum(SaleCost),sum(TransferOutValue),
  0,0 from #tmpRPT_Base0001 
  where convert(char(8),sdate,112) BETWEEN convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
  group by ShopID,GoodsID

insert into #424627tmp1(ShopID,GoodsID,startqty,startcostv,
  ReceiptValue,TransferInValue,PriceChgValue,RetValue,UseValue,WSaleQty,WSaleValue,SaleQty,SaleValue,SaleCost,TransferOutValue,
  endqty,endcostv)
  select ShopID,GoodsID,CloseQty,CloseCostV,
  0,0,0,0,0,0,0,0,0,0,0,
  0,0 from #tmpRPT_Base0001 
  where convert(char(8),sdate,112)=convert(char(8),@begindate-1,112);
 
insert into #424627tmp1(ShopID,GoodsID,startqty,startcostv,
  ReceiptValue,TransferInValue,PriceChgValue,RetValue,UseValue,WSaleQty,WSaleValue,SaleQty,SaleValue,SaleCost,TransferOutValue,
  endqty,endcostv)
  select ShopID,GoodsID,0,0,
  0,0,0,0,0,0,0,0,0,0,0,
  CloseQty,CloseCostV from #tmpRPT_Base0001 
  where convert(char(8),sdate,112)=convert(char(8),@enddate,112);
 

insert into #424627(ShopID,GoodsID,managedeptid,startqty,startcostv,
  ReceiptValue,TransferInValue,PriceChgValue,RetValue,UseValue,WSaleQty,WSaleValue,SaleQty,SaleValue,SaleCost,TransferOutValue,
  endqty,endcostv)
  select A.ShopID,A.GoodsID,C.ID managedeptid,sum(startqty),sum(startcostv),
  sum(ReceiptValue),sum(TransferInValue),sum(PriceChgValue),sum(RetValue),sum(UseValue),sum(WSaleQty),sum(WSaleValue),sum(SaleQty),sum(SaleValue),sum(SaleCost),sum(TransferOutValue),
  sum(endqty),sum(endcostv) from #424627tmp1 A,Goods  B,sGroup C
  where A.goodsid=B.goodsid
  and round(B.deptid/@levelvalue,0)=C.id
  group by A.ShopID,A.GoodsID,C.ID
  return  0;  

drop table #424627tmp1;
drop table #424627tmp;

ErrHandle:
  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go


--rp_424628			������Ʒ������ÿ�ձ�
----------------------------------------------------------------------------------------
--rp_424628			������Ʒ������ÿ�ձ�
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������������ 2003.09.16
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424628') and type = 'P')
  drop procedure dbo.rp_424628
GO

create procedure dbo.rp_424628 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030916_01,Last Mender:������
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;

  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;

  SET NOCOUNT ON

  Create Table #424628tmp1
(
ShopID			char(4)		Not null,		--���
GoodsID			int    		Not null,		--��Ʒ����
sdate           datetime    not null,
startqty        dec(12,3)   default 0 not null,
startcostv      dec(12,2)   default 0 not null,
ReceiptValue		dec(12,2)	Not Null,		--���ս��
TransferInValue		dec(12,2)	Not Null,		--������
PriceChgValue		dec(12,3)	default 0 not null,	--��۽����õ��ۣ�
RetValue		dec(12,2)	Not Null,		--�˻����
UseValue		dec(12,2)	Not Null,		--���ý��
WSaleQty		dec(12,3)	Not Null,		--��������
WSaleValue		dec(12,2)	Not Null,		--�������
SaleQty			dec(12,3)	Not Null,		--��������
SaleValue		dec(12,2)	Not Null,		--���۽��
Salecost		dec(12,2)	Not Null,		--���۳ɱ����
TransferOutValue	dec(12,2)	Not Null,		--�������
endqty        dec(12,3)   default 0 not null,
endcostv      dec(12,2)   default 0 not null
)
 
  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  

select * into #tmpRPT_Base0001 from rpt_base0001 where 1=2;
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @begindate=@begindate-1
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #424628tmp;

  while 1=1 begin
    select @i=charindex(',',tablesname) from #424628tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #424628tmp;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #tmpRPT_Base0001 select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' ';
       execute (@SQLString);
       break;
    end
    else begin 
       select @SQLString='insert into #tmpRPT_Base0001 select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' ';
      execute (@SQLString);
      update #424628tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;

 
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

select @begindate=@begindate+1
insert into #424628tmp1(SDate,ShopID,GoodsID,startqty,startcostv,
  ReceiptValue,TransferInValue,PriceChgValue,RetValue,UseValue,WSaleQty,WSaleValue,SaleQty,SaleValue,SaleCost,TransferOutValue,
  endqty,endcostv)
  select SDate,ShopID,GoodsID,0,0,
  ReceiptValue,TransferInValue,PriceChgValue,RetValue,UseValue,WSaleQty,WSaleValue,SaleQty,SaleValue,SaleCost,TransferOutValue,
  CloseQty,CloseCostV from #tmpRPT_Base0001 
  where convert(char(8),sdate,112) BETWEEN convert(char(8),@begindate,112) and convert(char(8),@enddate,112)


insert into #424628tmp1(SDate,ShopID,GoodsID,startqty,startcostv,
  ReceiptValue,TransferInValue,PriceChgValue,RetValue,UseValue,WSaleQty,WSaleValue,SaleQty,SaleValue,SaleCost,TransferOutValue,
  endqty,endcostv)
  select SDate,ShopID,GoodsID,CloseQty,CloseCostV,
  0,0,0,0,0,0,0,0,0,0,0,
  0,0 from #tmpRPT_Base0001 
  where convert(char(8),sdate,112)=convert(char(8),@begindate-1,112);
 


insert into #424628(SDate,ShopID,GoodsID,managedeptid,startqty,startcostv,
  ReceiptValue,TransferInValue,PriceChgValue,RetValue,UseValue,WSaleQty,WSaleValue,SaleQty,SaleValue,SaleCost,TransferOutValue,
  endqty,endcostv)
  select A.SDate,A.ShopID,A.GoodsID,C.ID managedeptid,sum(startqty),sum(startcostv),
  sum(ReceiptValue),sum(TransferInValue),sum(PriceChgValue),sum(RetValue),sum(UseValue),sum(WSaleQty),sum(WSaleValue),sum(SaleQty),sum(SaleValue),sum(SaleCost),sum(TransferOutValue),
  sum(endqty),sum(endcostv) from #424628tmp1 A,Goods  B,sGroup C
  where A.goodsid=B.goodsid
  and round(B.deptid/@levelvalue,0)=C.id
  group by A.sdate,A.ShopID,A.GoodsID,C.ID
  return  0;  

drop table #424628tmp1;
drop table #424628tmp;
  
ErrHandle:
  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

--rp_421335			������Ӧ�̽�������ܱ�
----------------------------------------------------------------------------------------
--rp_421335			������Ӧ�̽�������ܱ�
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������������ 2003.09.17
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_421335') and type = 'P')
  drop procedure dbo.rp_421335
GO

create procedure dbo.rp_421335 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030917_01,Last Mender:������
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;

  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;

  SET NOCOUNT ON
 
  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  

select * into #tmpRPT_Base0011 from RPT_Base0011 where 1=2;
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  exec tl_gettablesname @begindate,@enddate,'RPT_Base0011',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #421335tmp;

  while 1=1 begin
    select @i=charindex(',',tablesname) from #421335tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #421335tmp;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #tmpRPT_Base0011 select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' ';
       execute (@SQLString);
       break;
    end
    else begin 
    	 select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #421335tmp
       select @SQLString='insert into #tmpRPT_Base0011 select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' ';
      execute (@SQLString);
      update #421335tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;

 
  if (@Err is null) or (@Err!=0)  goto ErrHandle;


Insert into #421335
	(ShopID,VenderID,
	SaleQty,SaleValue,SaleCost,
	PromQty,PromSaleValue,PromCostValue,DMSaleValue,DMCostValue,
	ReceiptQty,ReceiptValue,RetQty,RetValue,
	LostQty,LostValue,OtherQty,OtherValue)
  select ShopID,VenderID,
	SUM(SaleQty),SUM(SaleValue),SUM(SaleCost),
	SUM(PromQty),SUM(PromSaleValue),SUM(PromCostValue),SUM(DMSaleValue),SUM(DMCostValue),
	SUM(ReceiptQty),SUM(ReceiptValue),SUM(RetQty),SUM(RetValue),
	SUM(LostQty),SUM(LostValue),SUM(OtherQty),SUM(OtherValue)
  from #tmpRPT_Base0011 
  group by ShopID,VenderID;

drop table #421335tmp;
drop table #tmpRPT_Base0011;
  return  0;  

ErrHandle:
  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

--rp_421334			������Ӧ�̽�����ÿ�ձ���
----------------------------------------------------------------------------------------
--rp_421334			������Ӧ�̽�����ÿ�ձ���
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������������ 2003.09.17
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_421334') and type = 'P')
  drop procedure dbo.rp_421334
GO

create procedure dbo.rp_421334 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030917_01,Last Mender:������
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;

  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;

  SET NOCOUNT ON
 
  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  

select * into #tmpRPT_Base0011 from RPT_Base0011 where 1=2;
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  exec tl_gettablesname @begindate,@enddate,'RPT_Base0011',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #421334tmp;

  while 1=1 begin
    select @i=charindex(',',tablesname) from #421334tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #421334tmp;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #tmpRPT_Base0011 select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' ';
       execute (@SQLString);
       break;
    end
    else begin 
    	 select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #421334tmp
       select @SQLString='insert into #tmpRPT_Base0011 select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' ';
      execute (@SQLString);
      update #421334tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;

 
  if (@Err is null) or (@Err!=0)  goto ErrHandle;


Insert into #421334
	(SDate,ShopID,VenderID,
	SaleQty,SaleValue,SaleCost,
	PromQty,PromSaleValue,PromCostValue,DMSaleValue,DMCostValue,
	ReceiptQty,ReceiptValue,RetQty,RetValue,
	LostQty,LostValue,OtherQty,OtherValue)
  select SDate,ShopID,VenderID,
	SUM(SaleQty),SUM(SaleValue),SUM(SaleCost),
	SUM(PromQty),SUM(PromSaleValue),SUM(PromCostValue),SUM(DMSaleValue),SUM(DMCostValue),
	SUM(ReceiptQty),SUM(ReceiptValue),SUM(RetQty),SUM(RetValue),
	SUM(LostQty),SUM(LostValue),SUM(OtherQty),SUM(OtherValue)
  from #tmpRPT_Base0011 
  group by SDate,ShopID,VenderID;

drop table #421334tmp;
drop table #tmpRPT_Base0011;
  return  0;  

ErrHandle:
  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

----------------------------------------------------------------------------------------
--rp_423537   ����DM�������ܱ�
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,  �ϵ�� 42
--�� 
--������
--�㷨��
--������������ 2003.09.12
--�޸ģ��Խ�   2003-10-15 15:31 ������ۿ�ʼ���ںͽ�������
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_423537') and type = 'P')
  drop procedure dbo.rp_423537
GO
 
create procedure dbo.rp_423537 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030909_01,Last Mender:������
-----------------------------------------------------------------
AS BEGIN
  declare @Err  int;
  declare @BreakPoint int;
  declare @Msg  varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  insert into #423537(SheetID,PlanID,Checkdate,Pricebegindate,Priceenddate,CostBeginDate,CostEndDate,VenderID,VenderName,managedeptid,managename,
    CostValue,NoTaxCostValue,Truevalue,Operator,Checker)
        select a.sheetid,a.PlanID,a.CheckDate,b.PriceBegindate,b.priceenddate,b.CostBeginDate,b.CostEndDate,b.venderid,c.name,d.ID,d.name,
          0,0,0,a.operator,a.checker
        from NowPP a,NowPPitem b, vender c,sGroup d,goods e
        where a.sheetid=b.sheetid and b.venderid=c.venderid
        and b.goodsid=e.goodsid
        and round(e.deptid/@levelvalue,0)=d.id
        and convert(char(8),checkdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
        group by a.sheetid,a.PlanID,a.CheckDate,b.PriceBegindate,b.priceenddate,b.CostBeginDate,b.CostEndDate,b.venderid,c.name,d.ID,d.name,
          a.operator,a.checker;
 
      select @Err=@@Error,@msg='��������ʱ��!!',@BreakPoint=420050;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  return  0;  
ErrHandle:
  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go


----------------------------------------------------------------------------------------
--rp_424629			������������Ʒ�����ѻ��ܱ�
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������������ 2003.09.19
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424629') and type = 'P')
  drop procedure dbo.rp_424629
GO

create procedure dbo.rp_424629 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030919_01,Last Mender:������
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;

  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;

  SET NOCOUNT ON

Create Table #tmp424629
(
goodsid         int         not null,
listqty         int         not null,
salevalue       dec(12,2)   not null
);

  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  select A.sdate,A.posid,A.listno, A.goodsid into #tmp_salej from sale_J A,goods B 
    where A.goodsid=B.goodsid and B.goodstypeID=8   
    and convert(char(8),A.Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112) 
    group by A.sdate,A.posid,A.listno,A.goodsid

--ȥ���зǻ�������Ʒ��
  delete #tmp_salej  from #tmp_salej A,sale_j B,Goods C 
  where B.sdate=A.sdate and B.posid=A.posid and B.listno=A.listno
  and B.goodsid=C.goodsid
  and C.goodstypeID<>8;

--ȥ���з����ÿ�֧����
  delete #tmp_salej  from #tmp_salej A,Pay_j B
  where B.sdate=A.sdate and B.posid=A.posid and B.listno=A.listno
  and B.PayReason='p'
  and B.PayType<>'R'


--���㵥��
  insert into #tmp424629(goodsid,listqty,salevalue)
    select goodsid,count(*) ,0 from #tmp_salej group by goodsid

--�����ֱ����sale_j����
  insert into #tmp424629(goodsid,listqty,salevalue)
    select A.goodsID,0,sum(salevalue-discvalue) from #tmp_salej A,sale_J B
    where B.sdate=A.sdate and B.posid=A.posid and B.listno=A.listno
    and A.goodsid=B.goodsid
    group by A.goodsid

--����д�뵽�����ʱ��
  insert into #424629(managedeptid,managedeptname,venderID,vendername,goodsid,goodsname,listqty,salevalue)
    select E.ID,E.name,D.VenderID,D.name,A.goodsid,B.name,sum(A.listqty),sum(A.salevalue) 
    from #tmp424629 A,Goods B,cost C,vender D,sGroup E
    where A.goodsid=B.goodsid and A.goodsid=C.goodsid and C.venderid=D.venderID
    and round(B.deptid/@levelvalue,0)=E.id
    and c.flag=0 
    group by E.ID,E.name,D.VenderID,D.name,A.goodsid,B.name
    
  drop table #tmp424629;
  drop table #tmp_salej;  

  return  0;  
ErrHandle:

  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

----------------------------------------------------------------------------------------
--rp_424630			������������Ʒ��������ϸ��
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������������ 2003.09.19
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424630') and type = 'P')
  drop procedure dbo.rp_424630
GO

create procedure dbo.rp_424630 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030919_01,Last Mender:������
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;

  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;

  SET NOCOUNT ON


  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  select A.sdate,A.posid,A.listno, A.goodsid into #tmp_salej from sale_J A,goods B 
    where A.goodsid=B.goodsid and B.goodstypeID=8   
    and convert(char(8),A.Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112) 
    group by A.sdate,A.posid,A.listno,A.goodsid

--ȥ���зǻ�������Ʒ��
  delete #tmp_salej  from #tmp_salej A,sale_j B,Goods C 
  where B.sdate=A.sdate and B.posid=A.posid and B.listno=A.listno
  and B.goodsid=C.goodsid
  and C.goodstypeID<>8;

--ȥ���з����ÿ�֧����
  delete #tmp_salej  from #tmp_salej A,Pay_j B
  where B.sdate=A.sdate and B.posid=A.posid and B.listno=A.listno
  and B.PayReason='p'
  and B.PayType<>'R'



--����д�뵽�����ʱ��
  insert into #424630(sdate,posid,listno,cashierid,goodsid,goodsname,qty,salevalue)
    select B.Sdate,B.posid,B.listno,B.cashierID,B.goodsid,C.name,B.Amount,B.salevalue-B.discvalue
    from #tmp_salej A,sale_J B,Goods C
    where A.sdate=B.sdate and A.posid=B.posid and A.listno=B.listno
    and A.goodsid=B.goodsid
    and A.goodsid=c.goodsid

    
  drop table #tmp_salej;  

  return  0;  
ErrHandle:

  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

--427740	�������ڳɱ���̯��                      
if exists (select * from sysobjects where id = object_id('dbo.rp_427740') and type = 'P') 
  drop procedure dbo.rp_427740
GO 
create procedure dbo.rp_427740 @begindate datetime,@EndDate datetime
WITH ENCRYPTION
as begin

declare @tables char(1024);
declare @subTableName char(32);
declare @i int;
declare @Sql char(1024);
exec tl_gettablesname @begindate,@enddate,'salegoods',@tables output

create table dbo.#4277401tmp
(
shopid char(4),
goodsid int,
salevalue dec(12,3),
deptid  int,
sdate datetime
);

select @tables as tablesname into #427740tmp
while 1=1 begin
    select @i=charindex(',',tablesname) from #427740tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427740tmp;              --û��,ȡ��ǰֵ
       select @Sql='insert into #4277401tmp Select e.shopid,e.goodsid,e.salevalue,e.deptid ,e.sdate from '+rtrim(@subTableName)+' e where convert(char,e.sdate,112) between '+rtrim(convert(char,@begindate,112))+' and '+rtrim(convert(char,@enddate,112));
       execute (@sql);
       --select @subTableName;--�˴�����д�Լ��Ĵ���
       break;
    end
    else begin 
      select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427740tmp;
      select @Sql='insert into #4277401tmp Select e.shopid,e.goodsid,e.salevalue,e.deptid ,e.sdate from '+rtrim(@subTableName)+' e where convert(char ,e.sdate,112) between '+rtrim(convert(char ,@begindate,112))+'and '+rtrim(convert(char ,@enddate,112));
      exec (@sql);
      
      update #427740tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
end; 

insert into #427740 
select b.name,@begindate ,@enddate ,b.venderid,
e.shopid,e.salevalue,e.deptid,d.SaleTaxRate,
d.DKRate,e.salevalue*(1-DKrate/100) as costvalue,
((e.salevalue*(1-DKrate/100))/(1+d.CostTaxRate/100)*d.costTaxRate/100) CostTax,
(e.saleValue/(1+d.SaleTaxRate/100)*d.SaleTaxRate/100) SaleTax,e.sdate
from paytype a,vender b,Contract c,ContractGoods d,#4277401tmp e,dept f
where a.RunType=1 and a.id=b.paytypeid 
and b.venderid=c.venderid and c.sheetid=d.sheetid and d.goodsid=e.goodsid
and f.id=e.deptid
order by e.sdate    

drop table dbo.#4277401tmp;
drop table dbo.#427740tmp

Return 0;
end;
Go
------------------------------------
--427770	������Ʒ���۳ɱ���̯��    
if exists (select * from sysobjects where id = object_id('dbo.rp_427770') and type = 'P') 
  drop procedure dbo.rp_427770;
GO 
create procedure dbo.rp_427770 @begindate datetime,@EndDate datetime,@shopid char(4)
WITH ENCRYPTION
as begin

declare @tables char(1024);
declare @subTableName char(32);
declare @i int;
declare @Sql char(1024);
declare @sql1 char(1024);
declare @sql2 char(1024);

exec tl_gettablesname @begindate,@enddate,'salecost',@tables output


select @tables as tablesname into #427770tmp
while 1=1 begin
    select @i=charindex(',',tablesname) from #427770tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427770tmp;              --û��,ȡ��ǰֵ
       set @Sql1='insert into #427770 select b.id,b.name,sum(a.Salevalue-a.discvalue) salevalue,sum(a.costvalue) costvalue,saleTaxRate,sum(a.costvalue/(1+a.saletaxrate/100)*a.saleTaxRate/100) SaleTax from '+rtrim(@subTableName)+' a ,sgroup b '
       set @sql= ' where a.deptid/10000=b.id and convert(char,a.sdate,112) between '+rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' and a.shopid='''+@shopid +''' group by b.id,b.name,saleTaxRate ';
       select @sql2=rtrim(@sql1)+rtrim(@sql);
       execute (@sql2);
       --select @subTableName;--�˴�����д�Լ��Ĵ���
       break;
    end
    else begin 
      select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427770tmp;
       set @Sql1='insert into #427770 select b.id,b.name,sum(a.Salevalue-a.discvalue) salevalue,sum(a.costvalue) costvalue,saleTaxRate,sum(a.costvalue/(1+a.saletaxrate/100)*a.saleTaxRate/100) SaleTax from '+rtrim(@subTableName)+' a ,sgroup b '
       set @sql= ' where a.deptid/10000=b.id and convert(char,a.sdate,112) between '+rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' and a.shopid='''+@shopid +''' group by b.id,b.name,saleTaxRate ';
       select @sql2=rtrim(@sql1)+rtrim(@sql);
       execute (@sql2);
      
      update #427740tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
end; 
drop table #427770tmp;
Return 0;
end;
GO

-----------------------------------427820	������Ʒ����/�����ϸ�� 
if exists (select * from sysobjects where id = object_id('dbo.rp_427820') and type = 'P') 
  drop procedure dbo.rp_427820;
GO 
create procedure dbo.rp_427820 @begindate datetime,@EndDate datetime,@venderid int
WITH ENCRYPTION
as begin


declare @tables char(1024);
declare @subTableName char(32);
declare @i int;
declare @Sql char(2048);
declare @sql1 char(1024);
declare @sql2 char(1024);
declare @sql3 char(1024);

exec tl_gettablesname @begindate,@enddate,'rpt_base0001',@tables output

Create Table #4278201
(
venderid int
);--E

insert  into #4278201 select a.venderid from vender a,paytype b where a.paytypeid=b.id and b.paytypesortid='g' --E


select @tables as tablesname into #427820tmp
while 1=1 begin
    select @i=charindex(',',tablesname) from #427820tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427820tmp;              --û��,ȡ��ǰֵ
        set @sql1='insert  into #427820 select a.shopid,a.goodsid,b.venderid,sum(a.saleqty) saleqty,sum(a.salevalue) salevalue,max(sdate) sdate from '+rtrim(@subTableName)+' a,cost b,#4278201 c ';
        set @sql2=' where a.shopid=b.shopid and a.goodsid=b.goodsid and b.venderid=c.venderid and b.venderid='+rtrim(@venderid)+' and convert(char,a.sdate,112)  ';
        set @sql3=' between '+rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' group by a.shopid,a.goodsid,b.venderid ';
        select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);

        set @sql1='insert into #4278202 select a.shopid,a.goodsid,a.venderid,case when b.saleqty=0 then c.normalprice else b.salevalue/b.saleqty end price,b.closeqty,b.CloseCostV,d.shortname ';
	set @sql2=' from #427820 a, '+rtrim(@subTableName)+' b,goodsshop c,goods d where a.shopid=b.shopid and a.goodsid=b.goodsid and a.sdate=b.sdate and b.goodsid=c.goodsid and b.shopid=c.shopid and c.goodsid=d.goodsid ';
        select @sql=rtrim(@sql1)+rtrim(@sql2)
       execute (@sql);

       --select @subTableName;--�˴�����д�Լ��Ĵ���
       break;
    end
    else begin 
      select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427820tmp;
 
        set @sql1='insert  into #427820 select a.shopid,a.goodsid,b.venderid,sum(a.saleqty) saleqty,sum(a.salevalue) salevalue,max(sdate) sdate from '+rtrim(@subTableName)+' a,cost b,#4278201 c ';
        set @sql2=' where a.shopid=b.shopid and a.goodsid=b.goodsid and b.venderid=c.venderid and b.venderid='+rtrim(@venderid)+' and convert(char,a.sdate,112)  ';
        set @sql3=' between '+rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' group by a.shopid,a.goodsid,b.venderid ';
        select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);

        set @sql1='insert into #4278202 select a.shopid,a.goodsid,a.venderid,case when b.saleqty=0 then c.normalprice else b.salevalue/b.saleqty end price,b.closeqty,b.CloseCostV,d.shortname ';
	set @sql2=' from #427820 a, '+rtrim(@subTableName)+' b,goodsshop c,goods d where a.shopid=b.shopid and a.goodsid=b.goodsid and a.sdate=b.sdate and b.goodsid=c.goodsid and b.shopid=c.shopid and c.goodsid=d.goodsid ';
        select @sql=rtrim(@sql1)+rtrim(@sql2)
       execute (@sql);

      update #427820tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
end; 
drop table #4278201 --E
drop table #427820tmp;
Return 0;
end;
GO

--427830	������Ӧ������/�����ܱ�  
if exists (select * from sysobjects where id = object_id('dbo.rp_427830') and type = 'P') 
  drop procedure dbo.rp_427830;
GO 
create procedure dbo.rp_427830 @begindate datetime,@EndDate datetime
WITH ENCRYPTION
as begin


declare @tables char(1024);
declare @subTableName char(32);
declare @i int;
declare @Sql char(2048);
declare @sql1 char(1024);
declare @sql2 char(1024);
declare @sql3 char(1024);

exec tl_gettablesname @begindate,@enddate,'rpt_base0001',@tables output

Create Table #4278301
(
venderid int,
name char(64)
);--E

insert  into #4278301 select a.venderid,a.name from vender a,paytype b where a.paytypeid=b.id and b.paytypesortid='g' --E


select @tables as tablesname into #427830tmp
while 1=1 begin
    select @i=charindex(',',tablesname) from #427830tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427830tmp;              --û��,ȡ��ǰֵ
      set @sql1='insert into #427830 select c.venderid,c.name,SUM(a.salecost) Salecost,avg(a.closeCostV) CloseCostV from '+rtrim(@subTableName)+' a,cost b,#4278301 c ';
      set @sql2=' where a.shopid=b.shopid and a.goodsid=b.goodsid and convert(char,a.sdate,112) between ';
      set @sql3=' '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' and b.venderid=c.venderid  group by c.venderid,c.name order by c.venderid ';
       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);

       --select @subTableName;--�˴�����д�Լ��Ĵ���
       break;
    end
    else begin 
      select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427830tmp;
      set @sql1='insert into #427830 select c.venderid,c.name,SUM(a.salecost) Salecost,avg(a.closeCostV) CloseCostV from '+rtrim(@subTableName)+' a,cost b,#4278301 c ';
      set @sql2=' where a.shopid=b.shopid and a.goodsid=b.goodsid and convert(char,a.sdate,112) between   ';
      set @sql3=' '+rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' and b.venderid=c.venderid  group by c.venderid,c.name order by c.venderid ';
      select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);

      update #427830tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
end; 

drop table #4278301 --E
drop table #427830tmp;
Return 0;
end;
GO

------------------------------------------427870	��Ʒ���������ϸ��  
if exists (select * from sysobjects where id = object_id('dbo.rp_427870') and type = 'P') 
  drop procedure dbo.rp_427870;
GO 
create procedure dbo.rp_427870 @begindate datetime,@EndDate datetime,@deptid int
WITH ENCRYPTION
as begin


declare @tables char(1024);
declare @subTableName char(32);
declare @i int;
declare @Sql char(2048);
declare @sql1 char(1024);
declare @sql2 char(1024);
declare @sql3 char(1024);

exec tl_gettablesname @begindate,@enddate,'wastebook',@tables output

select @tables as tablesname into #427870tmp
while 1=1 begin
    select @i=charindex(',',tablesname) from #427870tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427870tmp;              --û��,ȡ��ǰֵ

	Set @sql1='insert into #427870 select a.sdate,a.notes,b.unitname,a.cost,case when directflag=1 then a.qty else 0 end drqty,case when directflag=1 then a.qty*a.cost else 0 end drValue,';
	set @sql2=' case when directflag=-1 then a.qty else 0 end Crqty,case when directflag=-1 then a.qty*a.cost else 0 end CrValue,CloseQty,CloseCostV,a.shopid,b.deptid,b.barcodeid,b.spec,a.goodsid from '+rtrim(@subTableName)+' a,goods b';
	set @sql3='  where b.deptid/10000='+rtrim(@deptid)+' and a.goodsid=b.goodsid and convert(char,sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' order by a.shopid,a.goodsid,a.sdate ';   

       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);

       --select @subTableName;--�˴�����д�Լ��Ĵ���
       break;
    end
    else begin 
      select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427870tmp;
	Set @sql1='insert into #427870 select a.sdate,a.notes,b.unitname,a.cost,case when directflag=1 then a.qty else 0 end drqty,case when directflag=1 then a.qty*a.cost else 0 end drValue,';
	set @sql2=' case when directflag=-1 then a.qty else 0 end Crqty,case when directflag=-1 then a.qty*a.cost else 0 end CrValue,CloseQty,CloseCostV,a.shopid,b.deptid,b.barcodeid,b.spec,a.goodsid from '+rtrim(@subTableName)+' a,goods b';
	set @sql3='  where b.deptid/10000='+rtrim(@deptid)+' and a.goodsid=b.goodsid and convert(char,sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' order by a.shopid,a.goodsid,a.sdate ';   

     select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);

      update #427870tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
end; 

drop table #427870tmp;
Return 0;
end;
GO

--------------------------------------------------------------------------------427872	��Ʒ��������ܱ�  
if exists (select * from sysobjects where id = object_id('dbo.rp_427872') and type = 'P') 
  drop procedure dbo.rp_427872;
GO 
create procedure dbo.rp_427872 @begindate datetime,@EndDate datetime,@shopid char(4)
WITH ENCRYPTION
as begin

declare @tables char(1024);
declare @subTableName char(32);
declare @i int;
declare @Sql char(2048);
declare @sql1 char(1024);
declare @sql2 char(1024);
declare @sql3 char(1024);

exec tl_gettablesname @begindate,@enddate,'wastebook',@tables output
--ͳ����������к�
create table #4278720(
serialid int,
goodsid  int
);--E
--ͳ�ƴ��������ͽ��
create table #4278721
(
goodsid int,
drvalue dec(12,2)
);--E
--ͳ�ƽ�������ͽ��
create table #4278722
(
goodsid int,
crvalue dec(12,2)
);--E

select @tables as tablesname into #427872tmp
while 1=1 begin
    select @i=charindex(',',tablesname) from #427872tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427872tmp;              --û��,ȡ��ǰֵ

	set @sql1='insert into #4278720 select min(serialid) serialid,goodsid from '+Rtrim(@subTableName);
	set @sql2=' where shopid='''+@shopid+''' And convert(char,sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112)) ;
	set @sql3=' group by goodsid ';--E

       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);

	set @sql1='insert into #4278721 Select goodsid,sum(qty*cost) Drvalue from '+Rtrim(@subTableName);
	set @sql2=' where shopid='''+@shopid+''' And convert(char,sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+'  and directflag=1 and sheettype<>102 ';
	set @sql3=' group by goodsid';--E

       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);
	set @sql1='insert into #4278722 Select goodsid,sum(Qty*cost) CrValue from '+Rtrim(@subTableName);
	set @sql2=' where shopid='''+@shopid+''' And convert(char,sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+'  and directflag=1 and sheettype<>102 ';
	set @sql3=' group by goodsid';--E

       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);

	set @sql1='insert into #427872(deptid,goodsid,openValue,CrValue,DrValue,CloseValue) select b.deptid/10000,b.goodsid,(b.closeqty-b.qty)*b.cost OpenValue,';
	set @sql2=' d.crvalue,c.drValue,(b.closeqty-b.qty)*b.cost-d.crvalue+c.drvalue  from #4278720 a,'+Rtrim(@subTableName) +' b,#4278721 c,#4278722 d ';
	set @sql3=' where a.serialid=b.serialid and a.goodsid=c.goodsid and c.goodsid=d.goodsid ';--E

       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);

       --select @subTableName;--�˴�����д�Լ��Ĵ���
       break;
    end
    else begin 
      select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427872tmp;
	set @sql1='insert into #4278720 select min(serialid) serialid,goodsid from '+Rtrim(@subTableName);
	set @sql2=' where shopid='''+@shopid+''' And convert(char,sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112)) ;
	set @sql3=' group by goodsid ';--E

       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);

	set @sql1='insert into #4278721 Select goodsid,sum(qty*cost) Drvalue from '+Rtrim(@subTableName);
	set @sql2=' where shopid='''+@shopid+''' And convert(char,sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+'  and directflag=1 and sheettype<>102 ';
	set @sql3=' group by goodsid';--E

       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);
	set @sql1='insert into #4278722 Select goodsid,sum(Qty*cost) CrValue from '+Rtrim(@subTableName);
	set @sql2=' where shopid='''+@shopid+''' And convert(char,sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+'  and directflag=1 and sheettype<>102 ';
	set @sql3=' group by goodsid';--E

       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);

	set @sql1='insert into #427872(deptid,goodsid,openValue,CrValue,DrValue,CloseValue) select b.deptid/10000,b.goodsid,(b.closeqty-b.qty)*b.cost OpenValue,';
	set @sql2=' d.crvalue,c.drValue,(b.closeqty-b.qty)*b.cost-d.crvalue+c.drvalue  from #4278720 a,'+Rtrim(@subTableName) +' b,#4278721 c,#4278722 d ';
	set @sql3=' where a.serialid=b.serialid and a.goodsid=c.goodsid and c.goodsid=d.goodsid ';--E

       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);
       --select @subTableName;--�˴�����д�Լ��Ĵ���
       break;

      update #427872tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
end; 

drop table #4278720;--E
drop table #4278721;--E
drop table #4278722;--E
drop table #427872tmp;
Return 0;
end;
GO

-------------------------429020	�������˳ɱ������ϸ��  

if exists (select * from sysobjects where id = object_id('dbo.rp_429020') and type = 'P') 
  drop procedure dbo.rp_429020;
GO 
create procedure dbo.rp_429020 @begindate datetime,@EndDate datetime,@deptid char(4)
WITH ENCRYPTION
as begin


declare @tables char(1024);
declare @subTableName char(32);
declare @i int;
declare @Sql char(2048);
declare @sql1 char(1024);
declare @sql2 char(1024);
declare @sql3 char(1024);
declare @sql4 char(1024);

exec tl_gettablesname @begindate,@enddate,'wastebook',@tables output


select @tables as tablesname into #429020tmp
while 1=1 begin
    select @i=charindex(',',tablesname) from #429020tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #429020tmp;              --û��,ȡ��ǰֵ
	Set @sql1='insert into #429020 select a.venderid venderid102,b.venderid Venderid2301,a.paytypeid paytypeid102,b.paytypeid paytypeid2301,a.qty,a.goodsid,a.cost cost102,b.cost cost2301,';
	set @sql2=' a.costValue costvalue102,(b.cost*a.qty) costvalue2301,a.deptid/10000 deptid,c.barcodeid,c.name,(a.cost-b.cost) Ccost,(a.costValue-b.cost*a.qty) CCostValue ';
	set @sql3=' from '+rtrim(@subTableName)+' a,'+rtrim(@subTableName)+' b,goods c where a.goodsid=b.goodsid and a.venderid=999999 and a.sheettype=102 and b.goodsid=c.goodsid ';
	set @sql4=' and b.sheettype=2301 and a.sdate=b.sdate and convert(char,a.sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' and a.deptid/10000='+rtrim(@deptid);  

       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3)+rtrim(@sql4);
       execute (@sql);

       --select @subTableName;--�˴�����д�Լ��Ĵ���
       break;
    end
    else begin 
      select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #429020tmp;

	Set @sql1='insert into #429020 select a.venderid venderid102,b.venderid Venderid2301,a.paytypeid paytypeid102,b.paytypeid paytypeid2301,a.qty,a.goodsid,a.cost cost102,b.cost cost2301,';
	set @sql2=' a.costValue costvalue102,(b.cost*a.qty) costvalue2301,a.deptid/10000 deptid,c.barcodeid,c.name,(a.cost-b.cost) Ccost,(a.costValue-b.cost*a.qty) CCostValue ';
	set @sql3=' from '+rtrim(@subTableName)+' a,'+rtrim(@subTableName)+' b,goods c where a.goodsid=b.goodsid and a.venderid=999999 and a.sheettype=102 and b.goodsid=c.goodsid ';
	set @sql4=' and b.sheettype=2301 and a.sdate=b.sdate and convert(char,a.sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' and a.deptid/10000='+rtrim(@deptid);  

       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3)+rtrim(@sql4);
       execute (@sql);
       --select @subTableName;--�˴�����д�Լ��Ĵ���
       break;

      update #429020tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
end; 


drop table #429020tmp;
Return 0;
end;
GO

--------------------------------------------------------429030	ũ����Ʒ�չ�����ɱ�˰��� 

if exists (select * from sysobjects where id = object_id('dbo.rp_429030') and type = 'P') 
  drop procedure dbo.rp_429030;
GO 
create procedure dbo.rp_429030 @begindate datetime,@EndDate datetime,@deptid char(4),@shopid char(4)
WITH ENCRYPTION
as begin


declare @tables char(1024);
declare @subTableName char(32);
declare @i int;
declare @Sql char(2048);
declare @sql1 char(1024);
declare @sql2 char(1024);
declare @sql3 char(1024);
declare @sql4 char(1024);

exec tl_gettablesname @begindate,@enddate,'salecost',@tables output


select @tables as tablesname into #429030tmp
while 1=1 begin
    select @i=charindex(',',tablesname) from #429030tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #429030tmp;              --û��,ȡ��ǰֵ
	set @sql1='insert into #429030 select a.goodsid,a.qty,a.deptid/100 deptid,a.costvalue,(a.Salevalue-a.discValue) SaleValue,';
	set @sql2=' (a.Salevalue-a.discValue)/(1+b.saleTaxRate/100)*b.saleTaxRate/100 SaleTax,a.costvalue*(1+b.saleTaxRate/100)*b.saleTaxRate/100 CostTax,';
	set @sql3=' b.barcodeid,b.shortname,b.spec,b.SaleTaxRate from '+rtrim(@subTableName)+' a,goods b where a.goodsid=b.goodsid and a.deptid between 60000 and 69999 and ';
	set @sql4='  a.shopid='''+rtrim(@shopid)+''' and a.deptid/100 = '+rtrim(@deptid)+' and convert(char,a.sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' order by a.deptid ';


       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3)+rtrim(@sql4);
       execute (@sql);

       --select @subTableName;--�˴�����д�Լ��Ĵ���
       break;
    end
    else begin 
      select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #429030tmp;

	set @sql1='insert into #429030 select a.goodsid,a.qty,a.deptid/100 deptid,a.costvalue,(a.Salevalue-a.discValue) SaleValue,';
	set @sql2=' (a.Salevalue-a.discValue)/(1+b.saleTaxRate/100)*b.saleTaxRate/100 SaleTax,a.costvalue*(1+b.saleTaxRate/100)*b.saleTaxRate/100 CostTax,';
	set @sql3=' b.barcodeid,b.shortname,b.spec,b.SaleTaxRate from '+rtrim(@subTableName)+' a,goods b where a.goodsid=b.goodsid and a.deptid between 60000 and 69999 and ';
	set @sql4='  a.shopid='''+rtrim(@shopid)+''' and a.deptid/100 = '+rtrim(@deptid)+' and convert(char,a.sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' order by a.deptid ';

       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3)+rtrim(@sql4);
       execute (@sql);
       --select @subTableName;--�˴�����д�Լ��Ĵ���
       break;

      update #429030tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
end; 


drop table #429030tmp;
Return 0;
end;
GO


----------------------------------------------------------------------------------------
--rp_423539			���������ۻ��ܱ�
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������������ 2003.09.13
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_423539') and type = 'P')
  drop procedure dbo.rp_423539
GO

create procedure dbo.rp_423539 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030913_01,Last Mender:������
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  insert into #423539(SheetID,ShopID,ShopName,VenderID,VenderName,managedeptid,managename,CostFlag,startdate,enddate,UpdCostFlag,
    CostValue,NoTaxCostValue,Truevalue,Operator,Checker)
        select a.sheetid,a.ShopID,f.name, A.venderID,c.name,d.id,d.name,a.costflag,a.startdate,a.enddate,a.UpdCostFlag,
          0,0,0,a.operator,a.checker
        from CostUpd a,CostUpdItem b, vender c,sGroup d,goods e,shop f
        where a.sheetid=b.sheetid and a.venderid=c.venderid
        and b.goodsid=e.goodsid
        and a.shopid=f.id
        and round(e.deptid/@levelvalue,0)=d.id
        and convert(char(8),a.checkdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
        group by a.sheetid,a.ShopID,f.name, A.venderID,c.name,d.id,d.name,a.costflag,a.startdate,a.enddate,a.UpdCostFlag,
          a.operator,a.checker;

      select @Err=@@Error,@msg='��������ʱ��!!',@BreakPoint=420050;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  return  0;  
ErrHandle:
  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

----------------------------------------------------------------------------------------
--rp_423541			�������ۼۻ��ܱ�
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������������ 2003.09.13
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_423541') and type = 'P')
  drop procedure dbo.rp_423541
GO

create procedure dbo.rp_423541 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030913_01,Last Mender:������
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  insert into #423541(SheetID,ShopID,ShopName,managedeptid,managename,Typeflag,PromType,startdate,enddate,Checkdate,
    CostValue,NoTaxCostValue,Truevalue,Operator,Checker)
        select a.sheetid,a.ShopID,f.name, d.id,d.name,a.Typeflag,A.PromType,a.startdate,a.enddate,a.Checkdate,
          0,0,0,a.operator,a.checker
        from PriceUpd a,PriceUpdItem b,sGroup d,goods e,shop f
        where a.sheetid=b.sheetid 
        and b.goodsid=e.goodsid
        and a.shopid=f.id
        and round(e.deptid/@levelvalue,0)=d.id
        and convert(char(8),a.checkdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
        group by a.sheetid,a.ShopID,f.name, d.id,d.name,a.Typeflag,A.PromType,a.startdate,a.enddate,a.Checkdate,
          a.operator,a.checker;

      select @Err=@@Error,@msg='��������ʱ��!!',@BreakPoint=420050;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  return  0;  
ErrHandle:
  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

----------------------------------------------------------------------------------------
--rp_423543			��������Ա�ۻ��ܱ�
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������������ 2003.09.13
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_423543') and type = 'P')
  drop procedure dbo.rp_423543
GO

create procedure dbo.rp_423543 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030913_01,Last Mender:������
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  insert into #423543(SheetID,ShopID,ShopName,managedeptid,managename,updtype,startdate,enddate,Checkdate,
    CostValue,NoTaxCostValue,Truevalue,Operator,Checker)
        select a.sheetid,a.ShopID,f.name, d.id,d.name,a.updtype,a.startdate,a.enddate,a.Checkdate,
          0,0,0,a.operator,a.checker
        from UpdMemberP a,UpdMemberPItem b,sGroup d,goods e,shop f
        where a.sheetid=b.sheetid 
        and b.goodsid=e.goodsid
        and a.shopid=f.id
        and round(e.deptid/@levelvalue,0)=d.id
        and convert(char(8),a.checkdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
        group by a.sheetid,a.ShopID,f.name, d.id,d.name,a.updtype,a.startdate,a.enddate,a.Checkdate,
          a.operator,a.checker;

      select @Err=@@Error,@msg='��������ʱ��!!',@BreakPoint=420050;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  return  0;  
ErrHandle:
  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go




----------------------------------------------------------------------------------------
--rp_424623			�����Ż��ۿۻ��ܱ�
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������������ 2003.09.16
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424623') and type = 'P')
  drop procedure dbo.rp_424623
GO

create procedure dbo.rp_424623 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030916_01,Last Mender:������
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
create table #424623tmp
(
SDate      datetime    not null,
ShopID     char(4)     not null,
pqty       int         default 0 not null,
psalevalue     dec(12,2)   default 0 not null,
pdiscvalue     dec(12,2)   default 0 not null,
vqty       int         default 0 not null,
vsalevalue     dec(12,2)   default 0 not null,
vdiscvalue     dec(12,2)   default 0 not null,
tqty       int         default 0 not null,
tsalevalue     dec(12,2)   default 0 not null,
tdiscvalue     dec(12,2)   default 0 not null,
dqty       int         default 0 not null,
dsalevalue     dec(12,2)   default 0 not null,
ddiscvalue     dec(12,2)   default 0 not null,
hqty       int         default 0 not null,
hsalevalue     dec(12,2)   default 0 not null,
hdiscvalue     dec(12,2)   default 0 not null,
Mqty       int         default 0 not null,
Msalevalue     dec(12,2)   default 0 not null,
Mdiscvalue     dec(12,2)   default 0 not null,
cqty       int         default 0 not null,
csalevalue     dec(12,2)   default 0 not null,
cdiscvalue     dec(12,2)   default 0 not null
);--E
  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;

--����p
  insert into #424623tmp(SDate,ShopID,pqty,psalevalue,pdiscvalue,vqty,vsalevalue,vdiscvalue,
     tqty,tsalevalue,tdiscvalue,dqty,dsalevalue,ddiscvalue,hqty,hsalevalue,hdiscvalue,Mqty,
     Msalevalue,Mdiscvalue,cqty,csalevalue,cdiscvalue)
    select sdate,shopid,sum(qty),sum(salevalue),sum(discvalue),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and disctype='p'
      group by sdate,shopid

  select @Err=@@Error,@BreakPoint=420020;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
--��Ʒ�ۿ� 
  insert into #424623tmp(SDate,ShopID,pqty,psalevalue,pdiscvalue,vqty,vsalevalue,vdiscvalue,
     tqty,tsalevalue,tdiscvalue,dqty,dsalevalue,ddiscvalue,hqty,hsalevalue,hdiscvalue,Mqty,
     Msalevalue,Mdiscvalue,cqty,csalevalue,cdiscvalue)
    select sdate,shopid,0,0,0,sum(qty),sum(salevalue),sum(discvalue),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and disctype='v'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

--ʱ���ۿ� 
  insert into #424623tmp(SDate,ShopID,pqty,psalevalue,pdiscvalue,vqty,vsalevalue,vdiscvalue,
     tqty,tsalevalue,tdiscvalue,dqty,dsalevalue,ddiscvalue,hqty,hsalevalue,hdiscvalue,Mqty,
     Msalevalue,Mdiscvalue,cqty,csalevalue,cdiscvalue)
    select sdate,shopid,0,0,0,0,0,0,sum(qty),sum(salevalue),sum(discvalue),0,0,0,0,0,0,0,0,0,0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and disctype='t'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

--С���ۿ� 
  insert into #424623tmp(SDate,ShopID,pqty,psalevalue,pdiscvalue,vqty,vsalevalue,vdiscvalue,
     tqty,tsalevalue,tdiscvalue,dqty,dsalevalue,ddiscvalue,hqty,hsalevalue,hdiscvalue,Mqty,
     Msalevalue,Mdiscvalue,cqty,csalevalue,cdiscvalue)
    select sdate,shopid,0,0,0,0,0,0,0,0,0,sum(qty),sum(salevalue),sum(discvalue),0,0,0,0,0,0,0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and disctype='d'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;


--��Ա�ۿ� 
  insert into #424623tmp(SDate,ShopID,pqty,psalevalue,pdiscvalue,vqty,vsalevalue,vdiscvalue,
     tqty,tsalevalue,tdiscvalue,dqty,dsalevalue,ddiscvalue,hqty,hsalevalue,hdiscvalue,Mqty,
     Msalevalue,Mdiscvalue,cqty,csalevalue,cdiscvalue)
    select sdate,shopid,0,0,0,0,0,0,0,0,0,0,0,0,sum(qty),sum(salevalue),sum(discvalue),0,0,0,0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and disctype in ('h','k')
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;


--�ֹ��ۿ� 
  insert into #424623tmp(SDate,ShopID,pqty,psalevalue,pdiscvalue,vqty,vsalevalue,vdiscvalue,
     tqty,tsalevalue,tdiscvalue,dqty,dsalevalue,ddiscvalue,hqty,hsalevalue,hdiscvalue,Mqty,
     Msalevalue,Mdiscvalue,cqty,csalevalue,cdiscvalue)
    select sdate,shopid,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,sum(qty),sum(salevalue),sum(discvalue),0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and disctype in ('M','Z','J')
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

--�ֹ����
  insert into #424623tmp(SDate,ShopID,pqty,psalevalue,pdiscvalue,vqty,vsalevalue,vdiscvalue,
     tqty,tsalevalue,tdiscvalue,dqty,dsalevalue,ddiscvalue,hqty,hsalevalue,hdiscvalue,Mqty,
     Msalevalue,Mdiscvalue,cqty,csalevalue,cdiscvalue)
    select sdate,shopid,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,sum(qty),sum(salevalue),sum(discvalue)
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and disctype ='c'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;


--����
  insert into #424623(SDate,ShopID,Shopname,pqty,psalevalue,pdiscvalue,vqty,vsalevalue,vdiscvalue,
     tqty,tsalevalue,tdiscvalue,dqty,dsalevalue,ddiscvalue,hqty,hsalevalue,hdiscvalue,Mqty,
     Msalevalue,Mdiscvalue,cqty,csalevalue,cdiscvalue)
    select a.SDate,a.ShopID,b.name Shopname,sum(pqty),sum(psalevalue),sum(pdiscvalue),sum(vqty),sum(vsalevalue),sum(vdiscvalue),
     sum(tqty),sum(tsalevalue),sum(tdiscvalue),sum(dqty),sum(dsalevalue),sum(ddiscvalue),sum(hqty),sum(hsalevalue),sum(hdiscvalue),sum(Mqty),
     sum(Msalevalue),sum(Mdiscvalue),sum(cqty),sum(csalevalue),sum(cdiscvalue)
      from #424623tmp a,shop b where a.shopid=b.id
      group by a.sdate,a.shopid,b.name
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  drop table #424623tmp;
  select @tempflag=0;


  return  0;  
ErrHandle:
  if @tempflag=1   drop table #424623tmp;
  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

-----------------------------------------------------------------
--rp_425103		��Ʒ������ϸ��
--���������ڶΡ��������롢
--˵����
--���أ��ɹ�0		�ϵ��(425103XX)
--��
--�㷨��
--�������Խ� 2003-10-21 16:21
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_425103') and sysstat & 0xf = 4)
    drop procedure dbo.rp_425103
GO
create procedure dbo.rp_425103 @beginDate datetime,@endDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030924_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42510310,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42510311,@msg='ȡ�������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select * into #425103SaleCost from Salecost where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'Salecost',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42510312;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #425103tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #425103tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #425103tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #425103SaleCost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),saledate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),saledate,112)<=''' 
           + convert(char(8),@enddate,112) + '''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #425103tablename;
       select @SQLString='insert into #425103SaleCost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),saledate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),saledate,112)<=''' 
           + convert(char(8),@enddate,112) + '''';
      execute (@SQLString);
      update #425103tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42510313;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #425103tablename;
  
  create table #425103tmp
  (
   sdate	datetime	null,		--��������
   shopid	char(4)		null,		--��������
   shopName	char(16)	null,		--��������
   VenderID	int		null,		--��Ӧ�̱��
   VenderName	char(64)	null,		--��Ӧ������ 
   sGroupID	int		null,		--���������
   sGroupName	char(16)	null,		--����������
   GoodsID	int    		null,		--��Ʒ����
   Barcodeid	char(13)	null,		--����               
   GoodsName	char(64)	null,		--������                 
   Spec		char(16)	null,		--��Ʒ���               
   UnitName	char(8)		null,		--������λ
   GoodsDate	datetime	null,		--��������(date)
   cost		dec(10,2)	default 0 null,	--����
   Price	dec(10,2)	default 0 null,	--�ۼ�
   DiscType	char(1)		null,		--��������(ͬProm_Level���PromType)
   Qty		dec(16,4)	null,		--��������
   SaleValue	dec(16,4)	default 0 null,	--���۽��
   SaleCost	dec(16,4)	default 0 null,	--�ɱ����
   DiscValue	dec(16,4)	default 0 null,	--�ۿ۽��
   RealValue	dec(16,4)	default 0 null,	--ʵ������
   GPValue	dec(16,4)	default 0 null,	--ë��
   WeekSaleQty	dec(12,3)	default 0 null,	--�����ۼ�����������������Ϊ���ͳ���������
   MonthSaleQty	dec(12,3)	default 0 null	--�����ۼ�������������������Ϊ���ͳ���������
  )
  select @tempflag=1;
  
  insert into #425103tmp
    select a.SaleDate,a.shopid,'',a.venderid,'',a.deptid/@levelvalue,'',a.goodsid,b.barcodeid,b.name,b.spec,b.unitName,
        b.GoodsDate,a.cost,a.price,a.disctype,a.qty,a.SaleValue,a.CostValue,a.discValue,a.SaleValue-a.DiscValue,
        a.SaleValue-a.DiscValue-a.CostValue,0,0    
    from #425103SaleCost a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42510320;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  update #425103tmp set ShopName=sh.Name,VenderName=v.Name,sGroupName=sg.Name
    from #425103tmp a,vender v,shop sh,sgroup sg
    where a.Venderid*=v.venderid and a.shopid=sh.id and a.sGroupID*=sg.id;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42510325;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #425103tmp set WeekSaleQty=b.WeekSaleQty,MonthSaleQty=b.MonthSaleQty
    from #425103tmp a,demand b
    where a.shopid=b.shopid and a.goodsid=b.goodsid;  
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42510330;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  insert into #425103 select * from #425103tmp order by sdate,goodsid;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42510335;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #425103tmp;
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #425103tmp;
  return -1;
End
Go



--421205 �ŵ걨��/������Ʒ��ϸ��
--�޸ģ��Խ� 2003-10-24 10:40 ������������ȫ���ű�
--      �����±��ѯ��������Ϣ�������ˡ�����ˡ���ע
--	����ũ��Ʒ��˰�ɱ�����
--�޸ģ� cmg ����������2423д���24723��,�������ӵ��ݱ���ȡ�ã����Ǵ������ʱ���ȡ��
if exists (select * from sysobjects where id = object_id('dbo.rp_421205') and sysstat & 0xf = 4)
    drop procedure dbo.rp_421205
GO

create procedure dbo.rp_421205(@BeginDate DateTime,@EndDate DateTime,@Sheettype int) as
begin
  declare @Err  int;  
  declare @BreakPoint int;  
  declare @Msg  varchar(255); 
  
  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;
  
  declare @deptlevel    int;
  declare @levelvalue   int;
  
  select * into #421205Wastebook from Wastebook where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'Wastebook',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42120512;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #421205tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #421205tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #421205tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #421205Wastebook select * from '
           + ltrim(rtrim(@subTableName))
           + ' where sheettype in (2413,2473,2423) and convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112) +'''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #421205tablename;
       select @SQLString='insert into #421205Wastebook select * from '
           + ltrim(rtrim(@subTableName))
           + ' where sheettype in (2413,2473,2423) and  convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112) +'''';
      execute (@SQLString);
      update #421205tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42120513;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #421205tablename;
  
    delete from #421205 where 1=1;
  if  @SheetType = 2413 or @SheetType=0 begin   --����2413
    insert into #421205 select w.shopid,w.goodsid,w.cost,2413,w.taxrate,
      sum(w.qty) as Qty,round(sum(w.qty*w.cost),2) as taxcostvalue,
      round(sum(w.qty*w.cost*(100-w.taxRate*g.AgroFlag)/(100+w.taxRate*(1-g.AgroFlag))),2) as NoTaxCostValue,
      w.sheetid,l.Editor,l.Checker,li.remask,'',0,'',0,'','',w.venderid,''
    from Lost l,lostItem li,#421205Wastebook w,goods g
    where l.sheetid=li.sheetid and l.sheetid=w.sheetid and w.sheettype=2413 
      and li.goodsid=w.goodsid and li.goodsid=g.goodsid
   group by w.shopid,w.goodsid,w.cost,w.sheetid,l.Editor,l.Checker,li.remask,w.taxrate,w.venderid;
   select @Err=@@Error,@BreakPoint=42120520,@msg='ȡ��������ʱ����';
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end;  
  if  @SheetType = 2473  or @SheetType=0 begin --�ӹ����õ�2473
    insert into #421205 select  w.shopid,w.goodsid,w.cost,2473,w.taxrate,
      sum(w.qty) as Qty,round(sum(w.qty*w.cost),2) as TaxCostValue,
      round(sum(w.qty*w.cost*(100-w.taxRate*g.AgroFlag)/(100+w.taxRate*(1-g.AgroFlag))),2) as NoTaxCostValue,
      w.sheetid,s.Editor,s.Checker,'','',0,'',0,'','',w.venderid,''
    from SaleStuff s,SaleStuffItem si,#421205Wastebook w,goods g
    where s.sheetid=si.sheetid and si.sheetid=w.sheetid and w.sheettype=2473 
      and si.goodsid=w.goodsid and si.goodsid=g.goodsid
      group by w.shopid,w.goodsid,w.cost,w.sheetid,s.Editor,s.Checker,w.taxrate,w.venderid;
    select @Err=@@Error,@BreakPoint=42120521,@msg='ȡ�ӹ���������ʱ����';
    if (@Err is null) or (@Err!=0)  goto ErrHandle;  
  end;
  if  @SheetType = 2423  or @SheetType=0 begin --�������õ�2423
    insert into #421205 select  w.shopid,w.goodsid,w.cost,2423,w.taxrate,
      sum(w.qty) as Qty,round(sum(w.qty*w.cost),2) as TaxCostValue,
      round(sum(w.qty*w.cost*(100-w.taxRate*g.AgroFlag)/(100+w.taxRate*(1-g.AgroFlag))),2) as NoTaxCostValue,
      w.sheetid,s.Editor,s.Checker,'','',0,'',0,'','',w.venderid,''
    from XTran s,XTranItem si,#421205Wastebook w,goods g
    where s.sheetid=si.sheetid and si.sheetid=w.sheetid and w.sheettype=2423 
      and si.goodsid=w.goodsid and si.goodsid=g.goodsid
      group by w.shopid,w.goodsid,w.cost,w.sheetid,s.Editor,s.Checker,w.taxrate,w.venderid;
    select @Err=@@Error,@BreakPoint=42120522,@msg='ȡ������������ʱ����';
    if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end;
  
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42120530,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42120531,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #421205 set sgid=g.deptid/@levelvalue,deptid=g.deptid,goodsname=g.name
    from #421205 a,goods g
    where a.goodsid=g.goodsid;
  update #421205 set sgname=sg.name
    from #421205 a,sgroup sg
    where a.sgid=sg.id;
  update #421205 set deptname=d.name
    from #421205 a,dept d
    where a.deptid=d.id;
  select @Err=@@Error,@BreakPoint=42120540,@msg='ȡ������Ϣ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #421205 set shopname=sh.name
    from #421205 a,shop sh
    where a.shopid=sh.id;
  update #421205 set vendername=b.name
    from #421205 a,vender b
    where a.venderid=b.venderid;
    
  select @Err=@@Error,@BreakPoint=42120545,@msg='ȡ�������Ƴ���!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  return 0;     
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);  
  return -1;  
  
end;
GO



--425114 �����������ձ���
--�޸ģ��Խ� 2003-10-24 10:40 ������������ȫ���ű�
if exists (select * from sysobjects where id = object_id('dbo.rp_425114') and sysstat & 0xf = 4)
    drop procedure dbo.rp_425114
GO
create procedure dbo.rp_425114 @Begindate datetime,@Enddate datetime,@IsGoods  int
AS BEGIN  
  declare @Err  int;  
  declare @BreakPoint int;  
  declare @Msg  varchar(255);  
  declare @deptlevel    int;  
  declare @levelvalue   int;  
  
  select @deptlevel=null;
  select @msg='ȡ�����ż���ʱ����!'
  select @deptlevel=value from config where name='�����ż���';  
  select @Err=@@Error,@BreakPoint=425000;  
  if (@Err!=0) or (@Err is null) or (@deptlevel is null) goto ErrHandle;  
  
  select @msg='ȡ�����ż���Ȩֵʱ����!'
  select @levelvalue=null;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;  
  select @Err=@@Error,@BreakPoint=425010;  
  if (@Err!=0) or (@Err is null) or (@levelvalue is null) goto ErrHandle;  
  select @msg='';

  if @IsGoods=1 begin  --��ʾ��Ʒ��ϸ
        select @BreakPoint=425020;   
  	insert into #425114(SDate,ShopID,ShopName,managedeptid,managename,
		VenderID,VenderName,PayTypeID,PayName,
		Qty,SaleValue,DiscValue,TrueValue)
  	select A.SDate,A.ShopID,isnull(B.Name,A.ShopID) as ShopName,A.GoodsID,C.Name,
 		A.VenderID,isnull(D.Name,A.VenderID),A.PayTypeID,isnull(E.Name,A.PayTypeID),
         	Sum(A.Qty) as Qty ,sum(A.SaleValue) as SaleValue,Sum(A.DiscValue) as DiscValue,sum(A.SaleValue-A.DiscValue) as trueValue
  		from SalePend A,Shop B,Goods C,Vender D,PayType E
  		where A.ShopID*=B.ID  and A.VenderID*=D.VenderID and A.PayTypeID*=E.ID and A.GoodsID=C.GoodsID 
                and A.SDate>=Convert(char(10),@Begindate,120) and   A.SDate<=Convert(char(10),@Enddate,120)
                and SheetType in (101,102)
  		group by   A.SDate,A.ShopID,B.Name,A.GoodsID,C.Name,A.VenderID,A.PayTypeID,D.Name,E.Name
  	if (@@Error!=0) or (@@Error is null) goto ErrHandle;  
  end else begin--����ʾ��Ʒ��ϸ
  	insert into #425114(SDate,ShopID,ShopName,managedeptid,managename,
		VenderID,VenderName,PayTypeID,PayName,
		Qty,SaleValue,DiscValue,TrueValue)
  	select A.SDate,A.ShopID,isnull(B.Name,A.ShopID) as ShopName,floor(A.DeptID/@levelvalue),isnull(F.Name,''),
 		A.VenderID,isnull(D.Name,A.VenderID),A.PayTypeID,isnull(E.Name,A.PayTypeID),
         	Sum(A.Qty) as Qty ,sum(A.SaleValue) as SaleValue,Sum(A.DiscValue) as DiscValue,sum(A.SaleValue-A.DiscValue) as trueValue
  		from SalePend A,Shop B,Vender D,PayType E,sgroup F
  		where A.ShopID*=B.ID  and A.VenderID*=D.VenderID and A.PayTypeID*=E.ID and floor(A.DeptID/@levelvalue)*=F.ID
                and A.SDate>=Convert(char(10),@Begindate,120) and   A.SDate<=Convert(char(10),@Enddate,120)
                and SheetType in (101,102)
  		group by   A.SDate,A.ShopID,B.Name ,floor(A.DeptID/@levelvalue),A.VenderID,A.PayTypeID,D.Name,E.Name,F.Name
	select @Err=@@Error,@BreakPoint=425020;  
  	if (@Err!=0) or (@Err is null) goto ErrHandle;  
  end;
  
      
 return 0;     
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);  
  return -1;  
  
End  
GO

--427871 DM��Ʒ����������ϸ����
-----------------------------------------------------------------
--rp_427871			DM��Ʒ����������ϸ����		
--�����������ƻ���š���������
--���أ���־0=�ɹ�		�ϵ��(427871XX)
--��	
--������
--�㷨��
--�������Խ� 2003-10-28
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427871') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427871
GO
create procedure dbo.rp_427871 @PlanID int,@shopid char(4)
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20031028_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  declare @begindate	datetime;
  declare @enddate	datetime;
  declare @prebegindate datetime;
  declare @preenddate	datetime;
  
  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;

  SET NOCOUNT ON
    
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42787110,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42787111,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  create table #temp_427871
  (
   sDate		datetime	null,		--����
   sGroupID		int		null,		--���������
   sGroupName		char(16)	null,		--����������
   GoodsID		int    		null,		--��Ʒ����
   Barcodeid		char(13)	null,		--����               
   GoodsName		char(64)	null,		--������                 
   Spec			char(16)	null,		--��Ʒ���               
   UnitName		char(8)		null,		--������λ
   Pricebegindate	datetime        null,		--�ۼۿ�ʼ����
   Priceenddate		datetime        null,		--�ۼ۽�������
   costbegindate	datetime        null,		--���ۿ�ʼ����
   costenddate		datetime        null,		--���۽�������
   ContractCost		dec(16,4)	null,		--��������
   cost			dec(16,4)	null,		--��������
   NormalPrice		dec(16,4)	null,		--�����ۼ�
   Price		dec(16,4)	null,		--�����ۼ�
   NormalGPR		dec(16,4)	null,		--����ë����
   GPR			dec(16,4)	null,		--����ë����
   DMS			dec(16,4)	null,		--ƽ��������
   SaleQty		dec(16,4)	null,		--��������
   SaleCost		dec(16,4)	null,		--���۳ɱ�
   SaleValue		dec(16,4)	null,		--���۽��
   GPValue		dec(16,4)	null,		--ë����
   GPRate		dec(16,4)	null,		--����ë����
   GroupRate		dec(16,4)	null,		--ռ���ڼ����۲��ű���%
   OpenQty		dec(16,4)	null,		--��;��
   CloseQty		dec(16,4)	null,		--��ǰ�������
   CloseCostV		dec(16,4)	null,		--��ǰ�����
   VenderID		int		null,		--��Ӧ�̱���
   VenderName		char(64)	null		--��Ӧ������
  )
  select @tempflag=1;   
  --ȡ�����ƻ������Ϣ
  select * into #427871PP from NowPromotionPlan0
    where PlanID=@PlanID and ShopID=@ShopID;
  insert into #427871PP(SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
      PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime)
    select SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
        PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime from NowPromotionPlan
      where PlanID=@PlanID and ShopID=@ShopID;
  select @Err=@@Error,@BreakPoint=42787112,@msg='ȡ�����ƻ�ʱ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  select @begindate=min(PriceBeginDate),@enddate=max(PriceEndDate) from #427871PP;
  select @Err=@@Error,@BreakPoint=42787118,@msg='ȡ�����ƻ�����ʱ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;  

  --����ʱ��
  --���´�������ͳ��
  select SDate,GoodsID,ShopID,SaleQty,SaleValue,SaleCost,CloseQty,CloseCostV
    into #427871RPT_Base0001 from RPT_Base0001 where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427871tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427871tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427871tmp;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #427871RPT_Base0001 select SDate,GoodsID,ShopID,SaleQty,SaleValue,SaleCost,CloseQty,CloseCostV from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427871tmp;
       select @SQLString='insert into #427871RPT_Base0001 select SDate,GoodsID,ShopID,SaleQty,SaleValue,SaleCost,CloseQty,CloseCostV from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and shopid=''' + @shopid +'''';
      execute (@SQLString);
      update #427871tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  select @Err=@@Error,@BreakPoint=42787113,@msg='ȡRPT_Base0001���ݳ���!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;  
  --ɾ���޹�����
  delete from #427871RPT_Base0001 where goodsid not in (select goodsid from #427871PP);
  select @Err=@@Error,@BreakPoint=42787114,@msg='ɾ���޹�����ʱ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  --���������Ϣ�����ڡ���Ʒ���롢�������������۽����۳ɱ�������ë�����������������
  insert into #temp_427871(SDate,GoodsID,SaleQty,SaleValue,SaleCost,GPValue,CloseQty,CloseCostV)
    select SDate,GoodsID,SaleQty,SaleValue,SaleCost,SaleValue-SaleCost,CloseQty,CloseCostV 
    from #427871RPT_Base0001;
  select @Err=@@Error,@BreakPoint=42787115,@msg='ȡ������Ϣ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;      
  drop table #427871RPT_Base0001;
 
  --��DM�����ƻ�������ȡ��ʼ�������ڡ��������ۡ������ۼۡ�����ë���ʡ���Ӧ�̱���
  update #temp_427871 
    set PriceBeginDate=b.PriceBeginDate,PriceEndDate=b.PriceEndDate,
        CostBeginDate=b.CostBeginDate,CostEnddate=b.CostEnddate,
        cost=b.cost,Price=b.Price,GPR=(b.Price-b.cost)*100/(case b.Price when 0 then 1 else b.Price end),
        Venderid=b.venderid
    from #temp_427871 a,#427871PP b
    where a.goodsid=b.goodsid
  select @Err=@@Error,@BreakPoint=42787120,@msg='ȡ������ʼ�������ڳ���!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --ȡ����������Ϣ��������Ϣ�����롢��Ʒ���ơ����������λ����Ӧ�����ƣ�
  update #temp_427871
    set sgroupid=g.deptid/@levelvalue,sgroupname=sg.name,barcodeid=g.barcodeid,
        GoodsName=g.name,spec=g.spec,unitname=g.unitname,VenderName=v.name
    from #temp_427871 a,goods g,vender v,sgroup sg
    where a.goodsid=g.goodsid and a.venderid=v.venderid and g.deptid/@levelvalue=sg.id
  select @Err=@@Error,@BreakPoint=42787125,@msg='ȡ��������!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  --ȡ�����ۼۡ��������ۡ���������ë����
  update #temp_427871
    set NormalPrice=b.NormalPrice
    from #temp_427871 a,goodsshop b
    where a.goodsid=b.goodsid and b.shopid=@shopid;
  select @Err=@@Error,@BreakPoint=42787130,@msg='ȡ�����ۼ۳���!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #temp_427871
    set ContractCost=b.ContractCost
    from #temp_427871 a,cost b
    where a.goodsid=b.goodsid and b.shopid=@shopid and a.venderid=b.venderid;
  select @Err=@@Error,@BreakPoint=42787131,@msg='ȡ�������۳���!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #temp_427871 
    set NormalGPR=(NormalPrice-ContractCost)*100/(case NormalPrice when 0 then 1 else NormalPrice end);
  select @Err=@@Error,@BreakPoint=42787132,@msg='��������ë���ʳ���!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  --��������ë����
  update #temp_427871
    set GPRate=GPValue*100/(case SaleValue when 0 then 1 else SaleValue end);
  select @Err=@@Error,@BreakPoint=42787140,@msg='��������ë���ʳ���!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  --ȡ��ƽ����������;��
  update #temp_427871 
    set DMS=b.NDMS,OpenQty=b.OpenOrderQty+b.OpenRationQty
    from #temp_427871 a,demand b
    where a.goodsid=b.goodsid and b.shopid=@shopid;
  select @Err=@@Error,@BreakPoint=42787145,@msg='ȡ��ƽ����������;��ʱ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  --��������ռ�ȣ�ռ���ŵıȣ�
  select sdate,ManageDeptid,shopid,SaleValue 
    into #427871Rpt_Base0021
    from Rpt_Base0021
    where convert(char(8),sdate,112)>=convert(char(8),@begindate,112)
      and convert(char(8),sdate,112)<=convert(char(8),@enddate,112);
  select @Err=@@Error,@BreakPoint=42787150,@msg='ȡ������������ʱ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;          
  update #temp_427871
    set GroupRate=a.SaleValue*100/(case b.SaleValue when 0 then 1 else b.SaleValue end)
    from #temp_427871 a,#427871Rpt_Base0021 b
    where a.sdate=b.sdate and b.shopid=@shopid and a.sgroupid=b.ManageDeptID;
  select @Err=@@Error,@BreakPoint=42787151,@msg='��������ռ��ʱ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;      
  
  insert into #427871 select * from #temp_427871; 
  select @Err=@@Error,@BreakPoint=42787160,@msg='���ݷ���ʱ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;  
  
  drop table #427871Rpt_Base0021;
  drop table #427871PP;    
  drop table #427871tmp;
  drop table #temp_427871;
 return 0;    
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_427871;
  return -1;
End
Go

--421204 �����˻���ϸ��
if exists (select * from sysobjects where id = object_id('dbo.rp_421204') and sysstat & 0xf = 4)
    drop procedure dbo.rp_421204
GO
create procedure dbo.rp_421204 @beginDate datetime,@endDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20031029_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42120401,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42120402,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select * into #421204Wastebook from Wastebook where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'Wastebook',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42120403;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #421204tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #421204tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #421204tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #421204Wastebook select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112) + ''' and sheettype=2323';
       execute (@SQLString);
       break;
    end
    else begin
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #421204tablename; 
       select @SQLString='insert into #421204Wastebook select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112) + ''' and sheettype=2323';
      execute (@SQLString);
      update #421204tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  drop table #421204tablename;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42120404;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
create table #421204tmp
( shopid	char(4)		null,
  shopname	char(16)	null,
  Venderid	int		null,
  VenderName	char(64)	null,
  goodsid	int		null,
  barcodeid	char(13)	null,
  goodsName	char(64)	null,
  spec          char(16)    	null,
  UnitName	char(8)		null,
  deptID	int		null,
  deptName	char(16)	null,
  retdate	datetime	null,			--�˻�����
  badflag	int		null,			--�������
  cost		dec(16,4)	default 0 null,		--����
  AppCost	dec(16,4)	default 0 null,		--��̯��
  realQty	dec(16,4)	default 0 null,		--ʵ����
  CostValue	dec(16,4)	default 0 null,		--�˻����
  LostCostValue	dec(16,4)	default 0 null,		--δ˰��ĳɱ�
  reasontypeid	int		null,
  retreason	char(16)	null,
  reason	char(32)	null
)
  select @tempflag=1;
  select @Err=@@Error,@Msg='����ʱ��ʱ����',@BreakPoint=42120410;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;  
  insert into #421204tmp(shopid,venderid,venderName,goodsid,retdate,badflag,reasontypeid,
      deptid,cost,Appcost,realQty,CostValue,LostCostValue,reason)
    select r.shopid,r.venderid,v.name as VenderName,ri.goodsid,
        r.retdate,r.badflag,ri.reasontypeid,ri.deptid,ri.cost,w.cost as AppCost,
        sum(ri.realqty) as realqty,sum(ri.cost*ri.realqty) as CostValue,
        sum((ri.cost-w.cost)*ri.realQty) as LostCostValue,ri.reason
      from ret r,retitem ri,#421204Wastebook w,vender v
      where r.sheetid=ri.sheetid and r.sheetid=w.sheetid
        and ri.goodsid=w.goodsid and r.venderid=v.venderid
      group by  r.shopid,r.venderid,v.name,ri.goodsid,r.retdate,
        r.badflag,ri.reasontypeid,ri.deptid,ri.cost,w.cost,ri.reason;
  select @Err=@@Error,@Msg='ȡ��������ʱ����',@BreakPoint=42120415;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;  
  
  update #421204tmp set shopname=b.name
    from #421204tmp a,shop b
    where a.shopid=b.id;
  select @Err=@@Error,@Msg='ȡ��������ʱ����',@BreakPoint=42120420;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  
  update #421204tmp set deptname=b.name
    from #421204tmp a,dept b
    where a.deptid=b.id;
  select @Err=@@Error,@Msg='ȡ�������ʱ����',@BreakPoint=42120425;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  
  update #421204tmp 
    set goodsname=b.name,barcodeid=b.barcodeid,spec=b.spec,unitname=b.unitname
    from #421204tmp a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='ȡ��Ʒ��Ϣʱ����',@BreakPoint=42120430;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  
  update #421204tmp set retreason=b.name
    from #421204tmp a,retreasontype b
    where a.reasontypeid=b.id;
  select @Err=@@Error,@Msg='ȡ�˻�ԭ��ʱ����',@BreakPoint=42120435;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  insert into #421204 select * from #421204tmp;
  select @Err=@@Error,@Msg='��������ʱ����',@BreakPoint=42120415;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  drop table #421204tmp;
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #421204tmp;
  return -1;
End
Go 

--��Ʒ�����溬˰�ձ���(�̶���)
if exists (select * from dbo.sysobjects
	where id = object_id(N'dbo.RPT_Base1001') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
	drop table dbo.RPT_Base1001
GO
Create Table RPT_Base1001
(
SDate			datetime	null,			--����
GoodsID			int   		null,			--��Ʒ����
ShopID			char(4)		null,			--���
VenderID		int		null,			--��Ӧ�̱���
DeptID			int   		null,			--�����
CostTaxRate		dec(5,2)	default 0 null,		--����˰��%
Cost			dec(12,4)	default 0 null,		--����������
SaleQty			dec(16,4)	default 0 null,		--��������
SaleCost		dec(16,4)	default 0 null,		--���ۺ�˰�ɱ����
NSaleCost		dec(16,4)	default 0 null,		--������˰�ɱ����
ReceiptQty		dec(16,4)	default 0 null,		--��������
ReceiptValue		dec(16,4)	default 0 null,		--��˰���ս��
NReceiptValue		dec(16,4)	default 0 null,		--��˰���ս��
RetQty			dec(16,4)	default 0 null,		--�˻�����
RetValue		dec(16,4)	default 0 null,		--��˰�˻����
NRetValue		dec(16,4)	default 0 null,		--��˰�˻����
TransferOutQty		dec(16,4)	default 0 null,		--��������
TransferOutValue	dec(16,4)	default 0 null,		--��˰�������
NTransferOutValue	dec(16,4)	default 0 null,		--��˰�������
TransferInQty		dec(16,4)	default 0 null,		--��������
TransferInValue		dec(16,4)	default 0 null,		--��˰������
NTransferInValue	dec(16,4)	default 0 null,		--��˰������
PDQty			dec(16,4)	default 0 null,		--�̵��������
PDValue			dec(16,4)	default 0 null,		--��˰�̵�������
NPDValue		dec(16,4)	default 0 null,		--��˰�̵�������
LostQty			dec(16,4)	default 0 null,		--��������
LostValue		dec(16,4)	default 0 null,		--��˰������
NLostValue		dec(16,4)	default 0 null,		--��˰������
WSaleQty		dec(16,4)	default 0 null,		--��������
WSaleValue		dec(16,4)	default 0 null,		--��˰�������
NWSaleValue		dec(16,4)	default 0 null,		--��˰�������
UseQty			dec(16,4)	default 0 null,		--��������
UseValue		dec(16,4)	default 0 null,		--��˰���ý��
NUseValue		dec(16,4)	default 0 null,		--��˰���ý��
AdjustQty		dec(16,4)	default 0 null,		--������������(���θ���)
AdjustValue		dec(16,4)	default 0 null,		--��˰�����������(��������)
NAdjustValue		dec(16,4)	default 0 null,		--��˰�����������(��������)
PrevQty			dec(16,4)	default 0 null,		--�ڳ�����
PrevValue		dec(16,4)	default 0 null,		--�ڳ���˰���
NPrevValue		dec(16,4)	default 0 null,		--�ڳ���˰���
CloseQty		dec(16,4)	default 0 null,		--�������
CloseCostV		dec(16,4)	default 0 null,		--��˰�������
NCloseCostV		dec(16,4)	default 0 null		--��˰�������
)
GO
Create index i1_RPT_Base1001 on RPT_Base1001 (SDate,ShopID)
GO


-----------------------------------------------------------------
--SP_RPTBase1001_Stock		��Ʒ�����溬˰�ձ������洢����
--����������
--���أ���־0=�ɹ�		�ϵ��(424601xx)
--��
--������
--�㷨���������������ڳ���ĩ���
--�������Խ� 2003-11-3 23:48
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.SP_RPTBase1001_Stock') and type = 'P')
  drop procedure dbo.SP_RPTBase1001_Stock
GO
create procedure SP_RPTBase1001_Stock
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20031103_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS Begin
  declare @SDate1 datetime
  declare @goodsid1 int
  declare @shopid1 char(4)
  declare @Venderid1 int
  declare @deptid1 int
  declare @CostTaxRate1 dec(5,2)
  declare @Directflag1 int
  declare @Qty1 dec(12,3)
  declare @CostValue1 dec(12,2)
  declare @NCostValue1 dec(12,2)
  declare @SDate2 datetime
  declare @goodsid2 int
  declare @shopid2 char(4)
  declare @Venderid2 int
  declare @deptid2 int
  declare @CostTaxRate2 dec(5,2)
  declare @Directflag2 int
  declare @Qty2 dec(12,3)
  declare @CostValue2 dec(12,2)
  declare @NCostValue2 dec(12,2)
  declare @PrevQty1 dec(16,4)
  declare @PrevValue1 dec(16,4)
  declare @NPrevValue1 dec(16,4)
  declare @CloseQty1 dec(16,4)
  declare @CloseCostV1 dec(16,4)
  declare @NCloseCostV1 dec(16,4)
  declare @PrevQty2 dec(16,4)
  declare @PrevValue2 dec(16,4)
  declare @NPrevValue2 dec(16,4)
  declare @CloseQty2 dec(16,4)
  declare @CloseCostV2 dec(16,4)
  declare @NCloseCostV2 dec(16,4)
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  
  SET NOCOUNT ON
  select @Msg = '',@Err=0;
    declare cur_stock cursor local for
      select Sdate,GoodsID,shopid,venderid,deptid,costtaxrate,qty,costvalue,NcostValue,
          PrevQty,PrevValue,NPrevValue,CloseQty,CloseCostV,NCloseCostV
        from #TMP_Stock1050
        order by sdate,GoodsID,shopid,venderid,deptid,costtaxrate;
    open cur_stock;
    fetch next from cur_stock into @Sdate1,@GoodsID1,@shopid1,
        @venderid1,@deptid1,@costtaxrate1,@qty1,@costvalue1,@NcostValue1,
        @PrevQty1,@PrevValue1,@NPrevValue1,@CloseQty1,@CloseCostV1,@NCloseCostV1;
    if @@fetch_status=0 begin
      while (1=1) begin
        --������ĩ���
        update #TMP_Stock1050 
          set CloseQty=PrevQty+Qty,
              CloseCostV=PrevValue+CostValue,
              NCloseCostV=NPrevValue+NcostValue
          where sdate=@sdate1 and goodsid=@goodsid1
            and shopid=@shopid1 and venderid=@venderid1
            and deptid=@deptid1 and costtaxrate=@costtaxrate1;
        select @Err=@@Error,@BreakPoint=42460105,@msg='ȡ��ĩ������!';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
        select @CloseQty1=CloseQty,@CloseCostV1=CloseCostV,@NCloseCostV1=NCloseCostV
          from #TMP_Stock1050
          where sdate=@sdate1 and goodsid=@goodsid1
            and shopid=@shopid1 and venderid=@venderid1
            and deptid=@deptid1 and costtaxrate=@costtaxrate1;
        select @Err=@@Error,@BreakPoint=42460110,@msg='������ĩ������!';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;            
        fetch next from cur_stock into @Sdate2,@GoodsID2,@shopid2,
            @venderid2,@deptid2,@costtaxrate2,@qty2,@costvalue2,@NcostValue2,
            @PrevQty2,@PrevValue2,@NPrevValue2,@CloseQty2,@CloseCostV2,@NCloseCostV2;
        if @@fetch_status!=0 break;
        --�����������������������¶�@count��0������������ת��WHILEѭ����ʼ
        if (@goodsid1<>@goodsid2 or @shopid1<>@shopid2 
            or @venderid1<>@venderid2 or @costtaxrate1<>@costtaxrate2) begin
          select @sdate1=@sdate2,@goodsid1=@goodsid2,@shopid1=@shopid2;
          select @venderid1=@venderid2,@deptid1=@deptid2,@costtaxrate1=@costtaxrate2;
        end
        else begin
          --��ͬһ������
          --����ÿ����¼�ڳ����=������¼����ĩ���
          update #TMP_Stock1050 
            set PrevQty=@CloseQty1,
                PrevValue=@CloseCostV1,
                NPrevValue=@NCloseCostV1
            where sdate=@sdate2 and goodsid=@goodsid2
              and shopid=@shopid2 and venderid=@venderid2
              and deptid=@deptid2 and costtaxrate=@costtaxrate2; 
          select @Err=@@Error,@BreakPoint=42460110,@msg='ȡ�ڳ�������!';
          if (@Err is null) or (@Err!=0)  goto ErrHandle;          
          --���±���  
          select @sdate1=@sdate2,@goodsid1=@goodsid2,@shopid1=@shopid2;
          select @venderid1=@venderid2,@deptid1=@deptid2,@costtaxrate1=@costtaxrate2;
          select @CloseQty1=@CloseQty2,@CloseCostV1=@CloseCostV2,@NCloseCostV1=@NCloseCostV2
          select @PrevQty1=@PrevQty2,@PrevValue1=@PrevValue2,@NPrevValue1=@NPrevValue2;
        end;
      end;
    end;
    close cur_stock;
    deallocate cur_stock;
  --�ش�����
  insert into #tmp_stock1040 select * from #tmp_stock1050;
  select @Err=@@Error,@BreakPoint=42460120,@msg='�ش����ݳ���!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;  
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO


-----------------------------------------------------------------
--SP_RPTBase1001		��Ʒ�����溬˰�ձ���
--����������
--���أ���־0=�ɹ�		�ϵ��(424600xx)
--��	
--������
--�㷨��
--�������Խ� 2003-10-30 15:40
--�޸ģ��Խ� 2003-12-15 11:45 ����ҵ����Ͻ���cost
--�޸ģ��Խ� 2003-12-15 11:49 �����������-1�������㹫ʽ
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.SP_RPTBase1001') and type = 'P')
  drop procedure dbo.SP_RPTBase1001
GO
create procedure SP_RPTBase1001 @Begindate datetime,@EndDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20031030_01,Last Mender:Jeffrey Zhao
-----------------------------------------------------------------
AS Begin
  declare @Err		int;
  declare @BreakPoint	int;
  declare @tempflag	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @i int;
  declare @tmpdate datetime;
  declare @MonthID int;
  declare @tablename char(255);
  declare @tmpstr1 char(4);
  declare @tmpstr2 char(2);
  declare @goodsid int;
  declare @shopid char(4);
  declare @Venderid int;
  declare @deptid int;
  declare @CostTaxRate dec(5,2);
  declare @RJDate datetime;
  
  --declare @StockLackRule	int;		
    --��治��Ĵ���ģʽ(0=�ҵ� 1=������� 2=ʹ��Ĭ�Ϲ�Ӧ�̸������ 3=ʹ�����⹩Ӧ�̸������)
  
  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @tempflag=0;
  select @BreakPoint = 42460001;
  if @begindate>@enddate begin
    select @msg='��ʼ���ڱ���С�ڵ��ڽ������ڣ�';
    goto ErrHandle;
  end;  
  --select @StockLackRule=StockLackRule from StockRule where SheetType=101;
  --if @StockLackRule is null select @StockLackRule=1	--���۴������Ƿ����������沢��ת�ɱ�
  --if @StockLackRule !=0 select @StockLackRule=1

  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=42460002,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42460003,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  Create Table #TMP_Base1001
  (
    SDate		datetime	null,			--����
    GoodsID		int   		null,			--��Ʒ����
    ShopID		char(4)		null,			--���
    VenderID		int		null,			--��Ӧ�̱���
    DeptID		int   		null,			--�����
    CostTaxRate		dec(5,2)	default 0 null,		--����˰��%
    Cost		dec(12,4)	default 0 null,		--����������
    SaleQty		dec(16,4)	default 0 null,		--��������
    SaleCost		dec(16,4)	default 0 null,		--���ۺ�˰�ɱ����
    NSaleCost		dec(16,4)	default 0 null,		--������˰�ɱ����
    ReceiptQty		dec(16,4)	default 0 null,		--��������
    ReceiptValue	dec(16,4)	default 0 null,		--��˰���ս��
    NReceiptValue	dec(16,4)	default 0 null,		--��˰���ս��
    RetQty		dec(16,4)	default 0 null,		--�˻�����
    RetValue		dec(16,4)	default 0 null,		--��˰�˻����
    NRetValue		dec(16,4)	default 0 null,		--��˰�˻����
    TransferOutQty	dec(16,4)	default 0 null,		--��������
    TransferOutValue	dec(16,4)	default 0 null,		--��˰�������
    NTransferOutValue	dec(16,4)	default 0 null,		--��˰�������
    TransferInQty	dec(16,4)	default 0 null,		--��������
    TransferInValue	dec(16,4)	default 0 null,		--��˰������
    NTransferInValue	dec(16,4)	default 0 null,		--��˰������
    PDQty		dec(16,4)	default 0 null,		--�̵��������
    PDValue		dec(16,4)	default 0 null,		--��˰�̵�������
    NPDValue		dec(16,4)	default 0 null,		--��˰�̵�������
    LostQty		dec(16,4)	default 0 null,		--��������
    LostValue		dec(16,4)	default 0 null,		--��˰������
    NLostValue		dec(16,4)	default 0 null,		--��˰������
    WSaleQty		dec(16,4)	default 0 null,		--��������
    WSaleValue		dec(16,4)	default 0 null,		--��˰�������
    NWSaleValue		dec(16,4)	default 0 null,		--��˰�������
    UseQty		dec(16,4)	default 0 null,		--��������
    UseValue		dec(16,4)	default 0 null,		--��˰���ý��
    NUseValue		dec(16,4)	default 0 null,		--��˰���ý��
    AdjustQty		dec(16,4)	default 0 null,		--������������(���θ���)
    AdjustValue		dec(16,4)	default 0 null,		--��˰�����������(��������)
    NAdjustValue	dec(16,4)	default 0 null,		--��˰�����������(��������)
    PrevQty		dec(16,4)	default 0 null,		--�ڳ�����
    PrevValue		dec(16,4)	default 0 null,		--�ڳ���˰���
    NPrevValue		dec(16,4)	default 0 null,		--�ڳ���˰���
    CloseQty		dec(16,4)	default 0 null,		--�������
    CloseCostV		dec(16,4)	default 0 null,		--��˰�������
    NCloseCostV		dec(16,4)	default 0 null,		--��˰�������
  );
  
  select @tempflag=1;  
 
  select * into #Base1001_Wastebook from Wastebook where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'Wastebook',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42460007;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #Base1001tablename1
  while 1=1 begin
    select @i=charindex(',',tablesname) from #Base1001tablename1;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #Base1001tablename1;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #Base1001_Wastebook select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112)
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112) + '''';
       execute (@SQLString);
       break;
    end
    else begin
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #Base1001tablename1;      
       select @SQLString='insert into #Base1001_Wastebook select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112) + '''';
      execute (@SQLString);
      update #Base1001tablename1 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  drop table #Base1001tablename1;
  select @Err=@@Error,@Msg='ȡWastebook����ʱ����',@BreakPoint=42460008;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

--ȡ������������
    --���кš��������͡���������Ӧ�̡������Ʒ������˰�ʡ����ʷ��򡢷����������������
    --����˰�����������������˰��

--ȡ����������
  select @BreakPoint = 42460015;
  Insert into #TMP_Base1001(Sdate,ShopID,GoodsID,VenderID,DeptID,SaleQty,Cost,
      SaleCost,CostTaxRate,NSaleCost)
    select Sdate,ShopID,GoodsID,VenderID,DeptID,Qty,Cost,
        CostValue,TaxRate,CostValue-CostTaxValue
    from #Base1001_Wastebook where sheettype=101;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
--����ͳ��

  --����
  select @BreakPoint = 42460025
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,ReceiptQty,ReceiptValue,NReceiptValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,Qty,CostValue,(CostValue-CostTaxValue),Cost 
	from #Base1001_Wastebook where SheetType=2301
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --�˻�
  select @BreakPoint = 42460026
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,RetQty,RetValue,NRetValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,(Directflag*Qty),(Directflag*CostValue),(Directflag*(CostValue-CostTaxValue)),Cost 
	from #Base1001_Wastebook where SheetType=2323
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --���������͡�������
  select @BreakPoint = 42460027
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,TransferOutQty,TransferOutValue,NTransferOutValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,Qty,CostValue,(CostValue-CostTaxValue),Cost 
	from #Base1001_Wastebook where SheetType in (2332,2342) and DirectFlag=-1   --1-->-1
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --���루���䡢������
  select @BreakPoint = 42460028
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,TransferInQty,TransferInValue,NTransferInValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,Qty,CostValue,(CostValue-CostTaxValue),Cost 
	from #Base1001_Wastebook where SheetType in (2332,2342) and DirectFlag=1  --  -1-->1
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --�̵�
  select @BreakPoint = 42460028
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,PDQty,PDValue,NPDValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,(Directflag*Qty),(Directflag*CostValue),(Directflag*(CostValue-CostTaxValue)),Cost 
	from #Base1001_Wastebook where SheetType=2444
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --����
  select @BreakPoint = 42460029
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,LostQty,LostValue,NLostValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,Qty,CostValue,(CostValue-CostTaxValue),Cost 
	from #Base1001_Wastebook where SheetType=2413
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --����
  select @BreakPoint = 42460030
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,WSaleQty,WSaleValue,NWSaleValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,(Directflag*Qty),(Directflag*CostValue),(Directflag*(CostValue-CostTaxValue)),Cost 
	from #Base1001_Wastebook where SheetType=2451
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --����
  select @BreakPoint = 42460031
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,UseQty,UseValue,NUseValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,Qty,CostValue,(CostValue-CostTaxValue),Cost 
	from #Base1001_Wastebook where SheetType in (2423,2472,2473)	--�������á���Ӧ�����á��ӹ�����
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --��������
  select @BreakPoint = 42460032
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,AdjustQty,AdjustValue,NAdjustValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,(DirectFlag*Qty),(DirectFlag*CostValue),(Directflag*(CostValue-CostTaxValue)),Cost 
	from #Base1001_Wastebook   --����,�˻�,����,����,�̵�,����,����,����(��������Ӧ�̡��ӹ�),����,������
	where SheetType not in (2301,2323,2332,2342,2444,2413,2451,2423,2472,2473,101,102)
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --�ڳ���ĩ���
  select @tmpdate=dateadd(mm,-1,@begindate);
  select @MonthID=Year(@tmpdate)*100+Month(@tmpdate);
  --��ʱ�ڳ�����
  Create Table #TMP_Stock1001
  (
    GoodsID		int   		null,			--��Ʒ����
    ShopID		char(4)		null,			--���
    VenderID		int		null,			--��Ӧ�̱���
    DeptID		int   		null,			--�����
    CostTaxRate		dec(5,2)	default 0 null,		--����˰��%
    Qty			dec(16,4)	default 0 null,		--����
    CostValue		dec(16,4)	default 0 null,		--��˰�ɱ����
    NCostValue		dec(16,4)	default 0 null,		--��˰�ɱ����
  );
  select @Err=@@Error,@Msg='����ʱ�����',@BreakPoint=42460040;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --ͳ����Ʒ��
  insert into #TMP_Stock1001
    select goodsid,shopid,venderid,deptid,Taxrate,0,0,0 
      from #Base1001_Wastebook
      group by goodsid,shopid,venderid,deptid,Taxrate
  select @Err=@@Error,@Msg='ͳ����Ʒ������',@BreakPoint=42460042;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;      
  --ͳ�������ڳ����
  insert into #TMP_Stock1001
    select goodsid,shopid,Venderid,ManageDeptID,Taxrate,qty,costvalue,CostValue-TaxValue 
      from RPT_VenderStockMonth 
      where monthid=@MonthID;
  select @Err=@@Error,@Msg='ͳ�������ڳ�������',@BreakPoint=42460044;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;            
  --ͳ�Ʊ����ڳ����
  --ȡ���³�����ѯ��ʼ���ڵĿ��
  select @RJDate=RJDate from rjProc where ID=8000;
  select @tmpstr1=cast(Year(@begindate) as char(4));
  select @tmpstr2=cast(Month(@begindate) as char(2));
  if len(@tmpstr2)=1 select @tmpstr2='0'+@tmpstr2;
  if Month(@begindate)=Month(@RJDate) --Month(getdate())
    select @tablename='Wastebook';
  else begin
    select @tablename='Wastebook'+@tmpstr1+@tmpstr2;
  end;
  select * into #Base1001_Wastebook_Stock from wastebook where 1=2;
  select @sqlstring='insert into #Base1001_Wastebook_Stock select * from '
      + ltrim(rtrim(@tablename))
      + ' where convert(char(8),sdate,112)<'''
      + convert(char(8),@begindate,112) + ''''
      + ' and convert(char(8),sdate,112)>='''
      + ltrim(rtrim(@tmpstr1+@tmpstr2+'01')) + '''';
  execute (@sqlstring);
  select @Err=@@Error,@Msg='ȡ���³�����ѯ��ʼ���ڵĿ�����',@BreakPoint=42460046;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  --ȡ��������������������˰��  
  insert into #TMP_Stock1001
    select goodsid,shopid,venderid,deptid,taxrate,
      sum(Qty*directflag) as CloseQty,sum(CostValue*Directflag),
      sum((CostValue-CostTaxValue)*Directflag)
    from #Base1001_Wastebook_Stock
    group by goodsid,deptid,shopid,venderid,taxrate;
  select @Err=@@Error,@Msg='ȡ��������������������˰�����',@BreakPoint=42460047;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;     
  --ͳ��������Ʒ�ڳ����
  Create Table #TMP_Stock1002
  (
    GoodsID		int   		null,			--��Ʒ����
    ShopID		char(4)		null,			--���
    VenderID		int		null,			--��Ӧ�̱���
    DeptID		int   		null,			--�����
    CostTaxRate		dec(5,2)	default 0 null,		--����˰��%
    Qty			dec(16,4)	default 0 null,		--����
    CostValue		dec(16,4)	default 0 null,		--��˰�ɱ����
    NCostValue		dec(16,4)	default 0 null,		--��˰�ɱ����
  )
  insert into #TMP_Stock1002
    select goodsid,shopid,venderid,deptid,CostTaxrate,sum(qty),sum(costValue),sum(NCostValue)
      from #TMP_Stock1001
      group by shopid,goodsid,deptid,venderid,Costtaxrate;
  select @Err=@@Error,@Msg='ͳ��������Ʒ�ڳ�������',@BreakPoint=42460050;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;       
  drop table #Base1001_Wastebook_Stock;
  drop table #TMP_Stock1001;
  
  --������ͳ������
  Create Table #TMP_Stock1003
  ( 
    SDate		datetime	null,			--����
    GoodsID		int   		null,			--��Ʒ����
    ShopID		char(4)		null,			--���
    VenderID		int		null,			--��Ӧ�̱���
    DeptID		int   		null,			--�����
    CostTaxRate		dec(5,2)	default 0 null,		--����˰��%
    Qty			dec(12,3)	Not null,		--��������
    CostValue		dec(12,2)	Not null,		--��˰�������
    NCostValue		dec(12,2)	Not null,		--��˰�������
    PrevQty		dec(16,4)	default 0 null,		--�ڳ�����
    PrevValue		dec(16,4)	default 0 null,		--�ڳ���˰���
    NPrevValue		dec(16,4)	default 0 null,		--�ڳ���˰���
    CloseQty		dec(16,4)	default 0 null,		--�������
    CloseCostV		dec(16,4)	default 0 null,		--��˰�������
    NCloseCostV		dec(16,4)	default 0 null		--��˰�������  
  )
  insert into #TMP_Stock1003(Sdate,GoodsID,shopid,venderid,deptid,costtaxrate,qty,costvalue,NcostValue)
    select convert(char(8),Sdate,112),GoodsID,shopid,venderid,deptid,taxrate,
        sum(directflag*qty),sum(directflag*costvalue),sum(directflag*(costvalue-costtaxvalue))
      from #Base1001_Wastebook
      group by shopid,venderid,deptid,taxrate,GoodsID,sdate;
  select @Err=@@Error,@Msg='������ͳ�����ݳ���',@BreakPoint=42460052;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  --ͳ�Ƶ�һ�յ��ڳ��Ŀ��  
  select min(Sdate) as sdate,GoodsID,shopid,venderid,deptid,costtaxrate
      into #TMP_Stock1004
    from #TMP_Stock1003
    group by shopid,venderid,deptid,costtaxrate,GoodsID;
  select @Err=@@Error,@Msg='����ʱ�����',@BreakPoint=42460054;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #TMP_Stock1003 
  set PrevQty=b.Qty,
      PrevValue=b.CostValue,
      NPrevValue=b.NCostValue
  from #TMP_Stock1003 a,#TMP_Stock1002 b,#TMP_Stock1004 c
  where a.goodsid=b.goodsid and a.goodsid=c.goodsid
    and a.shopid=b.shopid and a.shopid=c.shopid
    and a.venderid=b.venderid and a.venderid=c.venderid
    and a.deptid=b.deptid and a.deptid=c.deptid
    and a.costtaxrate=b.costtaxrate and a.costtaxrate=c.costtaxrate
    and a.sdate=c.sdate;
  select @Err=@@Error,@Msg='ͳ�Ƶ�һ�յ��ڳ�������',@BreakPoint=42460056;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;     
  drop table #TMP_Stock1002;
  
  --������ʱ�����ڳ���ĩ���
  --��1040��������
  Create Table #TMP_Stock1050
  ( 
    SDate		datetime	null,			--����
    GoodsID		int   		null,			--��Ʒ����
    ShopID		char(4)		null,			--���
    VenderID		int		null,			--��Ӧ�̱���
    DeptID		int   		null,			--�����
    CostTaxRate		dec(5,2)	default 0 null,		--����˰��%
    Qty			dec(12,3)	Not null,		--��������
    CostValue		dec(12,2)	Not null,		--��˰�������
    NCostValue		dec(12,2)	Not null,		--��˰�������
    PrevQty		dec(16,4)	default 0 null,		--�ڳ�����
    PrevValue		dec(16,4)	default 0 null,		--�ڳ���˰���
    NPrevValue		dec(16,4)	default 0 null,		--�ڳ���˰���
    CloseQty		dec(16,4)	default 0 null,		--�������
    CloseCostV		dec(16,4)	default 0 null,		--��˰�������
    NCloseCostV		dec(16,4)	default 0 null		--��˰�������  
  )
  Create Table #TMP_Stock1040
  ( 
    SDate		datetime	null,			--����
    GoodsID		int   		null,			--��Ʒ����
    ShopID		char(4)		null,			--���
    VenderID		int		null,			--��Ӧ�̱���
    DeptID		int   		null,			--�����
    CostTaxRate		dec(5,2)	default 0 null,		--����˰��%
    Qty			dec(12,3)	Not null,		--��������
    CostValue		dec(12,2)	Not null,		--��˰�������
    NCostValue		dec(12,2)	Not null,		--��˰�������
    PrevQty		dec(16,4)	default 0 null,		--�ڳ�����
    PrevValue		dec(16,4)	default 0 null,		--�ڳ���˰���
    NPrevValue		dec(16,4)	default 0 null,		--�ڳ���˰���
    CloseQty		dec(16,4)	default 0 null,		--�������
    CloseCostV		dec(16,4)	default 0 null,		--��˰�������
    NCloseCostV		dec(16,4)	default 0 null		--��˰�������  
  )
  select @Err=@@Error,@Msg='����ʱ��ʱ����',@BreakPoint=42460058;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  --ʹ���α갴��������ڳ���ĩ���
  declare cur_goods cursor local for
  select GoodsID,shopid,venderid,deptid,costtaxrate
        from #TMP_Stock1004
        order by shopid,venderid,deptid,costtaxrate,GoodsID;
  open cur_goods;
  while (1=1) begin
    fetch next from cur_goods into @GoodsID,@shopid,@venderid,@deptid,@costtaxrate;
    if @@fetch_status!=0 break;
    --���1050����ʱ����
    delete from #tmp_stock1050;
    --ȡ����Ҫ������
    insert into #tmp_stock1050 
      select * from #tmp_stock1003
        where goodsid=@goodsid and shopid=@shopid and venderid=@venderid
          and deptid=@deptid and costtaxrate=@costtaxrate;
    select @Err=@@Error,@Msg='ȡ��Ҫ���������ʱ����',@BreakPoint=42460060;
    if (@Err is null) or (@Err!=0)  goto ErrHandle;           
    --����ȡ��������
    exec @err=SP_RPTBase1001_Stock;
    select @Msg='ִ�и����洢���̳���',@BreakPoint=42460062;
    if (@Err is null) or (@Err!=0)  goto ErrHandle;           
    
    --����Ѿ����������
    --delete from #tmp_stock1003
    --    where goodsid=@goodsid and shopid=@shopid and venderid=@venderid
    --      and deptid=@deptid and costtaxrate=@costtaxrate;
    select @Err=@@Error,@Msg='�����Ѿ���������ʱ����',@BreakPoint=42460064;
    if (@Err is null) or (@Err!=0)  goto ErrHandle;               
  end;--ѭ����������ʱ1040�е�����Ϊ����Ҫ��
  close cur_goods;
  deallocate cur_goods;
  drop table #tmp_stock1050;
  drop table #tmp_stock1003;
  drop table #tmp_stock1004;
  select @Err=@@Error,@Msg='drop��ʱ�����',@BreakPoint=42460066;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;           
  --����ͳ����ʱ��
  Insert into #TMP_Base1001 (SDate,GoodsID,ShopID,Venderid,deptid,CostTaxRate,
      PrevQty,PrevValue,NPrevValue,CloseQty,CloseCostV,NCloseCostV)
    select SDate,GoodsID,ShopID,Venderid,deptid,CostTaxRate,
      PrevQty,PrevValue,NPrevValue,CloseQty,CloseCostV,NCloseCostV
    from #tmp_stock1040;
  select @Err=@@Error,@Msg='ͳ���ڳ���ĩ�������ʱ����',@BreakPoint=42460070;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;           
  drop table #tmp_stock1040;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  
--����RPT_Base1001(��Ʒ�����溬˰�ձ���)
  select @BreakPoint = 42460080
  delete from RPT_Base1001 where 1=1;
  insert into RPT_Base1001(SDate,GoodsID,ShopID,VenderID,DeptID,CostTaxRate,Cost,SaleQty,
      SaleCost,NSaleCost,ReceiptQty,ReceiptValue,NReceiptValue,
      RetQty,RetValue,NRetValue,TransferOutQty,TransferOutValue,NTransferOutValue,
      TransferInQty,TransferInValue,NTransferInValue,
      PDQty,PDValue,NPDValue,LostQty,LostValue,NLostValue,
      WSaleQty,WSaleValue,NWSaleValue,UseQty,UseValue,NUseValue,
      AdjustQty,AdjustValue,NAdjustValue,
      PrevQty,PrevValue,NPrevValue,CloseQty,CloseCostV,NCloseCostV)
    select SDate,GoodsID,ShopID,VenderID,DeptID,CostTaxRate,max(cost),SUM(SaleQty),
        SUM(SaleCost),SUM(NSaleCost),SUM(ReceiptQty),SUM(ReceiptValue),SUM(NReceiptValue),
        SUM(RetQty),SUM(RetValue),SUM(NRetValue),SUM(TransferOutQty),SUM(TransferOutValue),SUM(NTransferOutValue),
        SUM(TransferInQty),SUM(TransferInValue),SUM(NTransferInValue),
	SUM(PDQty),SUM(PDValue),SUM(NPDValue),SUM(LostQty),SUM(LostValue),SUM(NLostValue),
	-1*SUM(WSaleQty),-1*SUM(WSaleValue),-1*SUM(NWSaleValue),SUM(UseQty),SUM(UseValue),SUM(NUseValue),
	SUM(AdjustQty),SUM(AdjustValue),SUM(NAdjustValue),
	sum(PrevQty),sum(PrevValue),sum(NPrevValue),sum(CloseQty),sum(CloseCostV),sum(NCloseCostV)
      from #TMP_Base1001
      group by SDate,GoodsID,ShopID,VenderID,DeptID,CostTaxRate;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  drop table #TMP_Base1001;
  drop table #Base1001_Wastebook;

  return 0;

ErrHandle:
  if @tempflag = 1 drop table #TMP_Base1001;
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go




-----------------------------------------------------------------
--TL_GetWeekDateBound		�����ܺ�@WeekID�����ظ��ܵĿ�ʼ�ͽ�������
--�������ܺ�
--���أ�@BeginDate��@EndDate�ֱ�Ϊ��ʼ�ͽ�������
--���������� 2003.11.19
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.TL_GetWeekDateBound') and type = 'P')
  drop procedure dbo.TL_GetWeekDateBound
GO

create procedure TL_GetWeekDateBound @WeekID int,@BeginDate datetime output,@EndDate datetime output
WITH ENCRYPTION
AS Begin
  SET NOCOUNT ON

  declare @year char(4),@id int
  select @year=left(cast(@WeekID as char(6)),4)
  select @id=cast(right(cast(@WeekID as char(6)),2) as int)
  select @EndDate=cast(@year+'-1-1' as datetime)+@id*7-(datepart(weekday,@Year+'-1-1')-1)
  select @BeginDate=@EndDate-6
  
  return 0
end
GO

-----------------------------------------------------------------
--TL_GetNextWeekID		��ȡָ���ܺ�@WeekID�����ܺ�
--�������ܺ�
--���أ������ܺ�
--���������� 2003.11.19
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.TL_GetNextWeekID') and type = 'P')
  drop procedure dbo.TL_GetNextWeekID
GO

create procedure TL_GetNextWeekID @WeekID int,@NextWeekID int output
WITH ENCRYPTION
AS Begin
  SET NOCOUNT ON
  
  declare @BeginDate datetime,@EndDate datetime;
  exec TL_GetWeekDateBound @WeekID,@BeginDate output,@EndDate output;
  select @BeginDate=@BeginDate+7;
  select @NextWeekID=DatePart(yyyy,@BeginDate) * 100 + DatePart(week,@BeginDate);
end
GO

-----------------------------------------------------------------
--TL_GetPrevWeekID		��ȡָ���ܺ�@WeekID�����ܺ�
--�������ܺ�
--���أ������ܺ�
--���������� 2003.11.19
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.TL_GetPrevWeekID') and type = 'P')
  drop procedure dbo.TL_GetPrevWeekID
GO

create procedure TL_GetPrevWeekID @WeekID int,@PreWeekID int output
WITH ENCRYPTION
AS Begin
  SET NOCOUNT ON

  declare @BeginDate datetime,@EndDate datetime;
  exec TL_GetWeekDateBound @WeekID,@BeginDate output,@EndDate output;
  select @BeginDate=@BeginDate-7;
  select @PreWeekID=DatePart(yyyy,@BeginDate) * 100 + DatePart(week,@BeginDate);
end;
GO

-----------------------------------------------------------------
--RP_GetWeekSaleToTable		��ȡָ���ܺ�@WeekID���ڴ�����һ��������ÿ������
--	�ֱ������10=ʵ�����ۡ�20=�ۿۡ�30=���۳ɱ���40=����ë����50=ë����
--		60=�͵�����70=�͵���
--��������š��ܺš���#T_WeekSale���̶�������
--���أ�0=�ɹ�
--���������� 2003.11.19
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.RP_GetWeekSaleToTable') and type = 'P')
  drop procedure dbo.RP_GetWeekSaleToTable
GO

create procedure RP_GetWeekSaleToTable @ShopID char(4),@WeekID int
WITH ENCRYPTION
AS Begin
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @SQL 		varchar(255);
  declare @I		int;
  declare @BeginDate datetime,@EndDate datetime;
  declare @SaleValue dec(15,6),@DiscValue dec(15,6),@CostValue dec(15,6);
  declare @GainValue dec(15,6),@GainRate dec(15,6),@TradeNumber dec(15,6),@TradePrice dec(15,6);
  declare @Sale7 dec(15,6),@Sale5 dec(15,6),@Sale2 dec(15,6);
  declare @Gain7 dec(15,6),@Gain5 dec(15,6),@Gain2 dec(15,6);
  declare @Trad7 dec(15,6),@Trad5 dec(15,6),@Trad2 dec(15,6);
  
  SET NOCOUNT ON

  exec TL_GetWeekDateBound @WeekID,@BeginDate output,@EndDate output;
  select @BreakPoint=429001,@Err=@@error,@Msg='ִ��TL_GetWeekDateBound����';
  if @Err != 0 Goto ErrHandle;
  
  --д�����г�ʼ����
  insert into #T_WeekSale(WeekID,RowType) values (@WeekID,10);	--ʵ������
  insert into #T_WeekSale(WeekID,RowType) values (@WeekID,20);	--�ۿ�
  insert into #T_WeekSale(WeekID,RowType) values (@WeekID,30);	--�ɱ�
  insert into #T_WeekSale(WeekID,RowType) values (@WeekID,40);	--ë��
  insert into #T_WeekSale(WeekID,RowType) values (@WeekID,50);	--ë����
  insert into #T_WeekSale(WeekID,RowType) values (@WeekID,60);	--�͵���
  insert into #T_WeekSale(WeekID,RowType) values (@WeekID,70);	--�͵���
  select @BreakPoint=429011,@Err=@@error,@Msg='д#T_WeekSale�����';
  if @Err != 0 Goto ErrHandle;
  
  select @I=1;
  while @BeginDate<=@EndDate
  BEGIN
    select @SaleValue=0,@DiscValue=0,@CostValue=0,@GainValue=0,@GainRate=0,@TradeNumber=0,@TradePrice=0;  
    select @SaleValue=SaleValue-DiscValue,@DiscValue=DiscValue,
        @CostValue=CostValue,@GainValue=SaleValue-DiscValue-CostValue,
        @GainRate=(SaleValue-DiscValue-CostValue)/(SaleValue-DiscValue)*100,
        @TradeNumber=TradeNumber,
        @TradePrice=case when TradeNumber=0 then 0 else (SaleValue-DiscValue)/TradeNumber end
      from RPT_SaleShop with (nolock)
      where convert(char(8),SDate,112)=@BeginDate and ShopID=@ShopID
    select @BreakPoint=429021,@Err=@@error,@Msg='��RPT_SaleShop��ȡ���ݴ���';
    if @Err != 0 Goto ErrHandle;
    
    select @SQL='update #T_WeekSale set Day' + cast(@I as char(1)) + '=' + cast(@SaleValue as char(15))
       + ' where RowType=10 and WeekID='+cast(@WeekID as char(6));
    Exec(@SQL);
    select @BreakPoint=429022,@Err=@@error,@Msg='д�������ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekSale set Day' + cast(@I as char(2)) + '=' + cast(@DiscValue as char(15))
       + ' where RowType=20 and WeekID='+cast(@WeekID as char(6));
    Exec(@SQL);
    select @BreakPoint=429023,@Err=@@error,@Msg='д�ۿ����ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekSale set Day' + cast(@I as char(3)) + '=' + cast(@CostValue as char(15))
       + ' where RowType=30 and WeekID='+cast(@WeekID as char(6));
    Exec(@SQL);
    select @BreakPoint=429024,@Err=@@error,@Msg='д�ɱ����ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekSale set Day' + cast(@I as char(4)) + '=' + cast(@GainValue as char(15))
       + ' where RowType=40 and WeekID='+cast(@WeekID as char(6));
    Exec(@SQL);
    select @BreakPoint=429025,@Err=@@error,@Msg='дë�����ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekSale set Day' + cast(@I as char(5)) + '=' + cast(@GainRate as char(15))
       + ' where RowType=50 and WeekID='+cast(@WeekID as char(6));
    Exec(@SQL);
    select @BreakPoint=429026,@Err=@@error,@Msg='дë�������ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekSale set Day' + cast(@I as char(5)) + '=' + cast(@TradeNumber as char(15))
       + ' where RowType=60 and WeekID='+cast(@WeekID as char(6));
    Exec(@SQL);
    select @BreakPoint=429027,@Err=@@error,@Msg='д�͵������ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekSale set Day' + cast(@I as char(5)) + '=' + cast(@TradePrice as char(15))
       + ' where RowType=70 and WeekID='+cast(@WeekID as char(6));
    Exec(@SQL);
    select @BreakPoint=429028,@Err=@@error,@Msg='д�͵������ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @BeginDate=DateAdd(day,1,@BeginDate);
    select @I=@I+1;    
  END
  
  --��ֵ�����ۡ��ۿۡ��ɱ���ë�����͵�������ƽ��ֵ��˫����ֵ
  update #T_WeekSale set Total7=Day1+Day2+Day3+Day4+Day5+Day6+Day7,
      Total5=Day1+Day2+Day3+Day4+Day5,Total2=Day6+Day7
    where WeekID=@WeekID and RowType in (10,20,30,40,60);
  select @BreakPoint=429081,@Err=@@error,@Msg='����ϼ�ֵ����';
  if @Err != 0 Goto ErrHandle;
  
  --����ƽ��ֵ
  update #T_WeekSale set Avg7=Total7/7,Avg5=Total5/5,Avg2=Total2/2
    where WeekID=@WeekID and RowType in (10,20,30,40,60);
  select @BreakPoint=429082,@Err=@@error,@Msg='����ƽ��ֵ����';
  if @Err != 0 Goto ErrHandle;
  
  --����ë������͵���
  select @Sale7=Total7,@Sale5=Total5,@Sale2=Total2
    from #T_WeekSale where WeekID=@WeekID and RowType=10;	--����
  select @Gain7=Total7,@Gain5=Total5,@Gain2=Total2
    from #T_WeekSale where WeekID=@WeekID and RowType=40;	--ë��    
  select @Trad7=Total7,@Trad5=Total5,@Trad2=Total2
    from #T_WeekSale where WeekID=@WeekID and RowType=60;	--�͵���

  --ë����
  update #T_WeekSale set Total7=case when @Sale7=0 then 0 else @Gain7/@Sale7*100 end,
      Total5=case when @Sale5=0 then 0 else @Gain5/@Sale5*100 end,
      Total2=case when @Sale2=0 then 0 else @Gain2/@Sale2*100 end
    where WeekID=@WeekID and RowType=50;
  select @BreakPoint=429083,@Err=@@error,@Msg='����ë���ʴ���';
  if @Err != 0 Goto ErrHandle;
  update #T_WeekSale set Avg7=Total7,Avg5=Total5,Avg2=Total2 where WeekID=@WeekID and RowType=50;
  
  --�͵���
  update #T_WeekSale set Total7=case when @Trad7=0 then 0 else @Sale7/@Trad7 end,
      Total5=case when @Trad5=0 then 0 else @Sale5/@Trad5 end,
      Total2=case when @Trad2=0 then 0 else @Sale2/@Trad2 end
    where WeekID=@WeekID and RowType=70;
  select @BreakPoint=429084,@Err=@@error,@Msg='����͵��۴���';
  if @Err != 0 Goto ErrHandle;
  update #T_WeekSale set Avg7=Total7,Avg5=Total5,Avg2=Total2 where WeekID=@WeekID and RowType=70;

  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--RP_GetWeekDeptSaleToTable		��ȡָ���ܺ�@WeekID���ڴ�����һ��������ÿ������
--	�ֱ������10=ʵ�����ۡ�20=�ۿۡ�30=���۳ɱ���40=����ë����50=ë����
--		60=�͵�����70=�͵���
--��������š��ܺš���#T_WeekSale���̶�������
--���أ�0=�ɹ�
--���������� 2003.11.20
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.RP_GetWeekDeptSaleToTable') and type = 'P')
  drop procedure dbo.RP_GetWeekDeptSaleToTable
GO

create procedure RP_GetWeekDeptSaleToTable @ShopID char(4),@WeekID int,@ManageDeptID int=null
WITH ENCRYPTION
AS Begin
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @SQL 		varchar(255);
  declare @I		int;
  declare @BeginDate datetime,@EndDate datetime;
  
  SET NOCOUNT ON

  exec TL_GetWeekDateBound @WeekID,@BeginDate output,@EndDate output;
  select @BreakPoint=429001,@Err=@@error,@Msg='ִ��TL_GetWeekDateBound����';
  if @Err != 0 Goto ErrHandle;
 
  select @I=10;
  while @I<=70 
  BEGIN
    if @ManageDeptID is null
      insert into #T_WeekDeptSale(WeekID,ManageDeptID,RowType)
        select @WeekID,ManageDeptID,@I
          from RPT_SaleGroup with (nolock)
          where convert(char(8),SDate,112) between @BeginDate and @EndDate
          group by ManageDeptID;
    else
      insert into #T_WeekDeptSale(WeekID,ManageDeptID,RowType)
        values(@WeekID,@ManageDeptID,@I);
    select @I=@I+10;
  END
  select @BreakPoint=429011,@Err=@@error,@Msg='д��T_WeekDeptSale����';
  if @Err != 0 Goto ErrHandle;
  
  select @I=1;
  while @BeginDate<=@EndDate
  BEGIN    
    select @WeekID WeekID,ManageDeptID,sum(SaleValue-DiscValue) SaleValue,sum(DiscValue) DiscValue,
        sum(CostValue) CostValue,sum(SaleValue-DiscValue-CostValue) GainValue
      into #T_WeekDeptSale_1 from RPT_SaleGroup with (nolock)
      where convert(char(8),SDate,112)=@BeginDate and ShopID=@ShopID
      group by ManageDeptID;
    select @BreakPoint=429021,@Err=@@error,@Msg='��RPT_SaleGroup��ȡ���ݴ���';
    if @Err != 0 Goto ErrHandle;
    
    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.SaleValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=10 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429022,@Err=@@error,@Msg='д�������ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.DiscValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=20 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429023,@Err=@@error,@Msg='д�ۿ����ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.CostValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=30 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429024,@Err=@@error,@Msg='д�ɱ����ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.GainValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=40 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429025,@Err=@@error,@Msg='дë�����ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + 
       '=case when b.SaleValue=0 then 0 else b.GainValue/b.SaleValue*100 end' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=50 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429026,@Err=@@error,@Msg='дë�������ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.TradeNumber ' +
       ' from #T_WeekDeptSale a,RPT_CashManageDept b ' + 
       ' where a.RowType=60 and a.ManageDeptID=b.SGroupID and b.ShopID=''' + @ShopID + '''' +
       ' and b.SDate=' + convert(char(8),@BeginDate,112);
    Exec(@SQL);
    select @BreakPoint=429027,@Err=@@error,@Msg='д�͵������ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.TradePrice ' +
       ' from #T_WeekDeptSale a,RPT_CashManageDept b ' + 
       ' where a.RowType=70 and a.ManageDeptID=b.SGroupID and b.ShopID=''' + @ShopID + '''' +
       ' and b.SDate=' + convert(char(8),@BeginDate,112);
    Exec(@SQL);
    select @BreakPoint=429028,@Err=@@error,@Msg='д�͵������ݴ���';
    if @Err != 0 Goto ErrHandle;

    drop table #T_WeekDeptSale_1;

    select @BeginDate=DateAdd(day,1,@BeginDate);
    select @I=@I+1;    
  END  
  
  --��ֵ�����ۡ��ۿۡ��ɱ���ë�����͵�������ƽ��ֵ��˫����ֵ
  update #T_WeekDeptSale set Total7=Day1+Day2+Day3+Day4+Day5+Day6+Day7,
      Total5=Day1+Day2+Day3+Day4+Day5,Total2=Day6+Day7
    where WeekID=@WeekID and RowType in (10,20,30,40,60);
  select @BreakPoint=429081,@Err=@@error,@Msg='����ϼ�ֵ����';
  if @Err != 0 Goto ErrHandle;
  
  --����ƽ��ֵ
  update #T_WeekDeptSale set Avg7=Total7/7,Avg5=Total5/5,Avg2=Total2/2
    where WeekID=@WeekID and RowType in (10,20,30,40,60);
  select @BreakPoint=429082,@Err=@@error,@Msg='����ƽ��ֵ����';
  if @Err != 0 Goto ErrHandle;
  
  --����ë������͵���
  create table #T_WeekDeptSale_2(
    ManageDeptID int,
    Sale7	dec(15,6),
    Sale5	dec(15,6),
    Sale2	dec(15,6),
    Gain7	dec(15,6),
    Gain5	dec(15,6),
    Gain2	dec(15,6),
    Trad7	dec(15,6),
    Trad5	dec(15,6),
    Trad2	dec(15,6)
  );
  insert into #T_WeekDeptSale_2
  select ManageDeptID,Total7,Total5,Total2,0,0,0,0,0,0
    from #T_WeekDeptSale where RowType=10;			--����
  update #T_WeekDeptSale_2 set Gain7=b.Total7,Gain5=b.Total5,Gain2=b.Total2
    from #T_WeekDeptSale_2 a,#T_WeekDeptSale b
    where a.ManageDeptID=b.ManageDeptID and b.RowType=40;	--ë��
  update #T_WeekDeptSale_2 set Trad7=b.Total7,Trad5=b.Total5,Trad2=b.Total2
    from #T_WeekDeptSale_2 a,#T_WeekDeptSale b
    where a.ManageDeptID=b.ManageDeptID and b.RowType=60;	--�͵���
    
  --ë����
  update #T_WeekDeptSale set Total7=case when b.Sale7=0 then 0 else b.Gain7/b.Sale7*100 end,
      Total5=case when b.Sale5=0 then 0 else b.Gain5/b.Sale5*100 end,
      Total2=case when b.Sale2=0 then 0 else b.Gain2/b.Sale2*100 end
    from #T_WeekDeptSale a,#T_WeekDeptSale_2 b
    where a.ManageDeptID=b.ManageDeptID and a.RowType=50;
  select @BreakPoint=429083,@Err=@@error,@Msg='����ë���ʴ���';
  if @Err != 0 Goto ErrHandle;
  update #T_WeekDeptSale set Avg7=Total7,Avg5=Total5,Avg2=Total2 where WeekID=@WeekID and RowType=50;
  
  --�͵���
  update #T_WeekDeptSale set Total7=case when b.Trad7=0 then 0 else b.Sale7/b.Trad7 end,
      Total5=case when b.Trad5=0 then 0 else b.Sale5/b.Trad5 end,
      Total2=case when b.Trad2=0 then 0 else b.Sale2/b.Trad2 end
    from #T_WeekDeptSale a,#T_WeekDeptSale_2 b
    where a.ManageDeptID=b.ManageDeptID and a.RowType=70;
  select @BreakPoint=429084,@Err=@@error,@Msg='����͵��۴���';
  if @Err != 0 Goto ErrHandle;
  update #T_WeekDeptSale set Avg7=Total7,Avg5=Total5,Avg2=Total2 where WeekID=@WeekID and RowType=70;

  drop table #T_WeekDeptSale_2;
  
  return 0;

ErrHandle:
  if exists (select * from tempdb..sysobjects 
	where id = object_id(N'tempdb..#T_WeekDeptSale_1') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
	drop table #T_WeekDeptSale_1
  if exists (select * from tempdb..sysobjects 
	where id = object_id(N'tempdb..#T_WeekDeptSale_2') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
	drop table #T_WeekDeptSale_2
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--rp_GetMonthDataToTable	��ȡָ����ʼ�ͽ��������ڣ����±�����ݵ���ʱ��
--���������ڶΡ��±����ƣ������·ݵ���ʽ�����ƣ�������ɸѡ����
--���أ���־0=�ɹ���#+@TableNameΪ�������ݵ���ʱ��	�ϵ��(429999XX)
--��	
--������
--�㷨��
--����������   2003.11.13
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_GetMonthDataToTable') and sysstat & 0xf = 4)
    drop procedure dbo.rp_GetMonthDataToTable
GO

create procedure dbo.rp_GetMonthDataToTable @BeginDate datetime,@EndDate datetime,
	@TableName char(63),@SCond char(200)
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031113_01,Last Mender:VL
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);

  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;
  
  select @BreakPoint=42999900;
  exec tl_gettablesname @begindate,@enddate,@TableName,@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42999901;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tables as tablesname into #423410tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #423410tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #423410tmp;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #' +@TableName + ' select * from '
           + ltrim(rtrim(@subTableName))
           + ' with (nolock) where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and ' + @SCond;
       execute (@SQLString);
       select @Err=@@Error,@Msg='�������ݳ���',@BreakPoint=42999911;
       if (@Err is null) or (@Err!=0)  goto ErrHandle;
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #423410tmp;
       select @SQLString='insert into #' + @TableName + ' select * from '
           + ltrim(rtrim(@subTableName))
           + ' with (nolock) where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and ' + @SCond;
       execute (@SQLString);
       select @Err=@@Error,@Msg='�������ݳ���',@BreakPoint=42999921;
       if (@Err is null) or (@Err!=0)  goto ErrHandle;
       update #423410tmp 
         set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
    end;
  end;

  drop table #423410tmp
  
  return 0;    
ErrHandle:  
  if @BreakPoint > 42999901 
    drop table #423410tmp
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--RP_GetWeekGoodsSaleToTable	��ȡָ���ܺ�@WeekID���ڴ�����һ��������ÿ������
--	�ֱ������10=ʵ�����ۡ�20=����������30=����ë����40=ë���ʡ�50=��������ռ��
--��������š��ܺš���Ʒ���롢��#T_WeekGoodsSale���̶�������
--���أ�0=�ɹ�
--���������� 2003.11.27
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.RP_GetWeekGoodsSaleToTable') and type = 'P')
  drop procedure dbo.RP_GetWeekGoodsSaleToTable
GO

create procedure RP_GetWeekGoodsSaleToTable @ShopID char(4),@WeekID int,@GoodsID int
WITH ENCRYPTION
AS Begin
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @SQL 		varchar(255);
  declare @I		int;
  declare @SCond	varchar(255);
  declare @BeginDate datetime,@EndDate datetime;
  
  SET NOCOUNT ON

  exec TL_GetWeekDateBound @WeekID,@BeginDate output,@EndDate output;
  select @BreakPoint=429001,@Err=@@error,@Msg='ִ��TL_GetWeekDateBound����';
  if @Err != 0 Goto ErrHandle;
 
  select @I=10;
  while @I<=50 
  BEGIN
    insert into #T_WeekGoodsSale(WeekID,GoodsID,RowType) values(@WeekID,@GoodsID,@I);
    select @I=@I+10;
  END
  select @BreakPoint=429011,@Err=@@error,@Msg='д��T_WeekGoodsSale����';
  if @Err != 0 Goto ErrHandle;
  
  --��ȡ����������
  select * into #RPT_Base0001 from RPT_Base0001 where 0=1;
  select @SCond='GoodsID='+cast(@GoodsID as char(6))+' and ShopID='''+@ShopID+'''';
  exec RP_GetMonthDataToTable @BeginDate,@EndDate,'RPT_Base0001',@SCond;
  select @BreakPoint=429012,@Err=@@error,@Msg='ִ��RP_GetMonthDataToTableʧ�ܣ�';
  if @Err != 0 Goto ErrHandle;
  
  select @I=1;
  while @BeginDate<=@EndDate
  BEGIN    
    select @WeekID WeekID,GoodsID,sum(SaleValue) SaleValue,sum(SaleQty) SaleQty,
        sum(SaleValue-SaleCost) GainValue
      into #T_WeekGoodsSale_1 from #RPT_Base0001
      where convert(char(8),SDate,112)=@BeginDate and ShopID=@ShopID
      group by GoodsID;
    select @BreakPoint=429021,@Err=@@error,@Msg='��ȡ���ݴ���';
    if @Err != 0 Goto ErrHandle;
    
    select @SQL='update #T_WeekGoodsSale set Day' + cast(@I as char(1)) + '=b.SaleValue ' +
       ' from #T_WeekGoodsSale a,#T_WeekGoodsSale_1 b ' + 
       ' where a.RowType=10 and a.WeekID=b.WeekID and a.GoodsID=b.GoodsID';
    Exec(@SQL);
    select @BreakPoint=429022,@Err=@@error,@Msg='д�������ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekGoodsSale set Day' + cast(@I as char(1)) + '=b.SaleQty ' +
       ' from #T_WeekGoodsSale a,#T_WeekGoodsSale_1 b ' + 
       ' where a.RowType=20 and a.WeekID=b.WeekID and a.GoodsID=b.GoodsID';
    Exec(@SQL);
    select @BreakPoint=429024,@Err=@@error,@Msg='д�����������ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekGoodsSale set Day' + cast(@I as char(1)) + '=b.GainValue ' +
       ' from #T_WeekGoodsSale a,#T_WeekGoodsSale_1 b ' + 
       ' where a.RowType=30 and a.WeekID=b.WeekID and a.GoodsID=b.GoodsID';
    Exec(@SQL);
    select @BreakPoint=429025,@Err=@@error,@Msg='дë�����ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekGoodsSale set Day' + cast(@I as char(1)) + 
       '=case when b.SaleValue=0 then 0 else b.GainValue/b.SaleValue*100 end' +
       ' from #T_WeekGoodsSale a,#T_WeekGoodsSale_1 b ' + 
       ' where a.RowType=40 and a.WeekID=b.WeekID and a.GoodsID=b.GoodsID';
    Exec(@SQL);
    select @BreakPoint=429026,@Err=@@error,@Msg='дë�������ݴ���';
    if @Err != 0 Goto ErrHandle;

    drop table #T_WeekGoodsSale_1;

    select @BeginDate=DateAdd(day,1,@BeginDate);
    select @I=@I+1;    
  END  
  
  --��ֵ�����ۡ�������ë������ƽ��ֵ��˫����ֵ
  update #T_WeekGoodsSale set Total7=Day1+Day2+Day3+Day4+Day5+Day6+Day7,
      Total5=Day1+Day2+Day3+Day4+Day5,Total2=Day6+Day7
    where WeekID=@WeekID and RowType in (10,20,30);
  select @BreakPoint=429081,@Err=@@error,@Msg='����ϼ�ֵ����';
  if @Err != 0 Goto ErrHandle;
  
  --����ƽ��ֵ
  update #T_WeekGoodsSale set Avg7=Total7/7,Avg5=Total5/5,Avg2=Total2/2
    where WeekID=@WeekID and RowType in (10,20,30);
  select @BreakPoint=429082,@Err=@@error,@Msg='����ƽ��ֵ����';
  if @Err != 0 Goto ErrHandle;
  
  --����ë������͵���
  create table #T_WeekGoodsSale_2(
    GoodsID 	int,
    Sale7	dec(15,6),
    Sale5	dec(15,6),
    Sale2	dec(15,6),
    Gain7	dec(15,6),
    Gain5	dec(15,6),
    Gain2	dec(15,6),
  );
  insert into #T_WeekGoodsSale_2
  select GoodsID,Total7,Total5,Total2,0,0,0
    from #T_WeekGoodsSale where RowType=10;			--����
  update #T_WeekGoodsSale_2 set Gain7=b.Total7,Gain5=b.Total5,Gain2=b.Total2
    from #T_WeekGoodsSale_2 a,#T_WeekGoodsSale b
    where a.GoodsID=b.GoodsID and b.RowType=30;	--ë��
    
  --ë����
  update #T_WeekGoodsSale set Total7=case when b.Sale7=0 then 0 else b.Gain7/b.Sale7*100 end,
      Total5=case when b.Sale5=0 then 0 else b.Gain5/b.Sale5*100 end,
      Total2=case when b.Sale2=0 then 0 else b.Gain2/b.Sale2*100 end
    from #T_WeekGoodsSale a,#T_WeekGoodsSale_2 b
    where a.GoodsID=b.GoodsID and a.RowType=40;
  select @BreakPoint=429083,@Err=@@error,@Msg='����ë���ʴ���';
  if @Err != 0 Goto ErrHandle;
  update #T_WeekGoodsSale set Avg7=Total7,Avg5=Total5,Avg2=Total2 where WeekID=@WeekID and RowType=40;
  
  drop table #T_WeekGoodsSale_2;
  
  --����������ռ��
  update a set 
      Day1=case when b.Total7=0 then 0 else b.Day1/b.Total7*100 end,
      Day2=case when b.Total7=0 then 0 else b.Day2/b.Total7*100 end,
      Day3=case when b.Total7=0 then 0 else b.Day3/b.Total7*100 end,
      Day4=case when b.Total7=0 then 0 else b.Day4/b.Total7*100 end,
      Day5=case when b.Total7=0 then 0 else b.Day5/b.Total7*100 end,
      Day6=case when b.Total7=0 then 0 else b.Day6/b.Total7*100 end,
      Day7=case when b.Total7=0 then 0 else b.Day7/b.Total7*100 end,
      Total2=case when b.Total7=0 then 0 else b.Total2/b.Total7*100 end,
      Total5=case when b.Total7=0 then 0 else b.Total5/b.Total7*100 end,
      Total7=case when b.Total7=0 then 0 else b.Total7/b.Total7*100 end,
      Avg2=case when b.Total7=0 then 0 else b.Total2/b.Total7*100 end,
      Avg5=case when b.Total7=0 then 0 else b.Total5/b.Total7*100 end,
      Avg7=case when b.Total7=0 then 0 else b.Total7/b.Total7*100 end
    from #T_WeekGoodsSale a,#T_WeekGoodsSale b
    where a.WeekID=b.WeekID and a.GoodsID=b.GoodsID and 
      a.RowType=50 and b.RowType=20
  
  return 0;

ErrHandle:
  if exists (select * from tempdb..sysobjects 
	where id = object_id(N'tempdb..#T_WeekGoodsSale_1') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
	drop table #T_WeekGoodsSale_1
  if exists (select * from tempdb..sysobjects 
	where id = object_id(N'tempdb..#T_WeekGoodsSale_2') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
	drop table #T_WeekGoodsSale_2
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--RP_GetWeekCashHour	��ȡָ���ܺ�@WeekID����һ������ÿ��ʱ�εĿ͵���
--��������š��ܺš���#T_WeekCashHour���̶�������
--���أ�0=�ɹ�
--���������� 2003.11.20
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('RP_GetWeekCashHour') and type = 'P')
  drop procedure RP_GetWeekCashHour
GO

create procedure RP_GetWeekCashHour @ShopID char(4),@WeekID int
WITH ENCRYPTION
AS Begin
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @SQL 		varchar(255);
  declare @I		int;
  declare @BeginDate datetime,@EndDate datetime;
  declare @Total7 int,@Total5 int,@Total2 int;
  declare @T7 int,@T5 int,@T2 int;
  
  SET NOCOUNT ON

  --����ʱ��
  insert into #T_WeekCashHour(WeekID,Hour)
    select @WeekID,SaleHour
    from RPT_CashHour
    group by SaleHour;
  select @BreakPoint=429001,@Err=@@error,@Msg='дʱ�����ݴ���';
  if @Err != 0 Goto ErrHandle;

  exec TL_GetWeekDateBound @WeekID,@BeginDate output,@EndDate output;
  select @BreakPoint=429002,@Err=@@error,@Msg='ִ��TL_GetWeekDateBound����';
  if @Err != 0 Goto ErrHandle;

  select @I=1;
  while @BeginDate<=@EndDate
  BEGIN
    select @SQL='update #T_WeekCashHour set Day' + cast(@I as char(1)) + '=b.SheetQty ' +
        ' from #T_WeekCashHour a,RPT_CashHour b with (nolock) where a.Hour=b.SaleHour and ' +
        ' convert(char(8),b.SDate,112)=''' + convert(char(8),@BeginDate,112) + ''''
    Exec(@SQL);
    select @BreakPoint=429021,@Err=@@error,@Msg='��RPT_CashHour��ȡ���ݴ���';
    if @Err != 0 Goto ErrHandle;
    
    select @BeginDate=DateAdd(day,1,@BeginDate);
    select @I=@I+1;    
  END
  
  --��ֵ�����ۡ��ۿۡ��ɱ���ë�����͵�������ƽ��ֵ��˫����ֵ
  update #T_WeekCashHour set Total7=Day1+Day2+Day3+Day4+Day5+Day6+Day7,
      Total5=Day1+Day2+Day3+Day4+Day5,Total2=Day6+Day7
    where WeekID=@WeekID
  select @BreakPoint=429081,@Err=@@error,@Msg='����ϼ�ֵ����';
  if @Err != 0 Goto ErrHandle;
  
  --����ƽ��ֵ
  update #T_WeekCashHour set Avg7=Total7/7,Avg5=Total5/5,Avg2=Total2/2
    where WeekID=@WeekID
  select @BreakPoint=429082,@Err=@@error,@Msg='����ƽ��ֵ����';
  if @Err != 0 Goto ErrHandle;
  
  --�����ۼ�ֵ
  declare cur_CashHour cursor local for
    select Total7,Total5,Total2 from #T_WeekCashHour order by WeekID,Hour
    for update;
  Open cur_CashHour;
  select @BreakPoint=429084,@Err=@@error,@Msg='����������';
  if @Err != 0 Goto ErrHandle;
  
  select @T7=0,@T5=0,@T2=0;
  while 1=1
  BEGIN
    fetch next from cur_CashHour into @Total7,@Total5,@Total2;
    if @@fetch_status !=0 break;
    select @T7=@T7+@Total7,@T5=@T5+@Total5,@T2=@T2+@Total2;
    update #T_WeekCashHour set SubTotal7=@T7,SubTotal5=@T5,SubTotal2=@T2 where current of cur_CashHour;
  END;  
  close cur_CashHour;
  DEALLOCATE cur_CashHour;

  --�����ۼƽ��ȱ�
  select @I=max(Hour) from #T_WeekCashHour;
  select @Total7=SubTotal7,@Total5=SubTotal5,@Total2=SubTotal2 from #T_WeekCashHour
    where Hour=@I and WeekID=@WeekID;
  update #T_WeekCashHour set 
    SubRate7=case when @Total7=0 then 0 else cast(SubTotal7 as float)/@Total7*100 end,
    SubRate5=case when @Total5=0 then 0 else cast(Subtotal5 as float)/@Total5*100 end,
    SubRate2=case when @Total2=0 then 0 else cast(SubTotal2 as float)/@Total2*100 end
    
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--RP_GetWeekSaleHour	��ȡָ���ܺ�@WeekID����һ������ÿ��ʱ�ε���������۶
--��������š��ܺš���#T_WeekSaleHour���̶�������
--���أ�0=�ɹ�
--���������� 2003.11.20
--�޸ģ�̷���� 2006.11.06 ���Ӵ�ֵ����ȯͳ��
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('RP_GetWeekSaleHour') and type = 'P')
  drop procedure RP_GetWeekSaleHour
GO

create procedure RP_GetWeekSaleHour @ShopID char(4),@WeekID int
WITH ENCRYPTION
AS Begin
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @SQL 		varchar(255);
  declare @I		int;
  declare @BeginDate datetime,@EndDate datetime;
  declare @Total7 dec(16,6),@Total5 dec(15,6),@Total2 dec(15,6);
  declare @T7 dec(15,6),@T5 dec(15,6),@T2 dec(15,6);
  
  SET NOCOUNT ON

  --����ʱ��
  insert into #T_WeekSaleHour(WeekID,Hour)
    select @WeekID,SaleHour
    from RPT_CashHour
    group by SaleHour;
  select @BreakPoint=429001,@Err=@@error,@Msg='дʱ�����ݴ���';
  if @Err != 0 Goto ErrHandle;

  exec TL_GetWeekDateBound @WeekID,@BeginDate output,@EndDate output;
  select @BreakPoint=429002,@Err=@@error,@Msg='ִ��TL_GetWeekDateBound����';
  if @Err != 0 Goto ErrHandle;

  select @I=1;
  while @BeginDate<=@EndDate
  BEGIN
    select @SQL='update #T_WeekSaleHour set Day' + cast(@I as char(1)) + 
        '=CashValue+CardValue+CheckValue+BankValue+TicketValue-RetValue+GiftValue ' +
        ' from #T_WeekSaleHour a,RPT_CashHour b with (nolock) where a.Hour=b.SaleHour and ' +
        ' convert(char(8),b.SDate,112)=''' + convert(char(8),@BeginDate,112) + ''''
    Exec(@SQL);
    select @BreakPoint=429021,@Err=@@error,@Msg='��RPT_CashHour��ȡ���ݴ���';
    if @Err != 0 Goto ErrHandle;
    
    select @BeginDate=DateAdd(day,1,@BeginDate);
    select @I=@I+1;    
  END
  
  --��ֵ�����ۡ��ۿۡ��ɱ���ë�����͵�������ƽ��ֵ��˫����ֵ
  update #T_WeekSaleHour set Total7=Day1+Day2+Day3+Day4+Day5+Day6+Day7,
      Total5=Day1+Day2+Day3+Day4+Day5,Total2=Day6+Day7
    where WeekID=@WeekID
  select @BreakPoint=429081,@Err=@@error,@Msg='����ϼ�ֵ����';
  if @Err != 0 Goto ErrHandle;
  
  --����ƽ��ֵ
  update #T_WeekSaleHour set Avg7=Total7/7,Avg5=Total5/5,Avg2=Total2/2
    where WeekID=@WeekID
  select @BreakPoint=429082,@Err=@@error,@Msg='����ƽ��ֵ����';
  if @Err != 0 Goto ErrHandle;
  
  --�����ۼ�ֵ
  declare cur_SaleHour cursor local for
    select Total7,Total5,Total2 from #T_WeekSaleHour order by WeekID,Hour
    for update;
  Open cur_SaleHour;
  select @BreakPoint=429084,@Err=@@error,@Msg='����������';
  if @Err != 0 Goto ErrHandle;
  
  select @T7=0,@T5=0,@T2=0;
  while 1=1
  BEGIN
    fetch next from cur_SaleHour into @Total7,@Total5,@Total2;
    if @@fetch_status !=0 break;
    select @T7=@T7+@Total7,@T5=@T5+@Total5,@T2=@T2+@Total2;
    update #T_WeekSaleHour set SubTotal7=@T7,SubTotal5=@T5,SubTotal2=@T2 where current of cur_SaleHour;
  END;  
  close cur_SaleHour;
  DEALLOCATE cur_SaleHour;

  --�����ۼƽ��ȱ�
  select @I=max(Hour) from #T_WeekSaleHour;
  select @Total7=SubTotal7,@Total5=SubTotal5,@Total2=SubTotal2 from #T_WeekSaleHour
    where Hour=@I and WeekID=@WeekID;
  update #T_WeekSaleHour set 
    SubRate7=case when @Total7=0 then 0 else SubTotal7/@Total7*100 end,
    SubRate5=case when @Total5=0 then 0 else Subtotal5/@Total5*100 end,
    SubRate2=case when @Total2=0 then 0 else SubTotal2/@Total2*100 end
    
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--rp_427877			������Ʒ������ϸ��ѯ
--���������ڶΣ����룩����š�#427877��ʱ����Ҫѡ�����Ʒ
--���أ���־0=�ɹ�	
--��	
--������
--�㷨��
--����������   2003.11.27
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427877') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427877
GO
create procedure dbo.rp_427877 @BeginDate datetime,@EndDate datetime,@ShopID char(4)
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031113_01,Last Mender:VL
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @SCond	varchar(255);
  SET NOCOUNT ON
  
  --��ȡ��Ʒ������Ϣ
  select GoodsID,min(SDate) StartDate,max(SDate) EndDate,sum(Qty) PromSaleQty,sum(SaleValue-DiscValue) PromSaleValue,
      sum(SaleValue-DiscValue-PromCost*Qty) PromGain,sum(DiscValue) PromDiscValue
    into #tmp1 from RPT_SalePromotion with (nolock)
    where convert(char(8),SDate,112) between convert(char(8),@BeginDate,112) and convert(char(8),@EndDate,112)
      and ShopID=@ShopID and GoodsID in (select GoodsID from #427877)
    group by GoodsID;    
  select @Err=@@error,@BreakPoint=42787701,@Msg='��RPT_SalePromotion��ȡ���ݵ�tmp1����'
  if @Err != 0 goto ErrHandle;
    
  update #427877 set PromStartDate=b.StartDate,PromEndDate=b.EndDate,PromSaleValue=b.PromSaleValue,
      PromSaleQty=b.PromSaleQty,PromGain=b.PromGain,PromDiscValue=b.PromDiscValue
    from #427877 a,#tmp1 b
    where a.GoodsID=b.GoodsID
  select @Err=@@error,@BreakPoint=42787702,@Msg='update����'
  if @Err != 0 goto ErrHandle;
  drop table #tmp1;
  
  --ɾ��û�д�������Ʒ���������ƽ���ۼ�
  delete from #427877 where (PromStartDate is null) or (PromEndDate is null) or (PromSaleQty=0);
  update #427877 set PromPrice=PromSaleValue/PromSaleQty;
  
  --��ȡ��ͨ����������Ȼ�ȡ�±�����
  select * into #RPT_Base0001 from RPT_Base0001 where 0=1;
  select @Err=@@error,@BreakPoint=42787703,@Msg='�޷�������ʱ��#RPT_Base0001��'
  if @Err != 0 goto ErrHandle;
  select @SCond='ShopID='''+@ShopID+''' and GoodsID in (select GoodsID from #427877)';
  exec rp_GetMonthDataToTable @BeginDate,@EndDate,'RPT_Base0001',@SCond;
  select @Err=@@error,@BreakPoint=42787703,@Msg='ִ�д洢����rp_GetMonthDataToTableʧ�ܣ�'
  if @Err != 0 goto ErrHandle;
  
  --��ͨ������Ϣ
  select GoodsID,sum(SaleValue) SaleValue,sum(SaleQty) SaleQty,sum(SaleValue-SaleCost) SaleGain
    into #tmp2 from #RPT_Base0001
    group by GoodsID;
  select @Err=@@error,@BreakPoint=42787704,@Msg='��RPT_Base0001��ȡ���ݵ�tmp2����'
  if @Err != 0 goto ErrHandle;
  update #427877 set SaleValue=b.SaleValue,SaleQty=b.SaleQty,SaleGain=b.SaleGain
    from #427877 a,#tmp2 B
    where a.GoodsID=b.GoodsID;
  drop table #tmp2;
  
  --�ۼ�
  update #427877 set NormPrice=b.NormalPrice,Price=b.Price
    from #427877 a,GoodsShop b with (nolock)
    where a.GoodsID=b.GoodsID and b.ShopID=@ShopID;
  --���
  update #427877 set StockQty=b.Qty
    from #427877 a,ShopsStock b with (nolock)
    where a.GoodsID=b.GoodsID and b.ShopID=@ShopID;
  --��;
  update #427877 set OnPurQty=b.OpenOrderQty+b.OpenRationQty
    from #427877 a,Demand b with (nolock)
    where a.GoodsID=b.GoodsID and b.ShopID=@ShopID;
    
  return 0;    
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--rp_427887			�ŵ��������ܱ��Ƚϱ�
--�������ŵ���루���룩���ܺţ����룩
--���أ���־0=�ɹ�		
--����������   2003.11.21
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('rp_427887') and sysstat & 0xf = 4)
    drop procedure rp_427887
GO
create procedure rp_427887 @ShopID char(4),@WeekID int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031121_01,Last Mender:VL
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @PreWeekID	int;
  SET NOCOUNT ON

  create table #T_WeekSale(
    WeekID	int not null,	--�ܺ�
    RowType	int not null,	--�����ԣ�10=���� 20=�ۿ۽�� 30=�ɱ� 40=����ë�� 50=ë���� 60=�͵��� 70=�͵���
    Day1	dec(15,5) default 0 not null,	--����һ
    Day2	dec(15,5) default 0 not null,
    Day3	dec(15,5) default 0 not null,
    Day4	dec(15,5) default 0 not null,
    Day5	dec(15,5) default 0 not null,
    Day6	dec(15,5) default 0 not null,
    Day7	dec(15,5) default 0 not null,	--������
    Total7	dec(15,5) default 0 not null,	--7�����ֵ
    Total5	dec(15,5) default 0 not null,	--ƽ�գ���һ�����壩��ֵ
    Total2	dec(15,5) default 0 not null,	--˫���գ����������գ���ֵ
    Avg7	dec(15,5) default 0 not null,	--��ƽ��ֵ
    Avg5	dec(15,5) default 0 not null,	--ƽ��ƽ��ֵ
    Avg2	dec(15,5) default 0 not null,	--˫����ƽ��ֵ
    primary key (WeekID,rowType)
  )
  select @BreakPoint=42788701,@Err=@@error,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;
  
  exec TL_GetPrevWeekID @WeekID,@PreWeekID output;
  select @BreakPoint=42788702,@Err=@@error,@Msg='ִ��TL_GetPrevWeekID����';
  if @Err != 0 goto ErrHandle;

  exec RP_GetWeekSaleToTable @ShopID,@PreWeekID;
  select @BreakPoint=42788703,@Err=@@error,@Msg='��ȡ�������ݳ���';
  if @Err != 0 goto ErrHandle;
  
  select * into #T_PreWeekSale from #T_WeekSale;
  select @BreakPoint=42788704,@Err=@@error,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;
  
  delete from #T_WeekSale;
  exec RP_GetWeekSaleToTable @ShopID,@WeekID;
  select @BreakPoint=42788705,@Err=@@error,@Msg='��ȡ�������ݳ���';
  if @Err != 0 goto ErrHandle;
  
  insert into #427887
    select WeekID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,RowType
      from #T_WeekSale where WeekID=@WeekID and RowType in (10,40,60,70);
  select @BreakPoint=42788706,@Err=@@error,@Msg='д�뱾�����ݳ���';
  if @Err != 0 goto ErrHandle;

  insert into #427887
    select WeekID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,RowType+1
      from #T_PreWeekSale where WeekID=@PreWeekID and RowType in (10,40,60,70);
  select @BreakPoint=42788707,@Err=@@error,@Msg='д���������ݳ���';
  if @Err != 0 goto ErrHandle;
  
  insert into #427887 select a.WeekID,
      case when b.Day1=0 then 100 else (a.Day1-b.Day1)/b.Day1*100 end,
      case when b.Day2=0 then 100 else (a.Day2-b.Day2)/b.Day2*100 end,
      case when b.Day3=0 then 100 else (a.Day3-b.Day3)/b.Day3*100 end,
      case when b.Day4=0 then 100 else (a.Day4-b.Day4)/b.Day4*100 end,
      case when b.Day5=0 then 100 else (a.Day5-b.Day5)/b.Day5*100 end,
      case when b.Day6=0 then 100 else (a.Day6-b.Day6)/b.Day6*100 end,
      case when b.Day7=0 then 100 else (a.Day7-b.Day7)/b.Day7*100 end,
      case when b.Total5=0 then 100 else (a.Total5-b.Total5)/b.Total5*100 end,
      case when b.Total2=0 then 100 else (a.Total2-b.Total2)/b.Total2*100 end,
      case when b.Total7=0 then 100 else (a.Total7-b.Total7)/b.Total7*100 end,
      a.RowType+2
      from #T_WeekSale a,#T_PreWeekSale b
      where a.RowType=b.RowType and a.WeekID=@WeekID and b.WeekID=@PreWeekID
      and a.RowType in (10,40,60,70);
  select @BreakPoint=42788708,@Err=@@error,@Msg='д��Ƚ����ݳ���';
  if @Err != 0 goto ErrHandle;

  drop table #T_WeekSale;
  drop table #T_PreWeekSale;
  select @BreakPoint=42788708,@Err=@@error,@Msg='д��Ƚ����ݳ���';
  if @Err != 0 goto ErrHandle;
  return 0;    
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--rp_427888 			�����������ܱ��Ƚϱ�
--�������ŵ���루���룩�����ţ����룩���ܺţ����룩
--���أ���־0=�ɹ�		
--����������   2003.11.24
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427888') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427888
GO
create procedure dbo.rp_427888 @ShopID char(4),@ManageDeptID int,@WeekID int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031121_01,Last Mender:VL
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @PreWeekID	int;
  SET NOCOUNT ON

  create table #T_WeekDeptSale(
    WeekID		int not null,	--�ܺ�
    ManageDeptID	int not null,	--������
    RowType		int not null,	--�����ԣ�10=���� 20=�ۿ۽�� 30=�ɱ� 40=����ë�� 50=ë���� 60=�͵��� 70=�͵���
    Day1		dec(15,6) default 0 not null,	--����һ
    Day2		dec(15,6) default 0 not null,
    Day3		dec(15,6) default 0 not null,
    Day4		dec(15,6) default 0 not null,
    Day5		dec(15,6) default 0 not null,
    Day6		dec(15,6) default 0 not null,
    Day7		dec(15,6) default 0 not null,	--������
    Total7		dec(15,6) default 0 not null,	--7�����ֵ
    Total5		dec(15,6) default 0 not null,	--ƽ�գ���һ�����壩��ֵ
    Total2		dec(15,6) default 0 not null,	--˫���գ����������գ���ֵ
    Avg7		dec(15,6) default 0 not null,	--��ƽ��ֵ
    Avg5		dec(15,6) default 0 not null,	--ƽ��ƽ��ֵ
    Avg2		dec(15,6) default 0 not null,	--˫����ƽ��ֵ
    primary key (WeekID,ManageDeptID,rowType)
  );	
  select @BreakPoint=42788801,@Err=@@error,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;
  
  exec TL_GetPrevWeekID @WeekID,@PreWeekID output;
  select @BreakPoint=42788802,@Err=@@error,@Msg='ִ��TL_GetPrevWeekID����';
  if @Err != 0 goto ErrHandle;

  exec RP_GetWeekDeptSaleToTable @ShopID,@PreWeekID,@ManageDeptID;
  select @BreakPoint=42788803,@Err=@@error,@Msg='��ȡ�������ݳ���';
  if @Err != 0 goto ErrHandle;
  
  select * into #T_PreWeekDeptSale from #T_WeekDeptSale;
  select @BreakPoint=42788804,@Err=@@error,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;
  
  delete from #T_WeekDeptSale;
  exec RP_GetWeekDeptSaleToTable @ShopID,@WeekID,@ManageDeptID;
  select @BreakPoint=42788805,@Err=@@error,@Msg='��ȡ�������ݳ���';
  if @Err != 0 goto ErrHandle;
  
  insert into #427888
    select WeekID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,RowType
      from #T_WeekDeptSale where WeekID=@WeekID and RowType in (10,40,60,70);
  select @BreakPoint=42788806,@Err=@@error,@Msg='д�뱾�����ݳ���';
  if @Err != 0 goto ErrHandle;

  insert into #427888
    select WeekID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,RowType+1
      from #T_PreWeekDeptSale where WeekID=@PreWeekID and RowType in (10,40,60,70);
  select @BreakPoint=42788807,@Err=@@error,@Msg='д���������ݳ���';
  if @Err != 0 goto ErrHandle;
  
  insert into #427888 select a.WeekID,
      case when b.Day1=0 then 100 else (a.Day1-b.Day1)/b.Day1*100 end,
      case when b.Day2=0 then 100 else (a.Day2-b.Day2)/b.Day2*100 end,
      case when b.Day3=0 then 100 else (a.Day3-b.Day3)/b.Day3*100 end,
      case when b.Day4=0 then 100 else (a.Day4-b.Day4)/b.Day4*100 end,
      case when b.Day5=0 then 100 else (a.Day5-b.Day5)/b.Day5*100 end,
      case when b.Day6=0 then 100 else (a.Day6-b.Day6)/b.Day6*100 end,
      case when b.Day7=0 then 100 else (a.Day7-b.Day7)/b.Day7*100 end,
      case when b.Total5=0 then 100 else (a.Total5-b.Total5)/b.Total5*100 end,
      case when b.Total2=0 then 100 else (a.Total2-b.Total2)/b.Total2*100 end,
      case when b.Total7=0 then 100 else (a.Total7-b.Total7)/b.Total7*100 end,
      a.RowType+2
      from #T_WeekDeptSale a,#T_PreWeekDeptSale b
      where a.RowType=b.RowType and a.WeekID=@WeekID and b.WeekID=@PreWeekID
      and a.RowType in (10,40,60,70) and a.ManageDeptID=b.ManageDeptID;
  select @BreakPoint=42788808,@Err=@@error,@Msg='д��Ƚ����ݳ���';
  if @Err != 0 goto ErrHandle;

  drop table #T_WeekDeptSale;
  drop table #T_PreWeekDeptSale;
  select @BreakPoint=42788808,@Err=@@error,@Msg='д��Ƚ����ݳ���';
  if @Err != 0 goto ErrHandle;
  return 0;    
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

if exists (select * from sysobjects where id = object_id('dbo.rp_600036') and sysstat & 0xf = 4)
    drop procedure dbo.rp_600036
GO
create procedure dbo.rp_600036 @date datetime
WITH ENCRYPTION
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);

  declare @begindate datetime;
  declare @enddate datetime;

  declare @tables char(1024);
  declare @subTableName char(32);
  declare @SQLString varchar(255);
  declare @i int;

  declare @deptlevel    int
  declare @levelvalue   int  

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint=200000;
  
  exec tl_getweekdate @date,@begindate output,@enddate output;

  if @Err <> 0 or @Err is null begin
	select @Msg='ȡ��ʱ��δ���!';
	goto ErrHandle;
  end
  
  select @BreakPoint=200100;

  exec tl_gettablesname @begindate,@enddate,'salecost',@tables output;
  select * into #t0 from salecost where 1=2;
  select @tables as tablesname into #tmp
  while 1=1 begin
      select @i=charindex(',',tablesname) from #tmp;
      if @i=0 begin
         select @subTableName=tablesname from #tmp;
         select @SQLString='insert into #t0 select * from '+ @subTableName
             + ' where convert(char(8),sdate,112)>=''' 
             + convert(char(8),@begindate,112) 
             + ''' and convert(char(8),sdate,112)<=''' 
             + convert(char(8),@enddate,112)+ '''';
         execute (@SQLString); 
         break;
      end
      else begin 
         select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #tmp;
         select @SQLString='insert into #t0 select * from '+ @subTableName
             + ' where convert(char(8),sdate,112)>=''' 
             + convert(char(8),@begindate,112) 
             + ''' and convert(char(8),sdate,112)<=''' 
             + convert(char(8),@enddate,112)+ '''';
         execute (@SQLString);   
         update #tmp 
          set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
         where 1=1;
      end;
  end;
  
  if @Err <> 0 or @Err is null begin
	select @Msg='ȡ�±����ݴ���!';
	goto ErrHandle;
  end
  
  select @BreakPoint=200200;

  select * into #T from #t0 where sdate between @begindate and @enddate order by sdate,goodsid;
  /*
  insert into #temp (shopid,shopname,goodsid,goodsname,saleqty,salevalue,costvalue)
  select a.shopid,b.name,a.goodsid,c.name,sum(a.qty),sum(a.salevalue-a.discvalue),sum(a.costvalue) 
  from #t a,shop b,goods c 
  where a.shopid=b.id and a.goodsid=c.goodsid 
  group by a.shopid,b.name,a.goodsid,c.name;
 */
  insert into #temp (shopid,shopname,goodsid,goodsname,saletaxrate,costtaxrate,saleqty,salevalue,costvalue)
  select a.shopid,b.name,a.goodsid,c.name,a.saletaxrate,a.costtaxrate,
         sum(a.qty),sum(a.salevalue-a.discvalue),sum(a.costvalue)
  from #t a,shop b,goods c
  where a.shopid=b.id and a.goodsid=c.goodsid 
        
  group by a.shopid,b.name,a.goodsid,c.name,
           a.saletaxrate,a.costtaxrate;
  /*
    select @deptlevel=value from config where name='�����ż���'
    select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
    update #temp set managedeptid=(g.deptid/@levelvalue),managedeptname=s.Name
      from #temp a,goods g,sgroup s
      where a.goodsid=g.goodsid and g.deptid/@levelvalue=s.id;
  */
    update #temp set deptid=g.deptid,deptname=s.Name
      from #temp a,goods g,dept s
      where a.goodsid=g.goodsid and g.deptid=s.id;
  
  if @Err <> 0 or @Err is null begin
	select @Msg='ȡ���������!';
	goto ErrHandle;
  end

  select @BreakPoint=200300;    
    select a.shopid,a.goodsid,sum(a.qty) as qty,sum(a.qty*a.cost) as costvalue
       into #temp_shopsstock
       from goodscost a
      
       group by a.shopid,a.goodsid
          
    update #temp set closeqty=b.qty,closecostvalue=b.costvalue 
        from #temp a,#temp_shopsstock b 
        where a.shopid=b.shopid and a.goodsid=b.goodsid;
  
  if @Err <> 0 or @Err is null begin
	select @Msg='ȡ��Ʒ������!';
	goto ErrHandle;
  end

  select @BreakPoint=200300;
    
  drop table #tmp;
  drop table #t0;
  drop table #t;
  drop table #temp_shopsstock;

  if @Err <> 0 or @Err is null begin
	select @Msg='����ٱ����!';
	goto ErrHandle;
  end
    
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
  
end
go

if exists (select * from sysobjects where id = object_id('dbo.rpt_2006041801_cm') and sysstat & 0xf = 4)
    drop procedure dbo.rpt_2006041801_cm
GO

create procedure dbo.rpt_2006041801_cm  @monthid char(6),@shopid char(4)
as begin
	declare @err              int;
	declare @breakpoint       int;
	declare @msg              char(255);
	
	declare @deptlevel        int;
	declare @i                int;
	declare @allsalevalue     dec(12,2);       --ȫ������
	declare @csalevalue       dec(12,2);       --��������
	declare @allgpvalue       dec(12,2);       --ȫ��ë��
	
	declare @lmmonthid          char(6);         --���±��
	declare @lmallsalevalue     dec(12,2);       --����ȫ������
	declare @lmcsalevalue       dec(12,2);       --���³�������
	declare @lmallgpvalue       dec(12,2);       --����ȫ��ë��
	
	declare @lymonthid          char(6);         --����ͬ�±��
	declare @lyallsalevalue     dec(12,2);       --����ȫ������
	declare @lycsalevalue       dec(12,2);       --���곬������
	declare @lyallgpvalue       dec(12,2);       --����ȫ��ë��		
	
	declare @deptlevelid  int;
	declare @levelvalue   int;
	select @deptlevelid=value from config where name = '�����ż���';
	select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevelid;
	--ȡ�����ż���

	select @deptlevel=value from config where name='�����ż���';
	--ȡ�������۽��ۿ۽�ë���ë���ʣ�����ռ�ȣ�ë��ռ�ȣ�����ռ���бȣ�����ռ��ȣ�ë��ռȫ���
	select @allsalevalue=sum(salevalue-discvalue) from rpt_salegroup where substring((convert(char(8),sdate,112)),1,6)=@monthid and shopid=@shopid;
	select @csalevalue=sum(salevalue-discvalue) from rpt_saledept where substring((convert(char(8),sdate,112)),1,6)=@monthid and DeptID/@levelvalue not in (136,221,305) and shopid=@shopid;
        select @allgpvalue=sum(salevalue-discvalue-costvalue) from rpt_salegroup where substring((convert(char(8),sdate,112)),1,6)=@monthid and shopid=@shopid;
	
	select @breakpoint=20060401;
	insert into #temp2006041801(sgrouid,name,salevalue,discvalue,truevalue,costvalue,gpvalue,gprate,zbcsalerate,zbsalerate,zbgprate)
	select a.DeptID/@levelvalue,b.name,sum(a.salevalue),sum(a.discvalue),sum(a.salevalue-a.discvalue),
	       sum(a.costvalue),sum(a.salevalue-a.discvalue-a.costvalue),
	       case sum(a.salevalue-a.discvalue) when 0 then 0
	            else sum(a.salevalue-a.discvalue-a.costvalue)/sum(a.salevalue-a.discvalue)*100 end,
	       case @csalevalue when 0 then 0 
	            else sum(a.salevalue-a.discvalue)/@csalevalue*100 end,
	       case @allsalevalue when 0 then 0 
	            else sum(a.salevalue-a.discvalue)/@allsalevalue*100 end,
	       case @allgpvalue when 0 then 0
	            else sum(a.salevalue-a.discvalue-a.costvalue)/@allgpvalue*100 end
	       from rpt_saledept a,sgroup b
	       where a.DeptID/@levelvalue=b.id and b.id<>0 and b.deptlevelid=@deptlevel and substring((convert(char(8),sdate,112)),1,6)=@monthid and shopid=@shopid
	       group by a.DeptID/@levelvalue,b.name;
	       select @err=@@error;
	       if @err is null or @err<>0 begin
	       	select @msg='���ܱ������ݳ���';
	        goto errhandle 
	        end;
	       
	       
	--ȡ�������۽��ۿ۽�ë���ë���ʣ�����ռ�ȣ�ë��ռ�ȣ�����ռ���бȣ�����ռ��ȣ�ë��ռȫ���
	--���������º�
	select @i=substring(@monthid,5,2);
	if @i=01 begin		
		select @lmmonthid=(@monthid/100-1)*100+12;
	end else begin
		select @lmmonthid=@monthid-1;
	end;


	select @lmallsalevalue=sum(salevalue-discvalue) from rpt_salegroup where substring((convert(char(8),sdate,112)),1,6)=@lmmonthid and shopid=@shopid;
	select @lmcsalevalue=sum(salevalue-discvalue) from rpt_saledept where substring((convert(char(8),sdate,112)),1,6)=@lmmonthid and DeptID/@levelvalue not in (136,221,305) and shopid=@shopid;
	select @lmallgpvalue=sum(salevalue-discvalue-costvalue) from rpt_salegroup where substring((convert(char(8),sdate,112)),1,6)=@lmmonthid and shopid=@shopid;
	
	select @breakpoint=20060402;
	insert into #temp2006041801(sgrouid,name,lmsalevalue,lmdiscvalue,lmtruevalue,lmcostvalue,lmgpvalue,lmgprate,lmzbcsalerate,lmzbsalerate,lmzbgprate)
	select a.DeptID/@levelvalue,b.name,sum(a.salevalue),sum(a.discvalue),sum(a.salevalue-a.discvalue),
	        sum(a.costvalue),sum(a.salevalue-a.discvalue-a.costvalue),
	        case sum(a.salevalue-a.discvalue) when 0 then 0
	             else sum(a.salevalue-a.discvalue-a.costvalue)/sum(a.salevalue-a.discvalue)*100 end,
	        case @lmcsalevalue when 0 then 0
	             else sum(a.salevalue-a.discvalue)/@lmcsalevalue*100 end ,
	        case @lmallsalevalue when 0 then 0
	             else sum(a.salevalue-a.discvalue)/@lmallsalevalue*100 end,
	        case @lmallgpvalue when 0 then 0
	             else sum(a.salevalue-a.discvalue-a.costvalue)/@lmallgpvalue*100 end
	       from rpt_saledept a,sgroup b
	       where a.DeptID/@levelvalue=b.id and b.id<>0 and b.deptlevelid=@deptlevel and substring((convert(char(8),sdate,112)),1,6)=@lmmonthid and shopid=@shopid
	       group by a.DeptID/@levelvalue,b.name;
	       select @err=@@error;
	       if @err is null or @err<>0 begin
	       	select @msg='�����������ݳ���';
	        goto errhandle 
	        end;
	       
	--ȡ�������۽��ۿ۽�ë���ë���ʣ�����ռ�ȣ�ë��ռ�ȣ�����ռ���бȣ�����ռ��ȣ�ë��ռȫ���	      
	select @lymonthid=(@monthid/100-1)*100+substring(@monthid,5,2);

	select @lyallsalevalue=sum(salevalue-discvalue) from rpt_salegroup where substring((convert(char(8),sdate,112)),1,6)=@lymonthid and shopid=@shopid;
	select @lycsalevalue=sum(salevalue-discvalue) from rpt_saledept where substring((convert(char(8),sdate,112)),1,6)=@lymonthid and DeptID/@levelvalue not in (136,221,305) and shopid=@shopid;
	select @lyallgpvalue=sum(salevalue-discvalue-costvalue) from rpt_salegroup where substring((convert(char(8),sdate,112)),1,6)=@lymonthid and shopid=@shopid;
	
	select @breakpoint=20060403;
	insert into #temp2006041801(sgrouid,name,lysalevalue,lydiscvalue,lytruevalue,lycostvalue,lygpvalue,lygprate,lyzbcsalerate,lyzbsalerate,lyzbgprate)
	select a.DeptID/@levelvalue,b.name,sum(a.salevalue),sum(a.discvalue),sum(a.salevalue-a.discvalue),
	       sum(a.costvalue),sum(a.salevalue-a.discvalue-a.costvalue),
	       case sum(a.salevalue - a.discvalue) when 0 then 0
	            else sum(a.salevalue-a.discvalue-a.costvalue)/sum(a.salevalue-a.discvalue)*100 end,
	       case @lycsalevalue when 0 then 0
	            else sum(a.salevalue-a.discvalue)/@lycsalevalue*100 end,
	       case @lyallsalevalue when 0 then 0
	            else sum(a.salevalue-a.discvalue)/@lyallsalevalue*100 end,
	       case @lyallgpvalue when 0 then 0
	            else sum(a.salevalue-a.discvalue-a.costvalue)/@lyallgpvalue*100 end
	       from rpt_saledept a,sgroup b
	       where a.DeptID/@levelvalue=b.id and b.id<>0 and b.deptlevelid=@deptlevel and substring((convert(char(8),sdate,112)),1,6)=@lymonthid and shopid=@shopid
	       group by a.DeptID/@levelvalue,b.name;
	       select @err=@@error;
	       if @err is null or @err<>0 begin
	       	select @msg='����ȥ��ͬ�����ݳ���';
	        goto errhandle 
	        end;	
		    
	--���ݻ��ܹ���
	select @breakpoint=20060404;
	select a.id,a.name,
	       sum(salevalue) salevalue,sum(discvalue) discvalue,sum(truevalue) truevalue,sum(costvalue) costvalue,sum(gpvalue) gpvalue,sum(gprate) gprate,sum(zbcsalerate) zbcsalerate,sum(zbsalerate) zbsalerate,sum(zbgprate) zbgprate,
               sum(lmsalevalue) lmsalevalue,sum(lmdiscvalue) lmdiscvalue,sum(lmtruevalue) lmtruevalue,sum(lmcostvalue) lmcostvalue,sum(lmgpvalue) lmgpvalue,sum(lmgprate) lmgprate,sum(lmzbcsalerate) lmzbcsalerate,sum(lmzbsalerate) lmzbsalerate,sum(lmzbgprate) lmzbgprate,
               sum(lysalevalue) lysalevalue,sum(lydiscvalue) lydiscvalue,sum(lytruevalue) lytruevalue,sum(lycostvalue) lycostvalue,sum(lygpvalue) lygpvalue,sum(lygprate) lygprate,sum(lyzbcsalerate) lyzbcsalerate,sum(lyzbsalerate) lyzbsalerate,sum(lyzbgprate) lyzbgprate
	into #temp1
	from sgroup a,#temp2006041801 b
	where a.id=b.sgrouid and a.deptlevelid=@deptlevel and a.id<>0
	group by a.id,a.name
	order by a.id
	
	delete from #temp2006041801 where 1=1;
	
	insert into #temp2006041801
	select * from #temp1;
	
	drop table #temp1;
	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
END;
go




if exists (select * from sysobjects where id = object_id('dbo.rpt_2006041801') and sysstat & 0xf = 4)
    drop procedure dbo.rpt_2006041801
GO

create procedure dbo.rpt_2006041801  @monthid char(6)
as begin
	declare @err              int;
	declare @breakpoint       int;
	declare @msg              char(255);
	
	declare @deptlevel        int;
	declare @i                int;
	declare @allsalevalue     dec(12,2);       --ȫ������
	declare @csalevalue       dec(12,2);       --��������
	declare @allgpvalue       dec(12,2);       --ȫ��ë��
	
	declare @lmmonthid          char(6);         --���±��
	declare @lmallsalevalue     dec(12,2);       --����ȫ������
	declare @lmcsalevalue       dec(12,2);       --���³�������
	declare @lmallgpvalue       dec(12,2);       --����ȫ��ë��
	
	declare @lymonthid          char(6);         --����ͬ�±��
	declare @lyallsalevalue     dec(12,2);       --����ȫ������
	declare @lycsalevalue       dec(12,2);       --���곬������
	declare @lyallgpvalue       dec(12,2);       --����ȫ��ë��		
	


	declare @deptlevelid  int;
	declare @levelvalue   int;
	select @deptlevelid=value from config where name = '�����ż���';
	select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevelid;
	
	--ȡ�����ż���
	select @deptlevel=value from config where name='�����ż���';
	--ȡ�������۽��ۿ۽�ë���ë���ʣ�����ռ�ȣ�ë��ռ�ȣ�����ռ���бȣ�����ռ��ȣ�ë��ռȫ���
	select @allsalevalue=sum(salevalue-discvalue) from rpt_salegroup where substring((convert(char(8),sdate,112)),1,6)=@monthid;
	select @csalevalue=sum(salevalue-discvalue) from rpt_saledept where substring((convert(char(8),sdate,112)),1,6)=@monthid and DeptID/@levelvalue not in (136,221,305);
	select @allgpvalue=sum(salevalue-discvalue-costvalue) from rpt_salegroup where substring((convert(char(8),sdate,112)),1,6)=@monthid;
	
	select @breakpoint=20060401;
	insert into #temp2006041801(sgrouid,name,salevalue,discvalue,truevalue,costvalue,gpvalue,gprate,zbcsalerate,zbsalerate,zbgprate)
	select a.DeptID/@levelvalue,b.name,sum(a.salevalue),sum(a.discvalue),sum(a.salevalue-a.discvalue),
	       sum(a.costvalue),sum(a.salevalue-a.discvalue-a.costvalue),
	       case sum(a.salevalue-a.discvalue) when 0 then 0
	            else sum(a.salevalue-a.discvalue-a.costvalue)/sum(a.salevalue-a.discvalue)*100 end,
	       case @csalevalue when 0 then 99.99
	            else sum(a.salevalue-a.discvalue)/@csalevalue*100 end,
	       case @allsalevalue when 0 then 99.99 
	            else sum(a.salevalue-a.discvalue)/@allsalevalue*100 end,
	       case @allgpvalue when 0 then 99.99
	            else sum(a.salevalue-a.discvalue-a.costvalue)/@allgpvalue*100 end
	       from rpt_saledept a,sgroup b
	       where a.DeptID/@levelvalue=b.id and b.id<>0 and b.deptlevelid=@deptlevel and substring((convert(char(8),sdate,112)),1,6)=@monthid
               group by a.DeptID/@levelvalue,b.name;
	       select @err=@@error;
	       if @err is null or @err<>0 begin
	       	select @msg='���ܱ������ݳ���';
	        goto errhandle 
	        end;
	       
	       
	--ȡ�������۽��ۿ۽�ë���ë���ʣ�����ռ�ȣ�ë��ռ�ȣ�����ռ���бȣ�����ռ��ȣ�ë��ռȫ���
	--���������º�
	select @i=substring(@monthid,5,2);
	if @i=01 begin		
		select @lmmonthid=(@monthid/100-1)*100+12;
	end else begin
		select @lmmonthid=@monthid-1;
	end;


	select @lmallsalevalue=sum(salevalue-discvalue) from rpt_salegroup where substring((convert(char(8),sdate,112)),1,6)=@lmmonthid;
	select @lmcsalevalue=sum(salevalue-discvalue) from rpt_saledept where substring((convert(char(8),sdate,112)),1,6)=@lmmonthid and DeptID/@levelvalue not in (136,221,305);
	select @lmallgpvalue=sum(salevalue-discvalue-costvalue) from rpt_salegroup where substring((convert(char(8),sdate,112)),1,6)=@lmmonthid;
	
	select @breakpoint=20060402;
	insert into #temp2006041801(sgrouid,name,lmsalevalue,lmdiscvalue,lmtruevalue,lmcostvalue,lmgpvalue,lmgprate,lmzbcsalerate,lmzbsalerate,lmzbgprate)
	select a.DeptID/@levelvalue,b.name,sum(a.salevalue),sum(a.discvalue),sum(a.salevalue-a.discvalue),
	        sum(a.costvalue),sum(a.salevalue-a.discvalue-a.costvalue),
	        case sum(a.salevalue-a.discvalue) when 0 then 0
	             else sum(a.salevalue-a.discvalue-a.costvalue)/sum(a.salevalue-a.discvalue)*100 end,
	        case @lmcsalevalue when 0 then 99.99
	             else sum(a.salevalue-a.discvalue)/@lmcsalevalue*100 end ,
	        case @lmallsalevalue when 0 then 99.99
	             else sum(a.salevalue-a.discvalue)/@lmallsalevalue*100 end,
	        case @lmallgpvalue when 0 then 99.99
	             else sum(a.salevalue-a.discvalue-a.costvalue)/@lmallgpvalue*100 end
	       from rpt_saledept a,sgroup b
	       where a.DeptID/@levelvalue=b.id and b.id<>0 and b.deptlevelid=@deptlevel and substring((convert(char(8),sdate,112)),1,6)=@lmmonthid
               group by a.DeptID/@levelvalue,b.name;
	       select @err=@@error;
	       if @err is null or @err<>0 begin
	       	select @msg='�����������ݳ���';
	        goto errhandle 
	        end;
	       
	--ȡ�������۽��ۿ۽�ë���ë���ʣ�����ռ�ȣ�ë��ռ�ȣ�����ռ���бȣ�����ռ��ȣ�ë��ռȫ���	      
	select @lymonthid=(@monthid/100-1)*100+substring(@monthid,5,2);

	select @lyallsalevalue=sum(salevalue-discvalue) from rpt_salegroup where substring((convert(char(8),sdate,112)),1,6)=@lymonthid;
	select @lycsalevalue=sum(salevalue-discvalue) from rpt_saledept where substring((convert(char(8),sdate,112)),1,6)=@lymonthid and DeptID/@levelvalue not in (136,221,305);
	select @lyallgpvalue=sum(salevalue-discvalue-costvalue) from rpt_salegroup where substring((convert(char(8),sdate,112)),1,6)=@lymonthid;
	
	select @breakpoint=20060403;
	insert into #temp2006041801(sgrouid,name,lysalevalue,lydiscvalue,lytruevalue,lycostvalue,lygpvalue,lygprate,lyzbcsalerate,lyzbsalerate,lyzbgprate)
	select a.DeptID/@levelvalue,b.name,sum(a.salevalue),sum(a.discvalue),sum(a.salevalue-a.discvalue),
	       sum(a.costvalue),sum(a.salevalue-a.discvalue-a.costvalue),
	       case sum(a.salevalue - a.discvalue) when 0 then 0
	            else sum(a.salevalue-a.discvalue-a.costvalue)/sum(a.salevalue-a.discvalue)*100 end,
	       case @lycsalevalue when 0 then 99.99
	            else sum(a.salevalue-a.discvalue)/@lycsalevalue*100 end,
	       case @lyallsalevalue when 0 then 99.99
	            else sum(a.salevalue-a.discvalue)/@lyallsalevalue*100 end,
	       case @lyallgpvalue when 0 then 99.99
	            else sum(a.salevalue-a.discvalue-a.costvalue)/@lyallgpvalue*100 end
	       from rpt_saledept a,sgroup b
	      where a.DeptID/@levelvalue=b.id and b.id<>0 and b.deptlevelid=@deptlevel and substring((convert(char(8),sdate,112)),1,6)=@lymonthid
        
	       group by a.DeptID/@levelvalue,b.name;
	       select @err=@@error;
	       if @err is null or @err<>0 begin
	       	select @msg='����ȥ��ͬ�����ݳ���';
	        goto errhandle 
	        end;	
		    
	--���ݻ��ܹ���
	select @breakpoint=20060404;
	select a.id,a.name,
	       sum(salevalue) salevalue,sum(discvalue) discvalue,sum(truevalue) truevalue,sum(costvalue) costvalue,sum(gpvalue) gpvalue,sum(gprate) gprate,sum(zbcsalerate) zbcsalerate,sum(zbsalerate) zbsalerate,sum(zbgprate) zbgprate,
               sum(lmsalevalue) lmsalevalue,sum(lmdiscvalue) lmdiscvalue,sum(lmtruevalue) lmtruevalue,sum(lmcostvalue) lmcostvalue,sum(lmgpvalue) lmgpvalue,sum(lmgprate) lmgprate,sum(lmzbcsalerate) lmzbcsalerate,sum(lmzbsalerate) lmzbsalerate,sum(lmzbgprate) lmzbgprate,
               sum(lysalevalue) lysalevalue,sum(lydiscvalue) lydiscvalue,sum(lytruevalue) lytruevalue,sum(lycostvalue) lycostvalue,sum(lygpvalue) lygpvalue,sum(lygprate) lygprate,sum(lyzbcsalerate) lyzbcsalerate,sum(lyzbsalerate) lyzbsalerate,sum(lyzbgprate) lyzbgprate
	into #temp1
	from sgroup a,#temp2006041801 b
	where a.id=b.sgrouid and a.deptlevelid=@deptlevel and a.id<>0
      
	group by a.id,a.name
	order by a.id
	
	delete from #temp2006041801 where 1=1;
	
	insert into #temp2006041801
	select * from #temp1;
	
	drop table #temp1;
	
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
END;
GO


-----------------------------------------------------------------
--rp_427893 			�ŵ������۶Աȱ���
--�������ŵ���루���룩���ܺţ����룩
--���أ���־0=�ɹ�		
--����������   2003.11.25
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('rp_427893') and sysstat & 0xf = 4)
    drop procedure rp_427893 
GO
create procedure rp_427893 @ShopID char(4),@WeekID int
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031125_01,Last Mender:VL
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @PreWeekID	int;
  SET NOCOUNT ON

  create table #T_WeekDeptSale(
    WeekID		int not null,	--�ܺ�
    ManageDeptID	int not null,	--������
    RowType		int not null,	--�����ԣ�10=���� 20=�ۿ۽�� 30=�ɱ� 40=����ë�� 50=ë���� 60=�͵��� 70=�͵���
    Day1		dec(15,6) default 0 not null,	--����һ
    Day2		dec(15,6) default 0 not null,
    Day3		dec(15,6) default 0 not null,
    Day4		dec(15,6) default 0 not null,
    Day5		dec(15,6) default 0 not null,
    Day6		dec(15,6) default 0 not null,
    Day7		dec(15,6) default 0 not null,	--������
    Total7		dec(15,6) default 0 not null,	--7�����ֵ
    Total5		dec(15,6) default 0 not null,	--ƽ�գ���һ�����壩��ֵ
    Total2		dec(15,6) default 0 not null,	--˫���գ����������գ���ֵ
    Avg7		dec(15,6) default 0 not null,	--��ƽ��ֵ
    Avg5		dec(15,6) default 0 not null,	--ƽ��ƽ��ֵ
    Avg2		dec(15,6) default 0 not null,	--˫����ƽ��ֵ
    primary key (WeekID,ManageDeptID,rowType)
  );	
  select @BreakPoint=42789301,@Err=@@error,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;
  
  exec TL_GetPrevWeekID @WeekID,@PreWeekID output;
  select @BreakPoint=42789302,@Err=@@error,@Msg='ִ��TL_GetPrevWeekID����';
  if @Err != 0 goto ErrHandle;

  exec RP_GetWeekDeptSaleToTable @ShopID,@PreWeekID;
  select @BreakPoint=42789303,@Err=@@error,@Msg='��ȡ�������ݳ���';
  if @Err != 0 goto ErrHandle;
  
  select * into #T_PreWeekDeptSale from #T_WeekDeptSale;
  select @BreakPoint=42789304,@Err=@@error,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;
  
  delete from #T_WeekDeptSale;
  exec RP_GetWeekDeptSaleToTable @ShopID,@WeekID;
  select @BreakPoint=42789305,@Err=@@error,@Msg='��ȡ�������ݳ���';
  if @Err != 0 goto ErrHandle;
  
  insert into #T_WeekDeptSale
    select WeekID,0,RowType,sum(Day1),sum(Day2),sum(Day3),sum(Day4),sum(Day5),sum(Day6),
    	sum(Day7),sum(Total7),sum(Total5),sum(Total2),sum(Avg7),sum(Avg5),sum(Avg2)
      from #T_WeekDeptSale where WeekID=@WeekID and RowType=10
      group by WeekID,RowType;
  select @BreakPoint=42789306,@Err=@@error,@Msg='д�뱾�ܻ������ݳ���';
  if @Err != 0 goto ErrHandle;

  insert into #T_PreWeekDeptSale
    select WeekID,0,RowType,sum(Day1),sum(Day2),sum(Day3),sum(Day4),sum(Day5),sum(Day6),
    	sum(Day7),sum(Total7),sum(Total5),sum(Total2),sum(Avg7),sum(Avg5),sum(Avg2)
      from #T_PreWeekDeptSale where WeekID=@PreWeekID and RowType=10
      group by WeekID,RowType;
  select @BreakPoint=42789307,@Err=@@error,@Msg='д�����ܻ������ݳ���';
  if @Err != 0 goto ErrHandle;

  insert into #427893
    select WeekID,ManageDeptID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,Avg7,RowType
      from #T_WeekDeptSale where WeekID=@WeekID and RowType=10;
  select @BreakPoint=42789308,@Err=@@error,@Msg='д�뱾�����ݳ���';
  if @Err != 0 goto ErrHandle;

  insert into #427893
    select WeekID,ManageDeptID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,Avg7,RowType+1
      from #T_PreWeekDeptSale where WeekID=@PreWeekID and RowType=10;
  select @BreakPoint=42789309,@Err=@@error,@Msg='д���������ݳ���';
  if @Err != 0 goto ErrHandle;
  
  insert into #427893 select a.WeekID,a.ManageDeptID,
      case when b.Day1=0 then 100 else (a.Day1-b.Day1)/b.Day1*100 end,
      case when b.Day2=0 then 100 else (a.Day2-b.Day2)/b.Day2*100 end,
      case when b.Day3=0 then 100 else (a.Day3-b.Day3)/b.Day3*100 end,
      case when b.Day4=0 then 100 else (a.Day4-b.Day4)/b.Day4*100 end,
      case when b.Day5=0 then 100 else (a.Day5-b.Day5)/b.Day5*100 end,
      case when b.Day6=0 then 100 else (a.Day6-b.Day6)/b.Day6*100 end,
      case when b.Day7=0 then 100 else (a.Day7-b.Day7)/b.Day7*100 end,
      case when b.Total5=0 then 100 else (a.Total5-b.Total5)/b.Total5*100 end,
      case when b.Total2=0 then 100 else (a.Total2-b.Total2)/b.Total2*100 end,
      case when b.Total7=0 then 100 else (a.Total7-b.Total7)/b.Total7*100 end,
      case when b.Avg7=0 then 100 else (a.Avg7-b.Avg7)/b.Avg7*100 end,
      a.RowType+2
      from #T_WeekDeptSale a,#T_PreWeekDeptSale b
      where a.RowType=b.RowType and a.ManageDeptID=b.ManageDeptID and a.WeekID=@WeekID 
        and b.WeekID=@PreWeekID and a.RowType=10;
  select @BreakPoint=42789310,@Err=@@error,@Msg='д��Ƚ����ݳ���';
  if @Err != 0 goto ErrHandle;

  drop table #T_WeekDeptSale;
  drop table #T_PreWeekDeptSale;
  select @BreakPoint=42789311,@Err=@@error,@Msg='д��Ƚ����ݳ���';
  if @Err != 0 goto ErrHandle;
  return 0;    
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--rp_427894 			��Ʒ��ǰ�����ת��������
--�������ŵ꣨���룩
--���أ���־0=�ɹ�		
--����������   2003.11.26
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('rp_427894') and sysstat & 0xf = 4)
    drop procedure rp_427894 
GO
create procedure rp_427894 @ShopID char(4)
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031126_01,Last Mender:VL
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  
  declare @dWeekStart 	datetime;		--����һ
  declare @dMonthStart 	datetime;		--����һ��
  declare @StartDate datetime,@EndDate datetime;	--����һ�ŵ�����
  declare @WeekID int;
  declare @sCond varchar(255);
  SET NOCOUNT ON
  
  --����
  select @sCond='ShopID='''+@ShopID+''' and GoodsID in (select GoodsID from #427894)';
  --��������������
  select @StartDate=cast(left(convert(char(8),DateAdd(month,-1,getdate()),112),6)+'01' as datetime);
  select @WeekID=DatePart(week,GetDate());
  exec TL_GetWeekDateBound @WeekID,@dWeekStart output,@EndDate output;
  select @EndDate=convert(char(8),getdate(),112);
  select @dWeekStart=convert(char(8),@dWeekStart,112);
  select @dMonthStart=DateAdd(month,1,@StartDate);
  --����
  select * into #rpt_Base0001 from rpt_Base0001 where 0=1;
  exec rp_GetMonthDataToTable @StartDate,@EndDate,'rpt_Base0001',@sCond;
  select @Err=@@error,@BreakPoint=42789401,@Msg='��ȡ�±����ݴ���';
  if @Err != 0 goto ErrHandle;
  --��������,��������,DMS,��;
  update #427894 set DMS=b.NDMS,WeekSale=WeekSaleQty,PreWeekSale=WeekSaleQty1,OnPurQty=b.OpenOrderQty+b.OpenRationQty
    from #427894 a,Demand b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  --��ǰ���,��ת����
  update #427894 set StockQty=b.Qty,CostValue=b.CostValue,
      SaleDays=case when a.DMS=0 then 0 else b.Qty/a.DMS end
    from #427894 a,ShopsStock b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
 --��������,��ת����
  select GoodsID,sum(SaleQty) SaleQty,case when sum(SaleQty)=0 then 0 else sum(CloseQty)/sum(SaleQty) end Times
    into #tmp3 from #rpt_Base0001 
    where convert(char(8),SDate,112) between convert(char(8),@dMonthStart,112) and convert(char(8),@EndDate,112)
    group by GoodsID;
  update #427894 set MonthSale=b.SaleQty,MonthDays=Times
    from #427894 a,#tmp3 b 
    where a.GoodsID=b.GoodsID;
  drop table #tmp3;
  --��������,��ת����
  select GoodsID,sum(SaleQty) SaleQty,case when sum(SaleQty)=0 then 0 else sum(CloseQty)/sum(SaleQty) end Times
    into #tmp4 from #rpt_Base0001 
    where convert(char(8),SDate,112) between convert(char(8),@StartDate,112) and convert(char(8),@dMonthStart-1,112)
    group by GoodsID;
  update #427894 set PreMonthSale=b.SaleQty,PreMonthDays=Times
    from #427894 a,#tmp4 b 
    where a.GoodsID=b.GoodsID;
  drop table #tmp4;
  --�������,��������
  select ShopID,GoodsID,max(SaleDate) SaleDate,max(ReceiptDate) ReceiptDate
    into #tmp1 from LatelyGoodsList
    where ShopID=@ShopID
    group by ShopID,GoodsID;
  update #427894 set LastPurDay=b.ReceiptDate,LastSaleDay=b.SaleDate
    from #427894 a,#tmp1 b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  drop table #tmp1;
  --��ǰ�ۼ�
  update #427894 set Price=b.Price
    from #427894 a,GoodsShop b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  --Ĭ�Ϲ�Ӧ��,����
  update #427894 set VenderID=b.VenderID,Cost=b.Cost
    from #427894 a,Cost b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID and b.Flag=0
  --��������ת��������Ϊ0
  update #427894 set MonthDays=case when MonthDays<0 then 0 else MonthDays end,
      PreMonthDays=case when PreMonthDays<0 then 0 else PreMonthDays end;  
  drop table #rpt_Base0001;
  
  return 0;    
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--rp_427895 			�ŵ����۱Ƚ��ձ�
--���������ڣ����룩���ŵ꣨��ѡ��
--���أ���־0=�ɹ�		
--����������   2003.11.28
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('rp_427895') and sysstat & 0xf = 4)
    drop procedure rp_427895 
GO
create procedure rp_427895 @SDate datetime,@ShopID char(4)=null
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031128_01,Last Mender:VL
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  
  declare @StartDate	datetime;
  declare @sCond varchar(255);
  SET NOCOUNT ON
  
  select @SDate=convert(char(8),@SDate,112);
  select @StartDate=cast(left(convert(char(8),@SDate,112),6)+'01' as datetime);
  --����
  select @sCond='convert(char(8),SDate,112)=''' + convert(char(8),@SDate,112) + ''' and SaleValue<>0';
  if @ShopID is not null
    select @SCond=@SCond + ' and ShopID=''' + @ShopID + '''';    
    
  --����
  select * into #rpt_Base0001 from rpt_Base0001 where 0=1;
  exec rp_GetMonthDataToTable @SDate,@SDate,'rpt_Base0001',@sCond;
  select @Err=@@error,@BreakPoint=42789501,@Msg='��ȡ�±����ݴ���';
  if @Err != 0 goto ErrHandle;

  --������Ʒ��
  insert into #427895(ShopID,SaleSKU)
    select ShopID,count(distinct GoodsID) from #RPT_Base0001 group by ShopID;
  drop table #RPT_Base0001;
  
  --�ܵ�Ʒ��
  if @ShopID is null
    insert into #427895(ShopID,TotalSKU)
      select ShopID,count(distinct GoodsID) from GoodsShop b with (nolock)
      where ShopID in (select id from shop where shoptype between 10 and 21) and Flag<>3
      group by ShopID;
  else
    insert into #427895(ShopID,TotalSKU)
      select ShopID,count(distinct GoodsID) from GoodsShop b with (nolock)
      where ShopID=@ShopID and Flag<>3
      group by ShopID;

  --���շ���
  if @ShopID is null
    insert into #427895(ShopID,TradeNumber,SaleValue,GainValue,DiscValue,TradePrice)
      select ShopID,TradeNumber,SaleValue-DiscValue,SaleValue-DiscValue-CostValue,DiscValue,
          case when TradeNumber=0 then 0 else (SaleValue-DiscValue)/TradeNumber end
        from RPT_SaleShop with (nolock)
        where SDate=@Sdate;
  else
    insert into #427895(ShopID,TradeNumber,SaleValue,GainValue,DiscValue,TradePrice)
      select ShopID,TradeNumber,SaleValue-DiscValue,SaleValue-DiscValue-CostValue,DiscValue,
          case when TradeNumber=0 then 0 else (SaleValue-DiscValue)/TradeNumber end
        from RPT_SaleShop with (nolock)
        where SDate=@Sdate and ShopID=@ShopID;
        
  --��������
  if @ShopID is null
    insert into #427895(ShopID,ATradeNumber,ASaleValue,AGainValue,ADiscValue)
      select ShopID,sum(TradeNumber),sum(SaleValue-DiscValue),sum(SaleValue-DiscValue-CostValue),
          sum(DiscValue)
        from RPT_SaleShop with (nolock)
        where convert(char(8),SDate,112) between convert(char(8),@StartDate,112) and convert(char(8),@SDate,112)
        group by ShopID
  else
    insert into #427895(ShopID,ATradeNumber,ASaleValue,AGainValue,ADiscValue)
      select ShopID,sum(TradeNumber),sum(SaleValue-DiscValue),sum(SaleValue-DiscValue-CostValue),
          sum(DiscValue)
        from RPT_SaleShop with (nolock)
        where convert(char(8),SDate,112) between convert(char(8),@StartDate,112) and convert(char(8),@SDate,112)
          and ShopID=@ShopID
        group by ShopID
  
  --����
  select * into #tmp1 from #427895;
  delete from #427895;
  insert into #427895
    select ShopID,sum(TotalSKU),sum(SaleSKU),sum(TradeNumber),sum(TradePrice),sum(SaleValue),sum(GainValue),
        sum(DiscValue),sum(ATradeNumber),sum(ASaleValue),sum(AGainValue),sum(ADiscValue)
      from #tmp1
      group by ShopID;
  drop table #tmp1;
  
  return 0;    
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--rp_427896 			�������۱Ƚ��ձ�
--���������ڣ����룩���ŵ꣨���룩
--���أ���־0=�ɹ�		
--����������   2003.11.28
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('rp_427896') and sysstat & 0xf = 4)
    drop procedure rp_427896 
GO
create procedure rp_427896 @SDate datetime,@ShopID char(4)
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031128_01,Last Mender:VL
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  
  declare @StartDate	datetime;
  declare @DeptLevelID	int;
  declare @LevelValue	int;
  declare @SaleTotal	dec(14,2);
  declare @GainTotal	dec(14,2);
  declare @sCond varchar(255);
  SET NOCOUNT ON
  
  select @SDate=convert(char(8),@SDate,112);
  select @StartDate=cast(left(convert(char(8),@SDate,112),6)+'01' as datetime);
  select @DeptLevelID=Value from config where name='�����ż���';
  select @Err=@@error,@BreakPoint=42789601,@Msg='��ȡ�����ż������';
  if (@Err != 0) or (@DeptLevelID is null) goto ErrHandle;
  select @LevelValue=LevelValue from DeptLevel where DeptLevelID=@DeptLevelID;
  
  --����
  select @sCond='convert(char(8),SDate,112)='''+convert(char(8),@SDate,112)+''' and ShopID='''+@ShopID
    +''' and SaleValue<>0';    
    
  --����
  select * into #rpt_Base0001 from rpt_Base0001 where 0=1;
  exec rp_GetMonthDataToTable @SDate,@SDate,'rpt_Base0001',@sCond;
  select @Err=@@error,@BreakPoint=42789602,@Msg='��ȡ�±����ݴ���';
  if @Err != 0 goto ErrHandle;

  --������Ʒ��
  insert into #427896(ManageDeptID,SaleSKU)
    select Floor(b.DeptID/@LevelValue),count(distinct a.GoodsID) 
      from #RPT_Base0001 a,Goods b with (nolock)
      where a.GoodsID=b.GoodsID 
      group by Floor(b.DeptID/@LevelValue);
  drop table #RPT_Base0001;
  
  --�ܵ�Ʒ��
  insert into #427896(ManageDeptID,TotalSKU)
    select Floor(b.DeptID/@LevelValue),count(distinct a.GoodsID) 
      from GoodsShop a with (nolock),Goods b with (nolock)
      where a.ShopID=@ShopID and a.GoodsID=b.GoodsID and a.Flag<>3
      group by Floor(b.DeptID/@LevelValue);

  --���շ���
  select @SaleTotal=sum(SaleValue-DiscValue),@GainTotal=sum(SaleValue-DiscValue-CostValue) 
    from RPT_SaleGroup with (nolock)
    where SDate=@SDate and ShopID=@ShopID;
  insert into #427896(ManageDeptID,SaleValue,GainValue,DiscValue,SaleRate,GainRate)
    select ManageDeptID,SaleValue-DiscValue,SaleValue-DiscValue-CostValue,DiscValue,
        case when @SaleTotal=0 then 0 else (SaleValue-DiscValue)/@SaleTotal*100 end,
        case when @GainTotal=0 then 0 else (SaleValue-DiscValue-CostValue)/@GainTotal*100 end
      from RPT_SaleGroup with (nolock)
      where SDate=@Sdate and ShopID=@ShopID;
  insert into #427896(ManageDeptID,TradeNumber,TradePrice)
    select SGroupID,TradeNumber,TradePrice
      from RPT_CashManageDept with (nolock)
      where SDate=convert(char(8),@SDate,112) and DeptLevelID=@DeptLevelID and ShopID=@ShopID;
      
  --��������
  select @SaleTotal=sum(SaleValue-DiscValue),@GainTotal=sum(SaleValue-DiscValue-CostValue) 
    from RPT_SaleGroup with (nolock)
    where convert(char(8),SDate,112) between convert(char(8),@StartDate,112) and convert(char(8),@SDate,112)
      and ShopID=@ShopID;
  insert into #427896(ManageDeptID,ASaleValue,AGainValue,ADiscValue,ASaleRate,AGainRate)
    select ManageDeptID,sum(SaleValue-DiscValue),sum(SaleValue-DiscValue-CostValue),sum(DiscValue),
        case when @SaleTotal=0 then 0 else sum(SaleValue-DiscValue)/@SaleTotal*100 end,
        case when @GainTotal=0 then 0 else sum(SaleValue-DiscValue-CostValue)/@GainTotal*100 end
      from RPT_SaleGroup with (nolock)
      where convert(char(8),SDate,112) between convert(char(8),@StartDate,112) and convert(char(8),@SDate,112)
        and ShopID=@ShopID
      group by ManageDeptID;
  insert into #427896(ManageDeptID,ATradeNumber)
    select SGroupID,sum(TradeNumber)
      from RPT_CashManageDept with (nolock)
      where SDate between convert(char(8),@StartDate,112) and convert(char(8),@SDate,112) 
        and DeptLevelID=@DeptLevelID and ShopID=@ShopID
      group by SGroupID;
  
  --����
  select * into #tmp1 from #427896;
  delete from #427896;
  insert into #427896
    select ManageDeptID,sum(TotalSKU),sum(SaleSKU),sum(TradeNumber),sum(TradePrice),sum(SaleValue),sum(SaleRate),
        sum(GainValue),sum(GainRate),sum(DiscValue),sum(ATradeNumber),sum(ASaleValue),sum(ASaleRate),
        sum(AGainValue),sum(AGainRate),sum(ADiscValue)
      from #tmp1
      group by ManageDeptID;
  drop table #tmp1;
  
  return 0;    
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go





--rp_427890 ��Ʒ���������ϸ��                                              
--������κޱ 2003.11.24
--�޸ģ���Ϊ��wastebookȡֵ ���ת�����ݲ�ƽ������  κޱ 2003.11.28 
--���㹫ʽ:
----�跽����=sum(Qty*Directflag) 
----�跽���=sum(CostValue*Directflag)
----�ڳ����=��ĩ-�跽+����

if exists (select * from sysobjects where id = object_id('dbo.rp_427890') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427890
GO
create procedure dbo.rp_427890 @Begindate datetime,@shopid char(4),@goodsid int 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031124_01,Last Mender:weiwei
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag     int;
  
  declare @goodsid1     int;
  declare @shopid1   	char(4);
  declare @DeptID	int;
  declare @sdate	datetime;	
  declare @QMCount      dec(12,2);
  declare @QMCostValue	dec(12,2);
  declare @Cost 	dec(12,4);
  
  declare @tablename    char(15);
  declare @stable       char(19);
  declare @SQL1		char(1024);
  declare @SQL2		char(1024);
  
  SET NOCOUNT ON
  select @tempflag=0;

create table #tmp_427890(
SDate		datetime	null,  --��������
ShopID		char(4)		null,  --�����ŵ�
GoodsID		int		null,  --��Ʒ���
DeptID		int		null,  --С����
Cost		dec(12,4)	null,  --ִ�н���
QCCount     	dec(12,2)	null,  --�ڳ�����
QCCostValue	dec(12,2) 	null,  --�ڳ����
JCount     	dec(12,2)	null,  --�跽����
JCostValue	dec(12,2) 	null,  --�跽���	
DCount     	dec(12,2)	null,  --��������
DCostValue	dec(12,2) 	null,  --�������
QMCount     	dec(12,2)	null,  --��ĩ����
QMCostValue	dec(12,2) 	null   --��ĩ���
);

create table #427890_tmp1(
SDate		datetime	null,  --��������
ShopID		char(4)		null,  --�����ŵ�
GoodsID		int		null,  --��Ʒ���
DeptID		int		null,  --С����
JCount     	dec(12,2) 	default 0.00 null,  --�跽����
JCostValue	dec(12,2) 	default 0.00 null,    --�跽���	
DCount     	dec(12,2) 	default 0.00 null,    --��������
DCostValue	dec(12,2) 	default 0.00 null     --�������
);

create table #427890_tmp2(
SDate		datetime	null,  --��������
ShopID		char(4)		null,  --�����ŵ�
GoodsID		int		null,  --��Ʒ���
DeptID		int		null,  --С����
maxserialid     int 		null   --������к�
);

create table #427890_tmp3(
SDate		datetime	null,  --��������
ShopID		char(4)		null,  --�����ŵ�
GoodsID		int		null,  --��Ʒ���
DeptID		int		null,  --С����
QMCount     	dec(12,2) 	default 0.00 null,    --��ĩ����
QMCostValue	dec(12,2) 	default 0.00 null      --��ĩ���
);

  select @Err=@@Error,@BreakPoint=427000,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;
  
  select @tempflag=1;
  select @tablename='wastebook'+left(convert(char(8),@BeginDate,112),6);
  --select @stable='dbo.'+@tablename;
  if not exists (select * from dbo.sysobjects 
	where id = object_id(@tablename) and type='U') 
	select @tablename='wastebook'; 
  select @Err=@@Error,@BreakPoint=427010,@Msg='ȡ�±����';
  if @Err != 0 goto ErrHandle;	
  
  Select @SQL1=
  'insert into #427890_tmp1(Sdate,Shopid,goodsid,deptid,JCount,JCostValue) '+
  '	select Sdate,Shopid,goodsid,deptid,sum(Qty*Directflag) JCount,sum(CostValue*Directflag) JCostValue '+
  '	from '+@tablename +' where shopid=''' +@shopid+'''' + ' and goodsid= '+cast(@goodsid as char(6)) +' and sheettype <> 101' +
  ' 	group by Sdate,Shopid,goodsid,deptid';
    
  exec (@SQL1);	
  select @Err=@@Error,@BreakPoint=427020,@Msg='ȡ�跽����';
  if @Err != 0 goto ErrHandle;
  
  Select @SQL2=
  'insert into #427890_tmp1(Sdate,Shopid,goodsid,deptid,DCount,DCostValue) '+
  '	select Sdate,Shopid,goodsid,deptid,sum(Qty) DCount,sum(CostValue) DCostValue '+
  '	from '+@tablename +' where shopid=''' +@shopid+'''' + ' and goodsid= '+cast(@goodsid as char(6)) +' and sheettype = 101' +
  ' 	group by Sdate,Shopid,goodsid,deptid';
  exec (@SQL2);	
  select @Err=@@Error,@BreakPoint=427030,@Msg='ȡ��������';
  if @Err != 0 goto ErrHandle;
  
  insert into #tmp_427890(Sdate,Shopid,goodsid,deptid,JCount,JCostValue,DCount,DCostValue) 
  	select Sdate,Shopid,goodsid,deptid,sum(JCount) JCount,sum(JCostValue) JCostValue,sum(DCount) DCount,sum(DCostValue) DCostValue 
  	from #427890_tmp1 group by Sdate,Shopid,goodsid,deptid;
  select @Err=@@Error,@BreakPoint=427040,@Msg='���ܳ���';
  if @Err != 0 goto ErrHandle;
  
  --ȡ��ĩ  �㷨��ȡ������ŵ굥Ʒ��������кŵĽ��
  Select @SQL1=
  'insert into #427890_tmp2(Sdate,Shopid,goodsid,deptid,maxserialid) '+
  '	select b.Sdate,b.Shopid,b.goodsid,b.deptid,max(a.serialid) '+
  '	from '+@tablename +' a,#tmp_427890 b where a.sdate=b.sdate and a.Shopid=b.shopid and a.goodsid=b.goodsid and a.deptid=b.deptid '+
  '	group by b.Sdate,b.Shopid,b.goodsid,b.deptid '; 
  exec (@SQL1);	
  select @Err=@@Error,@BreakPoint=427050,@Msg='ȡ�����ˮ�ų���';
  if @Err != 0 goto ErrHandle;
  
  Select @SQL2=
  'insert into #427890_tmp3(Sdate,Shopid,goodsid,deptid,QMCount,QMCostValue) '+
  '	select b.Sdate,b.Shopid,b.goodsid,b.deptid,a.closeqty,a.CloseCostV '+
  '	from '+@tablename +' a,#427890_tmp2 b where a.sdate=b.sdate and a.Shopid=b.shopid and a.goodsid=b.goodsid and a.deptid=b.deptid and a.serialid=b.maxserialid '; 
  exec (@SQL2);	
  select @Err=@@Error,@BreakPoint=427060,@Msg='ȡ��ĩ����';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select Sdate,Shopid,goodsid,deptid,QMCount,QMCostValue from #427890_tmp3; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @sdate,@ShopID1,@GoodsID1,@deptid,@QMCount,@QMCostValue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427890 set QMCount=@QMCount,QMCostValue=@QMCostValue where sdate=@sdate and shopid=@shopid1 and goodsid=@goodsid1 and deptid=@deptid;
 	select @Err=@@Error,@BreakPoint=427070,@msg='������ĩ����';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  update #tmp_427890 set QCCount=QMCount+DCount-JCount where 1=1;
  update #tmp_427890 set QCCostValue=QMCostValue+DCostValue-JCostValue where 1=1;
  select @Err=@@Error,@BreakPoint=427080,@Msg='ȡ�ڳ�����';
  if @Err != 0 goto ErrHandle;
  drop table #427890_tmp1;
  drop table #427890_tmp2;
  drop table #427890_tmp3;
  
  select distinct Shopid,goodsid into #tmp1 from #tmp_427890;
  select a.Shopid,a.goodsid,b.cost into #rp_427890tmp1 from #tmp1 a,cost b 
  	where a.shopid=b.shopid and a.goodsid=b.goodsid and b.flag=0;
  
  drop table #tmp1;
  declare cur_stock cursor local for
      	select Shopid,goodsid,cost from #rp_427890tmp1; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @ShopID1,@GoodsID1,@cost;
    	if  @@fetch_status !=0 break;
 	update #tmp_427890 set Cost=@cost where shopid=@shopid1 and goodsid=@goodsid1;
 	select @Err=@@Error,@BreakPoint=427090,@msg='����ִ�н��۳���';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  		
  insert into #427890 select * from #tmp_427890;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #rp_427890tmp1;
  drop table #tmp_427890;
  return 0;   
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427890;
  return -1;
End
Go


--rp_427891 ��Ʒ�����ʻ��ܱ���                                              
--������κޱ 2003.11.26
--���㹫ʽ:
----�跽����=sum(Qty*Directflag) 
----�跽���=sum(CostValue*Directflag)
----�ڳ����=��ĩ-�跽+����

if exists (select * from sysobjects where id = object_id('dbo.rp_427891') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427891
GO
create procedure dbo.rp_427891 @BeginDate datetime,@shopid char(4),@sgroupid int 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031126_01,Last Mender:weiwei
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag     int;
  
  declare @QMCount     	dec(12,3);         --��ĩ����
  declare @QMCostValue	dec(12,2);   --��ĩ���
--  declare @maxsdate     datetime;
  declare @maxserialid     int;
  declare @DCount     	dec(12,3); 	    --��������
  declare @DCostValue	dec(12,2);  --�������
  declare @goodsid     int;
  declare @shopid1   	char(4);
  declare @DeptID	int;

  declare @tablename    char(15);
  declare @stable       char(19);
  declare @SQL1		char(1024);

  declare @deptlevel    int;
  declare @levelvalue   int;
  
  SET NOCOUNT ON
  select @tempflag=0;

create table #tmp_427891(
ShopID		char(4)		null,  --�����ŵ�
GoodsID		int		null,  --��Ʒ���
DeptID		int		null,  --С����
QCCount     	dec(12,3) 	default 0 null,  --�ڳ�����
QCCostValue	dec(12,2) 	default 0 null,  --�ڳ����
JCount     	dec(12,3) 	default 0 null,  --�跽����
JCostValue	dec(12,2) 	default 0 null,  --�跽���	
DCount     	dec(12,3) 	default 0 null,  --��������
DCostValue	dec(12,2) 	default 0 null,  --�������
QMCount     	dec(12,3) 	default 0 null,  --��ĩ����
QMCostValue	dec(12,2) 	default 0 null   --��ĩ���
);
  
  select @Err=@@Error,@BreakPoint=427000,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=427010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  	
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=427020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tablename='wastebook'+left(convert(char(8),@BeginDate,112),6);
  --select @stable='dbo.'+@tablename;
  if not exists (select * from dbo.sysobjects 
	where id = object_id(@tablename) and type='U') 
	select @tablename='wastebook'; 
  select @Err=@@Error,@BreakPoint=427030,@Msg='ȡ�±����';
  if @Err != 0 goto ErrHandle;	
  
  create table #427891_tmp(
SerialID	int		null,	-- ˳���  
SDate		datetime	null,  --��������
ShopID		char(4)		null,  --�����ŵ�
GoodsID		int		null,  --��Ʒ���
DeptID		int		null,   --С����
Directflag		int		null,		--���ʷ���:+1=Dr /-1=Cr
Qty			dec(12,3)	default 0 null,		--��������
CostValue		dec(12,2)	default 0 null,		--�������
CloseQty		dec(12,3)	default 0 null,		--�������
CloseCostV		dec(12,2)	default 0 null, 		--�����
SheetType		int		null 		--��������
);

  create table #rp_427891tmp3(
ShopID		char(4)		null,  --�����ŵ�
GoodsID		int		null,  --��Ʒ���
DeptID		int		null,   --С����
--QCCount     	dec(12,3) 	default 0 null,  --�ڳ�����
--QCCostValue	dec(12,2) 	default 0 null,  --�ڳ����
JCount     	dec(12,3) 	default 0 null,  --�跽����
JCostValue	dec(12,2) 	default 0 null,  --�跽���	
DCount     	dec(12,3) 	default 0 null,  --��������
DCostValue	dec(12,2) 	default 0 null   --�������
--QMCount     	dec(12,3) 	default 0 null,  --��ĩ����
--QMCostValue	dec(12,2) 	default 0 null   --��ĩ���
);

  select @Err=@@Error,@BreakPoint=427040,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;

  Select @SQL1=
  'insert into #427891_tmp select serialid,Sdate,Shopid,goodsid,deptid,Directflag,Qty,CostValue,CloseQty,CloseCostV,SheetType '+ 
  '	from '+@tablename +' where shopid=''' +@shopid+''''+' and round(deptid/'+ltrim(rtrim(cast(@levelvalue as char))) +',0)= '+ ltrim(rtrim(cast(@sgroupid as char)));
  exec (@SQL1);	
  select @Err=@@Error,@BreakPoint=427050,@Msg='ȡֵ����';
  if @Err != 0 goto ErrHandle;

  insert into #rp_427891tmp3(ShopID,GoodsID,DeptID,JCount,JCostValue) 
  select ShopID,GoodsID,DeptID,sum(Directflag*qty),sum(Directflag*CostValue) 
  	from #427891_tmp where sheettype <> 101 
  	group by Shopid,goodsid,deptid;
  select @Err=@@Error,@BreakPoint=427060,@Msg='ȡ�跽ֵ����';
  if @Err != 0 goto ErrHandle;

  insert into #rp_427891tmp3(ShopID,GoodsID,DeptID,DCount,DCostValue) 
  	select ShopID,GoodsID,DeptID,sum(qty),sum(costvalue) 
  		from #427891_tmp where sheettype = 101 
  		group by Shopid,goodsid,deptid;
  select @Err=@@Error,@BreakPoint=427070,@Msg='ȡ����ֵ����';
  if @Err != 0 goto ErrHandle;	
  
  insert into #tmp_427891(ShopID,GoodsID,DeptID,JCount,JCostValue,DCount,DCostValue)
  select ShopID,GoodsID,DeptID,sum(JCount) JCount,sum(JCostValue) JCostValue,sum(DCount) DCount,sum(DCostValue) DCostValue from #rp_427891tmp3 
  	group by ShopID,GoodsID,DeptID;
  select @Err=@@Error,@BreakPoint=427080,@Msg='���ܳ���';
  if @Err != 0 goto ErrHandle;	
  
  declare cur_stock cursor local for
      	select ShopID,GoodsID from #427891_tmp; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @ShopID1,@GoodsID;
    	if  @@fetch_status !=0 break;
-- 	select @maxsdate=max(sdate) from #427891_tmp where shopid=@shopid1 and goodsid=@goodsid;
 	select @maxserialid=max(serialid) from #427891_tmp where shopid=@shopid1 and goodsid=@goodsid;
 	select @QMCount=CloseQty,@QMCostValue=CloseCostV from #427891_tmp where shopid=@shopid1 and goodsid=@goodsid and serialid=@maxserialid;
 	update #tmp_427891 set QMCount=@QMCount,QMCostValue=@QMCostValue where shopid=@shopid1 and goodsid=@goodsid;
 	select @Err=@@Error,@BreakPoint=427090,@msg='������ĩ����';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle; 	
  
  update #tmp_427891 set QCCount=QMCount+DCount-JCount where 1=1;
  update #tmp_427891 set QCCostValue=QMCostValue+DCostValue-JCostValue where 1=1;
  select @Err=@@Error,@BreakPoint=427100,@Msg='ȡ�ڳ�����';
  if @Err != 0 goto ErrHandle;
  
  insert into #427891 select * from #tmp_427891;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #rp_427891tmp3;
  drop table #427891_tmp;
  drop table #tmp_427891;
  return 0;   
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427891;
  return -1;
End
Go


--rp_427892 ���Ž�������ܱ�                                              
--������κޱ 2003.11.27
--���㹫ʽ:
----�跽����=a.ReceiptQty+a.RetQty-a.TransferOutQty+a.TransferInQty+a.PDQty-a.LostQty-a.WSaleQty-a.UseQty+a.AdjustQty --ת�಻Ӱ�쵥Ʒ���������ͽ��
-------------PriceChgQty�Ǳ��ʱ��Ʒ���
----�跽���=a.ReceiptValue+a.RetValue-a.TransferOutValue+a.TransferInValue+a.PDValue-a.LostValue-a.WSaleValue-a.UseValue+a.AdjustValue --ת�಻Ӱ�쵥Ʒ���������ͽ��
----�ڳ����=��ĩ-�跽+����

if exists (select * from sysobjects where id = object_id('dbo.rp_427892') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427892
GO
create procedure dbo.rp_427892 @Begindate datetime,@Enddate datetime,@shopid char(4) 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031127_01,Last Mender:weiwei
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag     int;
  
  declare @QMCount     	int;         --��ĩ����
  declare @QMCostValue	dec(12,2);   --��ĩ���
  declare @maxsdate     datetime;
  declare @ManageDeptID  int;
  declare @shopid1   	char(4);

--  declare @deptlevel    int;
--  declare @levelvalue   int;
  
  SET NOCOUNT ON
  select @tempflag=0;

create table #tmp_427892(
ShopID		char(4)		null,  --�����ŵ�
ManageDeptID	int		null,  --������
QCCostValue	dec(12,2) 	null,  --�ڳ����
JCostValue	dec(12,2) 	null,  --�跽���	
DCostValue	dec(12,2) 	null,  --�������
QMCostValue	dec(12,2) 	null   --��ĩ���
);

  select @Err=@@Error,@BreakPoint=427000,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;

  select @tempflag=1;
  select a.SDate,a.ShopID,a.ManageDeptID,a.SaleCost DCostValue,a.CloseCostV QMCostValue,
	sum(a.ReceiptValue+a.RetValue-a.TransferOutValue+a.TransferInValue+a.PDValue-a.LostValue-a.WSaleValue-a.UseValue+a.AdjustValue) JCostValue 
	into #rp_427892tmp1 from RPT_Base0021 a 
	where a.shopid=@shopid and convert(char(10),a.SDate,120) between @BeginDate and @EndDate 
	group by a.SDate,a.ShopID,a.ManageDeptID,a.SaleCost,a.CloseCostV;
  select @Err=@@Error,@BreakPoint=427030,@Msg='ȡֵ����';
  if @Err != 0 goto ErrHandle;
  
  select a.ShopID,a.ManageDeptID,sum(JCostValue) JCostValue,sum(DCostValue) DCostValue 
  	into #rp_427892tmp2 from #rp_427892tmp1 a 
  	group by a.shopid,a.ManageDeptID;
  select @Err=@@Error,@BreakPoint=427031,@Msg='ͳ�Ƴ���';
  if @Err != 0 goto ErrHandle;
  
  insert into #tmp_427892(ShopID,ManageDeptID,JCostValue,DCostValue) 
  	select ShopID,ManageDeptID,JCostValue,DCostValue 
  		from  #rp_427892tmp2;
  select @Err=@@Error,@BreakPoint=427040,@Msg='ȡֵ����';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select ShopID,ManageDeptID from #rp_427892tmp1; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @ShopID1,@ManageDeptID;
    	if  @@fetch_status !=0 break;
 	select @maxsdate=max(sdate) from #rp_427892tmp1 where shopid=@shopid1 and ManageDeptID=@ManageDeptID;
 	--select @QCCount=QCCount,@QCCostValue=QCCostValue from #rp_427892tmp1 where shopid=@shopid and goodsid=@goodsid and sdate=@minsdate;
 	select @QMCostValue=QMCostValue from #rp_427892tmp1 where shopid=@shopid1 and ManageDeptID=@ManageDeptID and sdate=@maxsdate;
 	update #tmp_427892 set QMCostValue=@QMCostValue where shopid=@shopid1 and ManageDeptID=@ManageDeptID;
 	select @Err=@@Error,@BreakPoint=427050,@msg='������ĩ����';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle; 	
  
  update #tmp_427892 set QCCostValue=QMCostValue+DCostValue-JCostValue where 1=1;
  select @Err=@@Error,@BreakPoint=427070,@Msg='ȡ�ڳ�����';
  if @Err != 0 goto ErrHandle;
  
  insert into #427892 select * from #tmp_427892;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #rp_427892tmp1;
  drop table #rp_427892tmp2;
  return 0;   
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427892;
  return -1;
End
Go



----------------------------------------------------------------------------------------
--rp_427899			��Ѷ��Ʒ�����ٱ���    
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������κޱ 2003.12.10
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427899') and type = 'P')
  drop procedure dbo.rp_427899
GO

create procedure dbo.rp_427899 @PlanID int,@ShopID char(4) 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031210_01,Last Mender:κޱ
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag     int;
  
  declare @PriceBeginDate	datetime;       --���ۿ�ʼ���� (�ۼۿ�ʼ����)
  declare @PriceEndDate	        datetime;       --���۽������� (�ۼ۽�������)
  declare @shopid1		char(4);
  declare @goodsid		int;
  declare @maxsdate		datetime;  --�������������
  declare @SaleQty		dec(12,3);  --��������
  declare @SaleValue		dec(12,2);  --���۽��
  declare @SaleCost		dec(12,2);  --���۳ɱ����
  declare @StockQty		dec(12,3);  --�������
  declare @OpenOrderQty		dec(12,3);  --��;��������

  SET NOCOUNT ON
  select @tempflag=0;
  
  create table #tmp_427899(
ShopID          char(4)         null,               --���(ֻ��Ϊ�ֵ���)    
GoodsID		int		null,		--����(������Ʒ����)
Venderid        int             null,               --��Ӧ�̱���(�μӴ����Ĺ�Ӧ��)
Price		dec(12,2)	default 0 null,		--�����ۼ�
Cost		dec(12,4)	default 0 null,		--��������
PriceBeginDate	datetime	null,		--���ۿ�ʼ���� (�ۼۿ�ʼ����)
PriceEndDate	datetime	null,		--���۽������� (�ۼ۽�������)
YSdays		int 		default 0 null,				--��������
Maxsdate        datetime	null,		--�������������
SaleQty		dec(12,3)	default 0 null,	--��������	
SaleValue	dec(12,2)	default 0 null,	--���۽��
SaleCost	dec(12,2)	default 0 null,		--���۳ɱ����
ProfitValue	dec(12,2)	default 0 null,			--ë��
profitrate	dec(4,2)	default 0 null,	 --ë����
Avgsaleqty	dec(12,3)	default 0 null,	--�վ���������	
AvgSaleValue	dec(12,2)	default 0 null,	--�վ����۽��
SYdays		int 		default 0 null,			--ʣ������
StockQty	dec(12,3) 	default 0 null,			--�������
OpenOrderQty	dec(12,3) 	default 0 null,			--��;��������
KPdays		dec(12,2) 	default 0 null,			--��������
KXdays		dec(12,2) 	default 0 null			--��������
);

  select @Err=@@Error,@BreakPoint=420000,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;

  --ȡ��ǰ�����ƻ���Ʒ  
  select @tempflag=1;
  insert into #tmp_427899(ShopID,GoodsID,Venderid,Price,Cost,PriceBeginDate,PriceEndDate)
 	 select ShopID,GoodsID,Venderid,Price,Cost,PriceBeginDate,PriceEndDate from nowpromotionplan0 
 	 where planid=@PlanID and shopid=@ShopID;
  select @Err=@@Error,@BreakPoint=420010,@Msg='ȡ�����ƻ����ݳ���';
  if @Err != 0 goto ErrHandle;
	 
  --ͳ������
  select @PriceBeginDate=PriceBeginDate,@PriceEndDate=PriceEndDate from #tmp_427899;
  select @Err=@@Error,@BreakPoint=420020,@Msg='ȡ����ʱ�����';
  if @Err != 0 goto ErrHandle;

  select a.shopid,a.goodsid,max(sdate) maxsdate,sum(a.SaleQty) SaleQty,sum(a.SaleValue) SaleValue,sum(a.SaleCost) SaleCost into #rp_427899tmp1 
  	from RPT_Base0001 a,#tmp_427899 b 
  	where a.shopid=b.shopid and a.goodsid=b.goodsid and convert(char(10),a.sdate,120) between @PriceBeginDate and @PriceEndDate 
  	group by a.shopid,a.goodsid;
  select @Err=@@Error,@BreakPoint=420030,@Msg='ȡ�������ݳ���';
  if @Err != 0 goto ErrHandle;
  	
  declare cur_stock cursor local for
      	select shopid,goodsid,maxsdate,SaleQty,SaleValue,SaleCost from #rp_427899tmp1; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid1,@goodsid,@maxsdate,@SaleQty,@SaleValue,@SaleCost;
    	if  @@fetch_status !=0 break;
 	update #tmp_427899 set Maxsdate=@Maxsdate,SaleQty=@SaleQty,SaleValue=@SaleValue,SaleCost=@SaleCost where shopid=@shopid1 and goodsid=@goodsid;
	select @Err=@@Error,@BreakPoint=420040,@msg='�����������ݳ���';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  update #tmp_427899 set ProfitValue=SaleValue-SaleCost;
  update #tmp_427899 set ProfitValue=0 where ProfitValue is null;
  update #tmp_427899 set profitrate=(SaleValue-SaleCost)/SaleValue*100 where SaleValue <> 0;
  update #tmp_427899 set profitrate=0 where profitrate is null;
  update #tmp_427899 set YSdays=cast((Maxsdate-PriceBeginDate+1) as int);
  update #tmp_427899 set YSdays=0 where YSdays is null;
  update #tmp_427899 set Avgsaleqty=SaleQty/YSdays where YSdays <> 0;
  update #tmp_427899 set AvgSaleValue=SaleValue/YSdays where YSdays <> 0;
  update #tmp_427899 set SYdays=cast((PriceEndDate-Maxsdate+1) as int);
  update #tmp_427899 set SYdays=0 where SYdays is null;
  select @Err=@@Error,@BreakPoint=420050,@Msg='����ë�����վ�ֵ����';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427899tmp1;
  
  --ͳ�ƿ��
  select a.shopid,a.goodsid,b.qty StockQty,c.OpenOrderQty into #rp_427899tmp2 from #tmp_427899 a,shopsstock b,demand c 
  	where a.shopid=b.shopid and a.goodsid=b.goodsid and a.shopid=c.shopid and a.goodsid=b.goodsid;
  select @Err=@@Error,@BreakPoint=420060,@Msg='ȡ���ֵ����';
  if @Err != 0 goto ErrHandle;
  	
  declare cur_stock cursor local for
      	select shopid,goodsid,StockQty,OpenOrderQty from #rp_427899tmp2; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid1,@goodsid,@StockQty,@OpenOrderQty;
    	if  @@fetch_status !=0 break;
 	update #tmp_427899 set StockQty=@StockQty,OpenOrderQty=@OpenOrderQty where shopid=@shopid1 and goodsid=@goodsid;
	select @Err=@@Error,@BreakPoint=420070,@msg='���¿��ֵ����';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  update #tmp_427899 set KPdays=OpenOrderQty/Avgsaleqty where Avgsaleqty <> 0;
  update #tmp_427899 set KPdays=99999999.99 where Avgsaleqty = 0;
  update #tmp_427899 set KXdays=StockQty/Avgsaleqty where Avgsaleqty <> 0;
  update #tmp_427899 set KXdays=99999999.99 where Avgsaleqty = 0;
  select @Err=@@Error,@BreakPoint=420080,@Msg='���¿����������';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427899tmp2;
  
  insert into #427899 select * from #tmp_427899;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #tmp_427899;
  return  0;  
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427899;
  return -1;
End
Go

----------------------------------------------------------------------------------------
--rp_427900			��Ʒҵ�����˱�    
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������κޱ 2003.12.11
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427900') and type = 'P')
  drop procedure dbo.rp_427900
GO

create procedure dbo.rp_427900 @begindate int,@enddate int,@DeptID int 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031211_01,Last Mender:κޱ
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag     int;
  
  declare @shopid		char(4);
  declare @goodsid		int;
  declare @countno		int;	    --������Ʒ��
  declare @TolSaleQty		dec(12,3);  --��������
  declare @TolSaleValue		dec(12,2);  --���۽��
  declare @TolSaleCost		dec(12,2);  --���۳ɱ����
  declare @TolProfitValue	dec(12,2);  --��ë��
  declare @TolStockvalue	dec(12,2);  --�ܿ����
  declare @Stockvalue		dec(12,2);  --�����
  declare @venderid		int;	    
  declare @BeginYM		int;
  declare @EndYM		int;

  SET NOCOUNT ON
  select @tempflag=0;
  
  create table #tmp_427900(
DeptID		int		null,				--С�����
GoodsID		int		null,		--��Ʒ����
ShopID          char(4)         null,               --���(ֻ��Ϊ�ֵ���)    
Venderid        int             null,               --Ĭ�Ϲ�Ӧ�̱���
Countno		int		default 0 null,		--������Ʒ��
TolSaleQty	dec(12,3)	default 0 null,	--����������	
TolSaleValue	dec(12,2)	default 0 null,	--�����۽��
TolSaleCost	dec(12,2)	default 0 null,		--�����۳ɱ�
TolProfitValue  dec(12,2)	default 0 null,			--��ë��
SaleQty		dec(12,3)	default 0 null,	--��������	
AvgSaleQty	dec(12,3)	default 0 null,	--(С��)ƽ����������
DiffSaleQty	dec(12,3)	default 0 null,	--��ƽ��ֵ����
SaleValue	dec(12,2)	default 0 null,	--���۽��
AvgSaleValue	dec(12,2)	default 0 null,	--(С��)ƽ�����۽��
DiffSaleValue	dec(12,2)	default 0 null,	--��ƽ��ֵ����
SaleCost	dec(12,2)	default 0 null,		--���۳ɱ�
AvgSaleCost	dec(12,2)	default 0 null,	--(С��)ƽ�����۳ɱ�
DiffSaleCost	dec(12,2)	default 0 null,	--��ƽ��ֵ����
ProfitValue	dec(12,2)	default 0 null,			--ë��
AvgProfitValue	dec(12,2)	default 0 null,	--(С��)ƽ��ë��
DiffProfitValue	dec(12,2)	default 0 null,	--��ƽ��ֵ����
profitrate	dec(4,2)	default 0 null,	 --ë����
Avgprofitrate	dec(4,2)	default 0 null,	--(С��)ƽ��ë����
Diffprofitrate	dec(4,2)	default 0 null,	--��ƽ��ֵ����
TolStockvalue   dec(12,2)       default 0 null, --С���ܿ��
Stockvalue	dec(12,2)	default 0 null,  --��Ʒ���
DeptGMROI	dec(12,4)	default 0 null,	--Ʒ��ƽ��GMROI	
GoodsGMROI	dec(12,4)	default 0 null 	--��Ʒʵ��GMROI	
);

  select @Err=@@Error,@BreakPoint=420000,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;

  --ͳ������ֵ
  select @tempflag=1;
  --select @BeginYM=year(@begindate)*100+month(@begindate);
  --select @EndYM=year(@enddate)*100+month(@enddate);
  select a.deptid,b.goodsid,b.shopid,sum(b.SaleQty) SaleQty,sum(b.SaleValue) SaleValue,sum(b.SaleCost) SaleCost into #rp_427900tmp 
  		from goods a,rpt_base0003 b 
  		where a.deptid=@DeptID and a.goodsid=b.goodsid and b.MonthID between @begindate and @enddate   
  		group by a.deptid,b.goodsid,b.shopid;
  select @Err=@@Error,@BreakPoint=420010,@Msg='ȡ����ֵ����';
  if @Err != 0 goto ErrHandle;
  
  insert into #rp_427900tmp 
  	select a.deptid,b.goodsid,b.shopid,sum(b.SaleQty) SaleQty,sum(b.SaleValue) SaleValue,sum(b.SaleCost) SaleCost 
  		from goods a,rpt_base0001 b 
  		where a.deptid=@DeptID and a.goodsid=b.goodsid and (year(b.sdate)*100+month(b.sdate)) between @Begindate and @Enddate   
  		group by a.deptid,b.goodsid,b.shopid;
  select @Err=@@Error,@BreakPoint=420012,@Msg='ȡ����ֵ����';
  if @Err != 0 goto ErrHandle;
  
  insert into #tmp_427900(deptid,goodsid,shopid,SaleQty,SaleValue,SaleCost)
  	select deptid,goodsid,shopid,sum(SaleQty),sum(SaleValue),sum(SaleCost) 
  	from #rp_427900tmp group by deptid,goodsid,shopid;
  select @Err=@@Error,@BreakPoint=420015,@Msg='��������ֵ����';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427900tmp;
  
  update #tmp_427900 set ProfitValue=SaleValue-SaleCost where 1=1; 
  update #tmp_427900 set profitrate=(SaleValue-SaleCost)/SaleValue*100 where SaleValue <> 0;
  select @Err=@@Error,@BreakPoint=420020,@Msg='����ë������';
  if @Err != 0 goto ErrHandle;
    
  --ͳ��ƽ������ֵ
  select shopid,count(distinct goodsid) countno,sum(SaleQty) TolSaleQty,sum(SaleValue) TolSaleValue,sum(SaleCost) TolSaleCost,sum(ProfitValue) TolProfitValue 
  	into #rp_427900tmp1 from #tmp_427900 group by shopid;
  select @Err=@@Error,@BreakPoint=420030,@Msg='ͳ�������۳���';
  if @Err != 0 goto ErrHandle;
  	
  declare cur_stock cursor local for
      	select shopid,countno,TolSaleQty,TolSaleValue,TolSaleCost,TolProfitValue from #rp_427900tmp1; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid,@countno,@TolSaleQty,@TolSaleValue,@TolSaleCost,@TolProfitValue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427900 set countno=@countno,TolSaleQty=@TolSaleQty,TolSaleValue=@TolSaleValue,TolSaleCost=@TolSaleCost,TolProfitValue=@TolProfitValue where shopid=@shopid;
	select @Err=@@Error,@BreakPoint=420040,@msg='���������۳���';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420050,@Msg='���������۳���';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427900tmp1;
 
  update #tmp_427900 set AvgSaleQty=TolSaleQty/countno where countno <> 0;
  update #tmp_427900 set AvgSaleValue=TolSaleValue/countno where countno <> 0;
  update #tmp_427900 set AvgSaleCost=TolSaleCost/countno where countno <> 0;
  update #tmp_427900 set AvgProfitValue=AvgSaleValue-AvgSaleCost where 1=1;
  update #tmp_427900 set Avgprofitrate=(AvgSaleValue-AvgSaleCost)/AvgSaleValue*100 where AvgSaleValue <> 0;
  update #tmp_427900 set DiffSaleQty=SaleQty-AvgSaleQty  where 1=1;
  update #tmp_427900 set DiffSaleValue=SaleValue-AvgSaleValue where 1=1;
  update #tmp_427900 set DiffSaleCost=SaleCost-AvgSaleCost where 1=1;
  update #tmp_427900 set DiffProfitValue=ProfitValue-AvgProfitValue where 1=1;
  update #tmp_427900 set Diffprofitrate=profitrate-Avgprofitrate where 1=1;
  select @Err=@@Error,@BreakPoint=420060,@Msg='ͳ��ƽ��ֵ����';
  if @Err != 0 goto ErrHandle;
  
  --ͳ�ƿ��
  select a.shopid,a.goodsid,b.CostValue Stockvalue into #rp_427900tmp2 from #tmp_427900 a,shopsstock b 
  	where a.shopid=b.shopid and a.goodsid=b.goodsid;
  select shopid,sum(Stockvalue) TolStockvalue into #rp_427900tmp3 from #rp_427900tmp2 group by shopid;
  select @Err=@@Error,@BreakPoint=420070,@Msg='ͳ�ƿ�����';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select shopid,goodsid,Stockvalue from #rp_427900tmp2; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid,@goodsid,@Stockvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427900 set Stockvalue=@Stockvalue where shopid=@shopid and goodsid=@goodsid;
	select @Err=@@Error,@BreakPoint=420080,@msg='���µ�Ʒ������';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420090,@Msg='���µ�Ʒ������';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427900tmp2;	
  
  declare cur_stock cursor local for
      	select shopid,TolStockvalue from #rp_427900tmp3; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid,@TolStockvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427900 set TolStockvalue=@TolStockvalue where shopid=@shopid;
	select @Err=@@Error,@BreakPoint=420100,@msg='�����ܿ�����';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420110,@Msg='�����ܿ�����';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427900tmp3;	
  
  update #tmp_427900 set DeptGMROI=TolProfitValue/TolStockvalue*100 where TolStockvalue <> 0;
  update #tmp_427900 set DeptGMROI=9999999.0000 where TolStockvalue = 0;
  update #tmp_427900 set GoodsGMROI=ProfitValue/Stockvalue*100 where Stockvalue <> 0;
  update #tmp_427900 set GoodsGMROI=9999999.0000 where Stockvalue = 0;
  select @Err=@@Error,@BreakPoint=420120,@Msg='ͳ��GMROI����';
  if @Err != 0 goto ErrHandle;
  
  --ȡĬ�Ϲ�Ӧ��
  select a.shopid,a.goodsid,b.venderid into #rp_427900tmp4 from #tmp_427900 a,cost b 
  	where a.shopid=b.shopid and a.goodsid=b.goodsid and b.flag=0;
  select @Err=@@Error,@BreakPoint=420130,@Msg='ȡĬ�Ϲ�Ӧ�̳���';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select shopid,goodsid,venderid from #rp_427900tmp4; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid,@goodsid,@venderid;
    	if  @@fetch_status !=0 break;
 	update #tmp_427900 set venderid=@venderid where shopid=@shopid and goodsid=@goodsid;
	select @Err=@@Error,@BreakPoint=420140,@msg='����Ĭ�Ϲ�Ӧ�̳���';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420150,@Msg='����Ĭ�Ϲ�Ӧ�̳���';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427900tmp4;
  
  insert into #427900(DeptID,GoodsID,ShopID,Venderid,SaleQty,AvgSaleQty,DiffSaleQty,SaleValue,AvgSaleValue,DiffSaleValue,SaleCost,
  	AvgSaleCost,DiffSaleCost,ProfitValue,AvgProfitValue,DiffProfitValue,profitrate,Avgprofitrate,Diffprofitrate,TolStockvalue,Stockvalue,DeptGMROI,GoodsGMROI) 
  	select DeptID,GoodsID,ShopID,Venderid,SaleQty,AvgSaleQty,DiffSaleQty,SaleValue,AvgSaleValue,DiffSaleValue,SaleCost,
  		AvgSaleCost,DiffSaleCost,ProfitValue,AvgProfitValue,DiffProfitValue,profitrate,Avgprofitrate,Diffprofitrate,TolStockvalue,Stockvalue,DeptGMROI,GoodsGMROI
  		from #tmp_427900;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #tmp_427900;
  return  0;  
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427900;
  return -1;
End
Go

----------------------------------------------------------------------------------------
--rp_429910			����ԱЧ�ʿ����ձ�    
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������κޱ 2003.12.15
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_429910') and type = 'P')
  drop procedure dbo.rp_429910
GO

create procedure dbo.rp_429910 @begindate datetime 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031215_01,Last Mender:κޱ
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag     int;
  
  declare @CashierID  	char(4);
  declare @PosID    	char(4);
--  declare @minListno	int;
--  declare @maxListno	int;
--  declare @BSTime	char(8);
--  declare @ESTime	char(8);
  declare @MinSTime	char(8);
  declare @MaxSTime	char(8);
  declare @BeginTime	char(8);
  declare @EndTime	char(8);
  declare @DiffTime	char(8);
  declare @Hhour	dec(12,6);
  declare @Mmins	dec(12,6);
--  declare @BeginSTime	char(8);
--  declare @EndSTime	char(8);
--  declare @Listno	int;
--  declare @Listno1	int;
--  declare @Totaltime	dec(12,2);
  declare @Countlist	int;

  SET NOCOUNT ON
  select @tempflag=0;
  
  create table #tmp_429910(
CashierID	char(4)		null,		--����Ա��
PosID		char(4)		null,		--POS��
BeginTime	char(8)		null,		--��ʼʱ��
EndTime		char(8)		null,		--����ʱ��
Countlist	int		default 0 null,		--��������
HCountlist	dec(12,4)	default 0 null,		--����������/Сʱ
Countgoods	int		default 0 null,		--��Ʒ����
MCountgoods	dec(12,4)	default 0 null		--����/����
--Totaltime	dec(12,2)  	default 0 null,		--����ʱ��
--AvgTotaltime	dec(12,2)  	default 0 null 		--ƽ������ʱ��/��
);

  select @Err=@@Error,@BreakPoint=420000,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;

  select @tempflag=1;
  --ͳ��������������Ʒ����
  --����һ����Ʒ����(�������˻���)
  select CashierID,PosID,Listno,stime,sum(Amount) Countgoods into #rp_429910tmp1 
  	from sale_j where TrainFlag=0 and saletype<> 'r' and X=1 and convert(char(10),sdate,120)=@begindate 
  	group by CashierID,PosID,Listno,stime;
  select @Err=@@Error,@BreakPoint=420010,@Msg='ͳ����Ʒ������';
  if @Err != 0 goto ErrHandle;
  --����һ����Ʒ����(�����˻�)
  insert into #rp_429910tmp1 
  	select CashierID,PosID,Listno,stime,(sum(Amount)*(-1)) Countgoods 
  	from sale_j where TrainFlag=0 and saletype= 'r' and X=1 and convert(char(10),sdate,120)=@begindate 
  	group by CashierID,PosID,Listno,stime;
  select @Err=@@Error,@BreakPoint=420010,@Msg='ͳ����Ʒ������';
  if @Err != 0 goto ErrHandle;
 --����������������Ʒ����
  insert into #rp_429910tmp1 
  	select CashierID,PosID,Listno,stime,count(goodsid) Countgoods 
  		from sale_j where TrainFlag=0 and X=1000 and convert(char(10),sdate,120)=@begindate 
  		group by CashierID,PosID,Listno,stime;
  select @Err=@@Error,@BreakPoint=420015,@Msg='ͳ����Ʒ������';
  if @Err != 0 goto ErrHandle;
  
  select CashierID,PosID,min(stime) minstime,max(stime) maxstime into #rp_429910tmp2 
  	from #rp_429910tmp1 group by CashierID,PosID;
  select @Err=@@Error,@BreakPoint=420020,@Msg='ͳ��ʱ�����';
  if @Err != 0 goto ErrHandle;
  
  insert into #tmp_429910(CashierID,PosID,Countgoods)	
  	select CashierID,PosID,sum(Countgoods) Countgoods from #rp_429910tmp1 
  	group by CashierID,PosID;
  select @Err=@@Error,@BreakPoint=420030,@Msg='������Ʒ������';
  if @Err != 0 goto ErrHandle;
  
  --ͳ�ƿ�ʼʱ�䡢����ʱ��	
  declare cur_stock cursor local for
      	select CashierID,PosID,minStime,maxStime from #rp_429910tmp2; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @CashierID,@PosID,@minStime,@maxStime;
    	if  @@fetch_status !=0 break;
 	--select @BSTime=min(Stime) from sale_j where Listno=@minListno and convert(char(10),sdate,120)=@begindate; 
 	--select @ESTime=max(Stime) from pay_j where Listno=@maxListno and convert(char(10),sdate,120)=@begindate;
 	--select @BeginTime=left(@minStime,2)+':'+right(left(@minStime,4),2)+':'+left(right(@minStime,4),2);
 	--select @EndTime=left(@maxStime,2)+':'+right(left(@maxStime,4),2)+':'+left(right(@maxStime,4),2); 
 	update #tmp_429910 set BeginTime=@minStime,EndTime=@maxStime where CashierID=@CashierID and PosID=@PosID;	
	select @Err=@@Error,@BreakPoint=420040,@msg='����ʱ�����';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420050,@Msg='����ʱ�����';
  if @Err != 0 goto ErrHandle;
  drop table #rp_429910tmp2;
  
  select distinct CashierID,PosID into #rp_429910tmp3 from #rp_429910tmp1 group by CashierID,PosID; 
  declare cur_stock cursor local for
      	select CashierID,PosID from #rp_429910tmp3; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @CashierID,@PosID;
    	if  @@fetch_status !=0 break;
 	select @Countlist=count(distinct listno) from #rp_429910tmp1 where CashierID=@CashierID and PosID=@PosID group by CashierID,PosID;
 	update #tmp_429910 set Countlist=@Countlist where CashierID=@CashierID and PosID=@PosID;	
	select @Err=@@Error,@BreakPoint=420060,@msg='����������������';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420060,@Msg='����������������';
  if @Err != 0 goto ErrHandle;
  drop table #rp_429910tmp1;
  drop table #rp_429910tmp3;
  

  --ͳ������������/Сʱ������/����
  declare cur_stock cursor local for
      	select CashierID,PosID,BeginTime,EndTime from #tmp_429910; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @CashierID,@PosID,@BeginTime,@EndTime;
    	if  @@fetch_status !=0 break;
    	--ͳ��Сʱ������
 	select @DiffTime=convert(char(8),(cast(@EndTime as datetime)-cast(@BeginTime as datetime)),108);
 	if left(@DiffTime,1) =0 
 		begin 
 			select @Hhour=cast(right(left(@DiffTime,2),1) as int)+cast(right(left(@DiffTime,5),2) as dec)/60+cast(right(@DiffTime,2) as dec)/3600;
			select @Mmins=(cast(right(left(@DiffTime,2),1) as int)*60)+cast(right(left(@DiffTime,5),2) as int)+cast(right(@DiffTime,2) as dec)/60;
 			select @Err=@@Error,@BreakPoint=420050,@msg='ͳ����ʱ����';
        		if (@Err is null) or (@Err!=0)  goto ErrHandle;
 		end 
 		else  begin 
 			select @Hhour=cast(left(@DiffTime,2) as int)+cast(right(left(@DiffTime,5),2) as dec)/60+cast(right(@DiffTime,2) as dec)/3600;
			select @Mmins=(cast(left(@DiffTime,2) as int)*60)+cast(right(left(@DiffTime,5),2) as int)+cast(right(@DiffTime,2) as dec)/60;
 		  	select @Err=@@Error,@BreakPoint=420060,@msg='ͳ����ʱ����';
        		if (@Err is null) or (@Err!=0)  goto ErrHandle;
 		      end;	
	update #tmp_429910 set HCountlist=Countlist/@Hhour where CashierID=@CashierID and PosID=@PosID and @Hhour <>0;
        update #tmp_429910 set MCountgoods=Countgoods/@Mmins where CashierID=@CashierID and PosID=@PosID and @Mmins <>0;
 	select @Err=@@Error,@BreakPoint=420070,@msg='ȡƽ��ֵ����';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420080,@Msg='ȡƽ��ֵ����';
  if @Err != 0 goto ErrHandle;

  /*
   --ͳ������ʱ��(����)
  select distinct a.listno listno,a.CashierID,a.PosID,min(a.stime) Beginstime,max(b.stime) Endstime,9999999.99 Mmins into #rp_429910tmp2 from sale_j a,pay_j b 
  	where a.CashierID=b.CashierID and a.PosID=b.PosID and a.listno=b.listno and a.sdate=b.sdate and a.SaleType='a' and a.DeliverFlag=0 and a.TrainFlag=0 
  	and convert(char(10),a.sdate,120)=@begindate and convert(char(10),b.sdate,120)=@begindate 
  	group by a.CashierID,a.PosID,a.listno; 
  select @Err=@@Error,@BreakPoint=420090,@msg='ȡ����ʱ�����';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
        
  declare cur_stock cursor local for
      	select CashierID,PosID,listno from #rp_429910tmp2; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @CashierID,@PosID,@listno;
    	if  @@fetch_status !=0 break;
    	select @BeginSTime=Endstime from #rp_429910tmp2 where CashierID=@CashierID and PosID=@PosID and listno=@listno;
    	select @listno1=min(listno) from #rp_429910tmp2 where CashierID=@CashierID and PosID=@PosID and listno>@listno;
 	if (@listno1 =0) or (@listno1 is null) select @listno1=@listno;
 	if @listno1=@listno 
 		select @Endstime=Endstime from #rp_429910tmp2 where CashierID=@CashierID and PosID=@PosID and listno=@listno1;
 	else 	
 		select @Endstime=Beginstime from #rp_429910tmp2 where CashierID=@CashierID and PosID=@PosID and listno=@listno1;
 	select @BeginTime=left(@BeginSTime,2)+':'+right(left(@BeginSTime,4),2)+':'+left(right(@BeginSTime,4),2);
 	select @EndTime=left(@Endstime,2)+':'+right(left(@Endstime,4),2)+':'+left(right(@Endstime,4),2);
 	select @DiffTime=convert(char(8),(cast(@EndTime as datetime)-cast(@BeginTime as datetime)),108);
 	--select @Mmins=0;
 	select @Mmins=(cast(right(left(@DiffTime,2),1) as int)*60)+cast(right(left(@DiffTime,5),2) as int);
 	update #rp_429910tmp2 set Mmins=@Mmins where CashierID=@CashierID and PosID=@PosID and listno=@listno;
 	select @Err=@@Error,@BreakPoint=420100,@msg='ȡ����������';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420110,@Msg='ȡ����������';
  if @Err != 0 goto ErrHandle;
 
  update #rp_429910tmp2 set Mmins=0 where Mmins=9999999.99;
  select CashierID,PosID,sum(Mmins) Totaltime into #rp_429910tmp3 from #rp_429910tmp2 group by CashierID,PosID;
  select @Err=@@Error,@BreakPoint=420120,@msg='ͳ������ʱ�����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #rp_429910tmp2;
  
  declare cur_stock cursor local for
      	select CashierID,PosID,Totaltime from #rp_429910tmp3; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @CashierID,@PosID,@Totaltime;
    	if  @@fetch_status !=0 break;
 	update #tmp_429910 set Totaltime=@Totaltime where CashierID=@CashierID and PosID=@PosID;	
	select @Err=@@Error,@BreakPoint=420130,@msg='��������ʱ�����';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420140,@Msg='��������ʱ�����';
  if @Err != 0 goto ErrHandle;
  drop table #rp_429910tmp3;
  
  update #tmp_429910 set AvgTotaltime=Totaltime/Countlist where Countlist <>0;
  select @Err=@@Error,@BreakPoint=420150,@Msg='����ƽ������ʱ�����';
  if @Err != 0 goto ErrHandle;
  */
  
  insert into #429910 select * from #tmp_429910;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #tmp_429910;
  return  0;  
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_429910;
  return -1;
End
Go

----------------------------------------------------------------------------------------
--rp_427901			�ŵ�����ת����ͳ�Ʊ�    
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������κޱ 2003.12.16
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427901') and type = 'P')
  drop procedure dbo.rp_427901
GO

create procedure dbo.rp_427901 @begindate datetime,@enddate datetime 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031216_01,Last Mender:κޱ
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag     int;
  declare @ShopID	char(4);
  declare @maxsdate	datetime;
  declare @CloseCostV	dec(12,2);
  declare @diffdays	int;

  SET NOCOUNT ON
  select @tempflag=0;
  select @diffdays=DATEDIFF(dy,@begindate,@enddate);
  
  create table #tmp_427901(
ShopID			char(4)		null,				--���
SaleValue		dec(12,2)	default 0 Not Null,		--���۽��
SaleCost		dec(12,2)	default 0 Not Null,		--���۳ɱ�
CloseCostV		dec(12,2)	default 0 Not Null,		--��ĩ���ɱ�
AvgMDCloseCostV		dec(12,2)	default 0 Not Null,		--�¶�ÿ�տ��ϼ�
AvgMCloseCostV		dec(12,2)	default 0 Not Null,		--��ƽ�����ɱ�
AvgDays			dec(12,2)	default 0 Not Null		--��ƽ����ת����
);

  select @Err=@@Error,@BreakPoint=420000,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;

  select @tempflag=1;
  insert into #tmp_427901(ShopID,SaleValue,SaleCost,AvgMDCloseCostV) 
  	select ShopID,sum(SaleValue) SaleValue,sum(SaleCost) SaleCost,sum(CloseCostV) CloseCostV 
  	from rpt_base0031 where convert(char(10),sdate,120) between @begindate and @enddate 
  	group by shopid;
  select @Err=@@Error,@BreakPoint=420010,@Msg='ͳ�����۳���';
  if @Err != 0 goto ErrHandle;

  declare cur_stock cursor local for
      	select shopid from #tmp_427901; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid;
    	if  @@fetch_status !=0 break;
    	if (convert(char(10),@Enddate,120)) >= (convert(char(10),getdate(),120)) 
    		begin 
  		select @maxsdate=max(sdate) from rpt_base0031 where shopid=@shopid;
  		select @CloseCostV=CloseCostV from rpt_base0031 where shopid=@shopid and sdate=@maxsdate;
    	 	update #tmp_427901 set CloseCostV=@CloseCostV where shopid=@shopid;
    	end else begin 
    		select @CloseCostV=CloseCostV from rpt_base0031 where shopid=@shopid and convert(char(10),sdate,120)=convert(char(10),@Enddate,120);
    	 	update #tmp_427901 set CloseCostV=@CloseCostV where shopid=@shopid;
    	 	end;
 	select @Err=@@Error,@BreakPoint=420020,@msg='������ĩ������';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420030,@Msg='������ĩ������';
  if @Err != 0 goto ErrHandle;
   

  update #tmp_427901 set AvgMCloseCostV=AvgMDCloseCostV/@diffdays where @diffdays <>0;
  update #tmp_427901 set AvgMCloseCostV=AvgMDCloseCostV/1.00 where @diffdays =0;
  update #tmp_427901 set AvgDays=AvgMDCloseCostV/SaleCost where SaleCost <>0;
  update #tmp_427901 set AvgDays=99999999.00 where SaleCost =0;
  select @Err=@@Error,@BreakPoint=420040,@msg='����ƽ��ֵ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
        
  insert into #427901 select * from #tmp_427901;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #tmp_427901;
  return  0;  
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427901;
  return -1;
End
Go

----------------------------------------------------------------------------------------
--rp_427902			��Ӧ�̿����ת����ͳ�Ʊ�    
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������κޱ 2003.12.18
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427902') and type = 'P')
  drop procedure dbo.rp_427902
GO

create procedure dbo.rp_427902 @begindate datetime,@enddate datetime  
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031218_01,Last Mender:κޱ
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag     int;
  declare @Venderid	int;
  declare @ShopID	char(4);
  declare @CloseCostV	dec(12,2);
  declare @diffdays	int;

  SET NOCOUNT ON
  select @tempflag=0;
  select @diffdays=DATEDIFF(dy,@begindate,@enddate);
  create table #tmp_427902(
VenderID		int		null,	
ShopID			char(4)		null,				--���
SaleCost		dec(12,2)	default 0 Not Null,		--���۳ɱ�
CloseCostV		dec(12,2)	default 0 Not Null,		--��ĩ���ɱ�
AvgMDCloseCostV		dec(12,2)	default 0 Not Null,		--�¶�ÿ�տ��ϼ�
AvgMCloseCostV		dec(12,2)	default 0 Not Null,		--��ƽ�����ɱ�
AvgDays			dec(12,2)	default 0 Not Null		--��ƽ����ת����
);
  
  select @Err=@@Error,@BreakPoint=420000,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;

  select @tempflag=1;
  declare @i int exec @i=SP_RPTBase1001 @begindate,@enddate select @i;
  select @Err=@@Error,@BreakPoint=420010,@Msg='ִ�д洢����';
  if @Err != 0 goto ErrHandle;
  
  insert into #tmp_427902(VenderID,ShopID,SaleCost,AvgMDCloseCostV)
	select VenderID,ShopID,sum(SaleCost) SaleCost,sum(CloseCostV) AvgMDCloseCostV   
	 from RPT_Base1001 group by VenderID,ShopID;
  select @Err=@@Error,@BreakPoint=420020,@Msg='ȡ���ۿ�����';
  if @Err != 0 goto ErrHandle;

  select max(sdate) maxsdate,venderid,shopid into #rp_427902tmp1 from RPT_Base1001 group by venderid,shopid;
  select @Err=@@Error,@BreakPoint=420030,@Msg='ȡ��ĩʱ�����';
  if @Err != 0 goto ErrHandle;

  select a.venderid,a.shopid,a.CloseCostV into #rp_427902tmp2 from RPT_Base1001 a,#rp_427902tmp1 b 
  	where a.venderid=b.venderid and a.shopid=b.shopid and a.sdate=maxsdate;
  select @Err=@@Error,@BreakPoint=420040,@Msg='ȡ��ĩ������';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427902tmp1;
	
  declare cur_stock cursor local for
      	select venderid,shopid,CloseCostV from #rp_427902tmp2; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@shopid,@CloseCostV;
    	if  @@fetch_status !=0 break;
    	update #tmp_427902 set CloseCostV=@CloseCostV where venderid=@venderid and shopid=@shopid;
    	select @Err=@@Error,@BreakPoint=420050,@msg='������ĩ������';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420060,@Msg='������ĩ������';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427902tmp2;	
  
  update #tmp_427902 set AvgMCloseCostV=AvgMDCloseCostV/@diffdays where @diffdays <>0;
  update #tmp_427902 set AvgMCloseCostV=AvgMDCloseCostV/1.00 where @diffdays =0;
  update #tmp_427902 set AvgDays=AvgMDCloseCostV/SaleCost where SaleCost <>0;
  update #tmp_427902 set AvgDays=99999999.00 where SaleCost =0;
  select @Err=@@Error,@BreakPoint=420040,@msg='����ƽ��ֵ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  
  insert into #427902 select * from #tmp_427902;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #tmp_427902;
  return  0;  
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427902;
  return -1;
End
Go

---------------------------------------------------------------------------------------
--getSaleCost
--˵��: 	�������㱨��[����],��������			[������]
--����: ��������
--���: ����һ��##getCurSale������.
--���������ķ� 2004-08-27
---------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.getSaleCost') and sysstat & 0xf = 4)
    drop procedure dbo.getSaleCost
Go
create procedure  dbo.getSaleCost @sdate datetime,@edate datetime,@inVenderID varchar(10)
as
begin
if Object_id('tempdb..##getCurSale') is not null 
	drop table ##getCurSale
create table ##getCurSale(sheettype varchar(20),VenderID int,VenderName varchar(100),ShopID char(4),GoodsID int,GoodsName varchar(100),Qty dec(14,4),CustomNo char(30)--,DKRate dec(12,2)
				,CostTaxRate dec(12,2),Cost dec(14,4),costtaxvalue dec(14,2),CostValue dec(12,2)--,SaleValue dec(12,2)
				,payname char(100),paytypeday int) 

declare @table varchar(1000),@tableName varchar(100),@MySql varchar(5000)
declare @SQL varchar(4000),@venderSQL varchar(1000)

if @inVenderid=0
 set @venderSQL='' 
 else
 set @venderSQL=' and M.VenderID='+@inVenderid
 set @SQL=''

/*  30678
drop table ##getCurSale
declare @sdate datetime,@edate datetime,@inVenderID varchar(10)
select @sdate='2004-09-16',@edate='2004-09-30',@inVenderid='0'
exec getSaleCost @sdate,@edate,@InVenderid
select * from ##GetCurSale where venderid=30998 order by venderid,shopid
*/

set @sdate =convert(varchar,@sdate,112)
set @edate =convert(varchar,@edate,112)
execute dbo.TL_GetTablesName @sdate,@edate,'saleCost',@tables=@table output
declare @tName table(iid int identity(1,1),name varchar(100))
while charindex(',',@table)<>0 
begin
	insert @tName select substring(@table,0,charindex(',',@table))
	set @table=substring(@table,charindex(',',@table)+1,len(@table))	
end
insert @tName select @table
declare @MaxII int
select @MaxII=count(*) from @tName 	
while @MaxII>0  	--select * from saleCost
begin
	select @tableName=name from @tName where iid=@MaxII
	set @MySql=' select '
	+'(select distinct rtrim(name) from serialnumber where serialid=M.sheettype) as sheettype' /*��������*/
	+',M.VenderID,(select rtrim(name) from Vender where venderid=M.VenderID) as VenderName,M.ShopID,M.GoodsID'
	+',(select rtrim(Name) from Goods where GoodsID=M.GoodsID) as GoodsName'
	+',sum(isnulL(M.Qty,0)) as Qty '
	+',(select customno from goods where GoodsID=M.GoodsID) as CustomNo '
--	+',isnull((select DKRate  from Cost where VenderID=M.VenderID and ShopID=M.ShopID and GoodsID=M.GoodsID),0) as DKRate' /*������*/
	+',isnull(M.CostTaxRate,0) as CostTaxRate'/*����˰��*/
	+',isnUll(M.cost,0) as cost' /*����*/
	+',(sum((isnull(M.costvalue,0))*isnull(M.costtaxrate,0))/100) as costtaxvalue'/*˰��*/

	+',sum(isnulL(M.CostValue,0)) as CostValue' /*�ɱ��� */
--	+',sum(isnULL(M.SaleValue,0)) as SaleValue'/*���۽��*/ 
	+',(select name from paytype where  id=M.paytypeid) as payname'/*��������*/
	+',(select paytypeday from paytype where  id=M.paytypeid) as paytypeday'/*��������*/
	+' from '+ltrim(rtrim(@tableName)) +' M '
	+' where  Exists (select VenderID from Vender where VenderID=M.VenderID '
	+' and PayTypeID in (select id from payType where PayTypeSortID=''d'') )' /*Ϊ������ѡ��*/
	+' and Convert(varchar(8),M.saleDate,112) Between '+Convert(varchar(8),@sDate,112)
	+' and '+Convert(varchar(8),@eDate,112)/*ʱ��*/
	+ @venderSQL
	+' group by M.VenderiD,M.paytypeid,M.ShopID,M.GoodsID,M.cost,M.costtaxrate,M.sheettype'
	set @SQL=@SQL+' union all '+ @Mysql
	set @MaxII=@MaxII-1	
end

if @SQL<>''
begin
	set @SQL='insert ##getCurSale '+Substring(@SQL,11,len(@SQL))
       +' order by M.VenderID,M.ShopID,M.GoodsID ASC'
--	print @SQL
	execute(@SQL)	
end 
end
Go 

---------------------------------------------------------------------------------------
--get_Rpt_AccCurrent
--˵��: ��Ҫ���ÿ����Ӧ��ÿ�ŵ�����ĩ����������ɣ�
--����: ��
--���: ����һ��##getCurSale������.
--���������ķ� 2004-08-27 ��������
---------------------------------------------------------------------------------------
if Object_id('get_Rpt_AccCurrent') is not null drop function get_Rpt_AccCurrent
Go
create function get_Rpt_AccCurrent()
Returns @Rpt_AccCurrent table(
	     RecordNo  int identity(1,1)--˳���	
            ,VenderID  int--��Ӧ�̱���            
            ,SheetID char(16) not null --���ݱ��
            ,SheetType int not null-- ��������-
            ,RefSheetID char(16) default '' not null --��ص��ݱ��
            ,RefSheettype int default '' not null--��ص�������
            ,CostAmt dec(12,2) --�������
            ,DirectFlag   int not null --��������
--            ,OpenAmt dec(12,2)--�ڳ����
            ,CloseAmt dec(12,2) default 0 not null--��ĩ���
	)
as 
begin
Declare @vCount int,@iMax int,@Max int,@RecordNo int,@VenderID char(16)
--�����ڽ��㵥��.
insert @Rpt_AccCurrent 
	select  (select distinct ClientID from AccCurrentBook where SheetID=M.SheetID and SheetType=M.RefSheetType) as VenderID			
		--����4��λ�û��ˡ��Ա���SheetIDΪ���յ�ҵ�񵥺�.
		,M.RefSheetID as SheetID/*��ص���*/
		,M.RefSheetType as SheetType/*��������*/		
		,(select distinct SheetID from AccCurrentBook where SheetID=M.SheetID and SheetType=M.RefSheetType) as RefSheetID
		,(select distinct SheetType from AccCurrentBook where SheetID=M.SheetID and SheetType=M.RefSheetType) as RefSheetType

		,M.CostValue
		,(select top 1 DirectFlag from AccCurrentBook where SheetID=M.SheetID ) as DirectFlag
		,0 as CloseAmt
		from BillHeadItem M where M.SheetID in (select distinct sheetID from AccCurrentBook )
Declare @vTable table(iid int identity(1,1),VenderID int)
insert @vTable select distinct VenderID from @Rpt_AccCurrent
set @vCount=@@RowCount
While @vCount>0 
begin
	select @Venderid=VenderID from @vTable where iid=@vCount	
	select @RecordNo=RecordNo from @Rpt_AccCurrent where VenderID=@VenderID
	select @iMax=@@RowCount,@Max=@RecordNo
	update @Rpt_AccCurrent set CloseAmt=(select sum(SumMoney) from AccCurrent where ClientID=@Venderid ) 
		 where RecordNo=(select  Max(RecordNo) from @Rpt_AccCurrent where VenderID =@Venderid)		 
	while @iMax<>0
	begin
		update @Rpt_AccCurrent set CloseAmt=(select CloseAmt+DirectFlag*CostAmt from @Rpt_AccCurrent where RecordNo=@RecordNo)
		       where RecordNo=@RecordNo-1
		set @RecordNo=@RecordNo-1
		if @Max-@RecordNo=@iMax break  
	 
	end 
	set @vCount=@vCount-1	
end
--�����ڽ��㵥�е�. 
insert @Rpt_AccCurrent
select 	ClientID,SheetID,SheetType,'' as RefSheetID,'' as RefSheetType,SumMoney,DirectFlag,CloseMoney
	from AccCurrentBook where Sheetid  not in (select distinct  SheetID from BillHeadItem )
	order by ClientID DESC



return
end
Go

---------------------------------------------------------------------------------------
--get_rp_apBillHead
--˵��: Ӧ���˿��  ����get_Rpt_AccCurrent
--����: ��   
--���: ����һ����.
--���������ķ� 2004-08-27 ��������
---------------------------------------------------------------------------------------
if Object_id('get_rp_apBillHead') is not null 	drop function get_rp_apBillHead
Go
create function  get_rp_apBillHead(@sDate datetime,@eDate datetime)
Returns  Table
as return(
	select  (select name from Vender where VenderID=M.VenderID) as VenderName 
	,M.VenderID,M.EditDate/*�Ƶ�����*/,D.RefSheetID,M.SheetID
	,( case RefSheetType                                                                                                                                                                                                                     
		when 2301 then (select sum(Qty*Cost) from ReceiptItem where SheetID=D.RefSheetID)
		when 5205 then (select sum(CostValue) from updpayableitem where SheetID=D.RefSheetID)
		when 2323 then (select sum(kxsummoney) from ret where SheetID=D.RefSheetID)
	end ) as D_Amt/*�跽���*/
	,D.CostValue as C_Amt/*�������*/
	,(select sum(CloseAmt) from get_Rpt_AccCurrent() where SheetID=D.RefSheetID) as CloseAmt/*Ӧ������ĩ���*/
	 from BillHead M inner join BillHeadItem D on M.SheetID=D.SheetID 
	where D.RefSheetType in (5205,2301,2323)  
			and convert(varchar(8),M.PayDate,112) between  Convert(varchar(8),@sDate,112) and Convert(varchar(8),@eDate,112)
	)
Go



-----------------------------------------------------------------------------------
--rp_getPlanPayBillhead
--˵��: ÿ�ո������һ����   ����Ϊʵ�ʸ������� Ҫ���������.
--����: ��
--���: ������������
--���������ķ� 2004-08-31 �������� #914
--
-----------------------------------------------------------------------------------
if Object_id('rp_getPlanPayBillhead') is not null drop function rp_getPlanPayBillhead
Go
create function rp_getPlanPayBillhead(@sDate datetime,@edate datetime)
returns table
as 
return(
--Report SQL

select 	isnull((select AccNo from VenderExt where VenderID=M.VenderID),'') as AccNO /*�����˺�*/
	,M.ShopID/*���λ*/
	,(select Name from Vender where VenderID=M.VenderID) as VenderName/*�տӦ������*/
	,M.Venderid/*�տӦ�̱��*/
	,sum(isnull(M.PayableMoney,0)-isnulL(M.KXmoney,0)+isnull(M.KXCash,0)) as PayMoney/*������ ����ʵ��������Ӧ���������ڿ�������ڿ���ɿ��*/
	,(select RebateStyle from VenderExt where VenderID=M.VenderID) as RebateStyle/*����*/
 	,isnulL(D.InvoiceSheetID,'') as InvoiceSheetID /*CheckDate��Ʊ����*/
 	,convert(varchar(10),D.payableDate,110) as payableDate/*��������*/
	,convert(varchar(10),M.PlanPayDate,110) as PlanPayDate/*ʵ�ʸ�������*/
	,isnull(M.Note,'') as Note
	from BillHead M inner join BillHeadItem D on M.SheetID=D.SheetID		
	where Convert(varchar(8),PlanPayDate,112) between convert(varchar(8),@sdate,112) and convert(varchar(8),@edate,112)	 
	group by M.VenderID,M.ShopID,D.InvoiceSheetID,convert(varchar(10),D.payableDate,110),convert(varchar(10),M.PlanPayDate,110),M.Note
	)
Go

-----------------------------------------------------------------------------------
--mcEngine ���������4��Function����.
--˵��: ��Сдת��������ݸ�ͻ�����֮��.  
--����: *
--���: ������������
--���������ķ� 2004-08-31 
-----------------------------------------------------------------------------------------------------

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[f_cTmp]') and xtype in (N'FN', N'IF', N'TF'))
	drop function [dbo].[f_cTmp]
Go  
create function f_cTmp()
returns @a table(id int primary key)
as
begin
  declare @b table(id int identity(1,1),name varchar(100))
  insert @b select top 800 name from syscolumns
  insert @a select id from @b
  return
end 
Go
 
---------------------------------------------------------------------------------------------------
--��ʵ���з���(ע�����ô˺���һ��Ҫ������Table f_dd_a
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[f_dd]') and xtype in (N'FN', N'IF', N'TF'))
	drop function [dbo].[f_dd]
Go
create function  dbo.f_dd(@Amount varchar(1000),@SplitChar varchar(10))
returns table
as
return(
 select SubString(@Amount,M.id,Charindex(@SplitChar,@Amount+@SplitChar,M.id)-M.id) as aName
	from (select  id from dbo.f_cTmp()) as M--f_dd_a_001
	where M.id<len(@Amount)+1 and Charindex(@SplitChar,@SplitChar+@Amount,M.id)-M.id=0
)
Go

-----------------------------------------------------------------------------------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[f_dd_tmp]') and xtype in (N'FN', N'IF', N'TF'))
	drop function [dbo].[f_dd_tmp]
Go
create function dbo.f_dd_tmp(@Amount varchar(1000),@SplitChar varchar(10))
returns @a table(iid int identity(1,1),aName varchar(80))
AS
begin
      insert into @a
      select aName  from dbo.f_dd(@Amount,@SplitChar)
      return 
end
Go

-----------------------------------------------------------------------------------------------------
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mcEngine]') and xtype in (N'FN', N'IF', N'TF'))
	drop function mcEngine
Go
Create function dbo.mcEngine(@Qty Decimal(14,2))
returns varchar(500)
as
begin
  declare @Amount varchar(1000),@SplitChar Varchar(10),@str Varchar(100),@i int,@j int,@tMoney int,@oStr Varchar(1000)
  declare @aT table(iid int,aName varchar(10))
  select @Amount='Ǫ �� ʰ �� Ǫ �� ʰ Ԫ �� �� �� Ҽ �� �� �� �� ½ �� �� ��',@SplitChar=' ' 
  select @str=convert(varchar(100),@Qty*100),@str=SubString(@str,0,Charindex('.',@str)) --ת��
  ----------------Ϊ��򳬳�10λ���˳�
  set @oStr=' '
  select @j=1,@i=11-len(@Str),@oStr=''
  insert @aT select *  from dbo.f_dd_tmp(@Amount,@Splitchar)
  while @i<=10  and len(@str)<=10 
  begin
   select @oStr=@oStr+aName from @aT  where iid=cast(subString(@str,@j,1) as int)+11 	
   select @oStr=@oStr+aName from @aT where iid=@i	
   select @j=@j+1,@i=@i+1
  end  
  return(@oStr)
end
Go
-----------------------------------------------------------------------------------------------------



-----------------------------------------------------------------------------------------------------
--2008
------------------------------
if exists (select * from sysobjects where id = object_id('dbo.GetUserDept') and type = 'P')
  drop procedure dbo.GetUserDept
GO

create procedure dbo.GetUserDept @DeptLevelID int,@UserName char(16)
WITH ENCRYPTION
AS Begin
  declare @Err		int;
  declare @BreakPoint	int;
  declare @StartWork	int;
  declare @Msg		varchar(255);

  declare @LevelValue	int;
  declare @Value	int;
  
  select @Value=Value from config where name='�����Ƿ����Ʋ���Ȩ��';
  
  select @LevelValue=LevelValue from DeptLevel where DeptLevelID=@DeptLevelID;
  
  if @Value=1 begin
  	insert into #tempuserdept
  	select distinct deptid/@LevelValue from userdept where username=@UserName;
  end else begin
  	insert into #tempuserdept
  	select distinct id/@LevelValue from dept;
  end;
  
  return 0;

ErrHandle:
  if @StartWork = 1 and @@TRANCOUNT > 0 rollback transaction;
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO

----------------------------
if exists (select * from sysobjects where id = object_id('dbo.LD_JXCBookData') and type = 'P')
  drop procedure dbo.LD_JXCBookData
GO

create procedure dbo.LD_JXCBookData @xbegindate datetime,@xendDate datetime

-----------------------------------------------------------------
--Version Number: Mender:jxgg
-----------------------------------------------------------------
AS BEGIN
	declare @Err		int;
	declare @BreakPoint	int;
	declare @StartWork	int;
	declare @Msg		varchar(255);	
	
	
	declare	@tRow int,@tName varchar(20);
	declare @ttName1 table(iid int identity(1,1),name varchar(1000));
	declare @ttName2 table(iid int identity(1,1),name varchar(1000));
	declare @ttName3 table(iid int identity(1,1),name varchar(1000));
	declare @begindate char(8),@enddate char(8)
	declare @sSQL varchar(8000)
	
	declare @begindate2 char(12);
	declare @enddate2 char(12);
	
	set nocount on;
	--select @begindate=convert(char(8),@xbegindate,112),@enddate=convert(char(8),@xenddate,112);	
	--select @begindate1=year(@xbegindate)*10000+month(@xbegindate)*100+01;	
	
	select @begindate2=convert(char(8),@xbegindate,112),@enddate2=convert(char(8),@xenddate,112);	
	
      if object_id('tempdb..##TMP_WasteBook') is not null drop table ##TMP_WasteBook
	 create table dbo.##TMP_WasteBook
	      (
		GoodsID			int		Not null,		--��Ʒ����
		GoodsCostID		int		not null,		--���κ�
		DeptID			int		Not null,		--��Ʒ���
		ShopID			char(4)		Not null,		--���	
		VenderID		int		Not null,		--��Ӧ�̱���
		PayTypeID		char(2)		Not null,		--���㷽ʽ
		Directflag		int		Not null,		--���ʷ���:+1=Dr /-1=Cr
		Qty			dec(12,3)	Not null,		--��������
		Cost			dec(12,4)	Not null,		--��������
		TaxRate			dec(4,2)	Not null,		--����˰��%
		CostValue		dec(12,3)	Not null,		--�������
		CostTaxValue		dec(12,3)	Not null,		--����˰��
		CloseQty		dec(12,3)	Not null,		--�������
		CloseCostV		dec(12,3)	Not null,		--�����
		CloseTaxV		dec(12,3)	Not null,		--���˰��
		SheetID			char(16)	Not null,		--���ݱ��
		SheetType		int		Not null,		--��������
		SDate			datetime	Not null		--��������
		)
---

        if object_id('tempdb..##TMP_SaleCost') is not null drop table ##TMP_SaleCost
	      create table ##TMP_SaleCost
	       (
		SDate		datetime	not null,		--��ת����
		SaleDate	datetime	not null,		--��������
		ShopID		char(4)		not null,		--���
		GoodsID		int		not null,		--��Ʒ����
		DeptID		int		not null,		--����
		VenderID	int		not null,		--��Ӧ�̱��
		PaytypeID	char(2)		not null,		--���㷽ʽ���
		AgroFlag	int		default 0 not null,	--�Ƿ���˰ũ��Ʒ(0=���� 1=��)
		Qty		dec(12,3)	default 0 not null,	--����
		Price		dec(10,2)	not null,		--�ֵ��ۼ� 
		Cost		dec(12,4)	default 0 not null,	--����
		CostValue	dec(12,2)	not null,		--�ɱ��� 
		CostTaxRate	dec(4,2)	default 17 not null,	--����˰��%
		SaleTaxRate	dec(4,2)	default 17 not null,	--����˰��%
		SaleValue	dec(12,2)	default 0 not null,	--���۽��
		DiscValue	dec(12,2)	default 0 not null,	--�ۿ۽��
		DiscType	char(1)		not null,		--��������(ͬProm_Level���PromType)
		SheetType	int		default 101 not null	--��������,101=���� 102=������	
		--DKRate 		dec(4,2) 	default 0 not null	--������		
	        )

---
	--WasteBook --> ####WasteBookReport
	delete @ttName1 insert @ttName1 select name from dbo.getTName(@xbegindate,@xendDate,'wastebook')
	set @tRow=@@RowCount

	while @tRow>0
	begin
	  select @tName=name from @ttName1 where iid=@tRow
	  set @sSQL='insert into ##TMP_WasteBook(GoodsID,GoodsCostID,DeptID,ShopID,VenderID,PayTypeID,Directflag,Qty,Cost,TaxRate,'
		+' CostValue,CostTaxValue,CloseQty,CloseCostV,CloseTaxV,SheetID,SheetType,SDate) '
		+' select GoodsID,GoodsCostID,DeptID,ShopID,VenderID,PayTypeID,Directflag,Qty,Cost,TaxRate,'
		+' CostValue,CostTaxValue,CloseQty,CloseCostV,CloseTaxV,SheetID,SheetType,Convert(char(8),SDate,112)'
		+' from '
		+@tName+' where /*convert(char(8),sDate,112)>='+@begindate2
		+' and*/ convert(char(8),sdate,112)<='+ @enddate2
	exec(@sSQL);
	print @ssQL
	  select @Err=@@Error 
	  if @Err <> 0 begin
	  	select @BreakPoint = 99994001,@Msg='����[##TMP_WasteBook]ʱ����!';
	  	goto ErrHandle;
	  end;
	  set @tRow=@tRow-1;
	end;

	

	--SaleCost  --> ####TMP_SaleCost
	delete @ttName2
	insert @ttName2 
           select name from dbo.getTName(@xbegindate,@xendDate,'SaleCost')
	set @tRow=@@RowCount;
	while @tRow>0
	begin
	  select @tName=name from @ttName2 where iid=@tRow

	  set @sSQL='insert into ##TMP_SaleCost(SDate,SaleDate,ShopID,GoodsID,DeptID,VenderID,PaytypeID,AgroFlag,Qty,Price,'
		+' Cost,CostValue,CostTaxRate,SaleTaxRate,SaleValue,DiscValue,DiscType,SheetType)'
		+' select SDate,SaleDate,ShopID,GoodsID,DeptID,VenderID,PaytypeID,AgroFlag,Qty,Price,'
		+' Cost,CostValue,CostTaxRate,SaleTaxRate,SaleValue,DiscValue,DiscType,SheetType'
		+' from '+@tName+' where convert(char(8),sDate,112)>='+@begindate2
		+' and convert(char(8),sdate,112)<='+ @enddate2			
	exec(@sSQL);
	print @ssQL
	select @Err=@@Error 
	if @Err <> 0 begin
		select @BreakPoint = 99994003,@Msg='����[##TMP_SaleCost]ʱ����!';
		goto ErrHandle;
	end;
	set @tRow=@tRow-1;
	end;

  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End

GO

------------------------
if exists (select * from sysobjects where id = object_id('dbo.LD_JXCBookMachine') and type = 'P')
  drop procedure dbo.LD_JXCBookMachine
GO

create procedure dbo.LD_JXCBookMachine @Flag int=1,@begindate datetime,@endDate datetime

-----------------------------------------------------------------
--Version Number: Mender:GWF
--�޸ģ�2012-06-08 cjx �޸���ƽ�õ��� �����������ܲ�ѯ�ڻ��ܱ��½��˰��ʱ������ȡֵ���������
-----------------------------------------------------------------
AS BEGIN
	declare @Err		int;
	declare @BreakPoint	int;
	declare @StartWork	int;
	declare @Msg		varchar(255);
	declare @SDate		datetime;
	declare @Sdate1	        char(20);
	declare @Begindate1	datetime;
	declare @MyShopType	int;
	declare @LevelValue	int;
	declare @rowcount	int;
 
	set nocount on ;
	--ȡ��������
	select @MyShopType=A.ShopType from Shop A with (NoLock),Config B with (NoLock) where A.ID=B.Value and B.name='�����'
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	if @MyShopType is null select @MyShopType=11;
	
	select @SDate=convert(varchar(10),getdate(),112);
        select @sdate1=year(@begindate)*10000+month(@begindate)*100+01;
	select @begindate1=convert(datetime,@sdate1);	
	-----------------��������---------------------------		
        select @BreakPoint=853191;
        if object_id('tempdb..#TMP_WasteBook') is not null drop table #TMP_WasteBook
           create table dbo.#TMP_WasteBook
	      (
		GoodsID			int		Not null,		--��Ʒ����
		GoodsCostID		int		not null,		--���κ�
		DeptID			int		Not null,		--��Ʒ���
		ShopID			char(4)		Not null,		--���	
		VenderID		int		Not null,		--��Ӧ�̱���
		PayTypeID		char(2)		Not null,		--���㷽ʽ
		Directflag		int		Not null,		--���ʷ���:+1=Dr /-1=Cr
		Qty			dec(12,3)	Not null,		--��������
		Cost			dec(12,4)	Not null,		--��������
		TaxRate			dec(4,2)	Not null,		--����˰��%
		CostValue		dec(12,3)	Not null,		--�������
		CostTaxValue		dec(12,3)	Not null,		--����˰��
		CloseQty		dec(12,3)	Not null,		--�������
		CloseCostV		dec(12,3)	Not null,		--�����
		CloseTaxV		dec(12,3)	Not null,		--���˰��
		SheetID			char(16)	Not null,		--���ݱ��
		SheetType		int		Not null,		--��������
		SDate			datetime	Not null		--��������
		)
---
        if object_id('tempdb..#TMP_SaleCost') is not null drop table #TMP_SaleCost
	      create table #TMP_SaleCost
	       (
		SDate		datetime	not null,		--��ת����
		SaleDate	datetime	not null,		--��������
		ShopID		char(4)		not null,		--���
		GoodsID		int		not null,		--��Ʒ����
		DeptID		int		not null,		--����
		VenderID	int		not null,		--��Ӧ�̱��
		PaytypeID	char(2)		not null,		--���㷽ʽ���
		AgroFlag	int		default 0 not null,	--�Ƿ���˰ũ��Ʒ(0=���� 1=��)
		Qty		dec(12,3)	default 0 not null,	--����
		Price		dec(10,2)	not null,		--�ֵ��ۼ� 
		Cost		dec(12,4)	default 0 not null,	--����
		CostValue	dec(12,2)	not null,		--�ɱ��� 
		CostTaxRate	dec(4,2)	default 17 not null,	--����˰��%
		SaleTaxRate	dec(4,2)	default 17 not null,	--����˰��%
		SaleValue	dec(12,2)	default 0 not null,	--���۽��
		DiscValue	dec(12,2)	default 0 not null,	--�ۿ۽��
		DiscType	char(1)		not null,		--��������(ͬProm_Level���PromType)
		SheetType	int		default 101 not null	--��������,101=���� 102=������	
		--DKRate 		dec(4,2) 	default 0 not null	--������		
	        )
        
	exec @err=LD_JXCBookData @begindate,@endDate,@paytypesortid,'0',@shopid
	if @Err<>0
	begin
		select @Msg='����׼������ʱ����';
		if @Err != 0 goto ErrHandle;
	end;
	-----------------����ͳ��-----------------------------	
	--�ڳ����
	       --ÿ���ڳ�
	      
		INSERT INTO #TMP_Base0001(deptid,ShopID,taxrate,StartQty,StartCostV,Starttaxvalue)
		SELECT deptid,Shopid,taxrate,sum(CloseQty),sum(CloseCostV),sum(Closetaxv)
		FROM #TMP_WasteBook 
		WHERE sheettype =6666 		 
		  and sdate<=@begindate 		 
		group by deptid,shopid,taxrate
               --�л��ڳ�          
	 	INSERT INTO #TMP_Base0001(deptid,ShopID,taxrate,StartQty,StartCostV,starttaxvalue)		
		SELECT deptid,Shopid,taxrate,sum(directflag*qty),sum(directflag*costvalue),
		       sum(directflag*Costtaxvalue)
		FROM #TMP_WasteBook 
		WHERE sheettype =8888
		  and sdate<=@begindate	
		group by deptid,shopid,taxrate
              
	       --����
		INSERT INTO #TMP_Base0001(deptid,ShopID,taxrate,StartQty,StartCostV,starttaxvalue)		
		SELECT deptid,Shopid,taxrate,sum(Directflag*Qty),sum(Directflag*costvalue),
		       sum(directflag*costtaxvalue)
		FROM #TMP_WasteBook
		WHERE sdate<@begindate
                    and sheettype not in(8888,6666)                           
		Group By deptid,Shopid,taxrate	
	        
	        DELETE #TMP_WasteBook WHERE sDate<@begindate;
       
        --��������Ʒ����������
        Insert into #TMP_Base0001(deptid,ShopID,taxrate,SaleQty,SaleValue,saletaxvalue,SaleCost,saletaxcost)
		select deptid,ShopID,taxrate,-1*sum(directflag*qty),0,0,-1*sum(directflag*CostValue),
		       -1*sum(directflag*costtaxvalue)
		from #TMP_WasteBook
		WHERE SheetType in(101,102,104,105)                
                  and sdate between @Begindate and @Enddate                 
		group by deptid,ShopID,taxrate;
		
        select distinct cast(shopid as char(4))+cast(goodsid as char(6))+cast(sdate as char(10)) as goodsid 
               into #tmp_goods  from #TMP_WasteBook 
               where sheettype in(101,102,104,105) 	       
	       and sdate between '2012-04-01' and '2012-04-30'
	       
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,SaleQty,SaleValue,saletaxvalue,SaleCost,saletaxcost)
		select a.deptid,a.ShopID,a.costtaxrate,0,sum(a.salevalue-a.discvalue),
		       sum((a.salevalue-a.discvalue)*a.saletaxrate/(100+a.saletaxrate*(1-b.agroflag))),0,0
		from #tmp_salecost a,goods b
                WHERE a.SheetType in(101,102,104,105)                
                and cast(a.shopid as char(4))+cast(a.goodsid as char(6))+cast(a.sdate as char(10)) 
                    in(select goodsid from #tmp_goods)                
                and a.sdate between @Begindate and @Enddate
                and a.goodsid=b.goodsid
		group by a.deptid,a.ShopID,a.costtaxrate
                			
	--���������Ʒ����������
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,SaleQty1,SaleValue1,SaleCost1,saletaxvalue1,saletaxcost1)
		select a.deptid,a.ShopID,a.costtaxrate,sum(a.qty),sum(a.salevalue-a.discvalue),sum(a.costvalue),
		       sum((a.salevalue-a.discvalue)*a.saletaxrate/(100+a.saletaxrate*(1-b.agroflag))),
		       sum(a.costvalue*a.saletaxrate/(100+a.costtaxrate*(1-b.agroflag)))		
		from #tmp_salecost a,goods b
                WHERE a.SheetType in(101,102,104,105)                
                and cast(a.shopid as char(4))+cast(a.goodsid as char(6))+cast(a.sdate as char(10)) 
                    not in(select goodsid from #tmp_goods)                 
                and a.sdate between '2012-04-01' and '2012-04-30'
                and a.goodsid=b.goodsid
		group by a.deptid,a.ShopID,a.costtaxrate
        drop table #tmp_goods;
	--����
	select @BreakPoint = 853150
	Insert into 
                #TMP_Base0001(deptid,ShopID,taxrate,ReceiptQty,ReceiptValue,receipttaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType = 2301
		      and sdate between @Begindate and @Enddate
		  GROUP BY deptid,ShopID,taxrate
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	--�˻�
	select @BreakPoint = 853151
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,RetQty,RetValue,rettaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType = 2323
			and sdate between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	--���ͳ���
	select @BreakPoint = 853152
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,RationOutQty,RationOutValue,rationouttaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType = 2332 and DirectFlag=-1   --1-->-1			
			and sdate between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	--�������
	select @BreakPoint = 853153
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,RationInQty,RationInValue,rationintaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType = 2332 and DirectFlag=1  --  -1-->1			
			and sdate between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;		 
	--����������
	select @BreakPoint = 853152
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,TransferOutQty,TransferOutValue,transferouttaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType in(2342,2345) and DirectFlag=-1   --1-->-1			
			and sdate between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	--���������
	select @BreakPoint = 853153
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,TransferInQty,TransferInValue,transferintaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType in(2342,2345) and DirectFlag=1  --  -1-->1			
			and sdate between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	
	--�̵�
	select @BreakPoint = 853160
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,PDQty,PDValue,pdtaxvalue)
		select deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType=2444			
			and sdate between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	--����
	select @BreakPoint = 853161
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,LostQty,LostValue,losttaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType=2413			
			and sdate between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	--����
	select @BreakPoint = 853162
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,WSaleQty,WSaleValue,PriceValue,Wsaletaxvalue)
		select deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue),sum(DirectFlag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType=2451			
			and sdate between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	--���ã���������
	select @BreakPoint = 853163
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,XtranQty,XtranValue,Xtrantaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType = 2423
			and sdate between @Begindate and @Enddate
		GROUP BY deptid,ShopID,taxrate
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	
	--���ã��ӹ�����
	select @BreakPoint = 853163
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,SaleStuffQty,SaleStuffValue,salestufftaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType = 2473
			and sdate between @Begindate and @Enddate
		GROUP BY deptid,ShopID,taxrate
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	
	
	--���ã���Ӧ������
	select @BreakPoint = 853163
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,VenderUseQty,VenderUseValue,Venderusetaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
	
	where SheetType = 2472
			and sdate between @Begindate and @Enddate
		GROUP BY deptid,ShopID,taxrate
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
-------�������������ݷֽ⣬begin--------------------------------------------------------------
       --�ӹ��ֽ⣺2522  
	select @BreakPoint = 853164
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,JgQty,JgValue,jgtaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType = 2522				
			and sdate between @Begindate and @Enddate
		GROUP BY deptid,ShopID,taxrate
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
        --���θ�����2445 
	select @BreakPoint = 853165
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,PcgzQty,PcgzValue,pcgztaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType = 2445				
			and sdate between @Begindate and @Enddate
		GROUP BY deptid,ShopID,taxrate
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
      --���ɱ�������2431
	select @BreakPoint = 853166
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,KccbQty,KccbValue,kccbtaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType = 2431				
			and sdate between @Begindate and @Enddate
	        GROUP BY deptid,ShopID,taxrate	
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
       --��Ʒת�������2390
	select @BreakPoint = 853167
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,ZmdbQty,ZmdbValue,zmdbtaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType = 2390			
			and sdate between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
       --�������ת����2253
	select @BreakPoint = 853168
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,KclxzhQty,KclxzhValue,kclxzhtaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType = 2253			
			and sdate between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
       --ת�ࣺ2251
	select @BreakPoint = 853169
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,ZlQty,ZlValue,zltaxvalue)
		select deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook 
		where SheetType = 2251			
			and sdate between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate
				
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	
-------------------------�������������ݷֽ⣬end--------------------------------------------
 
     --��������(�������)
	select @BreakPoint = 853171
	Insert into #TMP_Base0001(deptid,ShopID,taxrate,AdjustQty,AdjustValue,Adjusttaxvalue)
		select deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook	
                where SheetType not in (2301,2323,2332,2342,2444,2413,2451,2423,2472,2473,101,102,104,105,
                			6666,8888,2522,2445,2431,2390,2253,2251,2345)			
			and sdate between @Begindate and @Enddate
		GROUP BY deptid,ShopID,taxrate
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
     
        select @BreakPoint = 853199
          Insert into #TMP_Base0001(deptid,ShopID,taxrate,AdjustQty,AdjustValue,Adjusttaxvalue)
		select deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue),
		       sum(directflag*costtaxvalue)
		from #TMP_WasteBook
                where SheetType = 8888			
                        and sdate > @Begindate 
            
            and sdate <= @Enddate
		GROUP BY deptid,ShopID,taxrate
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
                
        --��ĩ���  --2006-11-01 ���������ֽ�ĵ��ݽ��
	UPDATE #TMP_Base0001 SET CloseQty=StartQty-saleQty+ReceiptQty+RetQty
	                                  +RationOutqty+Rationinqty
	                                  +TransferOutQty+TransferInQty
	                                  +PDQty+LostQty+WSaleQty
	                                  +Xtranqty+SaleStuffqty+Venderuseqty+AdjustQty+JgQty
				          +PcgzQty+KccbQty+ZmdbQty+KclxzhQty+ZlQty,
				CloseCostV=StartcostV-SaleCost+ReceiptValue+RetValue
				          +Rationoutvalue+Rationinvalue
				          +TransferOutValue+TransferInValue
					  +PDValue+LostValue+WSaleValue
					  +Xtranvalue+SaleStuffvalue+Venderusevalue
					  +AdjustValue+JgValue+PcgzValue+KccbValue
                                          +ZmdbValue+KclxzhValue+ZlValue,
                                Closetaxvalue=Starttaxvalue-saletaxcost+receipttaxvalue
                                          +rettaxvalue+rationouttaxvalue+rationintaxvalue
                                          +transferouttaxvalue+transferintaxvalue
                                          +pdtaxvalue+losttaxvalue+wsaletaxvalue
                                          +xtrantaxvalue+salestufftaxvalue+venderusetaxvalue
                                          +Adjusttaxvalue+jgtaxvalue+pcgztaxvalue+kccbtaxvalue
                                          +zmdbtaxvalue+kclxzhtaxvalue+zltaxvalue;
                                          
	SELECT @Err=@@Error;
	IF @Err !=0 GOTO ErrHandle;
	
    
	select @BreakPoint = 853181;
	Create index i1_TMP_Base0001 on #TMP_Base0001(deptID);
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
       
        drop table #TMP_WasteBook;
        drop table #TMP_SaleCost;
  return 0;
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End


create procedure dbo.LD_JXCBookMachine_goods @Flag int=1,@begindate datetime,@endDate datetime

-----------------------------------------------------------------
--Version Number: Mender:GWF  ��Ե�Ʒ�����۴�
-----------------------------------------------------------------
AS BEGIN
	declare @Err		int;
	declare @BreakPoint	int;
	declare @StartWork	int;
	declare @Msg		varchar(255);
	declare @SDate		datetime;
	declare @Sdate1	        char(20);
	declare @Begindate1	datetime;
	declare @MyShopType	int;
	declare @LevelValue	int;
	declare @rowcount	int;

	set nocount on ;
	--ȡ��������
	select @MyShopType=A.ShopType from Shop A with (NoLock),Config B with (NoLock) where A.ID=B.Value and B.name='�����'
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	if @MyShopType is null select @MyShopType=11;

	
	select @SDate=convert(varchar(10),getdate(),112);
        select @sdate1=year(@begindate)*10000+month(@begindate)*100+01;
	select @begindate1=convert(datetime,@sdate1);	

	-----------------��������---------------------------		
	select @BreakPoint=853191;

          if object_id('tempdb..#TMP_WasteBook') is not null drop table #TMP_WasteBook
	 create table dbo.#TMP_WasteBook
	      (
		GoodsID			int		Not null,		--��Ʒ����
		GoodsCostID		int		not null,		--���κ�
		DeptID			int		Not null,		--��Ʒ���
		ShopID			char(4)		Not null,		--���	
		VenderID		int		Not null,		--��Ӧ�̱���
		PayTypeID		char(2)		Not null,		--���㷽ʽ
		Directflag		int		Not null,		--���ʷ���:+1=Dr /-1=Cr
		Qty			dec(12,3)	Not null,		--��������
		Cost			dec(12,4)	Not null,		--��������
		TaxRate			dec(4,2)	Not null,		--����˰��%
		CostValue		dec(12,3)	Not null,		--�������
		CostTaxValue		dec(12,3)	Not null,		--����˰��
		CloseQty		dec(12,3)	Not null,		--�������
		CloseCostV		dec(12,3)	Not null,		--�����
		CloseTaxV		dec(12,3)	Not null,		--���˰��
		SheetID			char(16)	Not null,		--���ݱ��
		SheetType		int		Not null,		--��������
		SDate			datetime	Not null		--��������
		)
---

        if object_id('tempdb..#TMP_SaleCost') is not null drop table #TMP_SaleCost
	      create table #TMP_SaleCost
	       (
		SDate		datetime	not null,		--��ת����
		SaleDate	datetime	not null,		--��������
		ShopID		char(4)		not null,		--���
		GoodsID		int		not null,		--��Ʒ����
		DeptID		int		not null,		--����
		VenderID	int		not null,		--��Ӧ�̱��
		PaytypeID	char(2)		not null,		--���㷽ʽ���
		AgroFlag	int		default 0 not null,	--�Ƿ���˰ũ��Ʒ(0=���� 1=��)
		Qty		dec(12,3)	default 0 not null,	--����
		Price		dec(10,2)	not null,		--�ֵ��ۼ� 
		Cost		dec(12,4)	default 0 not null,	--����
		CostValue	dec(12,2)	not null,		--�ɱ��� 
		CostTaxRate	dec(4,2)	default 17 not null,	--����˰��%
		SaleTaxRate	dec(4,2)	default 17 not null,	--����˰��%
		SaleValue	dec(12,2)	default 0 not null,	--���۽��
		DiscValue	dec(12,2)	default 0 not null,	--�ۿ۽��
		DiscType	char(1)		not null,		--��������(ͬProm_Level���PromType)
		SheetType	int		default 101 not null	--��������,101=���� 102=������	
		--DKRate 		dec(4,2) 	default 0 not null	--������		
	        )
          
	exec @err=LD_JXCBookData @begindate,@endDate
	if @Err<>0
	begin
		select @Msg='����׼������ʱ����';
		if @Err != 0 goto ErrHandle;
	end;

	-----------------����ͳ��-----------------------------
	--�޸� Ch 2008-02-19 #TMP_WasteBook-->##TMP_WasteBook, #TMP_SaleCost-->##TMP_SaleCost	--begin  
	--�ڳ����
	       --ÿ���ڳ�
		INSERT INTO #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,StartQty,StartCostV)
		SELECT GoodsID,deptid,Shopid,taxrate,sum(CloseQty),sum(CloseCostV)
		FROM ##TMP_WasteBook WHERE sheettype =6666 
		 and convert(char(8),sdate,112)<=convert(char(8),@begindate,112) 
		group by goodsid,deptid,shopid,taxrate
               --�л��ڳ�
	 	INSERT INTO #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,StartQty,StartCostV)
		--SELECT @begindate,GoodsID,deptid,Shopid,taxrate,sum(directflag*qty),sum(directflag*qty*cost)
		SELECT GoodsID,deptid,Shopid,taxrate,sum(directflag*qty),sum(directflag*costvalue)
		
		FROM ##TMP_WasteBook WHERE sheettype =8888
		and convert(char(8),sdate,112)<=convert(char(8),@begindate,112)
		group by goodsid,deptid,shopid,taxrate
	       --����
		INSERT INTO #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,StartQty,StartCostV)
		--SELECT @begindate,GoodsID,deptid,Shopid,taxrate,sum(Directflag*Qty),sum(Directflag*Qty*Cost)
		SELECT GoodsID,deptid,Shopid,taxrate,sum(Directflag*Qty),sum(Directflag*costvalue)
		
		FROM ##TMP_WasteBook 
		WHERE convert(char(8),sdate,112)<convert(char(8),@begindate,112) 
                      and sheettype not in(8888,6666)
		Group By GoodsID,deptid,Shopid,taxrate	

	        DELETE ##TMP_WasteBook WHERE convert(char(8),sDate,112)<convert(char(8),@begindate,112);
                /*
                Delete from ##TMP_WasteBook from ##TMP_WasteBook a,paytype b
                	where a.paytypeid=b.id and b.paytypesortid not in('g','d') and venderid <>999999;
                */               
        --��������Ʒ����������
        Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,SaleQty,SaleValue,SaleCost)
		select GoodsID,deptid,ShopID,taxrate,-1*sum(directflag*qty),0,-1*sum(directflag*CostValue)
		from ##TMP_WasteBook WHERE SheetType in(101,102)
                and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by GoodsID,deptid,ShopID,taxrate;
        select distinct cast(shopid as char(4))+cast(goodsid as char(6))+cast(sdate as char(10)) as goodsid 
               into #tmp_goods  from ##TMP_WasteBook 
               where sheettype in(101,102) 
	       and convert(char(8),sdate,112) between @Begindate and @Enddate;
	       
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,SaleQty,SaleValue,SaleCost)
		select a.GoodsID,deptid,a.ShopID,a.costtaxrate,0,sum(a.salevalue-a.discvalue),0
		from ##TMP_SaleCost a
                WHERE a.SheetType in(101,102)                
                and cast(shopid as char(4))+cast(a.goodsid as char(6))+cast(a.sdate as char(10)) 
                   in(select goodsid from #tmp_goods) 
                and convert(char(8),a.sdate,112) between @Begindate and @Enddate
		group by a.GoodsID,deptid,a.ShopID,a.costtaxrate
                			
	--���������Ʒ����������
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,SaleQty1,SaleValue1,SaleCost1)
		select a.GoodsID,deptid,a.ShopID,a.costtaxrate,sum(a.qty),sum(a.salevalue-a.discvalue),sum(a.costvalue)		
		from ##TMP_SaleCost a
                WHERE a.SheetType in(101,102)                
                and cast(shopid as char(4))+cast(a.goodsid as char(6))+cast(a.sdate as char(10)) 
                    not in(select goodsid from #tmp_goods) 
                and convert(char(8),a.sdate,112) between @Begindate and @Enddate
		group by a.GoodsID,deptid,a.ShopID,a.costtaxrate

        drop table #tmp_goods;

	--����
	select @BreakPoint = 853150
	Insert into 
                #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,ReceiptQty,ReceiptValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2301
		      and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--�˻�
	select @BreakPoint = 853151
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,RetQty,RetValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2323
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--���������͡�������
	select @BreakPoint = 853152
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,TransferOutQty,TransferOutValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2332,2342) and DirectFlag=-1   --1-->-1
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--���루���䡢������
	select @BreakPoint = 853153
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,TransferInQty,TransferInValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2332,2342) and DirectFlag=1  --  -1-->1
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--�̵�
	select @BreakPoint = 853160
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,PDQty,PDValue)
		select GoodsID,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2444
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate
            
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--����
	select @BreakPoint = 853161
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,LostQty,LostValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2413
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--����
	select @BreakPoint = 853162
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,WSaleQty,WSaleValue,PriceValue)
		select GoodsID,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2451
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--���ã��������á���Ӧ�����á��ӹ�����
	select @BreakPoint = 853163
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,UseQty,UseValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2423,2472,2473)	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

-------�������������ݷֽ⣬begin--------------------------------------------------------------

       --�ӹ��ֽ⣺2522  
	select @BreakPoint = 853164
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,JgQty,JgValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2522	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

        --���θ�����2445 
	select @BreakPoint = 853165
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,PcgzQty,PcgzValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2445	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
	        group by goodsid,deptid,shopid,taxrate
	
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

      --���ɱ�������2431
	select @BreakPoint = 853166
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,KccbQty,KccbValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2431	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

     --��Ʒת�������2390
	select @BreakPoint = 853167
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,ZmdbQty,ZmdbValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2390
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		
group by goodsid,deptid,shopid,taxrate
	
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;


     --�������ת����2253
	select @BreakPoint = 853168
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,KclxzhQty,KclxzhValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2253
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

       --ת�ࣺ2251
	select @BreakPoint = 853169
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,ZlQty,ZlValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2251
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate
				
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

    

-------------------------�������������ݷֽ⣬end--------------------------------------------
	
	--��������(������������,�����۵���,�������)
	select @BreakPoint = 853171
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,AdjustQty,AdjustValue)
		select GoodsID,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook			     
		where SheetType not in (2301,2323,2332,2342,2444,2413,2451,2423,2472,2473,101,102,6666,8888,2522,2445,2431,2390,2253,2251)
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
        
        --��ĩ���  --2006-11-01 ���������ֽ�ĵ��ݽ��
	UPDATE #TMP_Base0001 SET CloseQty=StartQty-saleQty+ReceiptQty+RetQty+TransferOutQty+TransferInQty+PDQty
				+LostQty+WSaleQty+UseQty+AdjustQty+JgQty+PcgzQty+KccbQty+ZmdbQty+KclxzhQty+ZlQty
				,CloseCostV=StartcostV-SaleCost+ReceiptValue+RetValue+TransferOutValue+TransferInValue
					+PDValue+LostValue+WSaleValue+UseValue+AdjustValue+JgValue+PcgzValue+KccbValue
                                        +ZmdbValue+KclxzhValue+ZlValue;
	SELECT @Err=@@Error;
	IF @Err !=0 GOTO ErrHandle;
	
 
	select @BreakPoint = 853181;
	Create index i1_TMP_Base0001 on #TMP_Base0001(GoodsID);
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
   
        drop table ##TMP_WasteBook;
        drop table ##TMP_SaleCost;
--�޸� Ch 2008-02-19 #TMP_WasteBook-->##TMP_WasteBook, #TMP_SaleCost-->##TMP_SaleCost	--end
  return 0;

ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO

--------------------------
if exists (select * from sysobjects where id = object_id('dbo.LD_JXCBookMachine_vendergoods') and type = 'P')
  drop procedure dbo.LD_JXCBookMachine_vendergoods
GO

create procedure dbo.LD_JXCBookMachine_vendergoods @Flag int=1,@begindate datetime,@endDate datetime

-----------------------------------------------------------------
--Version Number: Mender:GWF  ��Ե�Ʒ�����۴�
-----------------------------------------------------------------
AS BEGIN
	declare @Err		int;
	declare @BreakPoint	int;
	declare @StartWork	int;
	declare @Msg		varchar(255);
	declare @SDate		datetime;
	declare @Sdate1	        char(20);
	declare @Begindate1	datetime;
	declare @MyShopType	int;
	declare @LevelValue	int;
	declare @rowcount	int;

	set nocount on ;
	--ȡ��������
	select @MyShopType=A.ShopType from Shop A with (NoLock),Config B with (NoLock) where A.ID=B.Value and B.name='�����'
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	if @MyShopType is null select @MyShopType=11;

	
	select @SDate=convert(varchar(10),getdate(),112);
        select @sdate1=year(@begindate)*10000+month(@begindate)*100+01;
	select @begindate1=convert(datetime,@sdate1);	

	-----------------��������---------------------------		
	select @BreakPoint=853191;

          if object_id('tempdb..#TMP_WasteBook') is not null drop table #TMP_WasteBook
	 create table dbo.#TMP_WasteBook
	      (
		GoodsID			int		Not null,		--��Ʒ����
		GoodsCostID		int		not null,		--���κ�
		DeptID			int		Not null,		--��Ʒ���
		ShopID			char(4)		Not null,		--���	
		VenderID		int		Not null,		--��Ӧ�̱���
		PayTypeID		char(2)		Not null,		--���㷽ʽ
		Directflag		int		Not null,		--���ʷ���:+1=Dr /-1=Cr
		Qty			dec(12,3)	Not null,		--��������
		Cost			dec(12,4)	Not null,		--��������
		TaxRate			dec(4,2)	Not null,		--����˰��%
		CostValue		dec(12,3)	Not null,		--�������
		CostTaxValue		dec(12,3)	Not null,		--����˰��
		CloseQty		dec(12,3)	Not null,		--�������
		CloseCostV		dec(12,3)	Not null,		--�����
		CloseTaxV		dec(12,3)	Not null,		--���˰��
		SheetID			char(16)	Not null,		--���ݱ��
		SheetType		int		Not null,		--��������
		SDate			datetime	Not null		--��������
		)
---

        if object_id('tempdb..#TMP_SaleCost') is not null drop table #TMP_SaleCost
	      create table #TMP_SaleCost
	       (
		SDate		datetime	not null,		--��ת����
		SaleDate	datetime	not null,		--��������
		ShopID		char(4)		not null,		--���
		GoodsID		int		not null,		--��Ʒ����
		DeptID		int		not null,		--����
		VenderID	int		not null,		--��Ӧ�̱��
		PaytypeID	char(2)		not null,		--���㷽ʽ���
		AgroFlag	int		default 0 not null,	--�Ƿ���˰ũ��Ʒ(0=���� 1=��)
		Qty		dec(12,3)	default 0 not null,	--����
		Price		dec(10,2)	not null,		--�ֵ��ۼ� 
		Cost		dec(12,4)	default 0 not null,	--����
		CostValue	dec(12,2)	not null,		--�ɱ��� 
		CostTaxRate	dec(4,2)	default 17 not null,	--����˰��%
		SaleTaxRate	dec(4,2)	default 17 not null,	--����˰��%
		SaleValue	dec(12,2)	default 0 not null,	--���۽��
		DiscValue	dec(12,2)	default 0 not null,	--�ۿ۽��
		DiscType	char(1)		not null,		--��������(ͬProm_Level���PromType)
		SheetType	int		default 101 not null	--��������,101=���� 102=������	
		--DKRate 		dec(4,2) 	default 0 not null	--������		
	        )
          
	exec @err=LD_JXCBookData @begindate,@endDate
	if @Err<>0
	begin
		select @Msg='����׼������ʱ����';
		if @Err != 0 goto ErrHandle;
	end;

	-----------------����ͳ��-----------------------------	
	--�޸� Ch 2008-02-19 #TMP_WasteBook-->##TMP_WasteBook, #TMP_SaleCost-->##TMP_SaleCost  --begin
	--�ڳ����
	       --ÿ���ڳ�
		INSERT INTO #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,StartQty,StartCostV)
		SELECT venderid,GoodsID,deptid,Shopid,taxrate,sum(CloseQty),sum(CloseCostV)
		FROM ##TMP_WasteBook WHERE sheettype =6666 
		 and convert(char(8),sdate,112)<=convert(char(8),@begindate,112) 
		group by goodsid,deptid,shopid,taxrate,venderid
               --�л��ڳ�
	 	INSERT INTO #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,StartQty,StartCostV)
		--SELECT @begindate,GoodsID,deptid,Shopid,taxrate,sum(directflag*qty),sum(directflag*qty*cost)
		SELECT venderid,GoodsID,deptid,Shopid,taxrate,sum(directflag*qty),sum(directflag*costvalue)
		
		FROM ##TMP_WasteBook WHERE sheettype =8888
		and convert(char(8),sdate,112)<=convert(char(8),@begindate,112)
		group by goodsid,deptid,shopid,taxrate,venderid
	       --����
		INSERT INTO #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,StartQty,StartCostV)
		--SELECT @begindate,GoodsID,deptid,Shopid,taxrate,sum(Directflag*Qty),sum(Directflag*Qty*Cost)
		SELECT venderid,GoodsID,deptid,Shopid,taxrate,sum(Directflag*Qty),sum(Directflag*costvalue)
		
		FROM ##TMP_WasteBook 
		WHERE convert(char(8),sdate,112)<convert(char(8),@begindate,112) 
                      and sheettype not in(8888,6666)
		Group By GoodsID,deptid,Shopid,taxrate,venderid

	        DELETE ##TMP_WasteBook WHERE convert(char(8),sDate,112)<convert(char(8),@begindate,112);
                /*
                Delete from ##TMP_WasteBook from ##TMP_WasteBook a,paytype b
                	where a.paytypeid=b.id and b.paytypesortid not in('g','d') and venderid <>999999;
                */               
        --��������Ʒ����������
        Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,SaleQty,SaleValue,SaleCost)
		select venderid,GoodsID,deptid,ShopID,taxrate,-1*sum(directflag*qty),0,-1*sum(directflag*CostValue)
		from ##TMP_WasteBook WHERE SheetType in(101,102)
                and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by GoodsID,deptid,ShopID,taxrate,venderid;
        select distinct cast(shopid as char(4))+cast(goodsid as char(6))+cast(sdate as char(10)) as goodsid 
               into #tmp_goods  from ##TMP_WasteBook 
               where sheettype in(101,102) 
	       and convert(char(8),sdate,112) between @Begindate and @Enddate;
	       
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,SaleQty,SaleValue,SaleCost)
		select venderid,a.GoodsID,a.deptid,a.ShopID,a.costtaxrate,0,sum(a.salevalue-a.discvalue),0
		from ##TMP_SaleCost a
                WHERE a.SheetType in(101,102)                
                and cast(a.shopid as char(4))+cast(a.goodsid as char(6))+cast(a.sdate as char(10)) 
                   in(select goodsid from #tmp_goods) 
                and convert(char(8),a.sdate,112) between @Begindate and @Enddate
		group by a.GoodsID,deptid,a.ShopID,a.costtaxrate,venderid
                			
	--���������Ʒ����������
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,SaleQty1,SaleValue1,SaleCost1)
		select venderid,a.GoodsID,a.deptid,a.ShopID,a.costtaxrate,sum(a.qty),sum(a.salevalue-a.discvalue),sum(a.costvalue)		
		from ##TMP_SaleCost a
                WHERE a.SheetType in(101,102)                
                and cast(a.shopid as char(4))+cast(a.goodsid as char(6))+cast(a.sdate as char(10)) 
                    not in(select goodsid from #tmp_goods) 
                and convert(char(8),a.sdate,112) between @Begindate and @Enddate
		group by a.GoodsID,deptid,a.ShopID,a.costtaxrate,venderid

        drop table #tmp_goods;

	--����
	select @BreakPoint = 853150
	Insert into 
                #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,ReceiptQty,ReceiptValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2301
		      and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--�˻�
	select @BreakPoint = 853151
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,RetQty,RetValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2323
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--���������͡�������
	select @BreakPoint = 853152
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,TransferOutQty,TransferOutValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2332,2342) and DirectFlag=-1   --1-->-1
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--���루���䡢������
	select @BreakPoint = 853153
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,TransferInQty,TransferInValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2332,2342) and DirectFlag=1  --  -1-->1
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--�̵�
	select @BreakPoint = 853160
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,PDQty,PDValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2444
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid
            
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--����
	select @BreakPoint = 853161
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,LostQty,LostValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2413
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--����
	select @BreakPoint = 853162
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,WSaleQty,WSaleValue,PriceValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2451
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--���ã��������á���Ӧ�����á��ӹ�����
	select @BreakPoint = 853163
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,UseQty,UseValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2423,2472,2473)	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate,venderid
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

-------�������������ݷֽ⣬begin--------------------------------------------------------------

       --�ӹ��ֽ⣺2522  
	select @BreakPoint = 853164
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,JgQty,JgValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2522	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate,venderid
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

        --���θ�����2445 
	select @BreakPoint = 853165
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,PcgzQty,PcgzValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2445	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
	        group by goodsid,deptid,shopid,taxrate,venderid
	
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

      --���ɱ�������2431
	select @BreakPoint = 853166
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,KccbQty,KccbValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2431	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate,venderid
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

     --��Ʒת�������2390
	select @BreakPoint = 853167
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,ZmdbQty,ZmdbValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2390
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate,venderid
	
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;


     --�������ת����2253
	select @BreakPoint = 853168
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,KclxzhQty,KclxzhValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2253
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate,venderid
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

       --ת�ࣺ2251
	select @BreakPoint = 853169
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,ZlQty,ZlValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2251
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid
				
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

    

-------------------------�������������ݷֽ⣬end--------------------------------------------
	
	--��������(������������,�����۵���,�������)
	select @BreakPoint = 853171
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,AdjustQty,AdjustValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook			     
		where SheetType not in (2301,2323,2332,2342,2444,2413,2451,2423,2472,2473,101,102,6666,8888,2522,2445,2431,2390,2253,2251)
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
        
        --��ĩ���  --2006-11-01 ���������ֽ�ĵ��ݽ��
	UPDATE #TMP_Base0001 SET CloseQty=StartQty-saleQty+ReceiptQty+RetQty+TransferOutQty+TransferInQty+PDQty
				+LostQty+WSaleQty+UseQty+AdjustQty+JgQty+PcgzQty+KccbQty+ZmdbQty+KclxzhQty+ZlQty
				,CloseCostV=StartcostV-SaleCost+ReceiptValue+RetValue+TransferOutValue+TransferInValue
					+PDValue+LostValue+WSaleValue+UseValue+AdjustValue+JgValue+PcgzValue+KccbValue
                                        +ZmdbValue+KclxzhValue+ZlValue;
	SELECT @Err=@@Error;
	IF @Err !=0 GOTO ErrHandle;
	
 
	select @BreakPoint = 853181;
	Create index i1_TMP_Base0001 on #TMP_Base0001(GoodsID);
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
   
        drop table ##TMP_WasteBook;
        drop table ##TMP_SaleCost;

  return 0;
--�޸� Ch 2008-02-19 #TMP_WasteBook-->##TMP_WasteBook, #TMP_SaleCost-->##TMP_SaleCost  --end
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO


----------------------------
if exists (select * from sysobjects where id = object_id('dbo.LD_JXCBookMachine_vender') and type = 'P')
  drop procedure dbo.LD_JXCBookMachine_vender
GO

create procedure dbo.LD_JXCBookMachine_vender @Flag int=1,@begindate datetime,@endDate datetime

-----------------------------------------------------------------
--Version Number: Mender:GWF
-----------------------------------------------------------------
AS BEGIN
	declare @Err		int;
	declare @BreakPoint	int;
	declare @StartWork	int;
	declare @Msg		varchar(255);
	declare @SDate		datetime;
	declare @Sdate1	        char(20);
	declare @Begindate1	datetime;
	declare @MyShopType	int;
	declare @LevelValue	int;
	declare @rowcount	int;

	set nocount on ;
	--ȡ��������
	select @MyShopType=A.ShopType from Shop A with (NoLock),Config B with (NoLock) where A.ID=B.Value and B.name='�����'
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	if @MyShopType is null select @MyShopType=11;

	
	select @SDate=convert(varchar(10),getdate(),112);
        select @sdate1=year(@begindate)*10000+month(@begindate)*100+01;
	select @begindate1=convert(datetime,@sdate1);	

	-----------------��������---------------------------		
        select @BreakPoint=853191;
         if object_id('tempdb..#TMP_WasteBook') is not null drop table #TMP_WasteBook
	 create table dbo.#TMP_WasteBook
	      (
              
		GoodsID			int		Not null,		--��Ʒ����
		GoodsCostID		int		not null,		--���κ�
		DeptID			int		Not null,		--��Ʒ���
		ShopID			char(4)		Not null,		--���	
		VenderID		int		Not null,		--��Ӧ�̱���
		PayTypeID		char(2)		Not null,		--���㷽ʽ
		Directflag		int		Not null,		--���ʷ���:+1=Dr /-1=Cr
		Qty			dec(12,3)	Not null,		--��������
		Cost			dec(12,4)	Not null,		--��������
		TaxRate			dec(4,2)	Not null,		--����˰��%
		CostValue		dec(12,3)	Not null,		--�������
		CostTaxValue		dec(12,3)	Not null,		--����˰��
		CloseQty		dec(12,3)	Not null,		--�������
		CloseCostV		dec(12,3)	Not null,		--�����
		CloseTaxV		dec(12,3)	Not null,		--���˰��
		SheetID			char(16)	Not null,		--���ݱ��
		SheetType		int		Not null,		--��������
		SDate			datetime	Not null		--��������
		)
---

        if object_id('tempdb..#TMP_SaleCost') is not null drop table #TMP_SaleCost
	      create table #TMP_SaleCost
	       (
              
		SDate		datetime	not null,		--��ת����
		SaleDate	datetime	not null,		--��������
		ShopID		char(4)		not null,		--���
		GoodsID		int		not null,		--��Ʒ����
		DeptID		int		not null,		--����
		VenderID	int		not null,		--��Ӧ�̱��
		PaytypeID	char(2)		not null,		--���㷽ʽ���
		AgroFlag	int		default 0 not null,	--�Ƿ���˰ũ��Ʒ(0=���� 1=��)
		Qty		dec(12,3)	default 0 not null,	--����
		Price		dec(10,2)	not null,		--�ֵ��ۼ� 
		Cost		dec(12,4)	default 0 not null,	--����
		CostValue	dec(12,2)	not null,		--�ɱ��� 
		CostTaxRate	dec(4,2)	default 17 not null,	--����˰��%
		SaleTaxRate	dec(4,2)	default 17 not null,	--����˰��%
		SaleValue	dec(12,2)	default 0 not null,	--���۽��
		DiscValue	dec(12,2)	default 0 not null,	--�ۿ۽��
		DiscType	char(1)		not null,		--��������(ͬProm_Level���PromType)
		SheetType	int		default 101 not null	--��������,101=���� 102=������	
		--DKRate 		dec(4,2) 	default 0 not null	--������		
	        )

        
	exec @err=LD_JXCBookData @begindate,@endDate
	if @Err<>0
	begin
		select @Msg='����׼������ʱ����';
		if @Err != 0 goto ErrHandle;
	end;

	-----------------����ͳ��-----------------------------	
	--�޸� Ch 2008-02-19 #TMP_WasteBook-->##TMP_WasteBook, #TMP_SaleCost-->##TMP_SaleCost  --begin
	--�ڳ����
	       --ÿ���ڳ�
	      
		INSERT INTO #TMP_Base0001(venderid,deptid,ShopID,taxrate,StartQty,StartCostV)
		SELECT venderid,deptid,Shopid,taxrate,sum(CloseQty),sum(CloseCostV)
		FROM ##TMP_WasteBook WHERE sheettype =6666 
		 and convert(char(8),sdate,112)<=convert(char(8),@begindate,112) 
		group by deptid,shopid,taxrate,venderid
               --�л��ڳ�
	 	INSERT INTO #TMP_Base0001(venderid,deptid,ShopID,taxrate,StartQty,StartCostV)
		--SELECT @begindate,GoodsID,deptid,Shopid,taxrate,sum(directflag*qty),sum(directflag*qty*cost)
		SELECT venderid,deptid,Shopid,taxrate,sum(directflag*qty),sum(directflag*costvalue)
		
		FROM ##TMP_WasteBook WHERE sheettype =8888
		and convert(char(8),sdate,112)<=convert(char(8),@begindate,112)
		group by deptid,shopid,taxrate,venderid
	   
    --����
		INSERT INTO #TMP_Base0001(venderid,deptid,ShopID,taxrate,StartQty,StartCostV)
		--SELECT @begindate,GoodsID,deptid,Shopid,taxrate,sum(Directflag*Qty),sum(Directflag*Qty*Cost)
		SELECT venderid,deptid,Shopid,taxrate,sum(Directflag*Qty),sum(Directflag*costvalue)
		
		FROM ##TMP_WasteBook 
		WHERE convert(char(8),sdate,112)<convert(char(8),@begindate,112) 
                      and sheettype not in(8888,6666)
		Group By deptid,Shopid,taxrate,venderid

	        DELETE ##TMP_WasteBook WHERE convert(char(8),sDate,112)<convert(char(8),@begindate,112);
                /*
                Delete from ##TMP_WasteBook from ##TMP_WasteBook a,paytype b
                	where a.paytypeid=b.id and b.paytypesortid not in('g','d') and venderid <>999999;
                */               
        --��������Ʒ����������
        Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,SaleQty,SaleValue,SaleCost)
		select venderid,deptid,ShopID,taxrate,-1*sum(directflag*qty),0,-1*sum(directflag*CostValue)
		from ##TMP_WasteBook WHERE SheetType in(101,102)
                and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by deptid,ShopID,taxrate,venderid;
        select distinct cast(shopid as char(4))+cast(goodsid as char(6))+cast(sdate as char(10))+cast(venderid as char(6)) as goodsid 
               into #tmp_goods  from ##TMP_WasteBook 
               where sheettype in(101,102) 
	       and convert(char(8),sdate,112) between @Begindate and @Enddate;
	       
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,SaleQty,SaleValue,SaleCost)
		select venderid,deptid,a.ShopID,a.costtaxrate,0,sum(a.salevalue-a.discvalue),0
		from ##TMP_SaleCost a
                WHERE a.SheetType in(101,102)                
                and cast(a.shopid as char(4))+cast(a.goodsid as char(6))+cast(a.sdate as char(10)) + cast(a.venderid as char(6))
                    in(select goodsid from #tmp_goods) 
                and convert(char(8),a.sdate,112) between @Begindate and @Enddate
		group by deptid,a.ShopID,a.costtaxrate,venderid
                			
	--���������Ʒ����������
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,SaleQty1,SaleValue1,SaleCost1)
		select venderid,deptid,a.ShopID,a.costtaxrate,sum(a.qty),sum(a.salevalue-a.discvalue),sum(a.costvalue)		
		from ##TMP_SaleCost a
                WHERE a.SheetType in(101,102)                
                and cast(shopid as char(4))+cast(a.goodsid as char(6))+cast(a.sdate as char(10)) + cast(a.venderid as char(6))
                    not in(select goodsid from #tmp_goods) 
                and convert(char(8),a.sdate,112) between @Begindate and @Enddate
		group by deptid,a.ShopID,a.costtaxrate,venderid

        drop table #tmp_goods;

	--����
	select @BreakPoint = 853150
	Insert into 
                #TMP_Base0001(venderid,deptid,ShopID,taxrate,ReceiptQty,ReceiptValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2301
		      and convert(char(8),sdate,112) between @Begindate and @Enddate
		  GROUP BY deptid,ShopID,taxrate,venderid
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--�˻�
	select @BreakPoint = 853151
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,RetQty,RetValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2323
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--���������͡�������
	select @BreakPoint = 853152
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,TransferOutQty,TransferOutValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2332,2342) and DirectFlag=-1   --1-->-1
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--���루���䡢������
	select @BreakPoint = 853153
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,TransferInQty,TransferInValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2332,2342) and DirectFlag=1  --  -1-->1
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--�̵�
	select @BreakPoint = 853160
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,PDQty,PDValue)
		select venderid,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2444
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--����
	select @BreakPoint = 853161
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,LostQty,LostValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2413
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--����
	select @BreakPoint = 853162
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,WSaleQty,WSaleValue,PriceValue)
		select venderid,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2451
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--���ã��������á���Ӧ�����á��ӹ�����
	select @BreakPoint = 853163
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,UseQty,UseValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2423,2472,2473)	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		GROUP BY deptid,ShopID,taxrate,venderid
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

-------�������������ݷֽ⣬begin--------------------------------------------------------------

       --�ӹ��ֽ⣺2522  
	select @BreakPoint = 853164
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,JgQty,JgValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2522	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		GROUP BY deptid,ShopID,taxrate,venderid
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

        --���θ�����2445 
	select @BreakPoint = 853165
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,PcgzQty,PcgzValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2445	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		GROUP BY deptid,ShopID,taxrate,venderid
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

      --���ɱ�������2431
	select @BreakPoint = 853166
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,KccbQty,KccbValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2431	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
	        GROUP BY deptid,ShopID,taxrate,venderid
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

     --��Ʒת�������2390
	select @BreakPoint = 853167
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,ZmdbQty,ZmdbValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2390
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;


     --�������ת����2253
	select @BreakPoint = 853168
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,KclxzhQty,KclxzhValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2253
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

       --ת�ࣺ2251
	select @BreakPoint = 853169
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,ZlQty,ZlValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2251
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid
				
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;



-------------------------�������������ݷֽ⣬end--------------------------------------------
	
	--��������(������������,�����۵���,�������)
	select @BreakPoint = 853171
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,AdjustQty,AdjustValue)
		select venderid,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook			     
		where SheetType not in (2301,2323,2332,2342,2444,2413,2451,2423,2472,2473,101,102,6666,8888,2522,2445,2431,2390,2253,2251)
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		GROUP BY deptid,ShopID,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
        
        --��ĩ���  --2006-11-01 ���������ֽ�ĵ��ݽ��
	UPDATE #TMP_Base0001 SET CloseQty=StartQty-saleQty+ReceiptQty+RetQty+TransferOutQty+TransferInQty+PDQty
				+LostQty+WSaleQty+UseQty+AdjustQty+JgQty+PcgzQty+KccbQty+ZmdbQty+KclxzhQty+ZlQty
				,CloseCostV=StartcostV-SaleCost+ReceiptValue+RetValue+TransferOutValue+TransferInValue
					+PDValue+LostValue+WSaleValue+UseValue+AdjustValue+JgValue+PcgzValue+KccbValue
                                        +ZmdbValue+KclxzhValue+ZlValue;
	SELECT @Err=@@Error;
	IF @Err !=0 GOTO ErrHandle;
	
    
	select @BreakPoint = 853181;
	Create index i1_TMP_Base0001 on #TMP_Base0001(deptID);
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
       
        drop table ##TMP_WasteBook;
        drop table ##TMP_SaleCost;

  return 0;
--�޸� Ch 2008-02-19 #TMP_WasteBook-->##TMP_WasteBook, #TMP_SaleCost-->##TMP_SaleCost  --end
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO



-------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_2006051001') and type = 'P')
  drop procedure dbo.rp_2006051001
GO

create procedure dbo.rp_2006051001 @ShopID char(4),@dms  dec(12,3)
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031126_01,Last Mender:VL
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  
  declare @dWeekStart 	datetime;		--����һ
  declare @dMonthStart 	datetime;		--����һ��
  declare @StartDate datetime,@EndDate datetime;	--����һ�ŵ�����
  declare @WeekID int;
  declare @sCond varchar(255);
  SET NOCOUNT ON
  
  if @dms is null
  select @dms=1;
  
  --����
  select @sCond='ShopID='''+@ShopID+''' and GoodsID in (select GoodsID from #427894)';
  --��������������
  select @StartDate=cast(left(convert(char(8),DateAdd(month,-1,getdate()),112),6)+'01' as datetime);
  select @WeekID=DatePart(week,GetDate());
  exec TL_GetWeekDateBound @WeekID,@dWeekStart output,@EndDate output;
  select @EndDate=convert(char(8),getdate(),112);
  select @dWeekStart=convert(char(8),@dWeekStart,112);
  select @dMonthStart=DateAdd(month,1,@StartDate);
  --����
  select * into #rpt_Base0001 from rpt_Base0001 where 0=1;
  exec rp_GetMonthDataToTable @StartDate,@EndDate,'rpt_Base0001',@sCond;
  select @Err=@@error,@BreakPoint=42789401,@Msg='��ȡ�±����ݴ���';
  if @Err != 0 goto ErrHandle;
  --��������,��������,DMS,��;
  update #427894 set DMS=b.NDMS,WeekSale=WeekSaleQty,PreWeekSale=WeekSaleQty1,OnPurQty=b.OpenOrderQty+b.OpenRationQty
    from #427894 a,Demand b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  --��ǰ���,��ת����
  update #427894 set StockQty=b.Qty,CostValue=b.CostValue,
      SaleDays=case when a.DMS=0 then 0 else b.Qty/a.DMS end
    from #427894 a,ShopsStock b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
 --��������,��ת����
  select GoodsID,sum(SaleQty) SaleQty,case when sum(SaleQty)=0 then 0 else sum(CloseQty)/sum(SaleQty) end Times
    into #tmp3 from #rpt_Base0001 
    where convert(char(8),SDate,112) between convert(char(8),@dMonthStart,112) and convert(char(8),@EndDate,112)
    group by GoodsID;
  update #427894 set MonthSale=b.SaleQty,MonthDays=Times
    from #427894 a,#tmp3 b 
    where a.GoodsID=b.GoodsID;
  drop table #tmp3;
  --��������,��ת����
  select GoodsID,sum(SaleQty) SaleQty,case when sum(SaleQty)=0 then 0 else sum(CloseQty)/sum(SaleQty) end Times
    into #tmp4 from #rpt_Base0001 
    where convert(char(8),SDate,112) between convert(char(8),@StartDate,112) and convert(char(8),@dMonthStart-1,112)
    group by GoodsID;
  update #427894 set PreMonthSale=b.SaleQty,PreMonthDays=Times
    from #427894 a,#tmp4 b 
    where a.GoodsID=b.GoodsID;
  drop table #tmp4;
  --�������,��������
  select ShopID,GoodsID,max(SaleDate) SaleDate,max(ReceiptDate) ReceiptDate
    into #tmp1 from LatelyGoodsList
    where ShopID=@ShopID
    group by ShopID,GoodsID;
  update #427894 set LastPurDay=b.ReceiptDate,LastSaleDay=b.SaleDate
    from #427894 a,#tmp1 b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  drop table #tmp1;
  --��ǰ�ۼ�
  update #427894 set Price=b.Price
    from #427894 a,GoodsShop b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  --Ĭ�Ϲ�Ӧ��,����
  update #427894 set VenderID=b.VenderID,Cost=b.Cost
    from #427894 a,Cost b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID and b.Flag=0
  --��������ת��������Ϊ0
  update #427894 set MonthDays=case when MonthDays<0 then 0 else MonthDays end,
      PreMonthDays=case when PreMonthDays<0 then 0 else PreMonthDays end;  
  drop table #rpt_Base0001;
  
  --ɾ�������Ϣ��Ϊ0����Ʒ
  delete from #427894 where StockQty<>0;

  --ɾ����;����Ϊ0����Ʒ
  delete from #427894 where OnPurQty<>0;  
  
  --ɾ��DMS���������ļ�¼
  delete from #427894 where dms<@dms;
    
  return 0;    
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO

----------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_423410_bjds') and sysstat & 0xf = 4)
    drop procedure dbo.rp_423410_bjds
GO
create procedure dbo.rp_423410_bjds @PlanID int
WITH ENCRYPTION
-----------------------------------------------------------------

-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  declare @begindate	datetime;
  declare @enddate	datetime;
  declare @prebegindate datetime;
  declare @preenddate	datetime;
  declare @day int;
  declare @preyearbegindate  datetime  --ȥ��ͬ�ڿ�ʼ����
  declare @preyearEndDate datetime --ȥ��ͬ�ڽ�������
  
  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;
  declare @cnt  int;

  SET NOCOUNT ON
    
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=423410,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=423411,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select * into #tmpPromotionPlan from NowPromotionPlan0 where 1=2;  

  insert into #tmpPromotionPlan(SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
      PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime)
    select SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
      PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime 
      from NowPromotionPlan0 where planid=@planid;   

  insert into #tmpPromotionPlan(SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
      PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime)
    select SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
      PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime 
      from NowPromotionPlan where planid=@planid; 
      
  select @begindate=min(PriceBeginDate),@enddate=max(PriceEndDate) 
    from #tmpPromotionPlan 
    where PlanID=@PlanID 
    --and ShopID=@ShopID;
  select @Err=@@Error,@BreakPoint=423412,@msg='ȡ�����ƻ���ֹ���ڳ���!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
 

  select @day=datediff(day,@enddate,@begindate);
  select @preEndDate=dateadd(day,-1,@begindate);--ȡͬ�ڽ�������
  select @prebegindate=dateadd(day,@day,@preEndDate);--ȡͬ�ڿ�ʼ���� 
  
  create table #temp_423410
  (
   shopid       char(4)         null,
   sGroupID	int		null,		--���������
   sGroupName	char(16)	null,		--����������
   DMGoodsNum	int		default 0  null,		--DM��ƷƷ����
   DMSaleNum	int		default 0  null,		--DM������Ʒ��
   DMSaleQty	dec(16,4)	default 0  null,		--DM��Ʒ�������ܺ�
   DMSaleValue	dec(16,4)	default 0  null,		--DM��Ʒ���۶��ܺ�
   DMCost	dec(16,4)	default 0  null,		--DM������Ʒ�ɱ����
   SaleGoodsNum	int		default 0  null,		--������ƷƷ����
   SaleQty	dec(16,4)	default 0  null,		--��������Ʒ����������
   SaleValue	dec(16,4)	default 0  null,		--��������Ʒ�������۶�
   SaleCost	dec(16,4)	default 0  null,		--���ж�����Ʒ�ɱ����
   GoodsNum	int		default 0  null,		--��������ƷƷ����
   PreMonValue	dec(16,4)	default 0  null,		--����ͬ�ڹ�������Ʒ���۶�
   PreyearValue dec(16,4)	default 0  null			--ȥ��ͬ�ڹ�������Ʒ���۶�
  );
  select @tempflag=1; 
  select @cnt=count(*) from NowPromotionPlan0 where planid=@planid;
  if @cnt>0
  begin  
  insert into #temp_423410(shopid,sGroupId,sGroupName,GoodsNum)
    select distinct npp.shopid,sg.id sgid,sg.name sgname,count(g.goodsid) GoodsNum 
      from goods g,sgroup sg,NowPromotionPlan0 npp
      where sg.id*=(g.deptid/@levelvalue)
        and sg.deptlevelid=@deptlevel 
        and npp.planid=@planid
        group by npp.shopid,sg.id,sg.name
        order by npp.shopid,sgid;
  end;
  else
  begin
  insert into #temp_423410(shopid,sGroupId,sGroupName,GoodsNum)
    select distinct npp.shopid,sg.id sgid,sg.name sgname,count(g.goodsid) GoodsNum 
      from goods g,sgroup sg,NowPromotionPlan npp
      where sg.id*=(g.deptid/@levelvalue)
        and sg.deptlevelid=@deptlevel 
        and npp.planid=@planid
        group by npp.shopid,sg.id,sg.name
        order by npp.shopid,sgid;
  end;


--����ʱ��
--���´�������ͳ��
  select * into #423410salecost from salecost where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'salecost',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #423410tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #423410tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #423410tmp;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #423410salecost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
	   + '''';
--           + ''' and shopid=''' + @shopid +'''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #423410tmp;
       select @SQLString='insert into #423410salecost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
	   + '''';
--           + ''' and shopid=''' + @shopid +'''';
      execute (@SQLString);
      update #423410tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;

/*
  --���ܹ�����DM���۽��
  select shopid,ManageDeptID,sum(SaleValue) salevalue,sum(DMSaleValue) DMSaleValue,
      sum(DMCostValue) DMCostValue,sum(saleCost) saleCost
    into #423410tmp1
    from #423410salecost a
    where SDate>=@begindate and SDate<=@enddate and disctype='m'
--      and shopid=@shopid
    group by managedeptid,shopid;
*/
  --���ܹ�����DM���۽��
  select shopid,deptid/@levelvalue as ManageDeptID,sum(SaleValue-discvalue) salevalue,sum(costvalue) saleCost
    into #423410tmp1
    from #423410salecost a
    where SDate>=@begindate and SDate<=@enddate
--      and shopid=@shopid
    group by deptid/@levelvalue,shopid;
    
  select shopid,deptid/@levelvalue as ManageDeptID,sum(SaleValue-discvalue) DMSaleValue,sum(costvalue) DMCostValue
    into #DM423410tmp1
    from #423410salecost a
    where SDate>=@begindate and SDate<=@enddate and disctype='m' and goodsid in (select goodsid from #tmpPromotionPlan)
--      and shopid=@shopid
    group by deptid/@levelvalue,shopid;

  update #temp_423410 set Salevalue=b.salevalue,SaleCost=b.salecost
    from #temp_423410 a,#423410tmp1 b
    where a.sGroupID=b.ManageDeptID
        and a.shopid=b.shopid

  update #temp_423410 set DMSaleValue=b.DMSaleValue,DMCost=b.DMCostValue
    from #temp_423410 a,#DM423410tmp1 b
    where a.sGroupID=b.ManageDeptID
        and a.shopid=b.shopid;
        
  drop table #DM423410tmp1
--DMSaleNum,DMSaleQty
  select npp.shopid,npp.goodsid,g.deptid/@levelvalue sgid 
    into #423410tmp2
    from #tmpPromotionPlan npp,goods g
    where npp.PlanID=@planid 
      --and npp.ShopID=@shopid
      and npp.goodsid=g.goodsid;
      
  select a.shopid,g.deptid/@levelvalue sgid,count(distinct a.goodsid) DMSaleNum,sum(a.Qty) DMSaleQty
    into #423410tmp3
    from #423410salecost a,goods g
    where a.goodsid in (select goodsid from #423410tmp2) 
      and a.goodsid=g.goodsid
    group by a.shopid,g.deptid/@levelvalue
    order by sgid

--SaleGoodsNum,SaleQty
  select a.shopid,g.deptid/@levelvalue sgid,count(distinct a.goodsid) SaleGoodsNum,sum(a.Qty) SaleQty
    into #423410tmp4
    from #423410salecost a,goods g
    where a.goodsid=g.goodsid 
    group by a.shopid,g.deptid/@levelvalue
    order by a.shopid,sgid

--DMGoodsNum
  select npp.shopid,g.deptid/@levelvalue sgid,count(npp.goodsid) DMGoodsNum
    into #423410tmp5
    from #tmpPromotionPlan npp,goods g
    where npp.PlanID=@planid 
      --and npp.ShopID=@shopid
      and npp.goodsid=g.goodsid
    group by npp.shopid,g.deptid/@levelvalue
    order by npp.shopid,sgid;
    
--PreMonValue  lvyf 20061109 �Ż�,�����±�ȡ,�ٶȿ�,ԭ������Ľű��Ѿ�ɾ��
  select shopid,ManageDeptID sgid,sum(isnull(SaleValue-discvalue,0)) PreMonValue
    into #423410tmp6
    from rpt_salegroup a
    where a.SDate>=@prebegindate and a.SDate<=@preEndDate
--      and shopid=@shopid
    group by managedeptid,shopid;

--ȥ��ͬ�����ۼ�¼
  select @day=datediff(day,@enddate,@begindate);
  select @preyearEndDate=dateadd(day,-365,@enddate);--ȡȥ��ͬ�ڽ�������
  select @preyearbegindate=dateadd(day,@day,@preyearEndDate);--ȡȥ��ͬ�ڿ�ʼ���� 

  select shopid,ManageDeptID sgid,sum(isnull(SaleValue-discvalue,0)) PreYearValue
    into #423410yeartmp6
    from rpt_salegroup a
    where a.SDate>=@preyearbegindate and a.SDate<=@preyearEndDate
    group by managedeptid,shopid;
  
  update #temp_423410 set PreYearValue=b.PreYearValue
    from #temp_423410 a,#423410yeartmp6 b
    where a.shopid=b.shopid and a.sgroupid=b.sgid;

--�������ձ����¼
  update #temp_423410 set DMSaleNum=b.DMSaleNum,DMSaleQty=b.DMSaleQty
    from #temp_423410 a,#423410tmp3 b
    where a.sgroupid=b.sgid
          and a.shopid=b.shopid;

  update #temp_423410 set SaleGoodsNum=c.SaleGoodsNum,SaleQty=c.SaleQty
    from #temp_423410 a,#423410tmp4 c
    where a.sgroupid=c.sgid 
    and a.shopid=c.shopid;
      
  update #temp_423410 set DMGoodsNum=d.DMGoodsNum
    from #temp_423410 a,#423410tmp5 d
    where a.sgroupid=d.sgid
      and a.shopid=d.shopid
  update #temp_423410 set PreMonValue=e.PreMonValue
    from #temp_423410 a,#423410tmp6 e
    where a.sgroupid=e.sgid
    and a.shopid=e.shopid
  
  drop table #423410tmp;
  drop table #423410tmp1;
  drop table #423410tmp2;
  drop table #423410tmp3;
  drop table #423410tmp4;
  drop table #423410tmp5;
  drop table #423410tmp6;
  --drop table #423410tmp7;
  drop table #423410salecost;
  --drop table #423410salecost2;
  drop table #tmpPromotionPlan;
  drop table #423410yeartmp6;
  
  insert into #423410
    select shopid,'',sGroupID,sGroupName,DMGoodsNum,DMSaleNum,
      cast(100*DMSaleNum as dec(16,4))/cast((case DMGoodsNum when 0 then 1 else DMGoodsNum end) as dec(16,4)),
      DMSaleQty,DMSaleValue,DMCost,
      SaleGoodsNum,SaleQty,SaleValue,SaleCost,
      cast(100*DMGoodsNum as dec(16,4))/cast((case GoodsNum when 0 then 1 else GoodsNum end) as dec(16,4)),
      100*DMSaleQty/(case SaleQty when 0 then 1 else SaleQty end),
      100*DMSaleValue/(case SaleValue when 0 then 1 else SaleValue end),0,      
      PreMonValue,0,0,PreYearValue,0 from #temp_423410;
      
  update #423410 set shopname=b.name from #423410 a,shop b where a.shopid=b.id;
        
  update #423410 set SaleCostRate=DMSaleCost/(case SaleRate when 0 then 1 else SaleRate end);
  update #423410 set increaseRate=(case PreMonValue when 0 then 0 else (SaleValue-PreMonValue)/PreMonValue end)*100;  
  update #423410 set yearcreaseRate=(case PreYearValue when 0 then 0 else (SaleValue-PreYearValue)/PreYearValue end)*100;
  
  update #423410 
    set DMRate=30*(SaleNumRate/(case NumRate when 0 then 1 else Numrate end))
        +40*(SaleValueRate/(case NumRate when 0 then 1 else Numrate end))
        +30*(SaleCostRate/(case NumRate when 0 then 1 else Numrate end));
  drop table #temp_423410;
 return 0;    
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_423410;
  return -1;
End
go

if exists (select * from sysobjects where id = object_id('dbo.rp_112801_tjml') and sysstat & 0xf = 4)
    drop procedure dbo.rp_112801_tjml
GO
create procedure dbo.rp_112801_tjml @PlanID int
WITH ENCRYPTION
-----------------------------------------------------------------

-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  declare @begindate	datetime;
  declare @enddate	datetime;
  declare @prebegindate datetime;
  declare @preenddate	datetime;
  declare @day int;
  declare @preyearbegindate  datetime  --ȥ��ͬ�ڿ�ʼ����
  declare @preyearEndDate datetime --ȥ��ͬ�ڽ�������
  
  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;
  declare @cnt  int;

  SET NOCOUNT ON 
    
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=112801,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=423411,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select * into #tmpPromotionPlan from NowPromotionPlan0 where 1=2;  

  insert into #tmpPromotionPlan(SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
      PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime)
    select SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
      PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime 
      from NowPromotionPlan0 where planid=@planid;   

  insert into #tmpPromotionPlan(SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
      PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime)
    select SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
      PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime 
      from NowPromotionPlan where planid=@planid; 

  
  --ȥ�����ڿ�ʼ�ͽ�������    
  select @begindate=min(PriceBeginDate),@enddate=max(PriceEndDate) 
    from #tmpPromotionPlan 
    where PlanID=@PlanID;
  select @Err=@@Error,@BreakPoint=423412,@msg='ȡ�����ƻ���ֹ���ڳ���!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  
  --������Ʒ��ϸ����
  insert into #112801(shopid,goodsid)
  select distinct shopid,goodsid 
  from #tmpPromotionPlan;

  

--����ʱ��,ȡ����DM��Ʒ������ϸ
  select * into #112801salecost from salecost where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'salecost',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #112801tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #112801tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #112801tmp;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #112801salecost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where salevalue<>0 and goodsid in (select goodsid from #tmpPromotionPlan) and convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
	   + '''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #112801tmp;
       select @SQLString='insert into #112801salecost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where salevalue<>0 and goodsid in (select goodsid from #tmpPromotionPlan) and  convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
	   + '''';
      execute (@SQLString);
      update #112801tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  
  select shopid,goodsid,sum(qty) qty,sum(salevalue-discvalue) salevalue,sum(costvalue) costvalue,
  	 sum(salevalue-discvalue-costvalue) gpvalue,sum(salevalue-discvalue-costvalue)/sum(salevalue-discvalue)*100 gprate
  	 into #dmsalevalue
  from #112801salecost where disctype='m'
  group by shopid,goodsid;
  
  update a set a.qty=b.qty,a.salevalue=b.salevalue,a.costvalue=b.costvalue,a.gpvalue=b.gpvalue,a.gprate=b.gprate
  from #112801 a,#dmsalevalue b
  where a.shopid=b.shopid and a.goodsid=b.goodsid;
  
  drop table #dmsalevalue;
  drop table #112801salecost;
  drop table #112801tmp;
  

  --ȡͬ����Ʒ��������
  select @day=datediff(day,@enddate,@begindate);
  select @preEndDate=dateadd(day,-1,@begindate);--ȡͬ�ڽ�������
  select @prebegindate=dateadd(day,@day,@preEndDate);--ȡͬ�ڿ�ʼ���� 

  select * into #112801presalecost from salecost where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'salecost',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #pre112801tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #pre112801tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #pre112801tmp;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #112801presalecost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where salevalue<>0 and goodsid in (select goodsid from #112801) and convert(char(8),sdate,112)>=''' 
           + convert(char(8),@prebegindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@preEndDate,112)
	   + '''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #pre112801tmp;
       select @SQLString='insert into #112801presalecost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where salevalue<>0 and goodsid in (select goodsid from #112801) and convert(char(8),sdate,112)>=''' 
           + convert(char(8),@prebegindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@preEndDate,112)
	   + '''';
      execute (@SQLString);
      update #pre112801tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;

 select shopid,goodsid,sum(qty) as preqty,sum(isnull((salevalue-discvalue),0)) presalevalue,sum(isnull(costvalue,0)) precostvalue
 into #predmsalevalue
 from #112801presalecost
 group by shopid,goodsid;
 
 update a set a.preqty=b.preqty,a.presalevalue=b.presalevalue,a.precostvalue=b.precostvalue
 from #112801 a,#predmsalevalue b
 where a.shopid=b.shopid and a.goodsid=b.goodsid;

  drop table #predmsalevalue;
  drop table #112801presalecost;
  drop table #pre112801tmp;
  
--ȡȥ��ͬ����Ʒ��������

--ȥ��ͬ�����ۼ�¼
  select @day=datediff(day,@enddate,@begindate);
  select @preyearEndDate=dateadd(day,-365,@enddate);--ȡȥ��ͬ�ڽ�������
  select @preyearbegindate=dateadd(day,@day,@preyearEndDate);--ȡȥ��ͬ�ڿ�ʼ���� 

  select * into #112801preyearsalecost from salecost where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'salecost',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #preyear112801tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #preyear112801tmp;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #preyear112801tmp;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #112801preyearsalecost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where salevalue<>0 and goodsid in (select goodsid from #112801) and convert(char(8),sdate,112)>=''' 
           + convert(char(8),@preyearbegindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@preyearEndDate,112)
	   + '''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #preyear112801tmp;
       select @SQLString='insert into #112801preyearsalecost select * from '
           + ltrim(rtrim(@subTableName))
           + ' where salevalue<>0 and goodsid in (select goodsid from #112801) and convert(char(8),sdate,112)>=''' 
           + convert(char(8),@preyearbegindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@preyearEndDate,112)
	   + '''';
      execute (@SQLString);
      update #preyear112801tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;

 select shopid,goodsid,sum(qty) as preyearqty,sum(isnull((salevalue-discvalue),0)) preyearsalevalue,sum(isnull(costvalue,0)) preyearcostvalue
 into #preyeardmsalevalue
 from #112801preyearsalecost
 group by shopid,goodsid;
 
 update a set a.preyearqty=b.preyearqty,a.preyearsalevalue=b.preyearsalevalue,a.preyearcostvalue=b.preyearcostvalue
 from #112801 a,#preyeardmsalevalue b
 where a.shopid=b.shopid and a.goodsid=b.goodsid;

  drop table #preyeardmsalevalue;
  drop table #112801preyearsalecost;
  drop table #preyear112801tmp;
 
 return 0;    
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_112801;
  return -1;
End
go



--------------------------
----------------------------------------------------------------------------------------
--rp_423535			�����˻����ܱ�
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������������ 2003.09.10
--�޸ģ��Խ�  2003-10-20 10:19 ����ũ��Ʒ��˰������
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_423535') and sysstat & 0xf = 4)
    drop procedure dbo.rp_423535
GO

create procedure dbo.rp_423535 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030909_01,Last Mender:������
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420010,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  select * into #tmp_423535 from #423535 where 1=2;
  
  insert into #tmp_423535(ShopID,SheetID,RefSheetID,retdate,VenderID,VenderName,managedeptid,managename,
               taxrate,CostValue,NoTaxCostValue,Truevalue,pricevalue,difvalue,Operator,Checker)
        select a.shopid,a.sheetid,a.refsheetid,a.retdate,a.venderid,c.name,d.ID,d.name,
               b.taxrate,sum(b.realqty*b.cost),
               sum(b.realqty*b.cost*(100-b.TaxRate*e.AgroFlag)/(100+b.TaxRate*(1-e.AgroFlag))),
               0,sum(b.realqty*b.price),
               0,a.operator,a.checker
        from ret a,retitem b, vender c,sGroup d, Goods e
        where a.sheetid=b.sheetid 
        and a.venderid=c.venderid 
        and b.goodsid=e.goodsid
        and round(b.deptid/@levelvalue,0)=d.id
        and convert(char(8),a.checkdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
        group by a.shopid,a.sheetid,a.refsheetid,a.retdate,a.venderid,c.name,d.id,d.name,b.taxrate,a.operator,a.checker;
        
   insert into #tmp_423535(ShopID,SheetID,RefSheetID,retdate,VenderID,VenderName,managedeptid,managename,
               taxrate,CostValue,NoTaxCostValue,Truevalue,pricevalue,difvalue,Operator,Checker)
        select a.shopid,a.sheetid,a.refsheetid,a.retdate,a.venderid,c.name,d.ID,d.name,
               b.taxrate,0,0,sum(b.qty*b.cost),0,
               0,a.operator,a.checker
        from ret a,retcostitem b, vender c,sGroup d, Goods e
        where a.sheetid=b.sheetid 
        and a.venderid=c.venderid 
        and b.goodsid=e.goodsid
        and round(b.deptid/@levelvalue,0)=d.id
        and convert(char(8),a.checkdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
        group by a.shopid,a.sheetid,a.refsheetid,a.retdate,a.venderid,c.name,d.id,d.name,b.taxrate,a.operator,a.checker;
      
    insert into #423535(ShopID,SheetID,RefSheetID,retdate,VenderID,VenderName,managedeptid,managename,
               taxrate,CostValue,NoTaxCostValue,Truevalue,pricevalue,difvalue,Operator,Checker)  
        select Shopid,SheetID,RefSheetID,retdate,VenderID,VenderName,managedeptid,managename,
               taxrate,sum(CostValue),sum(NoTaxCostValue),
               sum(Truevalue),sum(pricevalue),sum(pricevalue-truevalue),Operator,Checker
        from #tmp_423535
        group by shopid,SheetID,RefSheetID,retdate,VenderID,VenderName,managedeptid,managename,taxrate,Operator,Checker
                
      select @Err=@@Error,@msg='��������ʱ��!!',@BreakPoint=420050;
      if (@Err is null) or (@Err!=0)  goto ErrHandle;
      
  return  0;  
ErrHandle:
  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go



if exists (select * from sysobjects where id = object_id('dbo.rp_421205_0904') and sysstat & 0xf = 4)
    drop procedure dbo.rp_421205_0904
GO
CREATE procedure dbo.rp_421205_0904(@BeginDate DateTime,@EndDate DateTime,@Sheettype int) 
WITH ENCRYPTION
as begin
  declare @Err  int;  
  declare @BreakPoint int;  
  declare @Msg  varchar(255); 
  
  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;
  
  declare @deptlevel    int;
  declare @levelvalue   int;
  
  select * into #421205Wastebook from Wastebook where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'Wastebook',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=42120512;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #421205tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #421205tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #421205tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #421205Wastebook select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112) +'''';
       execute (@SQLString);
       break;
    end
    else begin 
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #421205tablename;
       select @SQLString='insert into #421205Wastebook select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112) +'''';
      execute (@SQLString);
      update #421205tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=42120513;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #421205tablename;
  
    delete from #421205 where 1=1;
  if  @SheetType = 2413 or @SheetType=0 begin   --����2413
    insert into #421205 select l.shopid,li.goodsid,w.cost,2413,w.taxrate,
      sum(w.qty) as Qty,round(sum(w.qty*w.cost),2) as taxcostvalue,
      round(sum(w.qty*w.cost*(100-w.taxRate*g.AgroFlag)/(100+w.taxRate*(1-g.AgroFlag))),2) as NoTaxCostValue,
      l.sheetid,l.Editor,l.Checker,li.remask,'',0,'',0,'','',w.venderid,''
    from Lost l,lostItem li,#421205Wastebook w,goods g
    where l.sheetid=li.sheetid and l.sheetid=w.sheetid and w.sheettype=2413 
      and li.goodsid=w.goodsid and li.goodsid=g.goodsid 
   group by l.shopid,w.venderid,li.goodsid,w.cost,l.sheetid,l.Editor,l.Checker,w.taxrate,li.remask;
   select @Err=@@Error,@BreakPoint=42120520,@msg='ȡ��������ʱ����';
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end;  
  if  @SheetType = 2473  or @SheetType=0 begin --�ӹ����õ�2473
    insert into #421205 select  s.shopid,si.goodsid,w.cost,2473,w.taxrate,
      sum(w.qty) as Qty,round(sum(w.qty*w.cost),2) as TaxCostValue,
      round(sum(w.qty*w.cost*(100-w.taxRate*g.AgroFlag)/(100+w.taxRate*(1-g.AgroFlag))),2) as NoTaxCostValue,
      s.sheetid,s.Editor,s.Checker,'','',0,'',0,'','',w.venderid,''
    from SaleStuff s,SaleStuffItem si,#421205Wastebook w,goods g
    where s.sheetid=si.sheetid and si.sheetid=w.sheetid and w.sheettype=2473 
      and si.goodsid=w.goodsid and si.goodsid=g.goodsid 
      group by s.shopid,w.venderid,si.goodsid,w.cost,s.sheetid,s.Editor,w.taxrate,s.Checker;
    select @Err=@@Error,@BreakPoint=42120521,@msg='ȡ�ӹ���������ʱ����';
    if (@Err is null) or (@Err!=0)  goto ErrHandle; 
 
  end;
  if  @SheetType = 2423  or @SheetType=0 begin --�������õ�2423
    insert into #421205 select  s.shopid,si.goodsid,w.cost,2423,w.taxrate,
      sum(w.directflag*w.qty) as Qty,round(sum(w.directflag*w.costvalue),2) as TaxCostValue,
      round(sum(w.directflag*w.costvalue*(100-w.taxRate*g.AgroFlag)/(100+w.taxRate*(1-g.AgroFlag))),2) as 
NoTaxCostValue,
      s.sheetid,s.Editor,s.Checker,'','',0,'',0,'','',w.venderid,''
    from XTran s,XTranItem si,#421205Wastebook w,goods g
    where s.sheetid=si.sheetid and si.sheetid=w.sheetid and w.sheettype=2423 
      and si.goodsid=w.goodsid and si.goodsid=g.goodsid 
      group by s.shopid,w.venderid,si.goodsid,w.cost,s.sheetid,s.Editor,w.taxrate,s.Checker;
    select @Err=@@Error,@BreakPoint=42120522,@msg='ȡ������������ʱ����';
    if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end;
  
  select @deptlevel=value from config where name='�����ż���';
    --select @deptlevel=2               --2007/11/12�������޸Ĳ��Ź�����
  select @Err=@@Error,@BreakPoint=42120530,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42120531,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #421205 set sgid=g.deptid/@levelvalue,deptid=g.deptid,goodsname=g.name
    from #421205 a,goods g
    where a.goodsid=g.goodsid;
  update #421205 set sgname=sg.name
    from #421205 a,sgroup sg
    where a.sgid=sg.id;
  update #421205 set deptname=d.name
    from #421205 a,dept d
    where a.deptid=d.id;
  update #421205 set vendername=d.name
    from #421205 a,vender d
    where a.venderid=d.venderid;
  select @Err=@@Error,@BreakPoint=42120540,@msg='ȡ������Ϣ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #421205 set shopname=sh.name
    from #421205 a,shop sh
    where a.shopid=sh.id;
  select @Err=@@Error,@BreakPoint=42120545,@msg='ȡ�������Ƴ���!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  return 0;     
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);  
  return -1;  
  
end
go



---------------------
----------------------------------------------------------------------------------------
--rp_424621			���������춯���ܱ�
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������������ 2003.09.16
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424621') and type = 'P')
  drop procedure dbo.rp_424621
GO

create procedure dbo.rp_424621 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030916_01,Last Mender:������
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  create table #424621tmp
(
SDate      datetime    not null,
ShopID     char(4)     not null,
vqty       int         default 0 not null,--��������
vvalue     dec(12,2)   default 0 not null,--�������
qqty       int         default 0 not null,--ȡ������
qvalue     dec(12,2)   default 0 not null,--ȡ�����
rqty       int         default 0 not null,--�˻�����
rvalue     dec(12,2)   default 0 not null,--�˻����
Aqty       int         default 0 not null,--����ȡ������
Avalue     dec(12,2)   default 0 not null--����ȡ�����
)
  select @Err=@@Error,@BreakPoint=421000,@msg='������ʱ���ݱ�ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;

--��������
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select sdate,shopid,count(*),0,0,0,0,0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and saletype='v'
      group by sdate,shopid

  select @Err=@@Error,@BreakPoint=420020;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
--�������
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select sdate,shopid,0,sum(salevalue-discvalue),0,0,0,0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and saletype='v'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

--ȡ������
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select sdate,shopid,0,0,count(*),0,0,0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and saletype='q'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
--ȡ�����
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select sdate,shopid,0,0,0,sum(salevalue-discvalue),0,0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and saletype='q'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
--�˻�����
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select sdate,shopid,0,0,0,0,count(*),0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and saletype='r'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
--�˻����
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select sdate,shopid,0,0,0,0,0,sum(salevalue-discvalue),0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and saletype='r'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
--����ȡ������
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select a.sdate,a.shopid,0,0,0,0,0,0,count(*),0
      from (select sdate,shopid,posid,listno from rpt_saleexcept where saletype='c' and convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert
(char(8),@enddate,112) group by sdate,shopid,posid,listno) a
      group by a.sdate,a.shopid       
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
--����ȡ�����
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select sdate,shopid,0,0,0,0,0,0,0,sum(salevalue-discvalue)
      from rpt_saleexcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and saletype='c'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

--����
  insert into #424621(SDate,ShopID,Shopname,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select a.SDate,a.ShopID,b.name Shopname,sum(a.vqty),sum(a.vvalue),sum(a.qqty),sum(a.qvalue),sum(a.rqty),sum(a.rvalue),sum(a.Aqty),sum(a.Avalue)
      from #424621tmp a,shop b where a.shopid=b.id
      group by a.sdate,a.shopid,b.name
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  drop table #424621tmp;
  select @tempflag=0;


  return  0;  
ErrHandle:
  if @tempflag=1   drop table #424621tmp;
  raiserror('[%s],�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO


-------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_425104') and type = 'P')
  drop procedure dbo.rp_425104
GO

create procedure dbo.rp_425104 @begindate  datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
---Version Number:Apple1.0_20030613_01,Last Mender:xiaoy
-----------------------------------------------------------------
AS BEGIN
  declare  @Err     int;
  declare  @BreakPoint   int;
  declare  @Msg          varchar(255);
  declare  @levelvalue   int;
  declare  @tempflag     int;
  
  declare @shopid   char(4);
  select @shopid=value from config where name='�����';
  
  SET NOCOUNT ON  

  select @tempflag=0;
  
  create table #temp_425104
 (sdate           datetime   not null,
  shopid          char(4)    not null,
  managedeptid    int        not null,
  deptid          int        not null,
  goodsid         int        not null,
  saletaxrate     dec(12,3)  not null,
  costtaxrate     dec(12,3)  not null,
  qty             dec(12,3)  not null,
  salevalue       dec(12,2)  not null,
  discvalue       dec(12,2)  not null,
  truevalue       dec(12,2)  not null
  );  
  select @Err=@@Error,@breakpoint=425000,@msg='������ʱ��ʱ����!!';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  execute @LevelValue=TL_ManageDeptGene;
  if @LevelValue <= 0 begin
	select @Err=0;
	select @BreakPoint=425010;
	select @Msg='����������ļ������Ӵ���!';
	goto ErrHandle;
  end;
/*  
  insert into  #temp_425104(sdate,shopid,managedeptid,deptid,goodsid,qty,salevalue,discvalue,truevalue)
  select sdate,shopid,round(deptid/@levelvalue,0),deptid,goodsid,sum(qty),sum(salevalue),sum(discvalue),sum(salevalue-discvalue)
  from saleret 
  where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
  group by sdate,shopid,round(deptid/@levelvalue,0),deptid,goodsid;
*/  
  insert into  #temp_425104(sdate,shopid,managedeptid,deptid,goodsid,saletaxrate,costtaxrate,
  			    qty,salevalue,discvalue,truevalue)
  select a.sdate,a.shopid,round(a.deptid/@levelvalue,0),a.deptid,a.goodsid,a.saletaxrate,b.costtaxrate,sum(a.qty),
  	sum(a.salevalue),sum(a.discvalue),sum(a.salevalue-a.discvalue)
  from saleret a,cost b
  where a.goodsid=b.goodsid and b.flag=0 and b.shopid=@shopid
  	and a.sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
  group by a.sdate,a.shopid,round(a.deptid/@levelvalue,0),a.deptid,a.goodsid,a.saletaxrate,b.costtaxrate;
  select @Err=@@Error,@breakpoint=425020,@Msg='ȡ����ʱ����';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
   
  insert into #425104(sdate,shopid,shopname,managedeptid,deptid,deptname,goodsid,gname,saletaxrate,costtaxrate,salevalue,discvalue,truevalue,qty)
  select a.sdate,a.shopid,b.name,a.managedeptid,a.deptid,c.name,a.goodsid,d.name,a.saletaxrate,a.costtaxrate,a.salevalue,a.discvalue,a.truevalue,a.qty
  from #temp_425104 a,shop b,dept c,goods d
  where a.shopid=b.id and a.deptid=c.id and a.goodsid=d.goodsid
  select @Err=@@Error,@breakpoint=425030,@Msg='ȡ����ʱ����';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  drop table #temp_425104;
  return 0;
  ErrHandle:
    raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 drop table #temp_425104;
    return -1;
End
GO

-------------------------------
-----------------------------------------------------------------
--425302 ʱ�������ձ���                                              
--������κޱ 2003.11.17
--���㹫ʽ:
----ʱ�����ռ��:  ʱ�����/�����ܿ�����100
----�ۼƿ���ռ�ȣ� ��ʱ���֮ǰʱ�����֮��/�����ܿ�����100
----�ۻ����۽��:  ��ʱ���֮ǰʱ�����۽��֮��
----����ռ��:	   ��ʱ�����۶�/���������۶�*100
----�ۻ�����ռ��:  ��ʱ���֮ǰʱ�����۽��֮��/���������۶�*100
--�޸ģ�̷���� 2006.11.06 ���Ӵ�ֵ����ȯͳ��
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_425302') and type = 'P')
  drop procedure dbo.rp_425302
GO

create procedure dbo.rp_425302 @Begindate datetime,@Enddate datetime,@shopid char(4)
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031117_01,Last Mender:weiwei
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag     int;

  declare @SDate 	datetime;
  declare @shopid1 	char(4);
  declare @SaleHour   	char(2);
  declare @SheetQty  	int;   		
  declare @totalvalue 	dec(12,2);	
  declare @WSheetQty  	int;   		--���տ͵��ܼ�
  declare @Wtotalvalue 	dec(12,2);	--���������ܼ�
  declare @THSheetQty	int;		--�ۼƿ͵�
  declare @THSalevalue  dec(12,2);	--�ۼ����۶�  

  SET NOCOUNT ON
  select @tempflag=0;
    create table #tmp_425302
(
SDate           datetime        null,               --����(date) 
ShopID          char(4)         null,               --�ֵ�� 
SaleHour        char(2)         null,               --����ʱ�� 
SheetQty        int             default 0 null,     --���۱��� 
CashQty         int             null,               --�ֽ��״���C 
sheetvalue 	dec(12,2)       default 0 null,     --�͵���	
WSheetQty	int       default 0 null,     --���տ͵���
HQrate		dec(12,2)       default 0 null,     --ʱ��͵�ռ��
THSheetQty	int       default 0 null,	    --�ۼƿ͵���
THQrate		dec(12,2)       default 0 null,	    --�ۼƿ͵�ռ��
Wtotalvalue	dec(12,2)       default 0 null,	    --�������۶�
salerate	dec(12,2)       default 0 null,     --ʱ������ռ��
THSalevalue	dec(12,2)       default 0 null,     --�ۼ����۶�
THSalerate	dec(12,2)       default 0 null,	    --�ۼ�����ռ��
CardQty         int             null,               --���￨���״���V 
CheckQty        int             null,               --֧Ʊ���״���K 
BankQty         int             null,               --���ÿ����״���R 
TicketQty       int             null,               --��ȯ���״���D 
RetQty          int             null,               --�˻����״��� 
DiscQty         int             null,               --�ۿ۽��״��� 
DeliverQty      int             null,               --�ͻ����״��� 
CashValue       dec(12,2)       null,               --�ֽ���C 
CardValue       dec(12,2)       null,               --���￨���V 
CheckValue      dec(12,2)       null,               --֧Ʊ���K 
BankValue       dec(12,2)       null,               --���ÿ����R 
TicketValue     dec(12,2)       null,               --��ȯ���D 
RetValue        dec(12,2)       null,               --�˻���� 
DiscValue       dec(12,2)       null,               --�ۿ۽�� 
DeliverValue    dec(12,2)       null,               --�ͻ����
totalvalue 	dec(12,2)       default 0 null      --ʱ���������
);

  select @Err=@@Error,@BreakPoint=420000,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;
  
  select @tempflag=1;
  insert into #tmp_425302(Shopid,SDate,SaleHour,SheetQty,CashQty,CardQty,CheckQty,BankQty,TicketQty,RetQty,DiscQty,
  	DeliverQty,CashValue,CardValue,CheckValue,BankValue,TicketValue,RetValue,DiscValue,DeliverValue,totalvalue)  
  	select Shopid,SDate,SaleHour,sum(SheetQty),sum(CashQty),sum(CardQty),sum(CheckQty),sum(BankQty),
  		sum(TicketQty),sum(RetQty),sum(DiscQty),sum(DeliverQty),sum(CashValue),sum(CardValue),
  		sum(CheckValue),sum(BankValue),sum(TicketValue),sum(RetValue),sum(DiscValue),sum(DeliverValue),
  		sum(CashValue+CardValue+CheckValue+BankValue+TicketValue) 
  	--(sum(CashValue+CardValue+CheckValue+BankValue+TicketValue)/sum(SheetQty)) as sheetvalue �����г������
  		from RPT_CashHour 
  		where Shopid=@Shopid and convert(char(10),Sdate,120) between @BeginDate and @EndDate 
  		group by shopid,SDate,SaleHour; 
  select @Err=@@Error,@BreakPoint=420010,@msg='������ʱ�����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #tmp_425302 set sheetvalue=(CashValue+CardValue+CheckValue+BankValue+TicketValue)/SheetQty where SheetQty <> 0;
    
  select Shopid,Sdate,sum(SheetQty) WSheetQty,sum(totalvalue) Wtotalvalue 
  	into #rp_425302tmp1 from #tmp_425302 
  	group by Shopid,Sdate;
  select @Err=@@Error,@BreakPoint=420020,@msg='������ʱ�����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;  	
  
  --����ʱ��ռ��
  declare cur_stock cursor local for
      	select Shopid,Sdate,WSheetQty,Wtotalvalue from #rp_425302tmp1; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid1,@Sdate,@WSheetQty,@Wtotalvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_425302 set WSheetQty=@WSheetQty,Wtotalvalue=@Wtotalvalue where Shopid=@shopid1 and Sdate=@Sdate;
	select @Err=@@Error,@BreakPoint=420030,@msg='����ʱ���ۼƳ���';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  update #tmp_425302 set HQrate=cast(Sheetqty as float)/Wsheetqty*100 where Wsheetqty <> 0;
  update #tmp_425302 set salerate=totalvalue/Wtotalvalue*100 where Wtotalvalue <> 0;
  select @Err=@@Error,@BreakPoint=420040,@msg='����ʱ��ռ�ȳ���';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --�����ۼ�ռ��
  select Shopid,Sdate,SaleHour,SheetQty,totalvalue,THSheetQty,THSalevalue     
  	into #rp_425302tmp2 from #tmp_425302; 
  select @Err=@@Error,@BreakPoint=420050,@msg='������ʱ�����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  declare cur_stock cursor local for
      	select Shopid,Sdate,SaleHour from #rp_425302tmp2; 
    open cur_stock;
    while (1=1) begin  
    	fetch next from cur_stock into @shopid1,@Sdate,@SaleHour;
    	if @@fetch_status != 0 break;
      	select @THSheetQty=sum(SheetQty),@THSalevalue=sum(totalvalue) from #rp_425302tmp2  
        	where Shopid=@Shopid and Sdate=@Sdate and SaleHour<=@SaleHour;
      	select @Err=@@Error,@BreakPoint=420060,@msg='�����ۼƳ���';
      	if (@Err is null) or (@Err!=0)  goto ErrHandle;
      	
      	update #rp_425302tmp2 set THSheetqty=@THSheetQty,THsalevalue=@THSalevalue where Shopid=@Shopid1 and Sdate=@Sdate and SaleHour=@SaleHour; 
      	update #tmp_425302 set THSheetqty=@THSheetQty,THsalevalue=@THSalevalue where Shopid=@Shopid1 and Sdate=@Sdate and SaleHour=@SaleHour; 
      	select @Err=@@Error,@BreakPoint=420070,@msg='�ۼƳ���';
      	if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
    end  
        CLOSE cur_stock;
  	DEALLOCATE cur_stock;
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  
  update #tmp_425302 set THQrate=cast(THSheetQty as float)/Wsheetqty*100 where WSheetQty <> 0;
  update #tmp_425302 set THSalerate=THsalevalue/Wtotalvalue*100 where Wtotalvalue <> 0;
  select @Err=@@Error,@BreakPoint=420080,@msg='�����ۼ�ռ�ȳ���';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  insert into #425302 select * from #tmp_425302;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #rp_425302tmp1; 
  drop table #rp_425302tmp2;
  drop table #tmp_425302; 
 return 0;   
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_425302;
  return -1;
End
GO


-----------------------
-----------------------------------------------------------------
--427413 ��Ʒ�������а�
--�޸ģ��Խ� 2003-10-28 10:11 ������Ʒ���롢������λ���������ΪС�ࡣ
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427413') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427413
GO
CREATE procedure dbo.rp_427413 @beginDate datetime,@endDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20031022_01,Last Mender:Jeffrey Zhao
-------2009.03.12 ������ �޸� ���´���״̬
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=427413,@msg='ȡ�����ż���ʱ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=427423,@msg='ȡ������Ȩֵ����!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select * into #427413RPT_Base from salecost where 1=2;--����ʱ��
  exec tl_gettablesname @begindate,@enddate,'salecost',@tables output
  select @Err=@@Error,@Msg='ȡ���ݱ���ʱ����',@BreakPoint=427433;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427413tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427413tablename;        --�ж��Ƿ���','�ָ��
    if @i=0 begin
       select @subTableName=tablesname from #427413tablename;              --û��,ȡ��ǰֵ
       select @SQLString='insert into #427413RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
--           + ''' and shopid=''' + @shopid +''''
           + ''''
           + ' and salevalue<>0 and qty<>0 and costvalue<>0';
       execute (@SQLString);
       break;
    end
    else begin
       select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427413tablename; 
       select @SQLString='insert into #427413RPT_Base select * from '
           + ltrim(rtrim(@subTableName))
           + ' where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
--           + ''' and shopid=''' + @shopid +''''
           + ''''
          + ' and salevalue<>0 and qty<>0 and costvalue<>0';
      execute (@SQLString);
      update #427413tablename 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
  end;
  drop table #427413tablename;
  select @Err=@@Error,@Msg='ȡ����ʱ����',@BreakPoint=427443;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
select sum(qty),sum(SaleValue-discvalue),sum(Costvalue)  from   #427413RPT_Base  where shopid='a003'
  
create table #427413tmp
( SortID	int		default 0 null,
  shopid        char(4)         null,                 
  goodsid	int		null, 
  barcodeid	char(13)	null,
  goodsName	char(64)	null,                           
  spec          char(50)    	null,
  UnitName	char(8)		null,                           
  deptID	int		null,                           
  deptName	char(16)	null,                           
  cost		dec(16,4)	default 0 null,                 
  Price		dec(16,4)	default 0 null,                 
  DMS		dec(16,4)	default 0.05 null,              
  SaleQty	dec(16,4)	default 0 null,                 
  SaleValue	dec(16,4)	default 0 null,  
  SaleCost	dec(16,4)	default 0 null,
  GPValue	dec(16,4)	default 0 null,
  GPRate	dec(10,2)	default 0 null,               
  Venderid	int		null,                           
  VenderName	char(64)	null,      
  PMFlag	char(20)	        null,                                                
  CloseQty	dec(16,
4)	default 0 null,                 
  CloseValue	dec(16,4)	default 0 null                  
)

  select @tempflag=1;
  insert into #427413tmp
  select 0,a.shopid,a.goodsid,max(g.barcodeid),max(g.name),max(isNull(g.spec,'')),max(g.UnitName),max(g.deptid),'',0,0,0,sum(a.qty),
      sum(a.SaleValue-a.discvalue),sum(a.costvalue),sum(a.SaleValue-a.discvalue-a.costvalue),0,0,'','n',0,0
  from #427413RPT_Base a,goods g
  where a.goodsid*=g.goodsid 
  group by a.shopid,a.goodsid;
select sum(saleqty),sum(SaleValue),sum(SaleCost) from   #427413tmp  where shopid='a003'

  select @Err=@@Error,@BreakPoint=427451,@msg='ȡ�������ݳ���';  
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #427413tmp set GPRate=isNull(GPValue,0)*100/(case SaleValue when 0 then 1 else SaleValue end)
  select @Err=@@Error,@BreakPoint=427452,@msg='����ë���ʳ���';  
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  update #427413tmp set cost=c.cost,venderid=c.venderid
    from #427413tmp a,cost c
    where a.shopid=c.shopid and a.goodsid=c.goodsid and c.flag=0;
  select @Err=@@Error,@BreakPoint=427454,@msg='ȡ���ۺ͹�Ӧ����Ϣ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #427413tmp set Price=gs.Price
    from #427413tmp a,goodsshop gs
    where a.shopid=gs.shopid and a.goodsid=gs.goodsid;
  select @Err=@@Error,@BreakPoint=427455,@msg='ȡ�ۼ���Ϣ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  update #427413tmp set CloseQty=ss.Qty,CloseValue=ss.CostValue
    from #427413tmp a,shopsstock ss
    where a.shopid=ss.shopid and a.goodsid=ss.goodsid;
  select @Err=@@Error,@BreakPoint=427456,@msg='ȡ��ǰ�����Ϣ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  update #427413tmp set DMS=d.NDMS
    from #427413tmp a,demand d
    where a.shopid=d.shopid and a.goodsid=d.goodsid;
  select @Err=@@Error,@BreakPoint=427457,@msg='ȡDMS��Ϣ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  ---���´���״̬--2009.03.12 �������޸�
  update #427413tmp set PMFlag=b.PromotionType
    from #427413tmp a, goodsshop b
   where a.goodsid=b.goodsid ;
  select @Err=@@Error,@BreakPoint=427459,@msg='���´���״̬��';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  ---
   insert into #427413
      select * from #427413tmp order by SaleValue;
  select @Err=@@Error,@BreakPoint=427458,@msg='����������Ϣ����';
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  drop table #427413tmp;
  return 0;
  ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427413tmp;
  return -1;
End

go

if exists (select * from sysobjects where id = object_id('dbo.RP_GetWeekDeptSaleToTable_sybj') and type = 'P')
  drop procedure dbo.RP_GetWeekDeptSaleToTable_sybj
GO
CREATE procedure dbo.RP_GetWeekDeptSaleToTable_sybj @ShopID char(4),@WeekID int,@ManageDeptID int=0
WITH ENCRYPTION
AS Begin
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @SQL 		varchar(255);
  declare @I		int;
  declare @BeginDate datetime,@EndDate datetime;
  
  SET NOCOUNT ON

  exec TL_GetWeekDateBound @WeekID,@BeginDate output,@EndDate output;
  select @BreakPoint=429001,@Err=@@error,@Msg='ִ��TL_GetWeekDateBound����';
  if @Err != 0 Goto ErrHandle;
 
  select @I=10;
  while @I<=70 
  BEGIN
    --20041219
 /* if @ManageDeptID is null   */

 if @ManageDeptID =0  
      insert into #T_WeekDeptSale(WeekID,ManageDeptID,RowType)
        select @WeekID,DeptID/10000,@I
          from RPT_Saledept with (nolock)
          where convert(char(8),SDate,112) between @BeginDate and @EndDate
          group by deptid/10000;
    else
      insert into #T_WeekDeptSale(WeekID,ManageDeptID,RowType)
        values(@WeekID,@ManageDeptID,@I);
    select @I=@I+10;
  END

  select @BreakPoint=429011,@Err=@@error,@Msg='д��T_WeekDeptSale����';
  if @Err != 0 Goto ErrHandle;
  
  select @I=1;
  while @BeginDate<=@EndDate
  BEGIN    
    --/*
    select @WeekID WeekID,deptid/10000 ManageDeptID,sum(SaleValue-DiscValue) SaleValue,sum(DiscValue) DiscValue,
        sum(CostValue) CostValue,sum(SaleValue-DiscValue-CostValue) GainValue
      into #T_WeekDeptSale_1 
      from RPT_Saledept with (nolock)
      where convert(char(8),SDate,112)=@BeginDate and ShopID=@ShopID
      group by deptid/10000;

    select @BreakPoint=429021,@Err=@@error,@Msg='��RPT_Saledept��ȡ���ݴ���';
    if @Err != 0 Goto ErrHandle;
    --*/
    /*
  select  distinct deptid/10000 from rpt_saledept
    select @WeekID WeekID,a.ManageDeptID,
           sum(a.SaleValue-a.DiscValue-isnull(b.salevalue,0)+isnull(b.discvalue,0)) SaleValue,
           sum(a.DiscValue-isnull(b.discvalue,0)) DiscValue,
           sum(a.CostValue-isnull(b.costvalue,0)) CostValue,
           sum(a.SaleValue-a.DiscValue-a.CostValue-isnull(b.salevalue,0)+isnull(b.discvalue,0)+isnull(b.costvalue,0)) GainValue
      into #T_WeekDeptSale_1 
      from RPT_SaleGroup a with (nolock),rpt_zwsalegroup b with (nolock)
      where convert(char(8),a.SDate,112)=@BeginDate 
      and a.ShopID=@ShopID 
      and a.sdate*=b.sdate 
      and a.ManageDeptID*=b.ManageDeptID
      and a.shopid*=b.shopid 
      and a.saletaxrate*=b.saletaxrate
      group by a.ManageDeptID;
    select @BreakPoint=429021,@Err=@@error,@Msg='��RPT_SaleGroup��ȡ���ݴ���';
    if @Err != 0 Goto ErrHandle;    
    */
    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.SaleValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=10 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429022,@Err=@@error,@Msg='д�������ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.DiscValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=20 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429023,@Err=@@error,@Msg='д�ۿ����ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.CostValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=30 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429024,@Err=@@error,@Msg='д�ɱ����ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.GainValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=40 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429025,@Err=@@error,@Msg='дë�����ݴ���';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + 
       '=case when b.SaleValue=0 then 0 else b.GainValue/b.SaleValue*100 end' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=50 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429026,@Err=@@error,@Msg='дë�������ݴ���';
    if @Err != 0 Goto ErrHandle;


    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.TradeNumber ' +
       ' from #T_WeekDeptSale a,RPT_CashManageDept b ' + 
       ' where a.RowType=60 and a.ManageDeptID=b.SGroupID and b.ShopID=''' + @ShopID + '''' +
       ' and b.SDate=' + convert(char(8),@BeginDate,112);
    Exec(@SQL);
    select @BreakPoint=429027,@Err=@@error,@Msg='д�͵������ݴ���';
    if @Err != 0 Goto ErrHandle;
   /*
    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=day'+cast(@I as char(1))+'-isnull(b.TradeNumber,0) ' +
       ' from #T_WeekDeptSale a,RPT_zwCashManageDept b ' + 
       ' where a.RowType=60 and a.ManageDeptID*=b.SGroupID and b.ShopID=''' + @ShopID + '''' +
       ' and b.SDate=' + convert(char(8),@BeginDate,112);
    Exec(@SQL);
    select @BreakPoint=429060,@Err=@@error,@Msg='д����͵������ݴ���';
    if @Err != 0 Goto ErrHandle;
   */
    
/*   
    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.TradePrice ' +
       ' from #T_WeekDeptSale a,RPT_CashManageDept b ' + 
       ' where a.RowType=70 and a.ManageDeptID=b.SGroupID and b.ShopID=''' + @ShopID + '''' +
       ' and b.SDate=' + convert(char(8),@BeginDate,112);
    Exec(@SQL);
    select @BreakPoint=429028,@Err=@@error,@Msg='д�͵������ݴ���';
    if @Err != 0 Goto ErrHandle;
*/
    select @SQL='update a set a.Day' + cast(@I as char(1)) + '=case b.day'+cast(@I as char(1))+' when 0 then 0 else c.day'+cast(@I as char(1))+'/b.day'+cast(@I as char(1))+' end ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale b,#T_WeekDeptSale c' + 
       ' where a.RowType=70 and b.RowType=60 and c.RowType=10 and a.ManageDeptID=b.ManageDeptID and b.ManageDeptID=c.ManageDeptID ';
    Exec(@SQL);
    select @BreakPoint=429028,@Err=@@error,@Msg='д�͵������ݴ���';
    if @Err != 0 Goto ErrHandle;

    drop table #T_WeekDeptSale_1;

    select @BeginDate=DateAdd(day,1,@BeginDate);
    select @I=@I+1;    
  END  
  
  --��ֵ�����ۡ��ۿۡ��ɱ���ë�����͵�������ƽ��ֵ��˫����ֵ
  update #T_WeekDeptSale set Total7=Day1+Day2+Day3+Day4+Day5+Day6+Day7,
      Total5=Day1+Day2+Day3+Day4+Day5,Total2=Day6+Day7
    where WeekID=@WeekID and RowType in (10,20,30,40,60);
  select @BreakPoint=429081,@Err=@@error,@Msg='����ϼ�ֵ����';
  if @Err != 0 Goto ErrHandle;
  
  --����ƽ��ֵ
  update #T_WeekDeptSale set Avg7=Total7/7,Avg5=Total5/5,Avg2=Total2/2
    where WeekID=@WeekID and RowType in (10,20,30,40,60);
  select @BreakPoint=429082,@Err=@@error,@Msg='����ƽ��ֵ����';
  if @Err != 0 Goto ErrHandle;
  
  --����ë������͵���
  create table #T_WeekDeptSale_2(
    ManageDeptID int,
    Sale7	dec(15,6),
    Sale5	dec(15,6),
    Sale2	dec(15,6),
    Gain7	dec(15,6),
    Gain5	dec(15,6),
    Gain2	dec(15,6),
    Trad7	dec(15,6),
    Trad5	dec(15,6),
    Trad2	dec(15,6)
  );
  insert into #T_WeekDeptSale_2
  select ManageDeptID,Total7,Total5,Total2,0,0,0,0,0,0
    from #T_WeekDeptSale where RowType=10;			--����
  update #T_WeekDeptSale_2 set Gain7=b.Total7,Gain5=b.Total5,Gain2=b.Total2
    from #T_WeekDeptSale_2 a,#T_WeekDeptSale b
    where a.ManageDeptID=b.ManageDeptID and b.RowType=40;	--ë��
  update #T_WeekDeptSale_2 set Trad7=b.Total7,Trad5=b.Total5,Trad2=b.Total2
    from #T_WeekDeptSale_2 a,#T_WeekDeptSale b
    where a.ManageDeptID=b.ManageDeptID and b.RowType=60;	--�͵���
    
  --ë����
  update #T_WeekDeptSale set Total7=case when b.Sale7=0 then 0 else b.Gain7/b.Sale7*100 end,
      Total5=case when b.Sale5=0 then 0 else b.Gain5/b.Sale5*100 end,
      Total2=case when b.Sale2=0 then 0 else b.Gain2/b.Sale2*100 end
    from #T_WeekDeptSale a,#T_WeekDeptSale_2 b
    
where a.ManageDeptID=b.ManageDeptID and a.RowType=50;
  select @BreakPoint=429083,@Err=@@error,@Msg='����ë���ʴ���';
  if @Err != 0 Goto ErrHandle;
  update #T_WeekDeptSale set Avg7=Total7,Avg5=Total5,Avg2=Total2 where WeekID=@WeekID and RowType=50;
  
  --�͵���
  update #T_WeekDeptSale set Total7=case when b.Trad7=0 then 0 else b.Sale7/b.Trad7 end,
      Total5=case when b.Trad5=0 then 0 else b.Sale5/b.Trad5 end,
      Total2=case when b.Trad2=0 then 0 else b.Sale2/b.Trad2 end
    from #T_WeekDeptSale a,#T_WeekDeptSale_2 b
    where a.ManageDeptID=b.ManageDeptID and a.RowType=70;
  select @BreakPoint=429084,@Err=@@error,@Msg='����͵��۴���';
  if @Err != 0 Goto ErrHandle;
  update #T_WeekDeptSale set Avg7=Total7,Avg5=Total5,Avg2=Total2 where WeekID=@WeekID and RowType=70;

  drop table #T_WeekDeptSale_2;
  
  return 0;

ErrHandle:
  if exists (select * from tempdb..sysobjects 
	where id = object_id(N'tempdb..#T_WeekDeptSale_1') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
	drop table #T_WeekDeptSale_1
  if exists (select * from tempdb..sysobjects 
	where id = object_id(N'tempdb..#T_WeekDeptSale_2') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
	drop table #T_WeekDeptSale_2
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

if exists (select * from sysobjects where id = object_id('dbo.rp_427888_sybj') and type = 'P')
  drop procedure dbo.rp_427888_sybj
GO
create procedure dbo.rp_427888_sybj @ShopID char(4),@ManageDeptID int,@WeekID INT 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031121_01,Last Mender:VL
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @PreWeekID	int;
  SET NOCOUNT ON

  create table #T_WeekDeptSale(
    WeekID		int not null,	--�ܺ�
    ManageDeptID	int not null,	--������
    RowType		int not null,	--�����ԣ�10=���� 20=�ۿ۽�� 30=�ɱ� 40=����ë�� 50=ë���� 60=�͵��� 70=�͵���
    Day1		dec(15,6) default 0 not null,	--����һ
    Day2		dec(15,6) default 0 not null,
    Day3		dec(15,6) default 0 not null,
    Day4		dec(15,6) default 0 not null,
    Day5		dec(15,6) default 0 not null,
    Day6		dec(15,6) default 0 not null,
    Day7		dec(15,6) default 0 not null,	--������
    Total7		dec(15,6) default 0 not null,	--7�����ֵ
    Total5		dec(15,6) default 0 not null,	--ƽ�գ���һ�����壩��ֵ
    Total2		dec(15,6) default 0 not null,	--˫���գ����������գ���ֵ
    Avg7		dec(15,6) default 0 not null,	--��ƽ��ֵ
    Avg5		dec(15,6) default 0 not null,	--ƽ��ƽ��ֵ
    Avg2		dec(15,6) default 0 not null,	--˫����ƽ��ֵ
    primary key (WeekID,ManageDeptID,rowType)
  );	
  select @BreakPoint=42788801,@Err=@@error,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;
  
  exec TL_GetPrevWeekID @WeekID,@PreWeekID output;
  select @BreakPoint=42788802,@Err=@@error,@Msg='ִ��TL_GetPrevWeekID����';
  if @Err != 0 goto ErrHandle;
  exec RP_GetWeekDeptSaleToTable_sybj @ShopID,@PreWeekID,@ManageDeptID;
  select @BreakPoint=42788803,@Err=@@error,@Msg='��ȡ�������ݳ���';
  if @Err != 0 goto ErrHandle;
  
  select * into #T_PreWeekDeptSale from #T_WeekDeptSale;
  select @BreakPoint=42788804,@Err=@@error,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;
  
  delete from #T_WeekDeptSale;
  exec RP_GetWeekDeptSaleToTable_sybj @ShopID,@WeekID,@ManageDeptID;
  select @BreakPoint=42788805,@Err=@@error,@Msg='��ȡ�������ݳ���';
  if @Err != 0 goto ErrHandle;


--1219
  select WeekID,sum(Day1) day1,sum(Day2) day2,sum(Day3) day3,sum(Day4) day4,
                  sum(Day5) day5,sum(Day6) day6,sum(Day7) day7,sum(Total5) total5,
                  sum(Total2) total2,sum(Total7) total7,RowType
  into #T_WeekDeptSale_jxgg 
  from #T_WeekDeptSale
  group by weekid,rowtype;


  select WeekID,sum(Day1) day1,sum(Day2) day2,sum(Day3) day3,sum(Day4) day4,
                  sum(Day5) day5,sum(Day6) day6,sum(Day7) day7,sum(Total5) total5,
                  sum(Total2) total2,sum(Total7) total7,RowType
  into #T_PreWeekDeptSale_jxgg 
  from #T_PreWeekDeptSale
  group by weekid,rowtype;

 
--      
  insert into #427888
    select WeekID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,RowType
      from #T_WeekDeptSale_jxgg where WeekID=@WeekID and RowType in (10,40,60,70);

  select @BreakPoint=42788806,@Err=@@error,@Msg='д�뱾�����ݳ���';
  if @Err != 0 goto ErrHandle;

  insert into #427888
    select WeekID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,RowType+1
      from #T_preWeekDeptSale_jxgg where WeekID=@preWeekID and RowType in (10,40,60,70);     

  select @BreakPoint=42788807,@Err=@@error,@Msg='д���������ݳ���';
  if @Err != 0 goto ErrHandle;

  update #427888 set day1=(select day1 from #427888 where rowtype=10)/(select day1 from #427888 where rowtype=60) where rowtype=70;
  update #427888 set day2=(select day2 from #427888 where rowtype=10)/(select day2 from #427888 where rowtype=60) where rowtype=70;
  update #427888 set day3=(select day3 from #427888 where rowtype=10)/(select day3 from #427888 where rowtype=60) where rowtype=70;
  update #427888 set day4=(select day4 from #427888 where rowtype=10)/(select day4 from #427888 where rowtype=60) where rowtype=70;
  update #427888 set day5=(select day5 from #427888 where rowtype=10)/(select day5 from #427888 where rowtype=60) where rowtype=70;
  update #427888 set day6=(select day6 from #427888 where rowtype=10)/(select day6 from #427888 where rowtype=60) where rowtype=70;
  update #427888 set day7=(select day7 from #427888 where rowtype=10)/(select day7 from #427888 where rowtype=60) where rowtype=70;
  update #427888 set total2=(select total2 from #427888 where rowtype=10)/(select total2 from #427888 where rowtype=60) where rowtype=70;
  update #427888 set total5=(select total5 from #427888 where rowtype=10)/(select total5 from #427888 where rowtype=60) where rowtype=70;
  update #427888 set total7=(select total7 from #427888 where rowtype=10)/(select total7 from #427888 where rowtype=60) where rowtype=70;
  
  update #427888 set day1=(select day1 from #427888 where rowtype=11)/(select day1 from #427888 where rowtype=61) where rowtype=71;
  update #427888 set day2=(select day2 from #427888 where rowtype=11)/(select day2 from #427888 where rowtype=61) where rowtype=71;
  update #427888 set day3=(select day3 from #427888 where rowtype=11)/(select day3 from #427888 where rowtype=61) where rowtype=71;
  update #427888 set day4=(select day4 from #427888 where rowtype=11)/(select day4 from #427888 where rowtype=61) where rowtype=71;
  update #427888 set day5=(select day5 from #427888 where rowtype=11)/(select day5 from #427888 where rowtype=61) where rowtype=71;
  update #427888 set day6=(select day6 from #427888 where rowtype=11)/(select day6 from #427888 where rowtype=61) where rowtype=71;
  update #427888 set day7=(select day7 from #427888 where rowtype=11)/(select day7 from #427888 where rowtype=61) where rowtype=71;
  update #427888 set total2=(select total2 from #427888 where rowtype=11)/(select total2 from #427888 where rowtype=61) where rowtype=71;
  update #427888 set total5=(select total5 from #427888 where rowtype=11)/(select total5 from #427888 where rowtype=61) where rowtype=71;
  update #427888 set total7=(select total7 from #427888 where rowtype=11)/(select total7 from #427888 where rowtype=61) where rowtype=71;
                    
  
  insert into #427888 select a.WeekID,
      case when b.Day1=0 then 100 else (a.Day1-b.Day1)/b.Day1*100 end,
      case when b.Day2=0 then 100 else (a.Day2-b.Day2)/b.Day2*100 end,
      case when b.Day3=0 then 100 else (a.Day3-b.Day3)/b.Day3*100 end,
      case when b.Day4=0 then 100 else (a.Day4-b.Day4)/b.Day4*100 end,
      case when b.Day5=0 then 100 else (a.Day5-b.Day5)/b.Day5*100 end,
      case when b.Day6=0 then 100 else (a.Day6-b.Day6)/b.Day6*100 end,
      case when b.Day7=0 then 100 else (a.Day7-b.Day7)/b.Day7*100 end,
      case when b.Total5=0 then 100 else (a.Total5-b.Total5)/b.Total5*100 end,
      case when b.Total2=0 then 100 else (a.Total2-b.Total2)/b.Total2*100 end,
      case when b.Total7=0 then 100 else (a.Total7-b.Total7)/b.Total7*100 end,
      a.RowType+2
      from #T_WeekDeptSale_jxgg a,#T_PreWeekDeptSale_jxgg b
      where a.RowType=b.RowType and a.WeekID=@WeekID and b.WeekID=@PreWeekID
      and a.RowType in (10,40,60,70) and b.rowtype in (10,40,60,70); 
--     and a.ManageDeptID=b.ManageDeptID;

if (select day1 from #427888 where rowtype=71)<>0
  update #427888 set day1=100*((select day1 from #427888 where rowtype=70)-(select day1 from #427888 where rowtype=71))/(select day1 from #427888 where rowtype=71) where rowtype=72;
else 
  update #427888 set day1=0 where rowtype=72
if  (select day2 from #427888 where rowtype=71)<>0  
  update #427888 set day2=100*((select day2 from #427888 where rowtype=70)-(select day2 from #427888 where rowtype=71))/(select day2 from #427888 where rowtype=71) where rowtype=72;
else 
  update #427888 set day2=0 where rowtype=72
if  (select day3 from #427888 where rowtype=71)<>0
  update #427888 set day3=100*((select day3 from #427888 where rowtype=70)-(select day3 from #427888 where rowtype=71))/(select day3 from #427888 where rowtype=71) where rowtype=72;
else 
  update #427888 set day3=0 where rowtype=72 
if  (select day4 from #427888 where rowtype=71)<>0
  update #427888 set day4=100*((select day4 from #427888 where rowtype=70)-(select day4 from #427888 where rowtype=71))/(select day4 from #427888 where rowtype=71) where rowtype=72;
else 
  update #427888 set day4=0 where rowtype=72
if (select day5 from #427888 where rowtype=71)<>0
  update #427888 set day5=100*((select day5 from #427888 where rowtype=70)-(select day5 from #427888 where rowtype=71))/(select day5 from #427888 where rowtype=71) where rowtype=72;
else 
  update #427888 set day5=0 where rowtype=72
if (select day6 from #427888 where rowtype=71)<>0
  update #427888 set day6=100*((select day6 from #427888 where rowtype=70)-(select day6 from #427888 where rowtype=71))/(select day6 from #427888 where rowtype=71) where rowtype=72;
else 
  update #427888 set day6=0 where rowtype=72
if (select day7 from #427888 where rowtype=71)<>0
  update #427888 set day7=100*((select day7 from #427888 where rowtype=70)-(select day7 from #427888 where rowtype=71))/(select day7 from #427888 where rowtype=71) where rowtype=72;
else 
  update #427888 set day7=0 where rowtype=72
if (select total2 from #427888 where rowtype=71)<>0
  update #427888 set total2=100*((select total2 from #427888 where rowtype=70)-(select total2 from #427888 where rowtype=71))/(select total2 from #427888 where rowtype=71) where rowtype=72;
else 
  update #427888 set total2=0 where rowtype=72
if (select total5 from #427888 where rowtype=71)<>0
  update #427888 set total5=100*((select total5 from #427888 where rowtype=70)-(select total5 from #427888 where rowtype=71))/(select total5 from #427888 where rowtype=71) where rowtype=72;
else 
  update #427888 set total5=0 where rowtype=72
if (select total7 from #427888 where rowtype=71)<>0
  update #427888 set total7=100*((select total7 from #427888 where rowtype=70)-(select total7 from #427888 where rowtype=71))/(select total7 from #427888 where rowtype=71) where rowtype=72;
else 
  update #427888 set total7=0 where rowtype=72  
  
  select @BreakPoint=42788808,@Err=@@error,@Msg='д��Ƚ����ݳ���';
  if @Err != 0 goto ErrHandle;

  drop table #T_WeekDeptSale;
  drop table #T_PreWeekDeptSale;
  drop table #T_WeekDeptSale_jxgg;
  drop table #T_PreWeekDeptSale_jxgg;
  select @BreakPoint=42788808,@Err=@@error,@Msg='д��Ƚ����ݳ���';
  if @Err != 0 goto ErrHandle;
  return 0;    
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go


-----------------------------
--427881 ��Ӧ�̸�����������                                              
--������κޱ 2003.11.19
--���㹫ʽ:
----����������:  �����/�����վ����� (��ʾ��ʽ 0.00 )
----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427881') and type = 'P')
  drop procedure dbo.rp_427881
GO

create procedure dbo.rp_427881	 @Begindate datetime,@Enddate datetime,@Venderid int 

-----------------------------------------------------------------
--Version Number:Apple2.0_20031119_01,Last Mender:weiwei
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag     int;

  declare @deptlevel    int;
  declare @levelvalue   int;
  
  declare @tablename    char(14);
  declare @stable       char(18);
  declare @SQL1		char(1024);
--  declare @avgdays      int;
  declare @ManageDeptID int;
  declare @DJvalue      dec(12,2);
  declare @KXvalue      dec(12,2);
  declare @OpenValue    dec(12,2);
  declare @avgsale      dec(12,2);
  declare @JSCostValue  dec(12,2);
  declare @JSCount	int;
  declare @style        int;
  declare @Venderid1	int;
  declare @salevalue    dec(12,2);
  declare @costvalue    dec(12,2);
  declare @bqyjsje      dec(12,2);   
  declare @wjsje      dec(12,2);
  declare @wsKXvalue   dec(12,2);
  declare @bqwsKXvalue  dec(12,2);
  declare @bqKXvalue    dec(12,2);

  SET NOCOUNT ON
  select @tempflag=0;

create table #tmp_427881(
VenderID	int		null,		--��Ӧ�̱��
VenderName	char(64)	null,		--��Ӧ������
ManageDeptID	int    		null,		--�������
ManageName      char(64)	null,		--����������
Stockvalue	dec(12,2)	default 0 not null,		--�����
Avgsale		dec(12,2)	default 0 not null,		--�����վ�����
SaleDays        dec(12,2)	default 0 not null,		--����������
Paytype		int 		null,		--�������� 0��ʾ������ʱ��ʼ���սᣩ,1��ʾ�������մ��¿�ʼ���½ᣩ,2��ʾ�������մΰ��¿�ʼ�����½ᣩ,3��ʾ�������մ��ܿ�ʼ���ܽᣩ
OpenValue       dec(12,2)	default 0 not null,		--��;���
JSCostValue	dec(12,2) 	default 0 not null,		--�ѽ�����
JSCount     	int 		default 0 not null,		--�ѽ������
DJvalue		dec(12,2) 	default 0 not null,		--���δ�������,��������Ӧ��δ���
KXvalue		dec(12,2)	default 0 not null,	        --���������
sy_salevalue    dec(12,2)       default 0 not null,           --�������۽��
sy_costvalue    dec(12,2)       default 0 not null,            --�������۳ɱ�,
wjsje           dec(12,2)       default 0 not null,          --δ�������ĿǰΪֹ��û����� 
bqyjsje         dec(12,2)       default 0 not null,           --�����ѽ�����  
bqyjje          dec(12,2)       default 0 not null,            --����Ӧ���� 
wsKXvalue       dec(12,2)       default 0 not null,           --δ�տ�����   
bqwsKXvalue     dec(12,2)       default 0 not null,           --����δ�տ�����
bqKXvalue       dec(12,2)       default 0 not null,           --�������տ�����
bqyskxvalue     dec(12,2)       default 0 not null             -- ����Ӧ�տ�����
);

  select @Err=@@Error,@BreakPoint=427000,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;
  
  select @tempflag=1;
  select a.shopid,a.venderid,a.goodsid,b.deptid,b.stocktype into #rp_427881tmp1 from cost a,goods b  
	where a.goodsid=b.goodsid and a.clearflag<>3 and a.venderid=@Venderid; 
  select @Err=@@Error,@BreakPoint=427010,@Msg='ȡֵ����';
  if @Err != 0 goto ErrHandle;	
  
  --ȡ�����������Ʒ���	
  select a.shopid,a.venderid,a.goodsid,a.deptid,sum(b.qty*b.cost) costvalue into #rp_427881tmp2 from #rp_427881tmp1 a,goodscost b 
	where a.shopid=b.shopid and a.venderid=b.venderid and a.goodsid=b.goodsid and a.stocktype=0 
	group by a.shopid,a.venderid,a.goodsid,a.deptid;
  select @Err=@@Error,@BreakPoint=427020,@Msg='ȡ���������Ʒ����';
  if @Err != 0 goto ErrHandle;	
	
  --ȡ�������Ʒ���
 insert into #rp_427881tmp2 
 select a.shopid,a.venderid,a.goodsid,a.deptid,sum(b.costvalue) costvalue from #rp_427881tmp1 a,shopsstock b 
	where a.shopid=b.shopid and a.goodsid=b.goodsid and a.stocktype=2 
	group by a.shopid,a.venderid,a.goodsid,a.deptid;
  select @Err=@@Error,@BreakPoint=427030,@Msg='ȡ�����Ʒ����';
  if @Err != 0 goto ErrHandle;	
  	
  --���㲿�ſ��
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=427040,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  	
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=427050,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select venderid,round(deptid/@levelvalue,0) ManageDeptID,sum(costvalue) Stockvalue into #rp_427881tmp3 from #rp_427881tmp2 
  group by venderid,round(deptid/@levelvalue,0);
  select @Err=@@Error,@BreakPoint=427060,@Msg='�ϼƿ�������';
  if @Err != 0 goto ErrHandle;
  
  --���������վ����۶�
  --�㷨��ȡ��ǰ��ѯ���ڵ�ǰһ��ƽ������ ������ƽ����30�����
  select @tablename='salecost'+left(convert(char(8),DateAdd(mm,-1,getdate()),112),6);
  select @stable='dbo.'+@tablename;
  if not exists (select * from dbo.sysobjects 
	where id = object_id(@stable) and OBJECTPROPERTY(id, @stable) = 1) 
	select @tablename='salecost'; --�����¿�ҵ�����ȡ�������۶�
  select @Err=@@Error,@BreakPoint=427070,@Msg='ȡ�±����';
  if @Err != 0 goto ErrHandle;	
  
  create table #rp_427881tmp4(
  VenderID	int		null,
  ManageDeptID	int    		null,
  PaytypeID	char(2)		null,
  Salevalue      dec(12,2)	Null,
  avgsale       dec(12,2)	Null,
  costvalue     dec(12,2)       null
  );
  
  create table #tmp2(
  VenderID	int		null,
  GoodsID	int		null,
  DeptID	int    		null,
  PaytypeID	char(2)		null,
  Salevalue      dec(12,2)	Null,
  avgsale       dec(12,2)	Null,
  costvalue     dec(12,2)       null
  );
  select @Err=@@Error,@BreakPoint=427080,@Msg='�������ڳ���';
  if @Err != 0 goto ErrHandle;
  
  select @SQL1=
  'insert into #tmp2 select a.venderid,a.goodsid,b.deptid,a.paytypeid,sum(a.salevalue-discvalue) salevalue,999999999.99 avgsale,sum(a.costvalue) costvalue '+ 
  '	from '+@tablename+' a,#rp_427881tmp2 b  ' +
  ' 	where a.goodsid=b.goodsid and a.venderid=b.venderid and a.shopid=b.shopid '+
  	' group by a.venderid,a.goodsid,b.deptid,a.paytypeid';
  exec (@SQL1);	
  select @Err=@@Error,@BreakPoint=427210,@Msg='ȡ���۶����';
  if @Err != 0 goto ErrHandle;
  
  insert into #rp_427881tmp4 
  	select Venderid,round(deptid/@levelvalue,0) ManageDeptID,paytypeid,sum(salevalue) salevalue,avgsale,sum(costvalue) costvalue from #tmp2 
  	group by Venderid,round(deptid/@levelvalue,0),paytypeid,avgsale;
  
  update #rp_427881tmp4 set avgsale=round(salevalue/30,2) where salevalue <> 0 or salevalue is not null;
  update #rp_427881tmp4 set avgsale=0.00 where salevalue = 0 or salevalue is null;
  select @Err=@@Error,@BreakPoint=427100,@Msg='����ƽ�����۳���';
  if @Err != 0 goto ErrHandle;
  drop table #tmp2;
  	
  --����������վ�����
  insert into #tmp_427881(VenderID,VenderName,ManageDeptID,ManageName,Stockvalue) 
  	select a.venderid,b.name,ManageDeptID,c.name,a.Stockvalue from #rp_427881tmp3 a,vender b,sgroup c 
  	where a.venderid=b.venderid and a.ManageDeptID=c.id;
  
  select a.venderid,a.ManageDeptID,a.Avgsale,a.paytypeid,b.style,a.salevalue,a.costvalue into #tmp1 from #rp_427881tmp4 a,paytype b 
  	where a.paytypeid=b.id;
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,avgsale,style,salevalue,costvalue from #tmp1; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@ManageDeptID,@avgsale,@style,@salevalue,@costvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set Avgsale=@avgsale,paytype=@style,sy_salevalue=@salevalue,sy_costvalue=@costvalue where venderid=@venderid and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427110,@msg='�����վ����۳���';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=427120,@Msg='���ܳ���';
  if @Err != 0 goto ErrHandle;	
  	
  update #tmp_427881 set SaleDays=Stockvalue/Avgsale where Avgsale <> 0 or Avgsale is not null;
  drop table #rp_427881tmp1;
  drop table #rp_427881tmp3;
  drop table #rp_427881tmp4;

  select @Err=@@Error,@BreakPoint=427130,@Msg='���������������';
  if @Err != 0 goto ErrHandle;
  
  --������;��������
  --�㷨��demand����goodsid��Ĭ�Ϲ�Ӧ���Ǹù�Ӧ�̣�����Ϊ����Ʒ��;��ȫ���ù�Ӧ�̣�������ǣ�����Ϊ��
  ----��;���=��������ContractCost����;����
  select a.shopid,a.vender
id,a.goodsid,a.deptid,b.OpenOrderQty,c.ContractCost into #rp_427881tmp5 from #rp_427881tmp2 a,demand b,cost c 
  	where a.shopid=b.shopid and a.goodsid=b.goodsid and a.shopid=c.shopid and a.goodsid=c.goodsid and a.venderid=c.venderid and
              c.flag=0;
  select @Err=@@Error,@BreakPoint=427140,@Msg='ͳ����;��������';
  if @Err != 0 goto ErrHandle;	 
  
  select venderid,round(deptid/@levelvalue,0) ManageDeptID,sum(OpenOrderQty*ContractCost) OpenValue into #rp_427881tmp6 from #rp_427881tmp5 
  	group by venderid,round(deptid/@levelvalue,0);
  	
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,OpenValue from #rp_427881tmp6; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@ManageDeptID,@OpenValue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set OpenValue=@OpenValue where venderid=@venderid and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427150,@msg='������;������';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  drop table #rp_427881tmp5;
  drop table #rp_427881tmp6;
  select @Err=@@Error,@BreakPoint=427160,@Msg='ɾ����ʱ�����';
  if @Err != 0 goto ErrHandle;
  
    --�����ѽ�����
  select a.venderid,b.ManageDeptID,count(a.sheetid) JSCount,sum(b.costvalue) JSCostValue into #rp_427881tmp8 from Billhead a,BillheadItem b 
	where a.sheetid=b.sheetid  and a.venderid=@venderid 
	group by a.venderid,b.ManageDeptID;
  select @Err=@@Error,@BreakPoint=427170,@msg='ͳ���ѽ�����ʹ�������';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;	 
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,JSCount,JSCostValue from #rp_427881tmp8; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid1,@ManageDeptID,@JSCount,@JSCostValue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set JSCount=@JSCount,JSCostValue=@JSCostValue where venderid=@venderid1 and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427180,@msg='�����ѽ��������';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

 drop table #rp_427881tmp8; 

--07-02-08 add
--���㱾���ѽ�����
  select a.venderid,b.ManageDeptID,sum(b.costvalue) bqyjsje into #rp_427881tmp81 from Billhead a,BillheadItem b 
	where a.sheetid=b.sheetid  and a.venderid=@venderid and convert(char(10),PayableDate,120) between @BeginDate and @EndDate 
	group by a.venderid,b.ManageDeptID;
  select @Err=@@Error,@BreakPoint=427170,@msg='ͳ�Ʊ����ѽ�����ͳ���';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;	 
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,bqyjsje from #rp_427881tmp81; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid1,@ManageDeptID,@bqyjsje;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set bqyjsje=@bqyjsje where venderid=@venderid1 and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427180,@msg='���±����ѽ��������';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  drop table #rp_427881tmp81; 
 
--07-02-08 add

 
  --���㱾�δ�������
  select distinct a.venderid,b.paytypesortid into #rp_427881tmp7 from #tmp1 a,paytype b 
  	where a.paytypeid=b.id;
  
   select a.ManageDeptID,a.Venderid,sum(a.costvalue) DJvalue into #rp_427881tmp9 from UnpaidSheet0 a,#rp_427881tmp7 b 
  	where a.venderid=b.venderid and b.paytypesortid='g' and convert(char(10),PayableDate,120) between @BeginDate and @EndDate 
  	group by a.ManageDeptID,a.Venderid; 
  	 
   insert into #rp_427881tmp9 
   select a.ManageDeptID,a.Venderid,sum(a.costvalue) DJvalue from BalanceBook0 a,#rp_427881tmp7 b 
  	where a.venderid=b.venderid and b.paytypesortid <> 'g'  and convert(char(10),PayableDate,120) between @BeginDate and @EndDate 
  	group by a.ManageDeptID,a.Venderid; 
  select @Err=@@Error,@BreakPoint=427190,@Msg='���㱾�δ����������';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,DJvalue from #rp_427881tmp9; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@ManageDeptID,@DJvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set DJvalue=@DJvalue where venderid=@venderid and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427200,@msg='���´����������';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  drop table #rp_427881tmp7;
  drop table #rp_427881tmp9;  		
--  drop table #rp_427881tmp2;
--  drop table #tmp1;
    	
--2007-02-08 add

    --���㵽ĿǰΪֹδ������
  select distinct a.venderid,b.paytypesortid into #rp_427881tmp71 from #tmp1 a,paytype b 
  	where a.paytypeid=b.id;
  
   select a.ManageDeptID,a.Venderid,sum(a.costvalue) wjsje into #rp_427881tmp91 from UnpaidSheet0 a,#rp_427881tmp71 b 
  	where a.venderid=b.venderid and b.paytypesortid='g'
  	group by a.ManageDeptID,a.Venderid; 
  	 
   insert into #rp_427881tmp91 
   select a.ManageDeptID,a.Venderid,sum(a.costvalue) wjsje from BalanceBook0 a,#rp_427881tmp71 b 
  	where a.venderid=b.venderid and b.paytypesortid <> 'g'  
  	group by a.ManageDeptID,a.Venderid; 
  select @Err=@@Error,@BreakPoint=427190,@Msg='����δ���������';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,wjsje from #rp_427881tmp91; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@ManageDeptID,@wjsje;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set wjsje=@wjsje where venderid=@venderid and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427200,@msg='����δ���������';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  drop table #rp_427881tmp71;
  drop table #rp_427881tmp91;  		
  drop table #rp_427881tmp2;
  drop table #tmp1;

--2007-02-08 end

   --����������
  select a.venderid,a.ManageDeptID,sum(b.Kmoney) KXvalue into #rp_427881tmp10 from #tmp_427881 a,kxsum b 
  	where a.venderid=b.venderid and a.ManageDeptID=b.ManageDeptID 
  	group by a.venderid,a.ManageDeptID;
  select @Err=@@Error,@BreakPoint=427210,@Msg='���������ܳ���';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,KXvalue from #rp_427881tmp10; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@ManageDeptID,@KXvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set KXvalue=@KXvalue where venderid=@venderid and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427220,@msg='�����ѽ�����������';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  drop table #rp_427881tmp10;	

--add,2007-02-08
 --����δ�տ������
  select a.venderid,a.ManageDeptID,sum(b.Kmoney) wsKXvalue into #rp_427881tmp101 from #tmp_427881 a,kxsum0 b 
  	where a.venderid=b.venderid and a.ManageDeptID=b.ManageDeptID 
  	group by a.venderid,a.ManageDeptID;
  select @Err=@@Error,@BreakPoint=427210,@Msg='����δ�տ�����ܳ���';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,wsKXvalue from #rp_427881tmp101; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@ManageDeptID,@wsKXvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set wsKXvalue=@wsKXvalue where venderid=@venderid and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427220,@msg='����δ�տ�����ܳ���';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
  
      CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  drop table #rp_427881tmp101;	

 --����Ӧ��δ�տ������
  select a.venderid,a.ManageDeptID,sum(b.Kmoney) bqwsKXvalue into #rp_427881tmp102 from #tmp_427881 a,kxsum0 b 
  	where a.venderid=b.venderid and a.ManageDeptID=b.ManageDeptID 
                and convert(char(10),b.ReceivableDate,120) between @BeginDate and @EndDate 
  	group by a.venderid,a.ManageDeptID;
  select @Err=@@Error,@BreakPoint=427210,@Msg='����δ�տ�����ܳ���';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,bqwsKXvalue from #rp_427881tmp102; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@ManageDeptID,@bqKXvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set bqwsKXvalue=isnull(@bqwsKXvalue,0) where venderid=@venderid and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427220,@msg='����δ�տ�����ܳ���';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  drop table #rp_427881tmp102;	

 --���㱾�����տ���
   select a.venderid,a.ManageDeptID,sum(b.Kmoney) bqKXvalue into #rp_427881tmp103 from #tmp_427881 a,kxsum b 
  	where a.venderid=b.venderid and a.ManageDeptID=b.ManageDeptID 
                and convert(char(10),b.ReceivableDate,120) between @BeginDate and @EndDate 
  	group by a.venderid,a.ManageDeptID;
  select @Err=@@Error,@BreakPoint=427210,@Msg='���������ܳ���';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,bqKXvalue from #rp_427881tmp103; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@ManageDeptID,@bqKXvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set bqKXvalue=@bqKXvalue where venderid=@venderid and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427220,@msg='�����ѽ�����������';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  drop table #rp_427881tmp103;	

  update #tmp_427881 set bqyjje=isnull(DJvalue,0)+ isnull(bqyjsje,0),bqyskxvalue=isnull(bqwsKXvalue,0)+isnull(bqyskxvalue,0);
 
--end,2007-02-08
  
  insert into #427881 select * from #tmp_427881;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #tmp_427881;
  return 0;   
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427881;
  return -1;
End
GO

/*
Name: TL_GetNextWeekID @WeekID int,@NextWeekID int output
func: ��ȡָ���ܺ�@WeekID�����ܺ�

Name: TL_GetPrevWeekID @WeekID int,@PreWeekID int output
func: ��ȡָ���ܺ�@WeekID�����ܺ�

Name: TL_GetWeekDateBound @WeekID int,@BeginDate datetime out,@EndDate datetime out
func: �����ܺ�@WeekID�����ظ��ܵĿ�ʼ�ͽ�������

Name: RP_GetWeekSaleToTable @ShopID char(4),@WeekID int
func: ��ȡָ���ܺ�@WeekID���ڴ�����һ��������ÿ������۶�ۿۡ��ɱ���ë����ë���ʡ��͵������͵��۵ȣ����±�
	create table #T_WeekSale(
	  WeekID	int not null,	--�ܺ�
	  RowType	int not null,	--�����ԣ�10=���� 20=�ۿ۽�� 30=�ɱ� 40=����ë�� 50=ë���� 60=�͵��� 70=�͵���
	  Day1		dec(15,5) default 0 not null,	--����һ
	  Day2		dec(15,5) default 0 not null,
	  Day3		dec(15,5) default 0 not null,
	  Day4		dec(15,5) default 0 not null,
	  Day5		dec(15,5) default 0 not null,
	  Day6		dec(15,5) default 0 not null,
	  Day7		dec(15,5) default 0 not null,	--������
	  Total7	dec(15,5) default 0 not null,	--7�����ֵ
	  Total5	dec(15,5) default 0 not null,	--ƽ�գ���һ�����壩��ֵ
	  Total2	dec(15,5) default 0 not null,	--˫���գ����������գ���ֵ
	  Avg7		dec(15,5) default 0 not null,	--��ƽ��ֵ
	  Avg5		dec(15,5) default 0 not null,	--ƽ��ƽ��ֵ
	  Avg2		dec(15,5) default 0 not null,	--˫����ƽ��ֵ
	  primary key (WeekID,rowType)
	)
	
Name: RP_GetWeekDeptSaleToTable @ShopID char(4),@WeekID int,@ManageDeptID int=null
func: ͬ�Ϲ��ܣ���Ŀ���Ǹ���������ص�ֵ�������������ŵ꣬��ṹ���£�
	create table #T_WeekDeptSale(
	  WeekID	int not null,	--�ܺ�
	  ManageDeptID	int not null,	--������
	  RowType	int not null,	--�����ԣ�10=���� 20=�ۿ۽�� 30=�ɱ� 40=����ë�� 50=ë���� 60=�͵��� 70=�͵���
	  Day1		dec(15,6) default 0 not null,	--����һ
	  Day2		dec(15,6) default 0 not null,
	  Day3		dec(15,6) default 0 not null,
	  Day4		dec(15,6) default 0 not null,
	  Day5		dec(15,6) default 0 not null,
	  Day6		dec(15,6) default 0 not null,
	  Day7		dec(15,6) default 0 not null,	--������
	  Total7	dec(15,6) default 0 not null,	--7�����ֵ
	  Total5	dec(15,6) default 0 not null,	--ƽ�գ���һ�����壩��ֵ
	  Total2	dec(15,6) default 0 not null,	--˫���գ����������գ���ֵ
	  Avg7		dec(15,6) default 0 not null,	--��ƽ��ֵ
	  Avg5		dec(15,6) default 0 not null,	--ƽ��ƽ��ֵ
	  Avg2		dec(15,6) default 0 not null,	--˫����ƽ��ֵ
	  primary key (WeekID,ManageDeptID,rowType)
	)

Name: RP_GetWeekGoodsSaleToTable @ShopID char(4),@WeekID int,@GoodsID int
func: ͬ�Ϲ��ܣ����㵥Ʒ������״������ṹ���£�
	create table #T_WeekGoodsSale(
	  WeekID	int not null,	--�ܺ�
	  GoodsID	int not null,	--��Ʒ����
	  RowType	int not null,	--�����ԣ�10=���۶� 20=�������� 30=����ë�� 40=ë���� 50=��������ռ��
	  Day1		dec(15,6) default 0 not null,	--����һ
	  Day2		dec(15,6) default 0 not null,
	  Day3		dec(15,6) default 0 not null,
	  Day4		dec(15,6) default 0 not null,
	  Day5		dec(15,6) default 0 not null,
	  Day6		dec(15,6) default 0 not null,
	  Day7		dec(15,6) default 0 not null,	--������
	  Total7	dec(15,6) default 0 not null,	--7�����ֵ
	  Total5	dec(15,6) default 0 not null,	--ƽ�գ���һ�����壩��ֵ
	  Total2	dec(15,6) default 0 not null,	--˫���գ����������գ���ֵ
	  Avg7		dec(15,6) default 0 not null,	--��ƽ��ֵ
	  Avg5		dec(15,6) default 0 not null,	--ƽ��ƽ��ֵ
	  Avg2		dec(15,6) default 0 not null,	--˫����ƽ��ֵ
	  primary key (WeekID,GoodsID,rowType)
	)

Name: RP_GetWeekCashHour @ShopID char(4),@WeekID int
func: ��ȡָ���ܺ�@WeekID����һ������ÿ��ʱ�εĿ͵���������
	create table #T_WeekCashHour(
	  WeekID	int not null,			--�ܺ�
	  Hour		int not null,			--ʱ��
	  Day1		int default 0 not null,		--����һ
	  Day2		int default 0 not null,
	  Day3		int default 0 not null,
	  Day4		int default 0 not null,
	  Day5		int default 0 not null,
	  Day6		int default 0 not null,
	  Day7		int default 0 not null,		--������
	  Total7	int default 0 not null,		--һ����ֵ
	  Total5	int default 0 not null,		--ƽ�գ���һ�����壩��ֵ
	  Total2	int default 0 not null,		--˫���գ����������գ���ֵ
	  Avg7		int default 0 not null,		--��ƽ��ֵ
	  Avg5		int default 0 not null,		--ƽ��ƽ��ֵ
	  Avg2		int default 0 not null,		--˫����ƽ��ֵ
	  SubTotal7	int default 0 not null,		--һ���ۼƿ͵���
	  SubTotal5	int default 0 not null,		--ƽ���ۼƿ͵���
	  SubTotal2	int default 0 not null,		--˫���ۼƿ͵���
	  SubRate7	dec(10,2) default 0 not null,	--���ۼƽ��ȱ�
	  SubRate5	dec(10,2) default 0 not null,	--ƽ���ۼƽ��ȱ�
	  SubRate2	dec(10,2) default 0 not null	--˫�����ۼƽ��ȱ�
	  primary key (WeekID,Hour)
	)

Name: RP_GetWeekSaleHour @ShopID char(4),@WeekID int
func: ��ȡָ���ܺ�@WeekID����һ������ÿ��ʱ�ε���������۶������:
	create table #T_WeekSaleHour(
	  WeekID	int not null,			--�ܺ�
	  Hour		int not null,			--ʱ��
	  Day1		dec(15,6) default 0 not null,	--����һ
	  Day2		dec(15,6) default 0 not null,
	  Day3		dec(15,6) default 0 not null,
	  Day4		dec(15,6) default 0 not null,
	  Day5		dec(15,6) default 0 not null,
	  Day6		dec(15,6) default 0 not null,
	  Day7		dec(15,6) default 0 not null,	--������
	  Total7	dec(15,6) default 0 not null,	--һ����ֵ
	  Total5	dec(15,6) default 0 not null,	--ƽ�գ���һ�����壩��ֵ
	  Total2	dec(15,6) default 0 not null,	--˫���գ����������գ���ֵ
	  Avg7		dec(15,6) default 0 not null,	--��ƽ��ֵ
	  Avg5		dec(15,6) default 0 not null,	--ƽ��ƽ��ֵ
	  Avg2		dec(15,6) default 0 not null,	--˫����ƽ��ֵ
	  SubTotal7	dec(15,6) default 0 not null,	--һ���ۼ����۶�
	  SubTotal5	dec(15,6) default 0 not null,	--ƽ���ۼ����۶�
	  SubTotal2	dec(15,6) default 0 not null,	--˫���ۼ����۶�
	  SubRate7	dec(10,2) default 0 not null,	--���ۼƽ��ȱ�
	  SubRate5	dec(10,2) default 0 not null,	--ƽ���ۼƽ��ȱ�
	  SubRate2	dec(10,2) default 0 not null	--˫�����ۼƽ��ȱ�
	  primary key (WeekID,Hour)
	)


�������ʵ��
*/


------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427894') and type = 'P')
  drop procedure dbo.rp_427894
GO

create procedure dbo.rp_427894 @ShopID char(4)

-----------------------------------------------------------------
--Version Number:Apple2.0_20031126_01,Last Mender:VL
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  
  declare @dWeekStart 	datetime;		--����һ
  declare @dMonthStart 	datetime;		--����һ��
  declare @StartDate datetime,@EndDate datetime;	--����һ�ŵ�����
  declare @WeekID int;
  declare @sCond varchar(255);
  SET NOCOUNT ON
  
  --����
  select @sCond='ShopID='''+@ShopID+''' and GoodsID in (select GoodsID from #427894)';
  --��������������
  select @StartDate=cast(left(convert(char(8),DateAdd(month,-1,getdate()),112),6)+'01' as datetime);
  select @WeekID=DatePart(week,GetDate());
  exec TL_GetWeekDateBound @WeekID,@dWeekStart output,@EndDate output;
  select @EndDate=convert(char(8),getdate(),112);
  select @dWeekStart=convert(char(8),@dWeekStart,112);
  select @dMonthStart=DateAdd(month,1,@StartDate);
  --����
  select * into #salecost from salecost where 0=1;
  exec rp_GetMonthDataToTable @StartDate,@EndDate,'salecost',@sCond;
  select @Err=@@error,@BreakPoint=42789401,@Msg='��ȡ�±����ݴ���';
  if @Err != 0 goto ErrHandle;
  --��������,��������,DMS,��;
  update #427894 set DMS=b.NDMS,WeekSale=WeekSaleQty,PreWeekSale=WeekSaleQty1,OnPurQty=b.OpenOrderQty+b.OpenRationQty
    from #427894 a,Demand b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  --��ǰ���,��ת����
  update #427894 set StockQty=b.Qty,CostValue=b.CostValue,
      SaleDays=case when a.DMS=0 then 0 else b.Qty/a.DMS end
    from #427894 a,ShopsStock b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
--�޸� Ch 2008-02-19 ��rpt_base001Ϊsalecost,ȥ������ת�����ֶ�  --begin    
/*    
 --��������,��ת����
  select GoodsID,sum(Qty) SaleQty,case when sum(Qty)=0 then 0 else sum(CloseQty)/sum(Qty) end Times
    into #tmp3 from #salecost 
    where convert(char(8),SDate,112) between convert(char(8),@dMonthStart,112) and convert(char(8),@EndDate,112)
    group by GoodsID;
  update #427894 set MonthSale=b.SaleQty,MonthDays=Times
    from #427894 a,#tmp3 b 
    where a.GoodsID=b.GoodsID;
  drop table #tmp3;
  --��������,��ת����
  select GoodsID,sum(Qty) SaleQty,case when sum(Qty)=0 then 0 else sum(CloseQty)/sum(Qty) end Times
    into #tmp4 from #salecost 
    where convert(char(8),SDate,112) between convert(char(8),@StartDate,112) and convert(char(8),@dMonthStart-1,112)
    group by GoodsID;
  update #427894 set PreMonthSale=b.SaleQty,PreMonthDays=Times
    from #427894 a,#tmp4 b 
    where a.GoodsID=b.GoodsID;
  drop table #tmp4;
*/
  select GoodsID,sum(Qty) SaleQty
    into #tmp3 from #salecost 
    where convert(char(8),SDate,112) between convert(char(8),@dMonthStart,112) and convert(char(8),@EndDate,112)
    group by GoodsID;
  update #427894 set MonthSale=b.SaleQty from #427894 a,#tmp3 b 
    where a.GoodsID=b.GoodsID;
  drop table #tmp3;
  --��������,��ת����
  select GoodsID,sum(Qty) SaleQty
    into #tmp4 from #salecost 
    where convert(char(8),SDate,112) between convert(char(8),@StartDate,112) and convert(char(8),@dMonthStart-1,112)
    group by GoodsID;
  update #427894 set PreMonthSale=b.SaleQty from #427894 a,#tmp4 b 
    where a.GoodsID=b.GoodsID;
  drop table #tmp4;
--�޸� Ch 2008-02-19 ��rpt_base001Ϊsalecost,ȥ������ת�����ֶ�  --end

  --�������,��������
  select ShopID,GoodsID,max(SaleDate) SaleDate,max(ReceiptDate) ReceiptDate
    into #tmp1 from LatelyGoodsList
    where ShopID=@ShopID
    group by ShopID,GoodsID;
  update #427894 set LastPurDay=b.ReceiptDate,LastSaleDay=b.SaleDate
    from #427894 a,#tmp1 b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  drop table #tmp1;
  --��ǰ�ۼ�
  update #427894 set Price=b.Price
    from #427894 a,GoodsShop b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  --Ĭ�Ϲ�Ӧ��,����
  update #427894 set VenderID=b.VenderID,Cost=b.Cost
    from #427894 a,Cost b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID and b.Flag=0
  --��������ת��������Ϊ0
  update #427894 set MonthDays=case when MonthDays<0 then 0 else MonthDays end,
      PreMonthDays=case when PreMonthDays<0 then 0 else PreMonthDays end;  
  drop table #salecost;
  
  return 0;    
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO



----------------------
----------------------------------------------------------------------------------------
--rp_427898			��Ӧ�̿�������ܱ�  
--������
--���أ��ɹ�Ϊ0,����Ϊ�ϵ��,		�ϵ�� 42
--��	
--������
--�㷨��
--������κޱ 2003.12.08
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427898') and type = 'P')
  drop procedure dbo.rp_427898
GO
create procedure dbo.rp_427898 @begindate datetime,@enddate datetime 

-----------------------------------------------------------------
--Version Number:Apple2.0_20031208_01,Last Mender:κޱ
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag     int;
  
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @MonthID	int;
  declare @venderid1    int;

  SET NOCOUNT ON
  select @tempflag=0;
  
  create table #tmp_427898(
VenderID	int		null,		--��Ӧ�̱��
ManageDeptID	int    		null,		--�������
SaleCost	dec(12,2)	default 0 Null,		--�������۳ɱ�
TmpkxValue	dec(12,2) 	default 0 null,		--��ʱ������
GdkxValue     	dec(12,2) 	default 0 null,		--�̶�������
RecKXvalue	dec(12,2)	default 0 null		--���ս��
);

  select @Err=@@Error,@BreakPoint=420000,@Msg='������ʱ�����';
  if @Err != 0 goto ErrHandle;

  --ͳ����ʱ����  
  select @tempflag=1;
  select VenderID,ManageDeptID,sum(kmoney) TmpkxValue into #rp_427898tmp1 from KXSum0 
  	where Ktype=1 and convert(char(10),ReceivableDate,120) between @BeginDate and @EndDate 
  	group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=420010,@Msg='ͳ����ʱ�������';
  if @Err != 0 goto ErrHandle;
  
  insert into #rp_427898tmp1 	 
  select VenderID,ManageDeptID,sum(kmoney) TmpkxValue from KXSum 
  	where Ktype=1 and convert(char(10),ReceivableDate,120) between @BeginDate and @EndDate 
  	group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=420020,@Msg='ͳ����ʱ�������';
  if @Err != 0 goto ErrHandle;
  
  insert into #tmp_427898(VenderID,ManageDeptID,TmpkxValue) 
  	select VenderID,ManageDeptID,sum(TmpkxValue) TmpkxValue from #rp_427898tmp1 group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=420030,@Msg='������ʱ����ֵ����';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427898tmp1;
  
  --ͳ�ƹ̶�����	
  select VenderID,ManageDeptID,sum(kmoney) GdkxValue into #rp_427898tmp2 from KXSum0  
  	where Ktype=0 and convert(char(10),ReceivableDate,120) between @BeginDate and @EndDate 
  	group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=420040,@Msg='ͳ�ƹ̶��������';
  if @Err != 0 goto ErrHandle;
  
  insert into #rp_427898tmp2 	 
  select VenderID,ManageDeptID,sum(kmoney) GdkxValue from KXSum  
  	where Ktype=0 and convert(char(10),ReceivableDate,120) between @BeginDate and @EndDate 
  	group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=420050,@Msg='ͳ�ƹ̶��������';
  if @Err != 0 goto ErrHandle;
  
  insert into #tmp_427898(VenderID,ManageDeptID,GdkxValue) 
  	select VenderID,ManageDeptID,sum(GdkxValue) GdkxValue from #rp_427898tmp2 group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=420060,@Msg='����̶�����ֵ����';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427898tmp2;
  
  --ͳ�����ս��
  insert into #tmp_427898(VenderID,ManageDeptID,RecKXvalue) 
  	select VenderID,ManageDeptID,sum(kmoney) RecKXvalue from kxsum 
  		where convert(char(10),ReceivableDate,120) between @BeginDate and @EndDate 
  		group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=420070,@Msg='�������ս�����';
  if @Err != 0 goto ErrHandle;
  
  --ͳ���������۽�� 
  --�㷨��ȡ��ѯ���������µ����������ܶ�
  select @deptlevel=value from config where name='�����ż���';
  select @Err=@@Error,@BreakPoint=420080,@msg='ȡ�����ż���ʱ������';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  	
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420090,@msg='ȡ������Ȩֵ����!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @Monthid=cast(left(convert(char(8),DateAdd(mm,-1,getdate()),112),6) as int);
  select distinct VenderID into #tmp1 from #tmp_427898;
  declare cur_stock cursor local for
      	select venderid from #tmp1; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid1;
    	if  @@fetch_status !=0 break;
 	insert into #tmp_427898(venderid,ManageDeptID,SaleCost) 
 		select a.VenderID,round(b.deptid/@levelvalue,0) ManageDeptID,sum(a.SaleCost) SaleCost from RPT_Base0013 a,goods b 
  		where a.venderid=@Venderid1 and a.monthid=@Monthid and a.goodsid=b.goodsid 
  		group by a.VenderID,round(b.deptid/@levelvalue,0);
	select @Err=@@Error,@BreakPoint=427100,@msg='ͳ���������۳ɱ�����';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=427110,@Msg='ͳ���������۳ɱ�����';
  if @Err != 0 goto ErrHandle;
  
  insert into #427898(VenderID,ManageDeptID,SaleCost,TmpkxValue,GdkxValue,RecKXvalue) 
  	select VenderID,ManageDeptID,sum(SaleCost),sum(TmpkxValue),sum(GdkxValue),sum(RecKXvalue) from #tmp_427898 
  		group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=427120,@Msg='���ܳ���';
  if @Err != 0 goto ErrHandle;  		
  		
  update #427898 set KXvalue=TmpkxValue+GdkxValue where 1=1;
  drop table #tmp_427898;
  
  return  0;  
ErrHandle:
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427898;
  return -1;
End
GO


--------------------------
if exists (select * from sysobjects where id = object_id('dbo.rpt_newgoodsfx') and type = 'P')
  drop procedure dbo.rpt_newgoodsfx
GO

create procedure dbo.rpt_newgoodsfx @shopid char(4),@begindate datetime,@enddate datetime
as begin
	
	declare @err              int;
	declare @breakpoint       int;
	declare @msg              char(255);
	
	declare @count            int;
	--declare @begindate        datetime;
	--declare @enddate          datetime;
	declare @tables           char(255);
	declare @SQLString        char(1024);
	declare @subTableName     char(255);
	declare @i                int;
	
	SET QUOTED_IDENTIFIER OFF
        SET ANSI_NULLS ON
        SET ANSI_NULL_DFLT_ON ON
	
	
	
	----ȡ״̬Ϊ��Ʒ����Ʒ�б�
	select distinct gs.goodsid,g.name,g.barcodeid,g.deptid,d.name dname,gs.price,g.InDate,g.TryDays,g.TrySaleValue
        into #goodslist
	from goodsshop gs,goods g,dept d
	where gs.goodsid=g.goodsid and gs.shopid=@shopid 
	      and gs.flag=8 and g.deptid=d.id
	      and convert(char(10),g.indate,120) between @begindate and @enddate;
	      
	select @count=@@ROWCOUNT
	if @count=0 or @count is null
	return 0  --����Ʒֱ�ӷ���
	
	--������Ʒ��������--��ǰ����ȡ��Ʒ��������
	select @begindate=min(InDate) from #goodslist;
	select @enddate  =getdate();
	select @breakpoint=100001;
        select * into #TmpRPT_salecost from salecost where 1=2;--����ʱ��
        exec @err=tl_gettablesname @begindate,@enddate,'salecost',@tables output
        if @err<>0 or @err is null begin
        	select @msg='ȡ�±����'
        	goto errhandle
        end;
        
        select @tables as tablesname into #tablename
        select @breakpoint=100002;
        while 1=1 begin
          select @i=charindex(',',tablesname) from #tablename;        --�ж��Ƿ���','�ָ��
          if @i=0 begin
             select @subTableName=tablesname from #tablename;              --û��,ȡ��ǰֵ
             select @SQLString='insert into #TmpRPT_salecost select * from '
                + ltrim(rtrim(@subTableName))
                + ' where convert(char(8),saledate,112)>=''' 
                + convert(char(8),@begindate,112) 
                + ''' and convert(char(8),saledate,112)<=''' 
                + convert(char(8),@enddate,112)
                + ''' and shopid='''
                + @shopid
                + ''' and goodsid in (select goodsid from #goodslist)';
             execute (@SQLString);
           break;
        end
        else begin
             select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #tablename;      
             select @SQLString='insert into #TmpRPT_salecost select * from '
                + ltrim(rtrim(@subTableName))
                + ' where convert(char(8),saledate,112)>=''' 
                + convert(char(8),@begindate,112) 
                + ''' and convert(char(8),saledate,112)<=''' 
                + convert(char(8),@enddate,112)
                + '''and shopid='''
                + @shopid
                + ''' and goodsid in (select goodsid from #goodslist)';
             execute (@SQLString);
             update #tablename 
             set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
             where 1=1;
           end;
        end;
        
        select @err=@@error
        if @err<>0 or @err is null
        goto errhandle;
        
        drop table #tablename;
	
	--������Ʒ��������
	select @breakpoint=100002;
	select goodsid,min(saledate) saledate,sum(qty) qty,sum(salevalue-discvalue) salevalue,sum(costvalue) costvalue,sum(salevalue-discvalue-costvalue) gpvalue,
	       sum(salevalue-discvalue-costvalue)/sum(salevalue-discvalue)*100 gprate
	       into #goodssale
	       from #TmpRPT_salecost
	       group by goodsid
	       select @err=@@error
	       if @err<>0 or @err is null
	       goto errhandle;
	 
	 --��ѯ��Ʒ���״ν�������
	 select @breakpoint=100003;
	 select a.goodsid,min(r.checkdate) checkdate
	 into #goodsreceipt
	 from #goodslist a,receipt r,receiptitem ri
	 where a.goodsid=ri.goodsid and ri.sheetid=r.sheetid and r.flag=100 and r.shopid=@shopid
	 group by a.goodsid
	 select @err=@@error
	 if @err<>0 or @err is null
	 goto errhandle;
	 
	 
	 --���ݻ���
	 select @breakpoint=100004;
         select a.*,isnull(b.saledate,'') saledate,isnull(qty,0) qty,isnull(salevalue,0) salevalue,isnull(costvalue,0) costvalue,
         isnull(gpvalue,0) gpvalue,isnull(gprate,0) gprate
         into #temp1
         from #goodslist a,#goodssale b
         where a.goodsid*=b.goodsid
	 select @err=@@error;
	 if @err<>0 or @err is null
	 goto errhandle;
	 
	 select a.*,isnull(b.checkdate,'') checkdate
	 into #temp2
	 from #temp1 a,#goodsreceipt b
	 where a.goodsid*=b.goodsid 
	 
	 insert into #tempnewgoods(goodsid,gname,barcodeid,deptid,dname,qty,salevalue,costvalue,gpvalue,gprate,indate,checkdate,saledate,
	                           TryDays,Trysalevalue,price,cost,venderid,vname)
	 select a.goodsid,a.name,a.barcodeid,a.deptid,a.dname,a.qty,a.salevalue,a.costvalue,a.gpvalue,a.gprate,a.indate,a.checkdate,a.saledate,
	                           a.TryDays,a.Trysalevalue,a.price,c.cost,c.venderid,v.name
	 from #temp2 a,cost c,vender v
	 where a.goodsid=c.goodsid  
	       and c.flag=0 
	       and c.venderid=v.venderid 
	       and c.shopid=@shopid;
	 
	 update a set a.kqty=b.qty,a.kcostvalue=b.costvalue
	 from #tempnewgoods a,shopsstock b
	 where a.goodsid=b.goodsid and b.shopid=@shopid;
	 
	 --ɾ����ʱ��
	 drop table #goodslist;
	 drop table #goodssale
	 drop table #TmpRPT_salecost;
	 drop table #goodsreceipt;
	 drop table #temp1;
	 drop table #temp2;
	 
	 
	 return 0;

ERRHANDLE:	 
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
  
end;
GO
--------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.tl_getcardpoint') and type = 'P')
  drop procedure dbo.tl_getcardpoint
GO
create procedure dbo.tl_getcardpoint      @point int,@cardtype  char(2)='99' 
--------------------------------------���ַ��������,������.������Ϊ99ʱȡ���л�Ա��
as begin
	
	declare @err               int;
	declare @breakpoint        int;
	declare @msg               char(255);
	
	declare @maxpoint          int;      ----��ǰ������ֵ
	declare @initpoint         int;	   ----������ַ�Χ��ʼֵ
	declare @closepoint        int;      ----������ֵ�λĩβֵ
	
	declare @notes              char(255);
	declare @cardmember        int;            ----���ַ�Χ�ڿ�����
	
	select @maxpoint = max(point) from guest   ----��ǰ������ֵ
	select @initpoint=1
	select @closepoint=@point;
	
	while @closepoint<@maxpoint+@point
	begin
		if @cardtype='99'
		begin
			select @cardmember=count(*) 
			from guest a with (nolock),cardtype b with (nolock),cardflag c  with (nolock)
			where a.cardtype=b.cardtype and b.flag=c.flag and c.flag=0 and a.point between @initpoint and @closepoint  ----ֻȡ��Ա��
		end
		else
		begin
			select @cardmember=count(*) 
			from guest a with (nolock),cardtype b with (nolock),cardflag c  with (nolock)
			where a.cardtype=b.cardtype and b.flag=c.flag and c.flag=0 and a.cardtype=@cardtype and a.point between @initpoint and @closepoint  ----ֻȡ��Ա��
		end;

		select @notes = '����ֵ��'+rtrim(cast(@initpoint as char(8)))+'----'+rtrim(cast(@closepoint as char(8)))+'�Ļ�Ա������Ϊ:';
		
		insert into #cardpoint(note,cardmember)
		values (ltrim(rtrim(@notes)),@cardmember);
		
		select @initpoint=@initpoint+@point;
		select @closepoint=@closepoint+@point;
	end;
	
end;

go

if exists (select * from sysobjects where id = object_id('dbo.rp_dailysale') and type = 'P')
  drop procedure dbo.rp_dailysale
GO
create procedure dbo.rp_dailysale @sdate datetime,@lastmonthdate datetime,@shopid  char(4)  --��������,���¶Ա�����,��������

as begin 
	declare   @err      int;
	declare   @msg      varchar(255);
	declare   @BreakPoint	int;
	
	declare   @startdate   datetime;   --���¿�ʼʱ��
	declare   @lastweekdate  datetime; --����ͬ��ʱ��
	declare   @lastmonthdate1  datetime;   --�����ۼ����۽�ֹ����
	declare   @lastmonthstartdate datetime; --���¿�ʼ����
	  
	declare   @DeptLevelID	int;
	declare   @LevelValue	int;
	declare   @sCond        varchar(255);  
	declare   @msaletotal   dec(12,2)   --���µ����������ܶ�
	declare   @cssaletotal   dec(12,2)  --���в��������ܶ�
	declare   @lastweekcssaletotal   dec(12,2)  --����ͬ�ڳ��в��������ܶ�
	declare   @tablename         char(64);
	declare   @monthid              char(20);
	declare   @sql              varchar(255);
	
	
	select @lastweekdate=@sdate-7;          --����ͬ������
	select @sdate=convert (char(8),@sdate,112);
	select @startdate=cast(left(convert(char(8),@SDate,112),6)+'01' as datetime);  --���¿�ʼ����
	select @lastmonthdate1=dateadd(mm,-1,@sdate);  --�����ۼ����۵Ľ�ֹ����
	select @lastmonthstartdate=cast(left(convert(char(8),@lastmonthdate1,112),6)+'01' as datetime);  --���¿�ʼ����
	
	select @DeptLevelID=value from config where name = '�����ż���';
	select @LevelValue=LevelValue from deptlevel where DeptLevelID=@DeptLevelID;
	

	--���㱾���ۼ�����	
	select @breakpoint=527002;
	select @msaletotal=sum(salevalue-discvalue) from rpt_salegroup where convert(char(8),sdate,112) >= @startdate
	       and convert(char(8),sdate,112) <= @sdate and shopid=@shopid;
	select @err=@@error;
	if @err<>0 goto errhandle;
	
	
	--���㱾���������
	select @breakpoint=527003;	
	insert into #dailysale(id,salevalue,salerate,grate)
	select managedeptid,sum(salevalue-discvalue),sum(salerate),
		case sum(salevalue-discvalue) when 0 then 0 else sum(salevalue-discvalue-costvalue)/sum(salevalue-discvalue)*100 end
		from rpt_salegroup
		where convert(char(8),sdate,112)=@sdate and shopid=@shopid and salevalue<>0
		group by managedeptid;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='���㱾�������������'
		goto errhandle;
	end;
	
	--���㱾�ղ��ſ͵�
	select @breakpoint=527004;	
	insert into #dailysale(id,TradeNumber,tradeprice)
	select sgroupid,TradeNumber,tradeprice
		from rpt_cashmanagedept
		where sdate=@sdate and shopid=@shopid and DeptLevelID=@DeptLevelID;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='���㱾�ղ��ſ͵�'
		goto errhandle;
	end;

	--���㱾��DM����
	select @breakpoint=527005;	
	insert into #dailysale(id,dmsalevalue)
	select deptid/@LevelValue,sum(salevalue-discvalue) as dmsalevalue
		from rpt_salepromotion
		where shopid=@shopid and convert(char(8),sdate,112)=@sdate and disctype='m'
		group by deptid/@LevelValue;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='���㱾��DM����'
		goto errhandle;
	end;
	
	--��������ͬ������
	select @breakpoint=527006;	
	insert into #dailysale(id,lastweeksalevalue)
	select managedeptid,sum(salevalue-discvalue)
		from rpt_salegroup
		where convert(char(8),sdate,112)=@lastweekdate and shopid=@shopid and salevalue<>0
		group by managedeptid;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='��������ͬ������'
		goto errhandle;
	end;


	--��������ͬ�ڲ��ſ͵�
	select @breakpoint=527007;	
	insert into #dailysale(id,lastweekTradeNumber,lastweektradeprice)
	select sgroupid,TradeNumber,tradeprice
		from rpt_cashmanagedept
		where convert(char(8),sdate,112)=@lastweekdate and shopid=@shopid and DeptLevelID=@DeptLevelID;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='��������ͬ�ڲ��ſ͵�'
		goto errhandle;
	end;
	
	--��������ͬ������
	select @breakpoint=527008;	
	insert into #dailysale(id,lastmonthsalevalue)
	select managedeptid,sum(salevalue-discvalue)
		from rpt_salegroup
		where convert(char(8),sdate,112)=@lastmonthdate and shopid=@shopid and salevalue<>0
		group by managedeptid;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='��������ͬ������'
		goto errhandle;
	end;
	
	--�������ۼ�����
	select @breakpoint=527009;	
	insert into #dailysale(id,monthsale,monthsalerate,mgrate)
	select managedeptid,sum(salevalue-discvalue),sum(salevalue-discvalue)/@msaletotal*100,sum(salevalue-discvalue-costvalue)/sum(salevalue-discvalue)*100
		from rpt_salegroup
		where convert(char(8),sdate,112) between @startdate and @sdate and shopid=@shopid and salevalue<>0
		group by managedeptid;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='�������ۼ�����'
		goto errhandle;
	end;
	
	--���������ۼ�����
	select @breakpoint=527010;	
	insert into #dailysale(id,lastmonthsale)
	select managedeptid,sum(salevalue-discvalue)
		from rpt_salegroup
		where convert(char(8),sdate,112) between @lastmonthstartdate and @lastmonthdate1 and shopid=@shopid and salevalue<>0
		group by managedeptid;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='���������ۼ�����'
		goto errhandle;
	end;
	
	--������������
	select @breakpoint=527011;	
	select id,name,
		sum(salevalue) salevalue,
		sum(salerate) salerate,
		sum(grate) grate,
		sum(planrate) planrate,
		sum(TradeNumber) TradeNumber,
		sum(tradeprice) tradeprice,
		sum(dmsalevalue) dmsalevalue,
		sum(dmsalerate) dmsalerate,
		sum(lastweeksalevalue) lastweeksalevalue,
		sum(lastweekrate) lastweekrate,
		sum(lastweekTradeNumber) lastweekTradeNumber,
		sum(lastweektradeprice) lastweektradeprice,
		sum(lastmonthsalevalue) lastmonthsalevalue,
		sum(lastmonthrate) lastmonthrate,
		sum(monthsale) monthsale,
		sum(monthsalerate) monthsalerate,
		sum(mgrate) mgrate,
		sum(lastmonthsale) lastmonthsale,
		sum(lastmonthsalerate) lastmonthsalerate
	into #tempdailysale	
	from #dailysale
	group by id,name;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='������������'
		goto errhandle;
	end;
		
	delete from #dailysale where 1=1;
	
	insert into #dailysale
	select * from #tempdailysale;
	
	update #dailysale 
		set dmsalerate=case salevalue when 0 then 0 else dmsalevalue/salevalue*100 end,
		lastweekrate= case lastweeksalevalue when 0 then 100 else (salevalue-lastweeksalevalue)/lastweeksalevalue*100 end,
		lastmonthrate= case lastmonthsalevalue when 0 then 100 else (salevalue-lastmonthsalevalue)/lastmonthsalevalue*100 end,
		lastmonthsalerate= case lastmonthsale when 0 then 100 else (monthsale-lastmonthsale)/lastmonthsale *100 end;
	
	update a set a.name=b.name
	from #dailysale a,sgroup b
	where a.id=b.id;
	
	drop table #tempdailysale;	
                                
  return 0;
    
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End;
Go


if exists (select * from sysobjects where id = object_id('dbo.rp_weeksale') and type = 'P')
  drop procedure dbo.rp_weeksale
GO
create procedure dbo.rp_weeksale  @sdate datetime,@shopid  char(4)

AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  
  declare @startdate    datetime;
  declare @enddate      datetime;
  declare @wstartdate   datetime;
  declare @wenddate     datetime;
  declare @mstartdate   datetime;
  declare @menddate     datetime;
  declare @ylstartdate  datetime;
  declare @lastmonthenddate  datetime;
  declare @lastmonthstartdate datetime;
  declare @wtotalsale   dec(12,2);
  declare @DeptLevelID	int;
  declare @LevelValue	int;
  declare @salecost     dec(12,2);
  
  declare @temp         char(8);
  declare @bool         int;
  
  --����@sdate�����ܵĿ�ʼʱ��ͽ���ʱ��,���һ��Ϊ��ʼ����,�������Ϊ��������
  select @startdate=@sdate-datepart(weekday,@sdate-1)+1;
  select @enddate  =@sdate+(7-datepart(weekday,@sdate-1));
  
  --ȡ������𼶱�
  select @deptlevelid = value from config where name='�����ż���';
  select @LevelValue = LevelValue from DeptLevel where DeptLevelID=@DeptLevelID;
  
  --���㱾���ڵ������ܶ����ռ�ȣ�ë����
  select @breakpoint=525001;
  select @wtotalsale=sum(salevalue-discvalue) 
  	from rpt_salegroup 
  	where shopid=@shopid and convert(char(8),sdate,112) between convert(char(8),@startdate,112) and convert(char(8),@enddate,112);
  
  insert into #weeksale(deptid,weeksale,weekrate,grate)
  select managedeptid,sum(salevalue-discvalue) as weeksale,sum(salevalue-discvalue)/@wtotalsale*100 as weekrate,sum(salevalue-discvalue-costvalue)/sum(salevalue-discvalue)*100 as grate
  from rpt_salegroup
  where convert(char(8),sdate,112) between convert(char(8),@startdate,112) and convert(char(8),@enddate,112)
        and salevalue<>0 and shopid=@shopid
        group by managedeptid;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='���㱾���ڵ�����'
		goto errhandle;
	end;
        
  
  --����ͬ������
  select @wstartdate=convert(char(8),@startdate-7,112);
  select @wenddate  =convert(char(8),@wstartdate+(7-datepart(weekday,@wstartdate-1)),112);
  
  insert into #weeksale(deptid,lastweeksale)
  select managedeptid,sum(salevalue-discvalue)
  from rpt_salegroup
  where convert(char(8),sdate,112) between convert(char(8),@wstartdate,112) and convert(char(8),@wenddate,112)
        and salevalue<>0 and shopid=@shopid
        group by managedeptid;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='����ͬ������'
		goto errhandle;
	end;
        
 
  --����ͬ������
  select @bool=month(@sdate)
  
  if @bool=1
  begin 
  select @mstartdate=convert(char(4),(year(@sdate)-1))+'12'+right(convert(char(8),@startdate,112),2)
  select @menddate=@mstartdate+6
  end;
  else begin
  select @mstartdate=@startdate-30;
  select @menddate=@mstartdate+6
  end;
 
  select @breakpoint=525003;
  insert into #weeksale(deptid,lastmonthsale)
  select managedeptid,sum(salevalue-discvalue)
  from rpt_salegroup
  where convert(char(8),sdate,112) between convert(char(8),@mstartdate,112) and convert(char(8),@menddate,112)
        and salevalue<>0 and shopid=@shopid
        group by managedeptid;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='����ͬ������'
		goto errhandle;
	end;
        
        
  --���ۼ�����
  select @ylstartdate=(left(convert(char(8),@sdate,112),6)+'01')
  
  select @breakpoint=525004;
  insert into #weeksale(deptid,monthsale)
  select managedeptid,sum(salevalue-discvalue)
  from rpt_salegroup
  where convert(char(8),sdate,112) between convert(char(8),@ylstartdate,112) and convert(char(8),@enddate,112)
        and salevalue<>0 and shopid=@shopid
        group by managedeptid;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='���ۼ�����'
		goto errhandle;
	end;
        

  --�����ۼ�����
  
  select @bool=month(@sdate)
  --if exists (month(@sdate))=1
  if @bool=1 begin 
             select @lastmonthstartdate=(convert(char(4),year(@sdate)-1))+'1201' 
             end; 
       else  begin 
             select @lastmonthstartdate= convert(char(6),left(convert(char(8),@sdate,112),6)-1)+'01' 
             end;
  
  select @lastmonthenddate=@lastmonthstartdate+datediff(day,@ylstartdate,@enddate);

  insert into #weeksale(deptid,lastmonthsaletotal)
  select managedeptid,sum(salevalue-discvalue)
  from rpt_salegroup
  where convert(char(8),sdate,112) between convert(char(8),@lastmonthstartdate,112) and convert(char(8),@lastmonthenddate,112)
        and salevalue<>0 and shopid=@shopid
        group by managedeptid;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='�����ۼ�����'
		goto errhandle;
	end;
        
  --�͵����Ϳ͵���
  
  select @breakpoint=525006;
  insert into #weeksale (deptid,tradenumber,tradeprice)
  select SGroupID,sum(TradeNumber),sum(salevalue)/sum(TradeNumber) as TradePrice--�����ܿ�����,Ȼ��ȡƽ���͵���
        from RPT_CashManageDept
        where  DeptLevelID=@DeptLevelID and ShopID=@ShopID and convert(char(8),sdate,112) between convert(char(8),@startdate,112) and convert(char(8),@enddate,112)
        group by SGroupID
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='�͵����Ϳ͵���'
		goto errhandle;
	end;
      
  
  --���ݻ���
  
  select * into #temp1
  from   #weeksale;
  
  delete from #weeksale;
  
  select @breakpoint=525007;
  insert into #weeksale(deptid,name,weeksale,weekrate,grate,lastweeksale,lastweekrate,lastmonthsale,lastmonthrate,monthsale,
                      lastmonthsaletotal,lastmonthsalerate,tradenumber,tradeprice)
  select deptid,name,sum(weeksale),sum(weekrate),sum(grate),sum(lastweeksale),case sum(lastweeksale) when 0 then 100 else (sum(weeksale)-sum(lastweeksale))/sum(lastweeksale)*100 end as lastweekrate,
         sum(lastmonthsale),case isnull(sum(lastmonthsale),0) when 0 then 100 else (sum(weeksale)-sum(lastmonthsale))/sum(lastmonthsale)*100 end as lastmonthrate,sum(monthsale),sum(lastmonthsaletotal),
         case sum(lastmonthsaletotal) when 0 then 100 else (sum(monthsale)-sum(lastmonthsaletotal))/sum(lastmonthsaletotal)*100 end as lastmonthsalerate,sum(tradenumber),sum(tradeprice)
         from #temp1 
         group by deptid,name; 
	 select @err=@@error;
	 if @err<>0 or @err is null
	 begin
		 select @msg='���ݻ���'
		 goto errhandle;
	 end;
         
        
  drop table #temp1;

                        
    return 0;
    
ErrHandle:  
  raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;                          
         
     
end;

GO

if exists (select * from sysobjects where id = object_id('dbo.rp_monthsale') and type = 'P')
  drop procedure dbo.rp_monthsale
GO                              
create procedure dbo.rp_monthsale    @shopid  char(4),@sdate datetime --���          ��������һ�죬�Զ�ת�������·�
as begin
	
	declare @err             int;
	declare @breakpoint      int;
	declare @msg             varchar(255);
	
	declare @monthid         int;   --�±��
	declare @lymonthid       int;   --����ͬ���±��
	declare @lmmonthid       int;   --�����±��
	declare @mclsalevalue    dec(12,2);  --���³��в��������ܶ�
	declare @msalevalue      dec(12,2);
	declare @lmsalevalue     dec(12,2);
	declare @lysalevalue     dec(12,2);
	declare @tradenumber3678   int;
  	declare @DeptLevelID	int;
  	declare @LevelValue	int;	
	
  	--ȡ������𼶱�
  	select @deptlevelid = value from config where name='�����ż���';
  	select @LevelValue = LevelValue from DeptLevel where DeptLevelID=@DeptLevelID;	
	
	--ȡ�±��
	select @monthid=substring(convert(char(8),@sdate,112),1,6);
	
	--ȡ���³��в����ۼ����۽��
	select @breakpoint=110301;
	select @mclsalevalue=sum(salevalue-discvalue) from rpt_salegroup where shopid=@shopid
	       and substring(convert(char(8),sdate,112),1,6)=@monthid;
	select @err=@@error;
	if @err<>0 goto errhandle;
	
	--���㲿�ŵ���ʵ�����۽�ռ�ȣ�ë����ë����
	select @breakpoint=110302;
	insert into #monthsale(groupid,groupname,msalevalue,msalerate,mgvalue,mgrate)
	select b.id,b.name,sum(a.salevalue-a.discvalue) as msalevalue,sum(a.salevalue-a.discvalue)/@mclsalevalue*100 as msalerate,
	       sum(salevalue-discvalue-costvalue) as mgvalue,sum(salevalue-discvalue-costvalue)/sum(a.salevalue-a.discvalue)*100 as mgrate
	from rpt_salegroup a,sgroup b
	where a.managedeptid=b.id and b.deptlevelid=@deptlevelid and a.shopid=@shopid and substring(convert(char(8),sdate,112),1,6)=@monthid
		and a.salevalue<>0
	group by b.id,b.name
	select @err=@@error
	if @err<>0 begin
		select @msg='���㵱���������ݴ���';
		goto errhandle;
	end;
	
	
	--��������ͬ���±��
	select @lymonthid=substring(convert(char(8),@sdate-365,112),1,6);
	
	--��������ͬ�ڲ���������
	select @breakpoint=110303;
	insert into #monthsale(groupid,groupname,lysalevalue)
	select b.id,b.name,isnull(sum(salevalue-discvalue),0) as lysalevalue
	from rpt_salegroup a,sgroup b
	where a.managedeptid=b.id and b.deptlevelid=@deptlevelid and a.shopid=@shopid 
	      and substring(convert(char(8),sdate,112),1,6)=@lymonthid and a.salevalue<>0
	group by b.id,b.name;
	select @msg='��������ͬ�ڲ���������';
	if @@error<>0 goto errhandle;
		
	--���������±��
	if month(@sdate)=1 begin
		select @lmmonthid=cast(year(@sdate)-1 as char(4))+'12';
	end
	else begin
		select @lmmonthid=substring(convert(char(8),@sdate-30,112),1,6);
	end;
	
	--�������²�������
	select @breakpoint=110304;
	insert into #monthsale(groupid,groupname,lmsalevalue)
	select b.id,b.name,isnull(sum(salevalue-discvalue),0) as lmsalevalue
	from rpt_salegroup a,sgroup b
	where a.managedeptid=b.id and b.deptlevelid=@deptlevelid and a.shopid=@shopid 
	      and substring(convert(char(8),sdate,112),1,6)=@lmmonthid and a.salevalue<>0
        group by b.id,b.name;	  
	select @msg='�������²�������';
	if @@error<>0 goto errhandle;
	
	
	--�������ۼƲ������ۣ����ۼ�ë����
	select @breakpoint=110305;
	insert into #monthsale(groupid,groupname,ylgsalevalue,ylgvalue)		
	select b.id,b.name,isnull(sum(salevalue-discvalue),0) as ylgsalevalue,isnull(sum(salevalue-discvalue-costvalue),0) as ylgvalue
	from rpt_salegroup a,sgroup b
	where a.managedeptid=b.id and b.deptlevelid=@deptlevelid and a.shopid=@shopid and year(sdate)=year(@sdate) and month(sdate)<=month(@sdate)
		and a.salevalue<>0
	group by b.id,b.name;
	select @msg='�������ۼ����۳���';
	if @@error<>0 goto errhandle;
	
	--���㵱�²����ۼƿ�����
	select @breakpoint=110306;	
	insert into #monthsale(groupid,groupname,mtnumber)
	select b.id,b.name,sum(tradenumber) as mtnumber
	from rpt_cashmanagedept a,sgroup b
	where a.sgroupid=b.id and b.deptlevelid=@deptlevelid and a.shopid=@shopid and substring(convert(char(8),sdate,112),1,6)=@monthid
	group by b.id,b.name;
	select @msg='�����¿���������';
	if @@error<>0 goto errhandle;

	--���ݺϲ�	
	select @breakpoint=110307;	
	select * into #temp1 from  #monthsale where 1=1;
	delete from #monthsale where 1=1;
	
	insert into #monthsale(groupid,groupname,msalevalue,msalerate,mgvalue,mgrate,lysalevalue,lysjl,lmsalevalue,lmsjl,
	                      ylgsalevalue,ylgvalue,mtnumber,mtprice)
	select groupid,groupname,sum(msalevalue) as msalevalue,sum(msalerate) as msalerate,sum(mgvalue) as mgvalue,sum(mgrate) as mgrate,
	       sum(lysalevalue) as lysalevalue,
	       --(sum(msalevalue)-sum(lysalevalue))/case sum(lysalevalue) when 0 then 1 else sum(lysalevalue) end as lysjl,
	       case sum(lysalevalue) when 0 then 100 else (sum(msalevalue)-sum(lysalevalue))/sum(lysalevalue)*100 end as lysjl,
	       sum(lmsalevalue) as lmsalevalue,
	       --(sum(msalevalue)-sum(lmsalevalue))/case sum(lmsalevalue) when 0 then 1 else sum(lmsalevalue) end as lmsjl,
	       case sum(lmsalevalue) when 0 then 100 else (sum(msalevalue)-sum(lmsalevalue))/sum(lmsalevalue)*100 end as lmsjl,
	       sum(ylgsalevalue) as ylgsalevalue,
	       sum(ylgvalue) as ylgvalue,
	       sum(mtnumber) as mtnumber,
	       --sum(msalevalue)/case sum(mtnumber) when 0 then 1 else sum(mtnumber) end as mtprice
	       case sum(mtnumber) when 0 then 0 else sum(msalevalue)/sum(mtnumber) end as mtprice
	       from #temp1
	       group by groupid,groupname
	select @msg='���ݻ��ܳ���';
	if @@error<>0 goto errhandle;	 
	
	drop table #temp1;
	
	return 0;

errhandle:
        raiserror('%s,�ϵ�=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
        return -1;
end;
GO
--2008
-----------------------------------------------------------------------------------------------------