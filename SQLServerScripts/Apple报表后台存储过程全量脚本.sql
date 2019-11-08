-----------------------------------------------------------------------------------------------------------------
-- $Author:: Jijiang               $  
-- $Date:: 05-06-07 14:19          $  
-- $Modtime:: 05-06-06 17:10       $  
-- $Revision:: 5                   $  
------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------
--Apple Release2 报表后台存储过程全量脚本
--建立: 赵剑  20031009
--执行位置：
--	业务管理中心数据库	AppleCMStock
--	门店进销存数据库	AppleSHStock
--	配送中心数据库		AppleDCStock
--注意：                                
--	1. 执行时请根据执行位置修改选择数据库名称
-----------------------------------------------------------------
--存储过程如下：

--TL_getS_EWeek		输入一日期 返回日期所在周的周一和周末日期
--TL_GetQuarterDate	计算季度起止日期
--TL_GetTablesName	取出所有相关表
--rp_421101 采购订货统计表
--rp_421102 超市进货汇总表
--rp_421103 门店配送/返配单一览表
--rp_421104 批发汇总报告
--rp_421105 门店报损/领用单据一览表
--rp_421107 供应商往来单据一览表
--rp_421108 待结算购销单据一览表
--rp_421109 待结算代销销售汇总表
--rp_423203 负库存报表
--rp_423204 高低库存报表
--rp_423205 库存调整单据一览表
--rp_425101 销售日报表
--rp_425102 小分类销售日报表
--rp_425104 顾客退货商品明细报表
--rp_423430 供应商采购进货月报
--rp_423460 采购员停止进货清单
--rp_423440 特价商品销售分析报表（一）
--rp_419205 总部实时销售查询
--rp_424500 门店商品管理部类业绩/毛利分析
--rp_424510 营业坪效表
--rp_424590 门店补货要求分析
--rp_424600 门店商品周转排行榜
--rp_423500 各门店占比情况及去年同期比
--rp_426710 供应商到货率统计(订货进货到货率缺货率统计)
--rp_426570 当前促销商品售价查询
--rp_424620 高库存金额统计
--rp_427530 验收单金额汇总
--rp_427500 月毛利汇总报表
--rp_427490 累计管理部类损溢汇总
--rp_427480 累计管理部类采购及毛利汇总
--rp_427540 供应商送货金额汇总
--rp_427860 业务单据一览表(未确认)
--rp_427861 业务单据一览表(已确认)
--rp_422410 门店淘汰有库存商品报表
--rp_422420 各门店淘汰商品清单
--rp_422430 管理部类淘汰及新品引进月报
--rp_422440 配送中心和门店淘汰商品库存清单
--rp_422480 配送中心商品库存监控 （CM）
--rp_423410 DM商品促销效果报告
--rp_426440 各机构进销存月报-数量
--rp_427730 商品销售税金明细表
--rp_426450 配送中心出货日报
--rp_427413 商品销售排行榜
--rp_427416 商品负毛利汇总报告
--rp_427417 商品负毛利明细报告
--rp_427512 部门销售成本毛利占比综合分析报告
--rp_427516 大类销售成本毛利占比综合分析报告
--rp_427517 超市内专柜部门销售成本毛利占比综合分析报告
--rp_427513 部门分税率销售成本毛利综合分析报告
--rp_427514 代销部门销售成本毛利综合分析报告
--rp_427515 （购代销）供应商销售成本毛利综合分析报告
--rp_427612 部门专柜供应商销售汇总表
--rp_427613 专柜商品销售汇总表
--rp_427720 业务单据汇总表
--rp_427780 单据售价金额一览表
--rp_423470 门店订货商品在途数日报
--rp_423530 负毛利报表
--rp_427790 大类销售汇总日报表
--rp_426720 订货到货缺货情况明细查询
--rp_423531 产生订货汇总表
--rp_423533 产生收货汇总表
--rp_423535 产生退货汇总表
--rp_424627 产生单品进销存汇总表
--rp_424628 产生单品进销存每日表
--rp_421335 产生供应商进销存汇总表
--rp_421334 产生供应商进销存每日报告
--rp_423537 产生DM促销汇总表

--rp_424629 基本码商品卡消费汇总表
--rp_424630 基本码商品卡消费明细表

--rp_427740 合作档口成本分摊表
--rp_427770 大类商品销售成本分摊表
--rp_427820 购销商品销售/库存明细表
--rp_427830 购销供应商销售/库存汇总表
--rp_427870 商品数量金额明细账
--rp_427871 DM商品促销销售明细报告
--rp_427872 商品进销存汇总表
--rp_429020 负库存记账成本差额明细表
--rp_429030 农副产品收购中类成本税金表

--rp_423539 产生调进价汇总表
--rp_423541 产生调售价汇总表
--rp_423543 产生调会员价汇总表
--rp_424621 产生收银异动汇总表
--rp_424623 产生优惠折扣汇总表
--rp_425103 产生销售明细表

--rp_421205 门店报损/领用商品明细表
--rp_425114 待处理销售日报表

--rp_423440 DM商品促销销售明细报告
--rp_421204 超市退货明细表
--rp_425302 时段收银日报表

--rp_427881 供应商付款评估报表
--rp_427890 商品数量金额明细帐 
--rp_427891 商品三级帐汇总报告
--rp_427892 部门进销存汇总表
--rp_427898 供应商扣项金额汇总表
--rp_427899 快讯商品库存跟踪报表 
--rp_427900 单品业绩考存跟踪报表 
--rp_427901 门店库存周转天数统计表 
--rp_427902  供应商库存周转天数统计表

--rp_429910 收银员效率考核日报

--单品进销存含税日报表(固定表)
--SP_RPTBase1001_Stock 单品进销存含税日报表辅助存储过程
--SP_RPTBase1001 建立单品进销存含税日报表

--getSaleCost 代销结算报表[销售]


--use AppleCMStock
--use AppleSHStock
--use AppleDCStock
go

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO

-----------------------------------------------------------------------------------------
--TL_getS_EWeek	输入一日期 返回日期所在周的周一和周末日期
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
--TL_GetQuarterDate			计算季度起止日期
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.11
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
--取出所有相关表TL_GetTablesName
--参数：开始日期、结束日期、表名、返回表名（以,隔开）
--说明：按开始日期和结束日期取出所有表名，包括原始表名和备份表名，以,隔开
--返回：成功0		断点号(35955X)
--表：
--算法：
--建立：赵剑 2003-8-21 16:03
--修改：何春喜 2007.06.08 如果@begindate大于@enddate抛出异常
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
    select @Msg='取表名时出错！@enddate<@begindate',@BreakPoint=359550;
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
  select @Err=@@Error,@Msg='取表名时出错！',@BreakPoint=359551;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  return 0;
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go
/* 取表名使用举例
declare @tables char(1024);
declare @subTableName char(32);
declare @i int;
exec tl_gettablesname '20030601','20030801','salecost',@tables output
select @tables;

select @tables as tablesname into #427730tmp
while 1=1 begin
    select @i=charindex(',',tablesname) from #427730tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427730tmp;              --没有,取当前值
       select @subTableName;--此处可以写自己的代码
       break;
    end
    else begin 
      select @subTableName=substring(tablesname,1,charindex(',',tablesname)-1) from #427730tmp;
      select @subTableName;--此处可以写自己的代码
      update #427730tmp 
        set tablesname=substring(tablesname,charindex(',',tablesname)+1,len(tablesname)) 
      where 1=1;
    end;
end;

*/

-----------------------------------------------------------------
--rp_421101			采购订货统计表（历史订单情况统计）
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：肖勇 2003.06.13
--修改：胥亮 2003.10.24 取消管理部门必选约束，增加机构编码
--			修正订单状态=100
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

  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420000,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部类权值出错!!';
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

  select @Err=@@Error,@BreakPoint=420020,@msg='从订单取数据时出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  insert into #421101(shopid,managedeptid,sheetidsum,vendersum,goodssum,goodscount,costvalue)
    select shopid,managedeptid,count (distinct sheetid),count(distinct venderid),count(distinct goodsid),
	sum(qty) as count,sum(qty*cost)
	from #xy_temp1 group by shopid,managedeptid;
  select @Err=@@Error,@BreakPoint=420030,@msg='数据写入临时报表时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  drop table #xy_temp1;
  return 0;    
ErrHandle:  
  drop table #xy_temp1;
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

------421102超市进货汇总表
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
   select @Err=@@Error,@BreakPoint=421000,@Msg='建立临时单据表时出错';
   if @Err != 0 goto ErrHandle;
   select @Tempflag=1;

  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=421010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=421020,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
   
  insert into #temp_421102(shopid,sheetid,sheettype,venderid,managedeptid,costtaxrate,costvalue,notaxcostvalue,costtaxvalue)
  select shopid,sheetid,sheettype,venderid,round(deptid/@levelvalue,0),costtaxrate,
          sum(case sheettype when 2323 then costvalue*(-1) else costvalue end),
          sum(case sheettype when 2323 then (costvalue-costtaxvalue)*(-1) else costvalue-costtaxvalue end),
          sum(case sheettype when 2323 then costtaxvalue*(-1) else costtaxvalue end)
          from unbalsheet0 where  sheettype in (2301,2323,5205) and
            checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
            group by shopid,sheetid,sheettype,venderid,round(deptid/@levelvalue,0),costtaxrate;
  select @Err=@@Error,@Msg='取临表数据时出错！',@BreakPoint=421030;          
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  insert into #temp_421102(shopid,sheetid,sheettype,venderid,managedeptid,costtaxrate,costvalue,notaxcostvalue,costtaxvalue)
  select shopid,sheetid,sheettype,venderid,round(deptid/@levelvalue,0),costtaxrate,
          sum(case sheettype when 2323 then costvalue*(-1) else costvalue end),
          sum(case sheettype when 2323 then (costvalue-costtaxvalue)*(-1) else costvalue-costtaxvalue end),
          sum(case sheettype when 2323 then costtaxvalue*(-1) else costtaxvalue end)
          from unbalsheet where sheettype in (2301,2323,5205) and
            checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
            group by shopid,sheetid,sheettype,venderid,round(deptid/@levelvalue,0),costtaxrate;
  select @Err=@@Error,@Msg='取正式表数据时出错！',@BreakPoint=421040;          
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  insert into #421102(shopid,shopname,sheetid,sheettype,managedeptid,managename,costtaxrate,costvalue,costtaxvalue,notaxcostvalue)
  select a.shopid,b.name,a.sheetid,a.sheettype,a.managedeptid,c.name,a.costtaxrate,a.costvalue,a.costtaxvalue,a.notaxcostvalue
  from #temp_421102 a,shop b,sgroup c  where a.shopid=b.id  and a.managedeptid=c.id
  select @Err=@@Error,@BreakPoint=421050;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
                  
  drop table #temp_421102;
  
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_421102;
  return -1;
End
Go 


-----421103门店配送/返配单一览表
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
  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  insert into #temp_421103(shopid,managedeptid,sheetid,costvalue,notaxcostvalue,costtaxvalue)
    select shopid,round(deptid/@levelvalue,0),sheetid,sum(costvalue),sum(costvalue-costtaxvalue),sum(costtaxvalue)
    from UnaccSheet0 where convert(char(10),checkdate,120) between @begindate and @enddate 
         and sheettype=2332  
    group by shopid,round(deptid/@levelvalue,0),sheetid;
    select @Err=@@Error,@Msg='取临时数据出错！！',@BreakPoint=420030;
    if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  insert into #temp_421103(shopid,managedeptid,sheetid,costvalue,notaxcostvalue,costtaxvalue)
    select shopid,round(deptid/@levelvalue,0),sheetid,sum(costvalue),sum(costvalue-costtaxvalue),sum(costtaxvalue)
    from UnaccSheet where convert(char(10),checkdate,120) between @begindate and @enddate 
        and sheettype=2332  
    group by shopid,round(deptid/@levelvalue,0),sheetid;
    select @Err=@@Error,@Msg='取正式数据出错！！',@BreakPoint=420040;
    if (@Err is null) or (@Err!=0)  goto ErrHandle;

  if @sheetflag=1  begin
      insert into #421103(shopid,shopname,managedeptid,managename,sheetid,costvalue,notaxcostvalue,costtaxvalue)
        select a.shopid,c.name,a.managedeptid,b.name,a.sheetid,a.costvalue,a.notaxcostvalue,a.costtaxvalue
        from #temp_421103 a,sgroup b,shop c
        where a.managedeptid=b.id  and a.shopid=c.id and c.shoptype=21;
      select @Err=@@Error,@msg='返回数据时出!!',@BreakPoint=420050;
      if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end else  begin
      insert into #421103(shopid,shopname,managedeptid,managename,sheetid,costvalue,notaxcostvalue,costtaxvalue)
        select a.shopid,c.name,a.managedeptid,b.name,a.sheetid,a.costvalue,a.notaxcostvalue,a.costtaxvalue
        from #temp_421103 a,sgroup b,shop c
        where a.managedeptid=b.id  and a.shopid=c.id and c.shoptype != 21;
      select @Err=@@Error,@msg='返回数据时出!!',@BreakPoint=420060;
      if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end;
  update #421103 set RationType=b.Rationtype
  from #421103 a,Ration b
  where a.sheetid=b.sheetid;
  
  drop table #temp_421103
  return  0;  
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_421103;
  return -1;
End
Go


-----421104 批发汇总报告
--修改：赵剑 2003-10-20 12:30 改名，加入批发客户名称、申请人、审核人、批发标志
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
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=421000,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=421010,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select shopid,shopid2,sheetid,round(deptid/@levelvalue,0) managedeptid,sum(costvalue) costvalue,
         sum(pricevalue) pricevalue,sum(costtaxvalue) costtaxvalue,sum(pricetaxvalue) pricetaxvalue 
         into #temp_421104
         from unaccsheet0 where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
              and sheettype=2451
         group by shopid,shopid2,sheetid,round(deptid/@levelvalue,0) ;
  select @Err=@@Error,@BreakPoint=421030,@msg='取临时单据表数据时出错！！';      
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tempflag=1;
  
  insert into #temp_421104(shopid,shopid2,sheetid,managedeptid,costvalue,pricevalue,costtaxvalue,pricetaxvalue)
  select shopid,shopid2,sheetid,round(deptid/@levelvalue,0) managedeptid,sum(costvalue) costvalue,
         sum(pricevalue) pricevalue,sum(costtaxvalue) costtaxvalue,sum(pricetaxvalue) pricetaxvalue
         from unaccsheet where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
              and sheettype=2451
         group by shopid,shopid2,sheetid,round(deptid/@levelvalue,0);     
          
  select @Err=@@Error,@BreakPoint=421040,@msg='取单据表数据时出错！！';      
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  insert into #421104(shopid,shopname,managedeptid,managename,custno,sheetid,costvalue,notaxcostvalue,
                                        costtaxvalue,pricevalue,notaxpricevalue,pricetaxvalue)
      select a.shopid,b.name,a.managedeptid,c.name,a.shopid2,a.sheetid,a.costvalue,a.costvalue-a.costtaxvalue,
                             a.costtaxvalue,a.pricevalue,a.pricevalue-a.pricetaxvalue,a.pricetaxvalue
                             from  #temp_421104 a,shop b,sgroup c
                             where a.shopid=b.id and a.managedeptid=c.id
  select @Err=@@Error,@msg='返回数据时出错',@BreakPoint=421050;                           
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_421104;
  return -1;
End
Go

-------421105门店报损/领用单据一览表
--修改：赵剑 2003-10-16 10:46 加入申请人、审核人、备注
--修改: cmg 2006-12-06 rp_421205取的是wastebook，此处取的是unaccsheet表。统一为wastebook

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
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=421000,@msg='取管理部门级别时出错！！';
  if @Err!=0  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=421010,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;


select * into #421105Wastebook from Wastebook where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'Wastebook',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42120512;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #421105tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #421105tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #421105tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42120513;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #421105tablename;




  select shopid,sheetid,sheettype,venderid,round(deptid/@levelvalue,0) managedeptid,sum(costvalue) costvalue,
         sum(costtaxvalue) costtaxvalue
         into #temp_421105
         --from unaccsheet0 where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112) 
         --cmg modify
         from #421105Wastebook where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
       
         group by shopid,round(deptid/@levelvalue,0),sheettype,sheetid,venderid ;
  select @Err=@@Error,@BreakPoint=421030,@msg='取临时单据表数据时出错！！';      
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tempflag=1;
  
  --insert into #temp_421105(shopid,sheetid,sheettype,venderid,managedeptid,costvalue,costtaxvalue)
  --select shopid,sheetid,sheettype,venderid,round(deptid/@levelvalue,0) managedeptid,sum(costvalue),sum(costtaxvalue)
  --       from unaccsheet where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
  --            and sheettype in (2413,2423,2473)
  --       group by shopid,round(deptid/@levelvalue,0),sheettype,sheetid,venderid ;
                   
  --select @Err=@@Error,@BreakPoint=421040,@msg='取单据表数据时出错！！';      
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
    
  
  select @Err=@@Error,@msg='返回数据时出错',@BreakPoint=421050;                           
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 drop table #temp_421105;
 return 0;   
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_421105;
  return -1;
End
GO



----421107 供应商往来单据一览表
--修改：赵剑 2003-10-10 12:21 去除重复数据
--修改：魏薇 2003-11-05 修改退货金额显示
-----------------------------------------------------------------
--rp_421107			供应商往来单据一览表存储
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.20
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
 -- 未核算,未结算进销存单据      
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
   select @Err=@@Error,@msg='取未复核数据时出错！！！',@BreakPoint=421000;
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
   select @Err=@@Error,@msg='取未复核数据时出错！！！',@BreakPoint=421010;
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
   select @Err=@@Error,@msg='取已复核数据时出错！！！',@BreakPoint=421020;
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
		
	
----已经结算数据
   insert into #421107tmp(checkdate,sheettype,sheetid,shopid,paytype,hsflag,fkflag,
                                                CostValue,NoTaxCostValue,CostTaxValue,payabledate,billheadsheetid)
      select a.checkdate,a.sheettype,a.sheetid,a.shopid,'g',1,1,
			sum(a.costvalue),sum(a.costvalue-a.costtaxvalue),sum(a.costtaxvalue),convert(char(8),a.payabledate,112),a.BillheadSheetID
			from unpaidsheet a 
			where a.checkdate between convert(char(8),@BeginDate,112) and convert(char(8),@EndDate,112)
			   and  a.venderid = @VenderID
			group by a.checkdate,a.sheettype,a.sheetid,a.shopid,a.payabledate,a.BillheadSheetID;			
     select @Err=@@Error,@msg='取已结算数据时出错！！！',@BreakPoint=421030;
     if (@Err is null) or (@Err!=0)  goto ErrHandle;
---未结算单据     
   insert into #421107tmp(checkdate,sheettype,sheetid,shopid,paytype,hsflag,fkflag,
                                                CostValue,NoTaxCostValue,CostTaxValue,payabledate,billheadsheetid)
      select a.checkdate,a.sheettype,a.sheetid,a.shopid,'g',1,0,
			sum(a.costvalue),sum(a.costvalue-a.costtaxvalue),sum(a.costtaxvalue),convert(char(8),a.payabledate,112),a.BillheadSheetID
			from unpaidsheet0 a 
			where a.checkdate between convert(char(8),@BeginDate,112) and convert(char(8),@EndDate,112)
			       and a.venderid = @VenderID
			group by a.checkdate,a.sheettype,a.sheetid,a.shopid,a.payabledate,a.BillheadSheetID;			
     select @Err=@@Error,@msg='取未结算数据时出错！！！',@BreakPoint=421040;
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tmpflag=1 drop table #421107tmp;
  return -1;
End
Go

-----------421108待结算购销单据一览表
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
  select @Err=@@Error,@BreakPoint=421000,@Msg='建立临时表时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tempflag=1;
  select @begindate=@payabledate-30;
  select @Enddate=@payabledate-30;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 10,'30天前应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and a.payabledate<convert(char(8),@enddate,112)
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421010,@Msg='插入30天以前的数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;


  select @begindate=@payabledate-30;
  select @Enddate=@payabledate-15;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 20,'15天前应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>=convert(char(8),@begindate,112)) 
            and (a.payabledate<convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421020,@Msg='插入15天以前的数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate-15;
  select @Enddate=@payabledate-7;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 30,'7天前应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>=convert(char(8),@begindate,112)) 
            and (a.payabledate<convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421030,@Msg='插入7天以前的数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate-7;
  select @Enddate=@payabledate;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 40,'结算日之前应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>=convert(char(8),@begindate,112)) 
            and (a.payabledate<convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421040,@Msg='结算日之前的数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @begindate=@payabledate;
  select @Enddate=@payabledate;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 50,'结算日应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and a.payabledate=convert(char(8),@begindate,112) 
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421050,@Msg='结算日的数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @begindate=@payabledate;
  select @Enddate=@payabledate+7;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 60,'7天内应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>convert(char(8),@begindate,112)) 
            and (a.payabledate<=convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421060,@Msg='取7天内数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate+7;
  select @Enddate=@payabledate+15;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 70,'15天内应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>convert(char(8),@begindate,112)) 
            and (a.payabledate<=convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421070,@Msg='取15天内数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate+15;
  select @Enddate=@payabledate+30;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 80,'30天内应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>convert(char(8),@begindate,112)) 
            and (a.payabledate<=convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421080,@Msg='取30天内数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate;
  select @Enddate=@payabledate+30;
  insert into #temp_421108(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 90,'30天后应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from unpaidsheet0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and a.payabledate>convert(char(8),@enddate,112)
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421090,@Msg='取30天后数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  if @datasumfalg=1  begin
     insert into #421108(serialno,notes,shopid,shopname,venderid,venname,costvalue,costtaxvalue)
      select serialno,notes,shopid,shopname,venderid,venname,sum(costvalue),sum(costtaxvalue)
      from #temp_421108
      group by serialno,notes,shopid,shopname,venderid,venname;
      select @Err=@@Error,@BreakPoint=421090,@Msg='按供应商返回数据错误!!';
      if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end else begin
     insert into #421108(serialno,notes,shopid,shopname,venderid,venname,costvalue,costtaxvalue)
      select serialno,notes,shopid,shopname,managedeptid,managename,sum(costvalue),sum(costtaxvalue)
      from #temp_421108
      group by serialno,notes,shopid,shopname,managedeptid,managename;
      select @Err=@@Error,@BreakPoint=421090,@Msg='按管理部门返回数据错误!!';
      if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end;
 drop table #temp_421108; 
 return 0;   
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_421108;
  return -1;
End
Go


----------421109待结算代销销售汇总表
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
  select @Err=@@Error,@BreakPoint=421000,@Msg='建立临时表时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tempflag=1;
  select @begindate=@payabledate-30;
  select @Enddate=@payabledate-30;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 10,'30天前应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and a.payabledate<convert(char(8),@enddate,112)
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421010,@Msg='插入30天以前的数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;


  select @begindate=@payabledate-30;
  select @Enddate=@payabledate-15;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 20,'15天前应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>=convert(char(8),@begindate,112)) 
            and (a.payabledate<convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421020,@Msg='插入15天以前的数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate-15;
  select @Enddate=@payabledate-7;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 30,'7天前应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>=convert(char(8),@begindate,112)) 
            and (a.payabledate<convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421030,@Msg='插入7天以前的数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate-7;
  select @Enddate=@payabledate;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 40,'结算日之前应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>=convert(char(8),@begindate,112)) 
            and (a.payabledate<convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421040,@Msg='结算日之前的数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @begindate=@payabledate;
  select @Enddate=@payabledate;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 50,'结算日应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and a.payabledate=convert(char(8),@begindate,112) 
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421050,@Msg='结算日的数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @begindate=@payabledate;
  select @Enddate=@payabledate+7;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 60,'7天内应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>convert(char(8),@begindate,112)) 
            and (a.payabledate<=convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421060,@Msg='取7天内数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate+7;
  select @Enddate=@payabledate+15;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 70,'15天内应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>convert(char(8),@begindate,112)) 
            and (a.payabledate<=convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421070,@Msg='取15天内数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate+15;
  select @Enddate=@payabledate+30;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 80,'30天内应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and (a.payabledate>convert(char(8),@begindate,112)) 
            and (a.payabledate<=convert(char(8),@enddate,112))
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421080,@Msg='取30天内数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  select @begindate=@payabledate;
  select @Enddate=@payabledate+30;
  insert into #temp_421109(serialno,notes,shopid,shopname,venderid,venname,managedeptid,managename,costvalue,costtaxvalue)
      select 90,'30天后应付',a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name,sum(a.costvalue),sum(a.costtaxvalue)
      from balancebook0 a,shop b,vender c,sgroup d
      where a.shopid=b.id and a.venderid=c.venderid and a.managedeptid=d.id
            and a.payabledate>convert(char(8),@enddate,112)
      group by a.shopid,b.name,a.venderid,c.name,a.managedeptid,d.name;      
  select @Err=@@Error,@BreakPoint=421090,@Msg='取30天后数据错误!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  if @datasumfalg=1  begin
     insert into #421109(serialno,notes,shopid,shopname,venderid,venname,costvalue,costtaxvalue)
      select serialno,notes,shopid,shopname,venderid,venname,sum(costvalue),sum(costtaxvalue)
      from #temp_421109
      group by serialno,notes,shopid,shopname,venderid,venname;
      select @Err=@@Error,@BreakPoint=421090,@Msg='按供应商返回数据错误!!';
      if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end else begin
     insert into #421109(serialno,notes,shopid,shopname,venderid,venname,costvalue,costtaxvalue)
      select serialno,notes,shopid,shopname,managedeptid,managename,sum(costvalue),sum(costtaxvalue)
      from #temp_421109
      group by serialno,notes,shopid,shopname,managedeptid,managename;
      select @Err=@@Error,@BreakPoint=421090,@Msg='按管理部门返回数据错误!!';
      if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end;
 drop table #temp_421109; 
 return 0;   
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_421109;
  return -1;
End
Go

-----423203负库存报表
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
   select @Err=@@Error,@BreakPoint=423000,@Msg='建立临时表时出错!!!';
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
   
   select @deptlevel=value from config where name='管理部门级别';
   select @Err=@@Error,@BreakPoint=423010,@msg='取管理部门级别时出错！！';
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
   select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
   select @Err=@@Error,@BreakPoint=423020,@msg='取管理部类权值出错!!';
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
   
   insert into #temp_423203(shopid,managedeptid,goodsid,barcodeid,gname,qty)
   select a.shopid,round(b.deptid/@levelvalue,0),a.goodsid,b.barcodeid,b.name,a.qty
    from inventory a,goods b
    where a.goodsid=b.goodsid and a.shopid=@shopid  and a.qty<=0;
   select @Err=@@Error,@breakPoint=423030,@msg='取明细数据时出错！';
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
   select @tempflag=1;
   
   insert into #423203(shopid,shopame,managedeptid,managename,goodsid,barcodeid,gname,qty,cost,costvalue)
   select a.shopid,b.name,a.managedeptid,c.name,a.goodsid,a.barcodeid,a.gname,a.qty,d.cost,a.qty*d.cost
   from #temp_423203 a,shop b,sgroup c,cost d
   where a.shopid=b.id and a.managedeptid=c.id and a.goodsid=d.goodsid 
   and a.shopid=d.shopid and a.shopid=@shopid and d.flag=0;
   select @Err=@@Error,@breakPoint=423040,@msg='返回明细数据时出错！';
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
   drop table #temp_423203;
  return 0;
  ErrHandle:
    raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 drop table #temp_423203;
    return -1;
End
go

-----423204高低库存报表
--修改： 何春喜 2007-05-28 #5260 东莞天和客户化需求，hightstockdays和LowStockDays从StockDays表取，因为需求每店不同
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
  select @ThisUserID=Value from config where Name='客户代码'
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
   select @Err=@@Error,@Msg='建立临时表时出错!',@BreakPoint=423010;
   if (@Err != 0) or (@Err is null) goto ErrHandle;

   select @deptlevel=value from config where name='管理部门级别';
   select @Err=@@Error,@BreakPoint=423020,@msg='取管理部门级别时出错！！';
   if (@Err != 0) or (@Err is null) goto ErrHandle;
  
   select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
   select @Err=@@Error,@BreakPoint=423030,@msg='取管理部类权值出错!!';
   if (@Err != 0) or (@Err is null) goto ErrHandle;
 ----考虑到取成本用RPT_Base0001而没有用inventory   
 --修改： 何春喜 2007-05-28 #5260 东莞天和客户化需求，hightstockdays和LowStockDays从StockDays表取，因为需求每店不同
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

   select @Err=@@Error,@breakPoint=423040,@msg='返回明细数据时出错！';
   if (@Err != 0) or (@Err is null) goto ErrHandle;
 
   if @checkflag=1 begin
       insert into #423204(shopid,shopname,managedeptid,managename,goodsid,gname,qty,costvalue)
       select a.shopid,b.name,a.managedeptid,b.name,a.goodsid,a.gname,a.qty,a.costvalue
       from #temp_423204 a,shop b,sgroup c
       where a.shopid=b.id and a.managedeptid=c.id and a.qty>a.dms* a.highstockdays;
       select @Err=@@Error,@BreakPoint=423050,@Msg='返回高库存数据出错!';
       if (@Err != 0) or (@Err is null) goto ErrHandle;
    end else begin
       insert into #423204(shopid,shopname,managedeptid,managename,goodsid,gname,qty,costvalue)
       select a.shopid,b.name,a.managedeptid,b.name,a.goodsid,a.gname,a.qty,a.costvalue
       from #temp_423204 a,shop b,sgroup c
       where a.shopid=b.id and a.managedeptid=c.id and a.qty<a.dms* a.lowstockdays;
       select @Err=@@Error,@BreakPoint=423060,@Msg='返回高库存数据出错!';
       if (@Err != 0) or (@Err is null) goto ErrHandle;
   end;  

  drop table #temp_423204;
  return 0;
  ErrHandle:
    raiserror('%s,断点=%d,Err=%d',19,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 drop table #temp_423204;
    return -1;
End
GO

----423205库存调整单据一览表
--修改：赵剑 20031018 加入申请人、审核人、备注、是否产生供应商金额调整单
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
   select @Err=@@Error,@BreakPoint=423000,@Msg='建立临时表时出错!!!';
  if (@Err != 0) or (@Err is null) goto ErrHandle;

  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=423010,@msg='取管理部门级别时出错！！';
  if (@Err != 0) or (@Err is null) goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=423020,@msg='取管理部类权值出错!!';
  if (@Err != 0) or (@Err is null) goto ErrHandle;
  if @sheettype=1 begin
      insert into #temp_423205(shopid,managedeptid,sheettype,sheetid,costvalue,notaxcostvalue,costtaxvalue)
      select shopid,round(deptid/@levelvalue,0),sheettype,sheetid,sum(costvalue),sum(costvalue-costtaxvalue),sum(costtaxvalue)
         from unaccsheet0 where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         and sheettype in (2432,2431,2445)
         group by shopid,round(deptid/@levelvalue,0),sheettype,sheetid,venderid ;
      select @Err=@@Error,@BreakPoint=421030,@msg='取临时单据表数据时出错！！';      
      if (@Err != 0) or (@Err is null) goto ErrHandle;
  
      insert into #temp_423205(shopid,managedeptid,sheettype,sheetid,costvalue,notaxcostvalue,costtaxvalue)
      select shopid,round(deptid/@levelvalue,0),sheettype,sheetid,sum(costvalue),sum(costvalue-costtaxvalue),sum(costtaxvalue)
         from unaccsheet where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         and sheettype in (2432,2431,2445)
         group by shopid,round(deptid/@levelvalue,0),sheettype,sheetid,venderid ;
      select @Err=@@Error,@BreakPoint=421040,@msg='取正式单据表数据时出错！！';      
      if (@Err != 0) or (@Err is null) goto ErrHandle;
  end else begin
      insert into #temp_423205(shopid,managedeptid,sheettype,sheetid,costvalue,notaxcostvalue,costtaxvalue)
      select shopid,round(deptid/@levelvalue,0),sheettype,sheetid,sum(costvalue),sum(costvalue-costtaxvalue),sum(costtaxvalue)
         from unaccsheet0 where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         and sheettype=@sheettype
         group by shopid,round(deptid/@levelvalue,0),sheettype,sheetid,venderid ;
      select @Err=@@Error,@BreakPoint=421050,@msg='取临时单据表数据时出错！！';      
      if (@Err != 0) or (@Err is null) goto ErrHandle;
  
      insert into #temp_423205(shopid,managedeptid,sheettype,sheetid,costvalue,notaxcostvalue,costtaxvalue)
      select shopid,round(deptid/@levelvalue,0),sheettype,sheetid,sum(costvalue),sum(costvalue-costtaxvalue),sum(costtaxvalue)
         from unaccsheet where checkdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         and sheettype=@sheettype
         group by shopid,round(deptid/@levelvalue,0),sheettype,sheetid,venderid ;
      select @Err=@@Error,@BreakPoint=421060,@msg='取正式单据表数据时出错！！';      
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
  select @Err=@@Error,@msg='返回数据时出错',@BreakPoint=421070;                           
  if (@Err != 0) or (@Err is null) goto ErrHandle;
 drop table #temp_423205;
 return 0;   
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_423205;
  return -1;
End
GO



--------425101销售日报表
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

  select @Err=@@Error,@msg='建立临时表时出错！',@breakpoint=425000; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  select @tempflag=1;
  
  select @salevalue=sum(salevalue-discvalue) from RPT_SaleGroup 
                       where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112);
  select @Err=@@Error,@breakPoint=425010,@msg='取汇总数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  insert into #temp_425101_a(shopid,truevalue) 
         select shopid,sum(salevalue-discvalue) from RPT_SaleGroup
         where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         group by  shopid;
  select @Err=@@Error,@breakPoint=425020,@msg='取分店汇总数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;

  insert into #temp_425101_b(shopid,managedeptid,salevalue,discvalue,truevalue) 
         select shopid,managedeptid,sum(salevalue),sum(discvalue),sum(salevalue-discvalue) from RPT_SaleGroup 
         where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         group by  shopid,managedeptid;
  select @Err=@@Error,@breakPoint=425030,@msg='取分店汇总数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  insert into #temp_425101(shopid,managedeptid,salevalue,truevalue,stvalue,cmvalue,discvalue)
       select a.shopid,a.managedeptid,a.salevalue,a.truevalue,b.truevalue,@salevalue,a.discvalue
       from #temp_425101_b a,#temp_425101_a b
       where a.shopid=b.shopid;
  select @Err=@@Error,@breakPoint=425040,@msg='生成临时数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  insert into #425101(shopid,shopname,managedeptid,managename,salevalue,discvalue,truevalue,managedeptzb,shopzb)
             select a.shopid,b.name,a.managedeptid,c.name,a.salevalue,a.discvalue,a.truevalue,100*a.truevalue/a.stvalue,100*a.stvalue/a.cmvalue
             from #temp_425101 a,shop b,sgroup c
             where a.shopid=b.id and a.managedeptid=c.id;
  select @Err=@@Error,@breakPoint=425050,@msg='返回数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
         
  drop table #temp_425101;
  drop table #temp_425101_a;
  drop table #temp_425101_b;
  return 0;
  ErrHandle:
    raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 begin
       drop table #temp_425101;
       drop table #temp_425101_a;
       drop table #temp_425101_b;
    end;   
    return -1;
End

GO

-----425102小分类销售日报表
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
    
  select @Err=@@Error,@msg='建立临时表时出错！',@breakpoint=425000; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  select @tempflag=1;
     
  execute @LevelValue=TL_ManageDeptGene;
  if @LevelValue <= 0 begin
	select @Err=0;
	select @BreakPoint=425010;
	select @Msg='产生管理部类的计算因子错误!';
	goto ErrHandle;
  end;
  insert into #temp_425102_a(shopid,managedeptid,deptid,salevalue,discvalue,truevalue) 
         select shopid,round(deptid/@levelvalue,0),deptid,sum(salevalue),sum(discvalue),sum(salevalue-discvalue) from RPT_SaleDept
         where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         group by  shopid,round(deptid/@levelvalue,0),deptid;
  select @Err=@@Error,@breakPoint=425020,@msg='取分店汇总数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;

  insert into #temp_425102_b(shopid,truevalue) 
         select shopid,sum(salevalue-discvalue) from RPT_SaleDept
         where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         group by  shopid;
  select @Err=@@Error,@breakPoint=425030,@msg='取分店汇总数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;

  insert into #temp_425102_c(shopid,managedeptid,truevalue) 
         select shopid,round(deptid/@levelvalue,0),sum(salevalue-discvalue) from RPT_SaleDept
         where sdate between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
         group by  shopid,round(deptid/@levelvalue,0);
  select @Err=@@Error,@breakPoint=425040,@msg='取分店汇总数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  insert into #temp_425102(shopid,deptid,salevalue,truevalue,stvalue,mvalue,discvalue,managedeptid)
       select a.shopid,a.deptid,a.salevalue,a.truevalue,b.truevalue,c.truevalue,a.discvalue,c.managedeptid
       from #temp_425102_a a,#temp_425102_b b,#temp_425102_c c
       where a.shopid=b.shopid and a.shopid=c.shopid and a.managedeptid=c.managedeptid;
       
  select @Err=@@Error,@breakPoint=425050,@msg='生成临时数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  insert into #425102(shopid,shopname,deptid,deptname,salevalue,discvalue,truevalue,stsalerate,msalerate,managedeptid)
             select a.shopid,b.name,a.deptid,c.name,a.salevalue,a.discvalue,a.truevalue,100*a.truevalue/a.stvalue,100*a.truevalue/a.mvalue,a.managedeptid
             from #temp_425102 a,shop b,dept c
             where a.shopid=b.id and a.deptid=c.id;
  select @Err=@@Error,@breakPoint=425060,@msg='返回数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
         
  drop table #temp_425102;
  drop table #temp_425102_a;
  drop table #temp_425102_b;
  drop table #temp_425102_c;
  return 0;
  ErrHandle:
    raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 begin
       drop table #temp_425102;
       drop table #temp_425102_a;
       drop table #temp_425102_b;
       drop table #temp_425102_c;
    end;   
    return -1;
End
GO


----供应商采购进货月报(423430)［业务中心、门店］
----采购员停止进货清单(423460)［业务中心、门店］

-----------------------------------------------------------------------------------------
----供应商采购进货月报（423430）
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
  select @Err=@@Error,@msg='拼写年月出错';
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
  select @Err=@@Error,@msg='数据插入查询表出错';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  return 0;   
ErrHandle:

  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------------------------------
---采购员停止进货清单(423460) 
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
    select @Err=@@Error,@msg='建立临时表时出错！';
   if (@Err is null) or (@Err !=0) goto ErrHandle;
   select @tempflag=1;
   select @BreakPoint=423010;
   
   if @selecttype=0 begin
      select @startdate=@sdate;
      select @enddate=@sdate;
   end else if @selecttype=1 begin
      execute @Err=TL_getS_EWeek @Sdate,@startdate output,@enddate output;
   end;
   select @err=@@Error,@msg='计算开始结束日期错误';
   if @Err !=0 goto ErrHandle;
   
   select @BreakPoint=423010;
   if @selecttype in (0,1) begin
     insert into #temp_423460(sdate,goodsid)
            select a.checkdate,b.goodsid from updategoods a,updategoodsitem b
            where  a.sheetid=b.sheetid and b.uflag=1 and b.flag=1 
            and a.checkdate between @startdate and @enddate
            group by a.checkdate,b.goodsid;            
     select @err=@@Error,@msg='查询日周数据出错';       
     if (@Err is null) or (@Err !=0) goto ErrHandle;
   end else begin
     select @BreakPoint=423020;
     insert into #temp_423460(sdate,goodsid)
            select a.checkdate,b.goodsid from updategoods a,updategoodsitem b
            where  a.sheetid=b.sheetid and b.uflag=1 and b.flag=1 
            and year(a.checkdate)=year(@sdate) and month(a.checkdate)=month(@sdate);
     select @err=@@Error,@msg='查询月数据出错';       
     if (@Err is null) or (@Err !=0) goto ErrHandle;
   end;   
   select @BreakPoint=423030;  
   insert into #423460(stopdate,shopid,shopname,goodsid,gname,logistics,spec,closeqty,closevalue)
          select a.sdate,d.shopid,c.name,a.goodsid,b.name,e.logistics,b.spec,d.qty,d.costvalue
          from #temp_423460 a,goods b,shop c,shopsstock d,goodsshop e
          where a.goodsid=b.goodsid and a.goodsid=d.goodsid and a.goodsid=e.goodsid
            and c.id=d.shopid and d.goodsid=e.goodsid and d.shopid=e.shopid
  select @Err=@@Error,@msg='处理输出数据错误';          
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  drop table #temp_423460;
  return 0;   
ErrHandle:
  if @tempflag=1 drop table #temp_423460;
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

--公司门店
-----------------------------------------------------------------
--rp_423440			特价商品销售分析报表（一）		
--参数：日期
--返回：标志0=成功		断点号(99999XXX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.07
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
	select @Msg='计算月起止日期错误';
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
 	
  --从单据中取出促销对应时间
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go

-----------------------------------------------------------------
--rp_419205			实时销售查询		
--参数：日期
--返回：标志0=成功		断点号(99999XXX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.07
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
     
  --取出上传门店
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go 	
 	

-----------------------------------------------------------------
--rp_424500			门店商品管理部类业绩/毛利分析
--参数：日期
--返回：标志0=成功		断点号(999992XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.11
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go

-----------------------------------------------------------------
--rp_424510			营业坪效表
--参数：日期
--返回：标志0=成功		断点号(999992XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.11
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
  --@Flag: 1=月 2=季 3=年
  if @Flag=1 execute @Err=TL_GetMonthDate @SDate,@BeginDate out,@EndDate out
  else 
  if @Flag=2 begin--季
  	execute TL_GetQuarterDate @Sdate ,@begindate  output,@enddate  output
  end
  else begin--年
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go

-----------------------------------------------------------------
--rp_424590			门店补货要求分析(在门店使用)
--参数：日期,周、月标志 (1=周,2=月)
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.13
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
  if @Flag=1  begin--周
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
  	if @RowCount<>0 begin--补货数量取单据数量和当前库存
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
  else begin--月
  	execute @Err=TL_GetMonthDate @SDate,@BeginDate out,@EndDate out;
  	select @MonthID=Year(@SDate)*100+Month(@SDate)
  	insert into #424590(GoodsID,GName,MakeUpAskQty,ReceiptQty,Spec,Qty)
  		select A.GoodsID,A.Name,0,B.ReceiptQty,A.Spec,0
  		from Goods A,RPT_Base0003 B
  		where A.GoodsID=B.GoodsID and B.MonthID=@MonthID and B.ReceiptQty<>0;
  	select @Err=@@Error,@RowCount=@@RowCount;
        if @Err != 0 goto ErrHandle;
        select @BreakPoint = 9999311
  	if @RowCount<>0 begin--补货数量取单据数量和当前库存
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go
 
 
 -----------------------------------------------------------------
--rp_424600			门店商品周转排行榜
--参数：日期,查询方式
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.13
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
  --@Flag: 1=月  2=年
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
  	--计算 TOInventory
  	select @BreakPoint = 9999365
  	Update #temp_424600  set TOInventory =0 where 1=1;
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  	--计算今年到今天的天数
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go

-----------------------------------------------------------------
--rp_423500			各门店占比情况及去年同期比
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.20
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
  
  declare @MonthID		int;--今年月号
  declare @MonthID1		int;--去年月号
  

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999350
  select @MonthID=Year(@SDate)*100+Month(@SDate);
  select @MonthID1=(Year(@SDate)-1)*100+Month(@SDate);    
  
  --查询写入今年数据
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
  --查询写入去年数据
  insert into #423500(ShopID,ShopName,ManageDeptID,ManageName,SaleValue1,SaleRate1,SaleValue2,
  	SaleRate2,amplitude1,MaoLi1,MaoLiRate1,MaoLi2,MaoLiRate2,amplitude2)
  	select ShopID,'11',ManageDeptID,'-1',0,0,SaleValue,
  	SaleRate,0,0,0,(SaleValue-SaleCost),Round((SaleValue-SaleCost)/(SaleValue+0.00000001),2),0
  	from RPT_Base0023
  	where MonthID=@MonthID1;  
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  select @BreakPoint = 9999380
  --计算增幅
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
  	set ShopName='未知'
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
  	set ManageName='未知'
  	where ManageName='-1'  
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  	  
    	
  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go 



-----------------------------------------------------------------
--rp_426710			供应商到货率统计(订货进货到货率缺货率统计)
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.20
--修改：胥亮 取消待收货商品进入统计范围；修正日期判断问题；
--	增加赠品比较；限制为普通订单取值范围
--	增加送货地
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
  
  --取出订货商品、数量，限制为普通定单，并且不写入待验收的订货单
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
  --取出到货商品数量
  select A.ShopID,A.VenderID,B.GoodsID,Sum(B.Qty) as Qty,sum(b.PresentQty) PresentQty
  	into #temp2
  	from receipt A,receiptItem B
  	where A.SheetID=B.SheetID and A.RefSheetID in (select distinct RefSheetID from #temp1)
		and ReceiptFlag=0 and Flag=100
  	group by A.ShopID,A.VenderID,B.GoodsID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999370
  --插入订货数	
  insert into #426710(ShopID,VenderID,PurchaseQty,ReceiptQty,OrderPresentQty,PresentQty,diffQty,PurchaseGoodsQty,receiptGoodsQty,
  	diffGoodsQty,Rate1,Rate2,Rate3,Rate4)
  	select ShopID,VenderID,sum(Qty),0,sum(PresentQty),0,0,0,0,
  	0,0,0,0,0
  	from #temp1 group by ShopID,VenderID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999380
    
  --计算到货数
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

  --计算品项数  
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go 

-----------------------------------------------------------------
--rp_426570			当前促销商品售价查询
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.21
--修改：赵剑 2003-10-30 11:43 限制开始日期小于等于今天
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go 

--rp_424620 高库存金额统计
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
	select @Msg='产生管理部类的计算因子错误!';
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
     select @Err=@@Error,@msg='准备商品资料时错误！！！';
     if (@Err is null) or (@Err !=0) goto ErrHandle;
  end;
  else begin
     select @Breakpoint=423015;
     select @MonthID=Year(@SDate)*100+Month(@SDate);
     insert into #424620(shopid,shopname,managedeptid,goodsid,gname,costv)
     select a.shopid,b.name,round(c.deptid/@managelevel,0),a.goodsid,c.name,SumCloseCostV 
     from  RPT_Base0003 a,shop b,goods c
     where monthid=@monthid and a.shopid=b.id and a.goodsid=c.goodsid;
     select @Err=@@Error,@msg='准备商品资料时错误！！！';
     if (@Err is null) or (@Err !=0) goto ErrHandle;
  end;   
  return 0;   
ErrHandle:

  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go



-----------------------------------------------------------------
--rp_427530			验收单金额汇总
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.25
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
  declare @Begindate		datetime;--月初
  declare @Enddate		datetime;--月末

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='计算月起止日期错误';
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
  	select ShopID,shopname,'分店合计',sum(CostValue)
  	from #427530
  	group by ShopID,shopname
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;  
 	
  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go 


-----------------------------------------------------------------
--rp_427500			月毛利汇总报表
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.25
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
  declare @Begindate		datetime;--月初
  declare @Enddate		datetime;--月末
  declare @MaoLi		dec(12,2);--总毛利

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='计算月起止日期错误';
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
  	select ShopID,ShopName,'分店合计',sum(MaoLi),0.00
  	from #427500 group by ShopID,ShopName
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999040
  select @MaoLi=0
  select @MaoLi=sum(MaoLi)  from #427500 where sgroupID='分店合计'
  if @MaoLi<>0 begin
  	select @BreakPoint = 9999045
  	update  #427500
  		set rate=Round(MaoLi/@MaoLi,2)
  		where sgroupID='分店合计'
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  end
  
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
 	
  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go 


-----------------------------------------------------------------
--rp_427490			累计管理部类损溢汇总
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.25
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
  declare @Begindate		datetime;--月初
  declare @Enddate		datetime;--月末
  declare @SaleValue		dec(12,2);--总销售额

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='计算月起止日期错误';
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
  
  --计算占比
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
  --分店合计
  insert into #427490(ShopID,shopname,sgroupID,PromSaleValue,PriceSaleValue,diffSaleValue,Rate)
  	select ShopID,shopname,'分店合计',sum(PromSaleValue),sum(PriceSaleValue),sum(diffSaleValue),0
  	from #427490
  	group by ShopID,shopname
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999040
  --分店占比
  select @SaleValue=0 
  select @SaleValue=sum(PromSaleValue)   from #427490 where sgroupID='分店合计';
  if @SaleValue<>0 begin
  	update #427490
  		set Rate=Round(PromSaleValue/@SaleValue,2)
  		where sgroupID='分店合计';
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  end
    
 	
  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go
 
 
-----------------------------------------------------------------
--rp_427480			累计管理部类采购及毛利汇总
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.25
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
  declare @Begindate		datetime;--月初
  declare @Enddate		datetime;--月末
  declare @SaleValue		dec(12,2);--总销售额

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='计算月起止日期错误';
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
  --计算计划毛利
  update  #427480
  	set targetMaoLi=Round(A.SaleValue*B.target/100,2)
  	from #427480 A,CMTargetDept B
  	where A.shopid=B.shopid and A.sgroupID=B.deptid and B.salemonth=year(@SDate)
  --毛利损益
  update  #427480
  	set diffMaoLi=MaoLi-targetMaoLi
  	where targetMaoLi<>0
  --分店合计
  insert into #427480(ShopID,ShopName,sgroupID,SaleValue,CostValue,targetMaoLi,MaoLi,diffMaoLi,Rate)
  	select ShopID,ShopName,'分店合计',sum(SaleValue),sum(CostValue),sum(targetMaoLi),sum(MaoLi),sum(diffMaoLi),0
  	from #427480 group by ShopID,ShopName
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999040
  select @SaleValue=0
  select @SaleValue=sum(SaleValue)  from #427480 where sgroupID='分店合计'
  if @SaleValue<>0 begin
  	select @BreakPoint = 9999045
  	update  #427480
  		set rate=Round(SaleValue/@SaleValue,2)
  		where sgroupID='分店合计'
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  end
  
 	
  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go


 
 -----------------------------------------------------------------
--rp_427540			供应商送货金额汇总
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.25
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
  declare @Begindate		datetime;--月初
  declare @Enddate		datetime;--月末

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='计算月起止日期错误';
	goto ErrHandle;
  end
  select @BreakPoint = 9999010
  --计算验收单
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
  
  --计算订单数量
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go

--427860 业务单据一览表(未确认)
--报表说明 08.26 与晏琮确认   未确认是指未审核
--合计是指大类合计,本月合计是指所有合计
--查询日期是指本月到查询日期止
--单据中没有部类信息的取goods表部类
--目前只取 商品验收单、商品调拨单、商品退货单、商品调进价单据、商品盘长盘短单、商品削价（报损）单
--数据来源取所有单据中数据
--单据日期取制单日期
 
 -----------------------------------------------------------------
--rp_427860			业务单据一览表(未确认)
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.26
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
  declare @Begindate		datetime;--月初
  declare @Enddate		datetime;--月末
  declare @LevelValue		int;
  declare @value		dec(12,2);--总金额

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='计算月起止日期错误';
	goto ErrHandle;
  end
  select @BreakPoint = 9999010
  
  select @levelvalue=1
  select @levelvalue=levelvalue from deptlevel where deptlevelid=1
  if @levelvalue is null or @levelvalue=0 select @levelvalue=1;
  
  --验收单
  select @BreakPoint = 9999015
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2301,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.Cost*B.Qty) as Value,a.shopid
  	from receipt0 a,receiptitem0 b
  	where a.sheetid=b.sheetid and a.editdate>=@BeginDate and a.editdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999020
  
  --商品调拨单 (取转出店,售价,转出数量)
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2342,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.OutPrice*B.OutQty) as Value,a.outshopid
  	from Transfer0 a,Transferitem0 b
  	where a.sheetid=b.sheetid and a.editdate>=@BeginDate and a.editdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.outshopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999025
  --商品退货单
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2323,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.Cost*B.PlanQty) as Value,a.shopid
  	from ret0 a,retitem0 b
  	where a.sheetid=b.sheetid and a.editdate>=@BeginDate and a.editdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999030
  --商品调进价单据(金额写零)
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2261,floor(c.DeptID/@LevelValue) as SGroupID,0,a.shopid
  	from costupd0 a,costupditem0 b,goods c
  	where a.sheetid=b.sheetid and a.editdate>=@BeginDate and a.editdate<=@sDate and b.goodsid=c.goodsid
  	group by A.SheetID,floor(c.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999035
  --商品盘长盘短单
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2444,A.ManageDeptID,sum(c.ContractCost*B.Qty) as Value,a.shopid
  	from PDYK0 a,PDYKitem0 b,cost c,config d
  	where a.sheetid=b.sheetid and a.editdate>=@BeginDate and a.editdate<=@sDate 
  	and d.name='本店号' and c.shopid=d.value and b.goodsid=c.goodsid and c.flag=0
  	group by A.SheetID,A.ManageDeptID,a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999040
  --商品削价单
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2503,floor(c.DeptID/@LevelValue) as SGroupID,sum(B.NewPrice*B.CheckQty),a.shopid
  	from cut0 a,cutitem0 b,goods c
  	where a.sheetid=b.sheetid and a.editdate>=@BeginDate and a.editdate<=@sDate and b.goodsid=c.goodsid
  	group by A.SheetID,floor(c.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999045	
  --商品报损单(售价)
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2413,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.Price*B.checkQty) as Value,a.shopid
  	from lost0 a,lostitem0 b
  	where a.sheetid=b.sheetid and a.editdate>=@BeginDate and a.editdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  --插入部类合计
  select @BreakPoint = 9999050	
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  	select '合计:',SheetType,SGroupID,sum(Value),ShopID
  	from #427860
  	group by SheetType,SGroupID,ShopID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999055	
  --取总合计
  insert into #427860(SheetID,SheetType,SGroupID,Value,shopid)
  	select '本月累计:',SheetType,'',sum(Value),ShopID
  	from #427860 where SheetID='合计:'
  	group by SheetType,ShopID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  	 	
  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go



--427860 业务单据一览表(已确认)
--报表说明 08.26 与晏琮确认   已确认是指未审核
--合计是指大类合计,本月合计是指所有合计
--查询日期是指本月到查询日期止
--单据中没有部类信息的取goods表部类
--目前只取 商品验收单、商品调拨单、商品退货单、商品调进价单据、商品盘长盘短单、商品削价（报损）单
--数据来源取所有单据中数据
--单据日期取审核日期

 
 -----------------------------------------------------------------
--rp_427861			业务单据一览表(已确认)
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.26
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
  declare @Begindate		datetime;--月初
  declare @Enddate		datetime;--月末
  declare @LevelValue		int;
  declare @value		dec(12,2);--总金额

  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @BreakPoint = 9999005
  execute @Err=TL_GetMonthDate @SDate,@BeginDate out, @EndDate out
  if @Err <> 0 or @Err is null or @@error != 0 or @@error is null begin
	select @Msg='计算月起止日期错误';
	goto ErrHandle;
  end
  select @BreakPoint = 9999010
  
  select @levelvalue=1
  select @levelvalue=levelvalue from deptlevel where deptlevelid=1
  if @levelvalue is null or @levelvalue=0 select @levelvalue=1;
  
  --验收单
  select @BreakPoint = 9999015
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2301,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.Cost*B.Qty) as Value,a.shopid
  	from receipt a,receiptitem b
  	where a.sheetid=b.sheetid and a.checkdate>=@BeginDate and a.checkdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999020
  
  --商品调拨单 (取 costvalue)
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2342,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.costvalue) as Value,a.outshopid
  	from Transfer a,Transferitem b
  	where a.sheetid=b.sheetid and a.checkdate>=@BeginDate and a.checkdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.outshopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999025
  --商品退货单
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2323,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.Cost*B.realQty) as Value,a.shopid
  	from ret a,retitem b
  	where a.sheetid=b.sheetid and a.checkdate>=@BeginDate and a.checkdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999030
  --商品调进价单据(金额写零)
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2261,floor(c.DeptID/@LevelValue) as SGroupID,0,a.shopid
  	from costupd a,costupditem b,goods c
  	where a.sheetid=b.sheetid and a.checkdate>=@BeginDate and a.checkdate<=@sDate and b.goodsid=c.goodsid
  	group by A.SheetID,floor(c.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999035
  --商品盘长盘短单
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2444,A.ManageDeptID,sum(B.Cost*B.Qty) as Value,a.shopid
  	from PDYK a,PDYKCostitem b
  	where a.sheetid=b.sheetid and a.checkdate>=@BeginDate and a.checkdate<=@sDate 
  	group by A.SheetID,A.ManageDeptID,a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999040
  --商品削价单
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2503,floor(c.DeptID/@LevelValue) as SGroupID,sum(B.Cost*B.Qty),a.shopid
  	from cut a,cutitem b,goods c
  	where a.sheetid=b.sheetid and a.checkdate>=@BeginDate and a.checkdate<=@sDate and b.goodsid=c.goodsid
  	group by A.SheetID,floor(c.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999045	
  --商品报损单
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  select A.SheetID,2413,floor(B.DeptID/@LevelValue) as SGroupID,sum(B.Price*B.Qty) as Value,a.shopid
  	from lost a,lostitem b
  	where a.sheetid=b.sheetid and a.checkdate>=@BeginDate and a.checkdate<=@sDate
  	group by A.SheetID,floor(B.DeptID/@LevelValue),a.shopid
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  --插入部类合计
  select @BreakPoint = 9999050	
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  	select '合计:',SheetType,SGroupID,sum(Value),ShopID
  	from #427861
  	group by SheetType,SGroupID,ShopID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999055	
  --取总合计
  insert into #427861(SheetID,SheetType,SGroupID,Value,shopid)
  	select '本月累计:',SheetType,'',sum(Value),ShopID
  	from #427861 where SheetID='合计:'
  	group by SheetType,ShopID
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  	 	
  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go


--422410 门店淘汰有库存商品报表
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
  (GoodsID		int		null,		--编码
   GoodsName		char(64)	null,		--中文名
   Spec			char(16)	null,		--商品规格
   UnitName		char(8)		null,		--售卖单位
   Package		char(8)		null,		--销售包装
   Price		dec(10,2)	null,		--执行售价(用于当前执行的正常价或促销价)
   Qty			dec(12,3)	null,		--结存数量（金额帐商品为参考数量）
   ClearDate		datetime 	default getdate(),	--停止销售日期
   Logistics		int		default 1 not null,	--送货方式:1=直送 2=直通 3=配送
   VenderID		int		null,		--供应商编号
   VenderName		char(64)	null,		--供应商名称
   Note			char(64)  	null
   );
  select @Err=@@Error,@BreakPoint=422410,@Msg='建立临时单据表时出错';
  if @Err != 0 goto ErrHandle;
  select @Tempflag=1;
  
  insert into #temp_422410(goodsid,goodsname,spec,unitname,package,price,qty,Logistics,Venderid,VenderName)
    select gs.goodsid,g.name,g.spec,g.unitname,g.package,gs.Price,0,gs.Logistics,c.Venderid,v.Name
    from goodsshop gs,goods g,cost c,Vender v
    where gs.flag=2 and gs.shopid=@shopid and gs.goodsid=g.goodsid
      and gs.goodsid=c.goodsid and c.flag=0
      and c.venderid=v.venderid and c.shopid=gs.shopid;
  select @Err=@@Error,@Msg='取临时表数据时出错！',@BreakPoint=422411;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #temp_422410 set qty=ss.qty
    from #temp_422410 a,shopsstock ss
    where a.goodsid=ss.goodsid and ss.shopid=@shopid
  select @Err=@@Error,@Msg='取临时表数据时出错！',@BreakPoint=422412;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  insert into #422410 select * from #temp_422410;
  drop table #temp_422410;
  
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_422410;
  return -1;
End
Go 

--422420 各门店淘汰商品清单
-----------------------------------------------------------------
--rp_422420			各门店淘汰商品清单
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：施华均 2003.08.20
--修改：魏薇 2003.11.05 将库存售价金额改为成本金额，修改平均成本计算
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
   ShopID		char(4)		null,			--机构编码
   ShopName		char(16)	null,			--机构名称
   deptID		int		null,			--部类编码
   deptName		char(16)	null,			--部类名称
   GoodsID		int		null,			--编码
   GoodsName		char(64)	null,			--中文名
   Spec			char(16)	null,			--商品规格
   UnitName		char(8)		null,			--售卖单位
   Package		char(8)		null,			--销售包装
   Cost 		dec(10,2)	null,			--平均进价(qtycost/qty)
   Qty			dec(16,4)	null,			--结存数量（金额帐商品为参考数量）
   QtyCost		dec(16,4)	null,			--结存成本（金额帐商品为参考数量）
   SaleDate		datetime 	null,			--最近销售日期
   Logistics		int		default 1 not null,	--送货方式:1=直送,2=直通,3=配送
   VenderID		int		null,			--供应商编号
   VenderName		char(64)	null,			--供应商名称
   Note			char(64)  	null
   ); 
  select @Err=@@Error,@BreakPoint=422420,@Msg='建立临时单据表时出错';
  if @Err != 0 goto ErrHandle;
  select @Tempflag=1;
  
  insert into #temp_422420(shopid,deptid,goodsid,goodsname,spec,unitname,package,cost,qty,qtycost,Logistics,Venderid,VenderName)
    select gs.shopid,g.deptid,gs.goodsid,g.name,g.spec,g.unitname,g.package,0.00,0.0000,0.0000,gs.Logistics,c.Venderid,v.Name
    from goodsshop gs,goods g,cost c,Vender v
    where gs.flag=2 and gs.goodsid=g.goodsid
      and gs.goodsid=c.goodsid and c.flag=0
      and c.venderid=v.venderid and c.shopid=gs.shopid;
  select @Err=@@Error,@Msg='取临时表数据时出错！',@BreakPoint=422411;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #temp_422420 set qty=ss.qty,qtycost=ss.costvalue 
    from #temp_422420 a,shopsstock ss
    where a.goodsid=ss.goodsid and a.shopid=ss.shopid
  select @Err=@@Error,@Msg='取库存数量时出错！',@BreakPoint=422412;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #temp_422420 set Cost=QtyCost/Qty where qty<>0;
  
  update #temp_422420 set shopname=s.name
    from #temp_422420 a,shop s
    where a.shopid=s.id
  select @Err=@@Error,@Msg='取机构名称时出错！',@BreakPoint=422414;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #temp_422420 set saledate=d.saledate
    from #temp_422420 a,LatelyGoodsList d
    where a.goodsid=d.goodsid and a.shopid=d.shopid
  select @Err=@@Error,@Msg='取最近销售日期时出错！',@BreakPoint=422415;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=422416,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=422417,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #temp_422420 set deptid=deptid/@levelvalue,deptname=s.name
    from #temp_422420 a,sgroup s
    where a.deptid/@levelvalue=s.id;
  select @Err=@@Error,@Msg='取部类信息时出错！',@BreakPoint=422418;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  insert into #422420 select * from #temp_422420;
  drop table #temp_422420;
  
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_422420;
  return -1;
End
Go



--422430 管理部类淘汰及新品引进月报
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
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=422000,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=422010,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  create table #temp_422430
  (shopid	char(4)		null,		--机构编码
   shopName	char(16)	null,		--机构名称
   sGroupID	int		null,		--管理部类编码
   sGroupName	char(16)	null,		--管理部类名称
   WashCount	int		null,		--淘汰数量
   NewCount	int		null,		--新品数量
   StockCount	int		null		--库存计数
  );

  select @tempflag=1;   

--取总数
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
--取店名
update #temp_422430 set shopName=s.Name
  from #temp_422430 a,shop s
  where a.shopid=s.id

--取淘汰商品
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

--取新品
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

  --WashRate	char(8)		null,		--淘汰率
  --NewRate	dec(5,2)	null		--新品引进率
  insert into #422430(shopid,shopname,sgroupid,sgroupname,
      washcount,newcount,stockcount,washrate,newrate)
    select shopid,shopname,sgroupid,sgroupname,washcount,newcount,stockcount,
      cast(cast(washcount as dec(8,2))/cast(stockcount as dec(8,2)) as dec(5,2)),
      cast(cast(newcount as dec(8,2))/cast(stockcount as dec(8,2)) as dec(5,2))
    from #temp_422430;
  select @Err=@@Error,@BreakPoint=422070,@msg='数据写入临时报表时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  drop table #temp_422430;
 return 0;    
ErrHandle:
  
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_422430;
  return -1;
End
Go
  
--422440 配送中心和门店淘汰商品库存清单
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
  (shopid	char(4)		null,		--机构编码
   shopName	char(16)	null,		--机构名称
   WashCount	int		null,		--淘汰品种数
   WashValue	dec(10,4)	null,		--淘汰品库存金额
   GoodsCount	int		null,		--商品品种数
   GoodsValue	dec(10,4)	null		--商品金额
   );
   
  select @Err=@@Error,@BreakPoint=422440,@Msg='建立临时单据表时出错';
  if @Err != 0 goto ErrHandle;
  select @Tempflag=1;
  
insert into #temp_422440(shopid,shopName,WashCount,WashValue,GoodsCount,GoodsValue)
select distinct gs.shopid,s.name,0,0,0,0  
  from goodsshop gs,shop s
  where gs.flag=2 and gs.shopid=s.id
    and s.shoptype>10 and s.shoptype<90
  order by gs.shopid

--取商品总数和总库存金额
select gs.shopid,count(gs.goodsid) gcount
  into #422440tmp1
  from goodsshop gs,shop sh
  where gs.flag<3 and gs.shopid=sh.id and sh.shoptype>10 and sh.shoptype<90
  group by gs.shopid

select shopid,sum(costValue) sumValue
  into #422440tmp2
  from shopsstock
  group by shopid

--取淘汰品种数和库存金额
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

--更新临时表数据
update #temp_422440 set WashCount=b.washcount,WashValue=c.washValue,
  GoodsCount= d.gcount,GoodsValue=e.sumValue
  from #temp_422440 a,#422440tmp10 b,#422440tmp20 c,#422440tmp1 d,#422440tmp2 e
  where a.shopid=b.shopid and a.shopid=c.shopid 
    and a.shopid=d.shopid and a.shopid=e.shopid
    
drop table #422440tmp10;
drop table #422440tmp1;
drop table #422440tmp20;
drop table #422440tmp2;
    
  select @Err=@@Error,@Msg='取临时表数据时出错！',@BreakPoint=422411;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --WashCRate	dec(10,4)	null,		--淘汰品种数占比
  --WashVRate	dec(10,4)	null,		--淘汰品金额占比
  
  insert into #422440(shopid,shopName,WashCount,WashValue,WashCRate,WashVRate)
    select shopid,shopName,WashCount,WashValue,
      cast(cast(washcount as dec(8,2))/cast(GoodsCount as dec(8,2)) as dec(5,2)),
      cast(cast(WashValue as dec(8,2))/cast(GoodsValue as dec(8,2)) as dec(5,2))
    from #temp_422440;

  drop table #temp_422440;
  return 0;
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_422440;
  return -1;
End
Go 

--422480 配送中心商品库存监控 （CM）
--修改：赵剑 2003-10-23 11:13 重写，由DM商品库存监控改为所有商品库存监控
--      加入部类信息、促销标志、售价库存金额
--修改：王树军 2006.03.16 修改类别名称长度为char(40)
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
  (GoodsID	int		null,			--商品编码
   Barcodeid	char(13)	null,			--商品条码
   GoodsName	char(64)	null,			--商品名称
   Spec		char(16)	null,			--商品规格
   deptid	int		null,			--类别编码
   deptname	char(40)	default '' null,	--类别名称
   StockQty	dec(16,4)	default 0 null,		--配送中心库存
   PriceValue	dec(16,4)	default 0 null,		--售价库存金额
   DayOutQty	dec(16,4)	default 0 null,		--日均出货数
   DaySaleQty	dec(16,4)	default 0 null,		--日均销售数
   OpenMakeupQty	dec(16,4)	default 0 null,	--在途补货数量(向公司申请补货并已经批准的数量)
   OpenOrderQty		dec(16,4)	default 0 null,	--在途订货数量(已发出订单的订货数量) 
   OpenRationQty	dec(16,4)	default 0 null,	--在途配送数量(已配送出库的出货数量) 
   VenderID	int		null,			--供应商编号
   VenderName	char(64)	null,			--供应商名称
   Promflag	int		default 0 null		--促销标志：0=正常,1=调售价/促销调售价,2=DM促销
   );
  select @Err=@@Error,@BreakPoint=42248010,@Msg='建立临时单据表时出错';
  if @Err != 0 goto ErrHandle;
  select @Tempflag=1;
  
  select @localShopID=Value from config where Name='本店号';
  select @defaultStock=Value from config where Name='默认配送仓库';
  select @Err=@@Error,@Msg='取配置时出错！',@BreakPoint=42248011;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42248012,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42248013,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
insert into #temp_422480(goodsid,Barcodeid,goodsName,Spec,deptid,StockQty)
  select g.goodsid,g.barcodeid,g.Name,g.spec,g.deptid/@levelvalue,isNull(ss.Qty,0)
    from goods g,shopsstock ss
    where g.goodsid*=ss.goodsid and ss.shopid=@defaultStock 
select @Err=@@Error,@BreakPoint=42248020,@msg='取库存时出错!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;

update #temp_422480 set deptname=sg.name
  from #temp_422480 a,sgroup sg
  where a.deptid=sg.id
select @Err=@@Error,@BreakPoint=42248030,@msg='取部类信息时出错!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;

update #temp_422480 set Venderid=c.venderid,VenderName=v.name
  from #temp_422480 a,cost c,Vender v
  where a.goodsid=c.goodsid and c.shopid=@defaultStock 
    and c.flag=0 and c.venderid=v.venderid
select @Err=@@Error,@BreakPoint=42248032,@msg='取默认供应商信息时出错!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;

update #temp_422480 set DayOutQty=d.NDMS,OpenMakeupQty=d.OpenMakeupQty,
    OpenOrderQty=d.OpenOrderQty,OpenRationQty=d.OpenRationQty
  from #temp_422480 a,demand d
  where a.goodsid=d.goodsid and d.shopid=@defaultStock
select @Err=@@Error,@BreakPoint=42248035,@msg='取各项指数时出错!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;

select d.goodsid,sum(d.NDMS) DaySaleQty into #422480tmp2
  from demand d,shop s
  where d.shopid=s.id and s.shoptype>10 and s.shoptype<21
  group by d.goodsid
select @Err=@@Error,@BreakPoint=42248040,@msg='取日均销售时出错!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;  
update #temp_422480 set DaySaleQty=b.DaySaleQty
  from #temp_422480 a, #422480tmp2 b
  where a.goodsid=b.goodsid;
select @Err=@@Error,@BreakPoint=42248040,@msg='取日均销售时出错!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;
drop table #422480tmp2;

update #temp_422480 set Promflag=1 where goodsid in (
    select distinct goodsid from promotion where sheettype=2271)
select @Err=@@Error,@BreakPoint=42248050,@msg='取普通促销标志出错!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;
update #temp_422480 set Promflag=2 where goodsid in (
    select distinct goodsid from promotion where sheettype=2512)
select @Err=@@Error,@BreakPoint=42248051,@msg='取DM促销标志出错!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;

update #temp_422480 set PriceValue=a.stockqty*b.price
  from #temp_422480 a,goodsshop b
  where a.goodsid=b.goodsid and b.shopid=@defaultstock;
select @Err=@@Error,@BreakPoint=42248055,@msg='取售价库存金额时出错!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;

insert into #422480
  select goodsid,barcodeid,goodsname,spec,deptid,deptname,stockQty,PriceValue,DayOutQty,DaySaleQty,
    StockQty/(case DayOutQty when 0 then 1 else DayOutQty end),
    StockQty/(case DaySaleQty when 0 then 1 else DaySaleQty end),
    OpenMakeupQty,OpenOrderQty,OpenRationQty,VenderId,VenderName,Promflag
  from #temp_422480  
select @Err=@@Error,@BreakPoint=42248060,@msg='返回数据时出错!!';
if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #temp_422480;
  
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_422480;
  return -1;
End


Go


--423410 DM商品促销效果报告
--修改：赵剑 2003-10-28 15:47 加入邮报商品综合贡献度计算
--修改：赵剑 2003-11-4 17:52 重新计算贡献度，防止除零错误
--邮报商品综合贡献度计算公式:
--	30%×（大类销售数占比÷品种数占比）+40%×（大类销售额占比÷品种数占比）+30%×（大类毛利额占比÷品种数占比）
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
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=423410,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=423411,@msg='取管理部类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select * into #tmpPromotionPlan from NowPromotionPlan0;
  insert into #tmpPromotionPlan(SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
      PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime)
    select SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
      PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime from NowPromotionPlan;   
  select @begindate=min(PriceBeginDate),@enddate=max(PriceEndDate) 
    from #tmpPromotionPlan 
    where PlanID=@PlanID and ShopID=@ShopID;
  select @Err=@@Error,@BreakPoint=423412,@msg='取促销计划起止日期出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  select @preBeginDate=dateadd(mm,-1,@begindate);--取上月起始日期
  select @preEndDate=dateadd(mm,-1,@enddate);--取上月结束日期
  
  create table #temp_423410
  (sGroupID	int		null,		--管理部类编码
   sGroupName	char(16)	null,		--管理部类名称
   DMGoodsNum	int		default 0  null,		--DM商品品种数
   DMSaleNum	int		default 0  null,		--DM动销商品数
   DMSaleQty	dec(16,4)	default 0  null,		--DM商品销售数总和
   DMSaleValue	dec(16,4)	default 0  null,		--DM商品销售额总和
   DMCost	dec(16,4)	default 0  null,		--DM动销商品成本金额
   SaleGoodsNum	int		default 0  null,		--动销商品品种数
   SaleQty	dec(16,4)	default 0  null,		--管理部类商品超市销售数
   SaleValue	dec(16,4)	default 0  null,		--管理部类商品超市销售额
   SaleCost	dec(16,4)	default 0  null,		--超市动销商品成本金额
   GoodsNum	int		default 0  null,		--管理部类商品品种数
   PreMonValue	dec(16,4)	default 0  null			--上月同期管理部类商品销售额
  );
  select @tempflag=1;   
  insert into #temp_423410(sGroupId,sGroupName,GoodsNum)
    select sg.id sgid,sg.name sgname,count(g.goodsid) GoodsNum 
      from goods g,sgroup sg
      where sg.id*=(g.deptid/@levelvalue)
        and sg.deptlevelid=@deptlevel
        group by sg.id,sg.name
        order by sgid;
--从日报表取数据
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

--建临时表
--本月大类销售统计
  select * into #423410RPT_Base from RPT_Base0001 where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #423410tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #423410tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #423410tmp;              --没有,取当前值
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
  
--上月大类销售统计
  select * into #423410RPT_Base2 from RPT_Base0001 where 1=2;--建临时表
  exec tl_gettablesname @preBeginDate,@preEndDate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #423410tmp7
  while 1=1 begin
    select @i=charindex(',',tablesname) from #423410tmp7;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #423410tmp7;              --没有,取当前值
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

--更新最终报表记录
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_423410;
  return -1;
End
Go


--426440 各机构进销存月报-数量
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
  select @Err=@@Error,@Msg='取日期时出错！',@BreakPoint=426440;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  if @begindate is Null select @begindate=getdate();
  if @enddate is Null select @enddate=getdate();
  
  select * into #426440RPT_Base from RPT_Base0001 where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #426440tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #426440tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #426440tmp;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取基础数据时出错！',@BreakPoint=426447;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #426440 set preQty=b.CloseQty 
    from #426440 a,#426440RPT_Base b 
    where a.goodsid=b.goodsid and b.sdate=@begindate-1;
  select @Err=@@Error,@Msg='取期初数时出错！',@BreakPoint=426448;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  if month(getdate())=month(@enddate) begin
    select @closedate=max(sdate) from #426440RPT_Base
  end
  else select @closedate=@enddate;

  update #426440 set CloseQty=b.CloseQty 
    from #426440 a,#426440RPT_Base b 
    where a.goodsid=b.goodsid and b.sdate=@closedate;
  
  select @Err=@@Error,@Msg='取期末数时出错！',@BreakPoint=426449;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go 

--427730 商品销售税金明细表(门店、公司)
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
  select @Err=@@Error,@Msg='取日期时出错！',@BreakPoint=427730;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  if @begindate is Null select @begindate=getdate();
  if @enddate is Null select @enddate=getdate();
  select * into #427730SaleCost from SaleCost where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'salecost',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=427731;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427730tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427730tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427730tmp;              --没有,取当前值
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
  
  select @Taxflag=value from config where name='进价是否含税';
  select @Err=@@Error,@Msg='取进价是否含税配置时出错！',@BreakPoint=427733;
  if @Taxflag is null goto ErrHandle;
    

  insert into #427730
  select a.goodsid,a.deptid,g.barcodeid,g.name,g.agroflag,
      sum(a.qty),max(a.price),sum(a.costValue),sum(a.SaleValue-a.discValue),
      max(a.costtaxRate),max(a.SaleTaxRate),0,0
    from #427730SaleCost a,goods g
    where a.goodsid=g.goodsid
    group by a.goodsid,a.deptid,g.barcodeid,g.name,g.agroflag
    order by a.goodsid
  select @Err=@@Error,@Msg='取临时表数据时出错！',@BreakPoint=427734;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427730SaleCost;  
  if (@TaxFlag=0) --不含税进价
    update #427730 set CostTaxValue=CostValue*CostTaxRate/100,SaleTaxValue=SaleValue*SaleTaxRate/100;
  else		--含税进价
    update #427730 
      set 
        CostTaxValue=CostValue*CostTaxRate/(100+CostTaxRate*(1-AgroFlag)),
        SaleTaxValue=SaleValue*SaleTaxRate/100+SaleTaxRate; 
  
  select @Err=@@Error,@Msg='取临时表数据时出错！',@BreakPoint=427735;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go


--426450 配送中心出货日报
--修改：赵剑 2003-10-23 9:58 加入部类信息
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
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42645010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42645011,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @shopid=Value from config where name='默认配送仓库';
  select * into #426450RPT_Base from RPT_Base0001 where 1=2;--建临时表
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
  select @Err=@@Error,@Msg='取基础数据时出错！',@BreakPoint=426447;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #426450RPT_Base;
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go 



--427416 商品负毛利汇总报告
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
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=427416,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=427423,@msg='取管理部类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select * into #427416RPT_Base from RPT_Base0001 where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=427433;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427416tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427416tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427416tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=427443;
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
    Promflag	int		null,			--促销标志（0=无促销,1=有促销）                          
    cost	dec(10,2)	default 0 null,		--平均进价
    Price	dec(10,2)	default 0 null,		--平均售价
    beginDate	datetime	null,			--负毛利开始销售日期
    LastDate	datetime	null,			--负毛利最近销售日期
    NSaleDay	int		null,			--负毛利销售天数
    SaleQty	dec(12,2)	default 0 null,		--销售数量
    SaleValue	dec(12,2)	default 0 null,		--销售额
    SaleCost	dec(12,2)	default 0 null,		--成本金额
    NValue	dec(12,2)	default 0 null,		--负毛利金额
    NGPRate	dec(12,2)	default 0 null,		--负毛利率
    CloseQty	dec(15,2)	default 0 null,		--当前结存数量
    CValue	dec(15,2)	default 0 null,		--当前结存库存进销差价金额
    Venderid	int		null,               	--默认供应商
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
  select @Err=@@Error,@BreakPoint=427451,@msg='取基础数据出错！';  
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #427416tmp set NValue=SaleValue-SaleCost,NGPRate=(SaleValue-SaleCost)*100/(case SaleValue when 0 then 1 else SaleValue end)
    from #427416tmp;
    
  update #427416tmp set cost=c.cost, venderid=c.venderid
    from #427416tmp a,cost c
    where c.shopid=a.Shopid and a.goodsid=c.goodsid and c.flag=0;
  select @Err=@@Error,@BreakPoint=427452,@msg='取进价和供应商信息出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #427416tmp set Price=gs.Price
    from #427416tmp a,goodsshop gs
    where gs.shopid=a.Shopid and a.goodsid=gs.goodsid;
  select @Err=@@Error,@BreakPoint=427453,@msg='取售价信息出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #427416tmp set Price=SaleValue/SaleQty,cost=SaleCost/SaleQty
    from #427416tmp where SaleQty>0;
  select @Err=@@Error,@BreakPoint=427453,@msg='计算平均进价和平均售价出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #427416tmp set CloseQty=ss.Qty,CValue=ss.Qty*(Price-cost)
    from #427416tmp a,shopsstock ss
    where ss.shopid=a.Shopid and a.goodsid=ss.goodsid;
  select @Err=@@Error,@BreakPoint=427454,@msg='取当前库存信息出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  insert into #427416 select * from #427416tmp order by shopid,deptid,goodsid;
  drop table #427416tmp;
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427416tmp;
  return -1;
End
Go 

--427417 商品负毛利明细报告
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
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=427417,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=427423,@msg='取管理部类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select * into #427417RPT_Base from RPT_Base0001 where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=427433;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427417tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427417tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427417tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=427443;
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
    Promflag	int		null,			--促销标志（0=无促销,1=有促销）                          
    cost	dec(10,2)	default 0 null,		--平均进价
    Price	dec(10,2)	default 0 null,		--平均售价
    beginDate	datetime	null,			--负毛利开始销售日期
    LastDate	datetime	null,			--负毛利最近销售日期
    SaleQty	dec(12,2)	default 0 null,		--销售数量
    SaleValue	dec(12,2)	default 0 null,		--销售额
    SaleCost	dec(12,2)	default 0 null,		--成本金额
    NValue	dec(12,2)	default 0 null,		--负毛利金额
    NGPRate	dec(12,2)	default 0 null,		--负毛利率
    CloseQty	dec(15,2)	default 0 null,		--当日结存数量
    CValue	dec(15,2)	default 0 null,		--当日结存库存进销差价金额
    Venderid	int		null,               	--默认供应商
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
  select @Err=@@Error,@BreakPoint=427451,@msg='取基础数据出错！';  
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #427417tmp set NValue=SaleValue-SaleCost,NGPRate=(SaleValue-SaleCost)*100/(case SaleValue when 0 then 1 else SaleValue end)
    from #427417tmp;
    
  update #427417tmp set cost=c.cost, venderid=c.venderid
    from #427417tmp a,cost c
    where c.shopid=a.Shopid and a.goodsid=c.goodsid and c.flag=0;
  select @Err=@@Error,@BreakPoint=427452,@msg='取进价和供应商信息出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #427417tmp set Price=gs.Price
    from #427417tmp a,goodsshop gs
    where gs.shopid=a.Shopid and a.goodsid=gs.goodsid;
  select @Err=@@Error,@BreakPoint=427453,@msg='取售价信息出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #427417tmp set Price=SaleValue/SaleQty,cost=SaleCost/SaleQty
    from #427417tmp where SaleQty>0;
  select @Err=@@Error,@BreakPoint=427453,@msg='计算平均进价和平均售价出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #427417tmp set CValue=CloseQty*(Price-cost)
    from #427417tmp;
  
  insert into #427417 select * from #427417tmp order by shopid,deptid,goodsid;
  drop table #427417tmp;
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427417tmp;
  return -1;
End
Go 


--427512 部门销售成本毛利占比综合分析报告
-----------------------------------------------------------------
--rp_427512		部门销售成本毛利占比综合分析报告
--参数：日期段、机构编码、
--	大区类别编码（大富豪为1：卖场购代销商品、2：卖场专柜区、3：大百货）
--说明：
--返回：成功0		断点号(427512XX)
--表：
--算法：
--建立：赵剑 2003-9-24 9:53
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
  declare @sgroupvalue	int;		--大区类别权值
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42751210,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42751211,@msg='取管理部类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--大富豪大区类别权值，跟@sgroupid对应
  select * into #427512RPT_Base from RPT_Base0001 where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42751212;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427512tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427512tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427512tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42751213;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427512tablename;
  create table #427512Goodstmp
  ( 
    GoodsID	int		null,		--商品编码
    DeptID	int		null,		--部类编号
    AgroFlag	int		default 0 null,	--是否免税农产品(0=不是 1=是)
    SaleQty	dec(16,4)	default 0 null,	--销售数量
    SaleValue	dec(16,4)	default 0 null,	--含税销售金额
    NSaleValue	dec(16,4)	default 0 null,	--无税销售金额
    SaleCost	dec(16,4)	default 0 null,	--含税成本金额
    NSaleCost	dec(16,4)	default 0 null,	--无税成本金额
    SaleTaxRate	dec(5,2)	default 0 null,	--当前销项税
    CostTaxRate	dec(5,2)	default 0 null,	--当前进项税
  )
  select @tempflag=1;
  create table #427512tmp
  ( 
    deptID	int		null,		--部类编码
    deptName	char(16)	null,		--部类名称
    SaleValue	dec(16,4)	default 0 null,	--含税销售金额
    NSaleValue	dec(16,4)	default 0 null,	--无税销售金额
    SaleCost	dec(16,4)	default 0 null,	--含税成本金额
    NSaleCost	dec(16,4)	default 0 null,	--无税成本金额
    GPValue	dec(16,4)	default 0 null,	--含税毛利
    NGPValue	dec(16,4)	default 0 null,	--无税毛利
    GPRate	dec(5,2)	default 0 null,	--含税毛利率
    NGPRate	dec(5,2)	default 0 null,	--无税毛利率
    SaleRate	dec(5,2)	default 0 null,	--销售占比（课占大区的比）
    GPRRate	dec(5,2)	default 0 null,	--毛利占比（课占大区的比）
  )
  select @tempflag=2;

  --清理不属于本大区的数据
  delete from #427512RPT_Base where goodsid in (select goodsid from goods where deptid/@sgroupvalue<>@sgroupid);
  select @Err=@@Error,@Msg='取基本数据时出错！',@BreakPoint=42751214;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --准备单品基础数据
  insert into #427512Goodstmp(GoodsID,SaleQty,Salevalue,SaleCost)
    select GoodsID,SaleQty,Salevalue,SaleCost from #427512RPT_Base
  select @Err=@@Error,@Msg='取单品基础数据时出错！',@BreakPoint=42751220;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --取单品的销项税、农产品标识、进项税
  update #427512Goodstmp set SaleTaxRate=isNull(b.SaleTaxRate,0),AgroFlag=b.AgroFlag,DeptID=b.DeptID
    from #427512Goodstmp a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='取单品销项税时出错！',@BreakPoint=42751221;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #427512Goodstmp set CostTaxRate=isNull(b.CostTaxRate,0)
    from #427512Goodstmp a,cost b
    where a.goodsid=b.goodsid and b.shopid=@shopid;
  select @Err=@@Error,@Msg='取单品进项税时出错！',@BreakPoint=42751222;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --计算单品无税和含税金额（须按一定公式计算，还需考虑是否免税农产品）
  update #427512Goodstmp
    set NSaleValue=SaleValue*100/(100+SaleTaxRate),
        NSaleCost=(SaleCost*(100-CostTaxRate*AgroFlag))/(100+CostTaxRate*(1-AgroFlag));
  select @Err=@@Error,@Msg='计算单品无税和含税金额时出错！',@BreakPoint=42751223;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  --准备部类基础数据
  insert into #427512tmp
    select deptid/@levelvalue,'',sum(SaleValue),sum(NSaleValue), 
           sum(SaleCost),sum(NSaleCost),0,0,0,0,0,0
    from #427512Goodstmp
    group by deptid/@levelvalue;
  select @Err=@@Error,@Msg='准备部类基础数据时出错！',@BreakPoint=42751224;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427512Goodstmp;
  
  --计算部类毛利（包括无税、含税）
  update #427512tmp 
    set GPValue=SaleValue-SaleCost,NGPValue=NSaleValue-NSaleCost
  select @Err=@@Error,@Msg='计算部类毛利时出错！',@BreakPoint=42751225;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --计算部类毛利率（无税、含税）
  update #427512tmp 
    set GPRate=isNull(GPValue,0)*100/(case SaleValue when 0 then 1 else SaleValue end),
        NGPRate=isNull(NGPValue,0)*100/(case NSaleValue when 0 then 1 else NSaleValue end);
  select @Err=@@Error,@Msg='计算部类毛利率时出错！',@BreakPoint=42751226;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @sumSaleValue=sum(SaleValue) from #427512tmp;
  select @sumGPValue=sum(GPValue) from #427512tmp;
  if @sumSaleValue=0 select @sumSaleValue=1;
  if @sumGPValue=0 select @sumGpValue=1;
  --计算销售占比
  update #427512tmp set SaleRate=(SaleValue/@sumSaleValue)*100,GPRRate=(GPValue/@sumGPValue)*100;
  select @Err=@@Error,@Msg='计算销售占比时出错！',@BreakPoint=42751226;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --填入部类名称
  update #427512tmp set DeptName=sg.Name
    from #427512tmp a,sgroup sg
    where a.deptid=sg.id;
  
  insert into #427512 select * from #427512tmp order by deptid;
  drop table #427512tmp;
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427512Goodstmp;
  if @tempflag=2 begin
    drop table #427512Goodstmp;
    drop table #427512tmp;
   end; 
  return -1;
End
Go 


--427516 大类销售成本毛利占比综合分析报告
-----------------------------------------------------------------
--rp_427516		大类销售成本毛利占比综合分析报告
--参数：日期段、机构编码、
--	大区类别编码（大富豪为1：卖场购代销商品、2：卖场专柜区、3：大百货）
--说明：
--返回：成功0		断点号(427516XX)
--表：
--算法：
--建立：赵剑 2003-9-24 15:02
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
  declare @sgroupvalue	int;		--大区类别权值
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42751610,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42751611,@msg='取管理大类权值出错!';
  select @levelvalue=1000;		--大富豪大类权值
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--大富豪大区类别权值，跟@sgroupid对应
  select * into #427516RPT_Base from RPT_Base0001 where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42751612;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427516tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427516tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427516tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42751613;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427516tablename;
  create table #427516Goodstmp
  ( 
    GoodsID	int		null,		--商品编码
    DeptID	int		null,		--大类编号
    AgroFlag	int		default 0 null,	--是否免税农产品(0=不是 1=是)
    SaleQty	dec(16,4)	default 0 null,	--销售数量
    SaleValue	dec(16,4)	default 0 null,	--含税销售金额
    NSaleValue	dec(16,4)	default 0 null,	--无税销售金额
    SaleCost	dec(16,4)	default 0 null,	--含税成本金额
    NSaleCost	dec(16,4)	default 0 null,	--无税成本金额
    SaleTaxRate	dec(5,2)	default 0 null,	--当前销项税
    CostTaxRate	dec(5,2)	default 0 null,	--当前进项税
  )
  select @tempflag=1;
  create table #427516tmp
  ( 
    deptID	int		null,		--大类编码
    deptName	char(16)	null,		--大类名称
    SaleValue	dec(16,4)	default 0 null,	--含税销售金额
    NSaleValue	dec(16,4)	default 0 null,	--无税销售金额
    SaleCost	dec(16,4)	default 0 null,	--含税成本金额
    NSaleCost	dec(16,4)	default 0 null,	--无税成本金额
    GPValue	dec(16,4)	default 0 null,	--含税毛利
    NGPValue	dec(16,4)	default 0 null,	--无税毛利
    GPRate	dec(5,2)	default 0 null,	--含税毛利率
    NGPRate	dec(5,2)	default 0 null,	--无税毛利率
    SaleRate	dec(5,2)	default 0 null,	--销售占比（课占大区的比）
    GPRRate	dec(5,2)	default 0 null,	--毛利占比（课占大区的比）
  )
  select @tempflag=2;

  --清理不属于本大区的数据
  delete from #427516RPT_Base where goodsid in (select goodsid from goods where deptid/@sgroupvalue<>@sgroupid);
  select @Err=@@Error,@Msg='取基本数据时出错！',@BreakPoint=42751614;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --准备单品基础数据
  insert into #427516Goodstmp(GoodsID,SaleQty,Salevalue,SaleCost)
    select GoodsID,SaleQty,Salevalue,SaleCost from #427516RPT_Base
  select @Err=@@Error,@Msg='取单品基础数据时出错！',@BreakPoint=42751620;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --取单品的销项税、农产品标识、进项税
  update #427516Goodstmp set SaleTaxRate=isNull(b.SaleTaxRate,0),AgroFlag=b.AgroFlag,DeptID=b.DeptID
    from #427516Goodstmp a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='取单品销项税时出错！',@BreakPoint=42751621;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #427516Goodstmp set CostTaxRate=isNull(b.CostTaxRate,0)
    from #427516Goodstmp a,cost b
    where a.goodsid=b.goodsid and b.shopid=@shopid;
  select @Err=@@Error,@Msg='取单品进项税时出错！',@BreakPoint=42751622;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --计算单品无税和含税金额（须按一定公式计算，还需考虑是否免税农产品）
  update #427516Goodstmp
    set NSaleValue=SaleValue*100/(100+SaleTaxRate),
        NSaleCost=(SaleCost*(100-CostTaxRate*AgroFlag))/(100+CostTaxRate*(1-AgroFlag));
  select @Err=@@Error,@Msg='计算单品无税和含税金额时出错！',@BreakPoint=42751623;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  --准备大类基础数据
  insert into #427516tmp
    select deptid/@levelvalue,'',sum(SaleValue),sum(NSaleValue), 
           sum(SaleCost),sum(NSaleCost),0,0,0,0,0,0
    from #427516Goodstmp
    group by deptid/@levelvalue;
  select @Err=@@Error,@Msg='准备大类基础数据时出错！',@BreakPoint=42751624;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427516Goodstmp;
  
  --计算大类毛利（包括无税、含税）
  update #427516tmp 
    set GPValue=SaleValue-SaleCost,NGPValue=NSaleValue-NSaleCost
  select @Err=@@Error,@Msg='计算大类毛利时出错！',@BreakPoint=42751625;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --计算大类毛利率（无税、含税）
  update #427516tmp 
    set GPRate=isNull(GPValue,0)/(case SaleValue when 0 then 1 else SaleValue end),
        NGPRate=isNull(NGPValue,0)/(case NSaleValue when 0 then 1 else NSaleValue end);
  select @Err=@@Error,@Msg='计算大类毛利率时出错！',@BreakPoint=42751626;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @sumSaleValue=sum(SaleValue) from #427516tmp;
  select @sumGPValue=sum(GPValue) from #427516tmp;
  if @sumSaleValue=0 select @sumSaleValue=1;
  if @sumGPValue=0 select @sumGpValue=1;
  --计算销售占比
  update #427516tmp set SaleRate=(SaleValue/@sumSaleValue)*100,GPRRate=(GPValue/@sumGPValue)*100;
  select @Err=@@Error,@Msg='计算销售占比时出错！',@BreakPoint=42751626;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --计算毛利占比
  update #427516tmp set GPRate=(GPValue/(case SaleValue when 0 then 1 else SaleValue end))*100;
  select @Err=@@Error,@Msg='计算毛利占比时出错！',@BreakPoint=42751627;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --填入大类名称
  update #427516tmp set DeptName=sg.Name
    from #427516tmp a,sgroup sg
    where a.deptid=sg.id;
  
  insert into #427516 select * from #427516tmp order by deptid;
  drop table #427516tmp;
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427516Goodstmp;
  if @tempflag=2 begin
    drop table #427516Goodstmp;
    drop table #427516tmp;
   end; 
  return -1;
End
Go 


--427517 超市内专柜部门销售成本毛利占比综合分析报告
-----------------------------------------------------------------
--rp_427517		超市内专柜部门销售成本毛利占比综合分析报告
--参数：日期段、机构编码、
--	大区类别编码（大富豪为1：卖场购代销商品、2：卖场专柜区、3：大百货）
--说明：
--返回：成功0		断点号(427517XX)
--表：
--算法：
--建立：赵剑 2003-9-24 15:07
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
  declare @sgroupvalue	int;		--大区类别权值
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42751710,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42751711,@msg='取管理部类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--大富豪大区类别权值，跟@sgroupid对应
  select * into #427517RPT_Base from RPT_Base0001 where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42751712;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427517tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427517tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427517tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42751713;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427517tablename;
  create table #427517Goodstmp
  ( 
    GoodsID	int		null,		--商品编码
    DeptID	int		null,		--部类编号
    AgroFlag	int		default 0 null,	--是否免税农产品(0=不是 1=是)
    SaleQty	dec(16,4)	default 0 null,	--销售数量
    SaleValue	dec(16,4)	default 0 null,	--含税销售金额
    NSaleValue	dec(16,4)	default 0 null,	--无税销售金额
    SaleCost	dec(16,4)	default 0 null,	--含税成本金额
    NSaleCost	dec(16,4)	default 0 null,	--无税成本金额
    SaleTaxRate	dec(5,2)	default 0 null,	--当前销项税
    CostTaxRate	dec(5,2)	default 0 null,	--当前进项税
  )
  select @tempflag=1;
  create table #427517tmp
  ( 
    deptID	int		null,		--部类编码
    deptName	char(16)	null,		--部类名称
    SaleTaxRate	dec(5,2)	default 0 null,	--当前销项税
    SaleValue	dec(16,4)	default 0 null,	--含税销售金额
    NSaleValue	dec(16,4)	default 0 null,	--无税销售金额
    SaleCost	dec(16,4)	default 0 null,	--含税成本金额
    NSaleCost	dec(16,4)	default 0 null,	--无税成本金额
    GPValue	dec(16,4)	default 0 null,	--含税毛利
    NGPValue	dec(16,4)	default 0 null,	--无税毛利
    GPRate	dec(5,2)	default 0 null,	--含税毛利率
    NGPRate	dec(5,2)	default 0 null,	--无税毛利率
    SaleRate	dec(5,2)	default 0 null,	--销售占比（课占大区的比）
    GPRRate	dec(5,2)	default 0 null,	--毛利占比（课占大区的比）
  )
  select @tempflag=2;

  --清理不属于本大区的数据
  delete from #427517RPT_Base where goodsid in (select goodsid from goods where deptid/@sgroupvalue<>@sgroupid);
  select @Err=@@Error,@Msg='取基本数据时出错！',@BreakPoint=42751714;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --准备单品基础数据
  insert into #427517Goodstmp(GoodsID,SaleQty,Salevalue,SaleCost)
    select GoodsID,SaleQty,Salevalue,SaleCost from #427517RPT_Base
  select @Err=@@Error,@Msg='取单品基础数据时出错！',@BreakPoint=42751720;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --取单品的销项税、农产品标识、进项税
  update #427517Goodstmp set SaleTaxRate=isNull(b.SaleTaxRate,0),AgroFlag=b.AgroFlag,DeptID=b.DeptID
    from #427517Goodstmp a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='取单品销项税时出错！',@BreakPoint=42751721;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #427517Goodstmp set CostTaxRate=isNull(b.CostTaxRate,0)
    from #427517Goodstmp a,cost b
    where a.goodsid=b.goodsid and b.shopid=@shopid;
  select @Err=@@Error,@Msg='取单品进项税时出错！',@BreakPoint=42751722;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --计算单品无税和含税金额（须按一定公式计算，还需考虑是否免税农产品）
  update #427517Goodstmp
    set NSaleValue=SaleValue*100/(100+SaleTaxRate),
        NSaleCost=(SaleCost*(100-CostTaxRate*AgroFlag))/(100+CostTaxRate*(1-AgroFlag));
  select @Err=@@Error,@Msg='计算单品无税和含税金额时出错！',@BreakPoint=42751723;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  --准备部类基础数据，加上按销项税分组
  insert into #427517tmp
    select deptid/@levelvalue,'',SaleTaxRate,sum(SaleValue),sum(NSaleValue), 
           sum(SaleCost),sum(NSaleCost),0,0,0,0,0,0
    from #427517Goodstmp
    group by deptid/@levelvalue,SaleTaxRate;
  select @Err=@@Error,@Msg='准备部类基础数据时出错！',@BreakPoint=42751724;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427517Goodstmp;
  
  --计算部类毛利（包括无税、含税）
  update #427517tmp 
    set GPValue=SaleValue-SaleCost,NGPValue=NSaleValue-NSaleCost
  select @Err=@@Error,@Msg='计算部类毛利时出错！',@BreakPoint=42751725;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --计算部类毛利率（无税、含税）
  update #427517tmp 
    set GPRate=isNull(GPValue,0)*100/(case SaleValue when 0 then 1 else SaleValue end),
        NGPRate=isNull(NGPValue,0)*100/(case NSaleValue when 0 then 1 else NSaleValue end);
  select @Err=@@Error,@Msg='计算部类毛利率时出错！',@BreakPoint=42751726;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @sumSaleValue=sum(SaleValue) from #427517tmp;
  select @sumGPValue=sum(GPValue) from #427517tmp;
  if @sumSaleValue=0 select @sumSaleValue=1;
  if @sumGPValue=0 select @sumGpValue=1;
  --计算销售占比
  update #427517tmp set SaleRate=(SaleValue/@sumSaleValue)*100,GPRRate=(GPValue/@sumGPValue)*100;
  select @Err=@@Error,@Msg='计算销售占比时出错！',@BreakPoint=42751726;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --填入部类名称
  update #427517tmp set DeptName=sg.Name
    from #427517tmp a,sgroup sg
    where a.deptid=sg.id;
  
  insert into #427517 select * from #427517tmp order by deptid;
  drop table #427517tmp;
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427517Goodstmp;
  if @tempflag=2 begin
    drop table #427517Goodstmp;
    drop table #427517tmp;
   end; 
  return -1;
End
Go 

--427513 部门分税率销售成本毛利综合分析报告
-----------------------------------------------------------------
--rp_427513		部门分税率销售成本毛利综合分析报告
--参数：日期段、机构编码、
--	大区类别编码（大富豪为1：卖场购代销商品、2：卖场专柜区、3：大百货）
--说明：
--返回：成功0		断点号(427513XX)
--表：
--算法：
--建立：赵剑 2003-9-24 16:16
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
  declare @sgroupvalue	int;		--大区类别权值
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42751310,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42751311,@msg='取管理部类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--大富豪大区类别权值，跟@sgroupid对应
  select * into #427513RPT_Base from RPT_Base0001 where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42751312;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427513tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427513tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427513tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42751313;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427513tablename;
  create table #427513Goodstmp
  ( 
    GoodsID	int		null,		--商品编码
    DeptID	int		null,		--部类编号
    AgroFlag	int		default 0 null,	--是否免税农产品(0=不是 1=是)
    SaleQty	dec(16,4)	default 0 null,	--销售数量
    SaleValue	dec(16,4)	default 0 null,	--含税销售金额
    NSaleValue	dec(16,4)	default 0 null,	--无税销售金额
    SaleCost	dec(16,4)	default 0 null,	--含税成本金额
    NSaleCost	dec(16,4)	default 0 null,	--无税成本金额
    SaleTaxRate	dec(5,2)	default 0 null,	--当前销项税
    CostTaxRate	dec(5,2)	default 0 null,	--当前进项税
  )
  select @tempflag=1;
  create table #427513tmp
  ( 
    deptID	int		null,		--部类编码
    deptName	char(16)	null,		--部类名称
    CostTaxRate	dec(5,2)	default 0 null,	--当前进项税
    SaleTaxRate	dec(5,2)	default 0 null,	--当前销项税
    SaleValue	dec(16,4)	default 0 null,	--含税销售金额
    NSaleValue	dec(16,4)	default 0 null,	--无税销售金额
    SaleCost	dec(16,4)	default 0 null,	--含税成本金额
    NSaleCost	dec(16,4)	default 0 null,	--无税成本金额
    GPValue	dec(16,4)	default 0 null,	--含税毛利
    NGPValue	dec(16,4)	default 0 null,	--无税毛利
    GPRate	dec(5,2)	default 0 null,	--含税毛利率
    NGPRate	dec(5,2)	default 0 null,	--无税毛利率
    SaleRate	dec(5,2)	default 0 null,	--销售占比（课占大区的比）
    GPRRate	dec(5,2)	default 0 null,	--毛利占比（课占大区的比）
  )
  select @tempflag=2;

  --清理不属于本大区的数据
  delete from #427513RPT_Base where goodsid in (select goodsid from goods where deptid/@sgroupvalue<>@sgroupid);
  select @Err=@@Error,@Msg='取基本数据时出错！',@BreakPoint=42751314;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --准备单品基础数据
  insert into #427513Goodstmp(GoodsID,SaleQty,Salevalue,SaleCost)
    select GoodsID,SaleQty,Salevalue,SaleCost from #427513RPT_Base
  select @Err=@@Error,@Msg='取单品基础数据时出错！',@BreakPoint=42751320;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --取单品的销项税、农产品标识、进项税
  update #427513Goodstmp set SaleTaxRate=isNull(b.SaleTaxRate,0),AgroFlag=b.AgroFlag,DeptID=b.DeptID
    from #427513Goodstmp a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='取单品销项税时出错！',@BreakPoint=42751321;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #427513Goodstmp set CostTaxRate=isNull(b.CostTaxRate,0)
    from #427513Goodstmp a,cost b
    where a.goodsid=b.goodsid and b.shopid=@shopid;
  select @Err=@@Error,@Msg='取单品进项税时出错！',@BreakPoint=42751322;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --计算单品无税和含税金额（须按一定公式计算，还需考虑是否免税农产品）
  update #427513Goodstmp
    set NSaleValue=SaleValue*100/(100+SaleTaxRate),
        NSaleCost=(SaleCost*(100-CostTaxRate*AgroFlag))/(100+CostTaxRate*(1-AgroFlag));
  select @Err=@@Error,@Msg='计算单品无税和含税金额时出错！',@BreakPoint=42751323;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  --准备部类基础数据，加上按进项税、销项税分组
  insert into #427513tmp
    select deptid/@levelvalue,'',CostTaxRate,SaleTaxRate,sum(SaleValue),sum(NSaleValue), 
           sum(SaleCost),sum(NSaleCost),0,0,0,0,0,0
    from #427513Goodstmp
    group by deptid/@levelvalue,CostTaxRate,SaleTaxRate;
  select @Err=@@Error,@Msg='准备部类基础数据时出错！',@BreakPoint=42751324;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427513Goodstmp;
  
  --计算部类毛利（包括无税、含税）
  update #427513tmp 
    set GPValue=SaleValue-SaleCost,NGPValue=NSaleValue-NSaleCost
  select @Err=@@Error,@Msg='计算部类毛利时出错！',@BreakPoint=42751325;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --计算部类毛利率（无税、含税）
  update #427513tmp 
    set GPRate=isNull(GPValue,0)*100/(case SaleValue when 0 then 1 else SaleValue end),
        NGPRate=isNull(NGPValue,0)*100/(case NSaleValue when 0 then 1 else NSaleValue end);
  select @Err=@@Error,@Msg='计算部类毛利率时出错！',@BreakPoint=42751326;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  select @sumSaleValue=sum(SaleValue) from #427513tmp;
  select @sumGPValue=sum(GPValue) from #427513tmp;
  if @sumSaleValue=0 select @sumSaleValue=1;
  if @sumGPValue=0 select @sumGpValue=1;
  --计算销售占比
  update #427513tmp set SaleRate=(SaleValue/@sumSaleValue)*100,GPRRate=(GPValue/@sumGPValue)*100;
  select @Err=@@Error,@Msg='计算销售占比时出错！',@BreakPoint=42751326;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --填入部类名称
  update #427513tmp set DeptName=sg.Name
    from #427513tmp a,sgroup sg
    where a.deptid=sg.id;
  
  insert into #427513 select * from #427513tmp order by deptid;
  drop table #427513tmp;
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427513Goodstmp;
  if @tempflag=2 begin
    drop table #427513Goodstmp;
    drop table #427513tmp;
   end; 
  return -1;
End
Go 


--427514 代销部门销售成本毛利综合分析报告
-----------------------------------------------------------------
--rp_427514		代销部门销售成本毛利综合分析报告
--参数：日期段、机构编码、
--	大区类别编码（大富豪为1：卖场购代销商品、2：卖场专柜区、3：大百货）
--说明：
--返回：成功0		断点号(427514XX)
--表：
--算法：
--建立：赵剑 2003-9-25 11:08
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
  declare @sgroupvalue	int;		--大区类别权值
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42751410,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42751411,@msg='取管理部类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--大富豪大区类别权值，跟@sgroupid对应
  select * into #427514RPT_Base from RPT_Base0001 where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42751412;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427514tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427514tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427514tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42751413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427514tablename;
  create table #427514Goodstmp
  ( 
    GoodsID	int		null,		--商品编码
    DeptID	int		null,		--部类编号
    AgroFlag	int		default 0 null,	--是否免税农产品(0=不是 1=是)
    SaleQty	dec(16,4)	default 0 null,	--销售数量
    SaleValue	dec(16,4)	default 0 null,	--含税销售金额
    NSaleValue	dec(16,4)	default 0 null,	--无税销售金额
    SaleCost	dec(16,4)	default 0 null,	--含税成本金额
    NSaleCost	dec(16,4)	default 0 null,	--无税成本金额
    SaleTaxRate	dec(5,2)	default 0 null,	--当前销项税
    CostTaxRate	dec(5,2)	default 0 null,	--当前进项税
  )
  select @tempflag=1;
  create table #427514tmp
  ( 
    deptID	int		null,		--部类编码
    deptName	char(16)	null,		--部类名称
    SaleValue	dec(16,4)	default 0 null,	--含税销售金额
    NSaleValue	dec(16,4)	default 0 null,	--无税销售金额
    SaleCost	dec(16,4)	default 0 null,	--含税成本金额
    NSaleCost	dec(16,4)	default 0 null,	--无税成本金额
    GPValue	dec(16,4)	default 0 null,	--含税毛利
    NGPValue	dec(16,4)	default 0 null,	--无税毛利
    GPRate	dec(5,2)	default 0 null,	--含税毛利率
    NGPRate	dec(5,2)	default 0 null,	--无税毛利率
    SaleRate	dec(5,2)	default 0 null,	--销售占比（课占大区的比）
    GPRRate	dec(5,2)	default 0 null,	--毛利占比（课占大区的比）
  )
  select @tempflag=2;

  --清理不属于本大区的数据
  delete from #427514RPT_Base where goodsid in (select goodsid from goods where deptid/@sgroupvalue<>@sgroupid);
  select @Err=@@Error,@Msg='取基本数据时出错！',@BreakPoint=42751414;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --去掉非代销数据
  select distinct goodsid into #427514dxtmp from cost
    where venderid in (select venderid from vender
                       where paytypeid in (select id from paytype 
                                           where paytypesortid='d')) 
      and shopid=(select value from config where name='本店号');
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42751415;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  delete from #427514RPT_Base where goodsid not in (select goodsid from #427514dxtmp);
  select @Err=@@Error,@Msg='取代销数据时出错！',@BreakPoint=42751416;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427514dxtmp;
  --准备单品基础数据
  insert into #427514Goodstmp(GoodsID,SaleQty,Salevalue,SaleCost)
    select GoodsID,SaleQty,Salevalue,SaleCost from #427514RPT_Base
  select @Err=@@Error,@Msg='取单品基础数据时出错！',@BreakPoint=42751420;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --取单品的销项税、农产品标识、进项税
  update #427514Goodstmp set SaleTaxRate=isNull(b.SaleTaxRate,0),AgroFlag=b.AgroFlag,DeptID=b.DeptID
    from #427514Goodstmp a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='取单品销项税时出错！',@BreakPoint=42751421;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #427514Goodstmp set CostTaxRate=isNull(b.CostTaxRate,0)
    from #427514Goodstmp a,cost b
    where a.goodsid=b.goodsid and b.shopid=@shopid;
  select @Err=@@Error,@Msg='取单品进项税时出错！',@BreakPoint=42751422;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --计算单品无税和含税金额（须按一定公式计算，还需考虑是否免税农产品）
  update #427514Goodstmp
    set NSaleValue=SaleValue*100/(100+SaleTaxRate),
        NSaleCost=(SaleCost*(100-CostTaxRate*AgroFlag))/(100+CostTaxRate*(1-AgroFlag));
  select @Err=@@Error,@Msg='计算单品无税和含税金额时出错！',@BreakPoint=42751423;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  --准备部类基础数据
  insert into #427514tmp
    select deptid/@levelvalue,'',sum(SaleValue),sum(NSaleValue), 
           sum(SaleCost),sum(NSaleCost),0,0,0,0,0,0
    from #427514Goodstmp
    group by deptid/@levelvalue;
  select @Err=@@Error,@Msg='准备部类基础数据时出错！',@BreakPoint=42751424;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427514Goodstmp;
  
  --计算部类毛利（包括无税、含税）
  update #427514tmp 
    set GPValue=SaleValue-SaleCost,NGPValue=NSaleValue-NSaleCost
  select @Err=@@Error,@Msg='计算部类毛利时出错！',@BreakPoint=42751425;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --计算部类毛利率（无税、含税）
  update #427514tmp 
    set GPRate=isNull(GPValue,0)*100/(case SaleValue when 0 then 1 else SaleValue end),
        NGPRate=isNull(NGPValue,0)*100/(case NSaleValue when 0 then 1 else NSaleValue end);
  select @Err=@@Error,@Msg='计算部类毛利率时出错！',@BreakPoint=42751426;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @sumSaleValue=sum(SaleValue) from #427514tmp;
  select @sumGPValue=sum(GPValue) from #427514tmp;
  if @sumSaleValue=0 select @sumSaleValue=1;
  if @sumGPValue=0 select @sumGpValue=1;
  --计算销售占比
  update #427514tmp set SaleRate=(SaleValue/@sumSaleValue)*100,GPRRate=(GPValue/@sumGPValue)*100;
  select @Err=@@Error,@Msg='计算销售占比时出错！',@BreakPoint=42751426;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --填入部类名称
  update #427514tmp set DeptName=sg.Name
    from #427514tmp a,sgroup sg
    where a.deptid=sg.id;
  
  insert into #427514 select * from #427514tmp order by deptid;
  drop table #427514tmp;
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427514Goodstmp;
  if @tempflag=2 begin
    drop table #427514Goodstmp;
    drop table #427514tmp;
   end; 
  return -1;
End
Go 


--427515 （购代销）供应商销售成本毛利综合分析报告
-----------------------------------------------------------------
--rp_427515		（购代销）供应商销售成本毛利综合分析报告
--参数：日期段、机构编码、
--	大区类别编码（大富豪为1：卖场购代销商品、2：卖场专柜区、3：大百货）
--说明：
--返回：成功0		断点号(427515XX)
--表：
--算法：
--建立：赵剑 2003-9-25 15:38
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
  declare @sgroupvalue	int;		--大区类别权值
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42751510,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42751511,@msg='取管理部类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--大富豪大区类别权值，跟@sgroupid对应
  select * into #427515SaleCost from SaleCost where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'SaleCost',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42751512;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427515tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427515tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427515tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42751513;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427515tablename;
  create table #427515Goodstmp
  ( 
    GoodsID	int		null,		--商品编码
    DeptID	int		null,		--小类编号
    AgroFlag	int		default 0 null,	--是否免税农产品(0=不是 1=是)
    VenderID	int		null,		--供应商编号
    PaytypeID	char(2)		null,		--结算方式编号
    SortID	char(1)		default 'g' null,	--结算方式分组编号,g=购销,d=代销,q=其他
    SaleQty	dec(16,4)	default 0 null,	--销售数量
    SaleValue	dec(16,4)	default 0 null,	--含税销售金额
    NSaleValue	dec(16,4)	default 0 null,	--无税销售金额
    SaleCost	dec(16,4)	default 0 null,	--含税成本金额
    NSaleCost	dec(16,4)	default 0 null,	--无税成本金额
    SaleTaxRate	dec(5,2)	default 0 null,	--当前销项税
    CostTaxRate	dec(5,2)	default 0 null,	--当前进项税
  )
  select @tempflag=1;
  create table #427515tmp
  ( 
    Venderid	int		null,		--供应商编号
    VenderName	char(64)	null,		--供应商名称
    SortID	char(1)		null,		--结算方式分组编号,g=购销,d=代销,q=其他
    deptID	int		null,		--部类编码
    deptName	char(16)	null,		--部类名称
    SaleValue	dec(16,4)	default 0 null,	--含税销售金额
    NSaleValue	dec(16,4)	default 0 null,	--无税销售金额
    SaleCost	dec(16,4)	default 0 null,	--含税成本金额
    NSaleCost	dec(16,4)	default 0 null,	--无税成本金额
    GPValue	dec(16,4)	default 0 null,	--含税毛利
    NGPValue	dec(16,4)	default 0 null,	--无税毛利
    GPRate	dec(5,2)	default 0 null,	--含税毛利率
    NGPRate	dec(5,2)	default 0 null,	--无税毛利率
    SaleRate	dec(5,2)	default 0 null,	--销售占比（课占大区的比）
    GPRRate	dec(5,2)	default 0 null,	--毛利占比（课占大区的比）
  )
  select @tempflag=2;

  --清理不属于本大区的数据
  delete from #427515SaleCost where goodsid in (select goodsid from goods where deptid/@sgroupvalue<>@sgroupid);
  select @Err=@@Error,@Msg='取基本数据时出错！',@BreakPoint=42751514;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --准备单品基础数据
  insert into #427515Goodstmp(GoodsID,DeptID,VenderID,PaytypeID,SaleQty,Salevalue,SaleCost,SaleTaxRate,CostTaxRate)
    select GoodsID,DeptID,VenderID,PaytypeID,Qty,Salevalue-discvalue,CostValue,SaleTaxRate,CostTaxRate 
    from #427515SaleCost
  select @Err=@@Error,@Msg='取单品基础数据时出错！',@BreakPoint=42751520;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --取单品的农产品标识
  update #427515Goodstmp set AgroFlag=b.AgroFlag
    from #427515Goodstmp a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='取单品农产品标志时出错！',@BreakPoint=42751521;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  --计算单品无税和含税金额（须按一定公式计算，还需考虑是否免税农产品）
  update #427515Goodstmp
    set NSaleValue=SaleValue*100/(100+SaleTaxRate),
        NSaleCost=(SaleCost*(100-CostTaxRate*AgroFlag))/(100+CostTaxRate*(1-AgroFlag));
  select @Err=@@Error,@Msg='计算单品无税和含税金额时出错！',@BreakPoint=42751523;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #427515Goodstmp set sortID=PayTypeSortID
    from #427515Goodstmp a,PayType p
    where a.paytypeid=p.id;
  select @Err=@@Error,@Msg='取结算方式类型时出错！',@BreakPoint=42751524;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  --准备供应商基础数据
  insert into #427515tmp
    select venderid,'',SortID,deptid/@levelvalue,'',sum(SaleValue),sum(NSaleValue), 
           sum(SaleCost),sum(NSaleCost),0,0,0,0,0,0
    from #427515Goodstmp
    group by venderid,sortid,deptid/@levelvalue;
  select @Err=@@Error,@Msg='准备部类基础数据时出错！',@BreakPoint=42751530;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427515Goodstmp;
  
  --计算毛利（包括无税、含税）
  update #427515tmp 
    set GPValue=SaleValue-SaleCost,NGPValue=NSaleValue-NSaleCost
  select @Err=@@Error,@Msg='计算部类毛利时出错！',@BreakPoint=42751531;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --计算毛利率（无税、含税）
  update #427515tmp 
    set GPRate=isNull(GPValue,0)/(case SaleValue when 0 then 1 else SaleValue end),
        NGPRate=isNull(NGPValue,0)/(case NSaleValue when 0 then 1 else NSaleValue end);
  select @Err=@@Error,@Msg='计算部类毛利率时出错！',@BreakPoint=42751532;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @sumSaleValue=sum(SaleValue) from #427515tmp;
  select @sumGPValue=sum(GPValue) from #427515tmp;
  if @sumSaleValue=0 select @sumSaleValue=1;
  if @sumGPValue=0 select @sumGpValue=1;
  --计算销售占比
  update #427515tmp set SaleRate=(SaleValue/@sumSaleValue)*100,GPRRate=(GPValue/@sumGPValue)*100;
  select @Err=@@Error,@Msg='计算销售占比时出错！',@BreakPoint=42751533;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --计算毛利占比
  update #427515tmp set GPRate=(GPValue/(case SaleValue when 0 then 1 else SaleValue end))*100;
  select @Err=@@Error,@Msg='计算毛利占比时出错！',@BreakPoint=42751534;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --填入部类名称
  update #427515tmp set DeptName=sg.Name
    from #427515tmp a,sgroup sg
    where a.deptid=sg.id;
  --填入供应商名称
  update #427515tmp set VenderName=v.Name
    from #427515tmp a,vender v
    where a.Venderid=v.venderid;
  
  insert into #427515 select * from #427515tmp order by deptid;
  drop table #427515tmp;
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427515Goodstmp;
  if @tempflag=2 begin
    drop table #427515Goodstmp;
    drop table #427515tmp;
   end; 
  return -1;
End
Go 


--427612 部门专柜供应商销售汇总表
-----------------------------------------------------------------
--rp_427612		部门专柜供应商销售汇总表
--参数：日期段、机构编码、
--	大区类别编码（大富豪为1：卖场购代销商品、2：卖场专柜区、3：大百货）
--说明：本报表取大区类别不为1的数据
--返回：成功0		断点号(427612XX)
--表：
--算法：
--建立：赵剑 2003-9-26 18:38
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
  declare @sgroupvalue	int;		--大区类别权值
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42761210,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42761211,@msg='取管理部类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--大富豪大区类别权值，跟@sgroupid对应
  select * into #427612SaleCost from SaleCost where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'SaleCost',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42761212;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427612tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427612tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427612tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42761213;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427612tablename;
  create table #427612Goodstmp
  ( 
    GoodsID	int		null,		--商品编码
    DeptID	int		null,		--小类编号
    VenderID	int		null,		--供应商编号
    SaleValue	dec(16,4)	default 0 null,	--含税销售金额
    NSaleValue	dec(16,4)	default 0 null,	--无税销售金额
    SaleTaxRate	dec(5,2)	default 0 null	--当前销项税
  )
  select @tempflag=1;
  create table #427612tmp
  ( 
    Venderid	int		null,		--供应商编号
    VenderName	char(64)	null,		--供应商名称
    deptID	int		null,		--部类编码
    deptName	char(16)	null,		--部类名称
    SaleTaxRate	dec(5,2)	default 0 null,	--销项税率
    SaleValue	dec(16,4)	default 0 null,	--含税销售金额
    NSaleValue	dec(16,4)	default 0 null,	--无税销售金额
  )
  select @tempflag=2;

  --清理不需要的数据
  delete from #427612SaleCost where goodsid in (select goodsid from goods where deptid/@sgroupvalue=@sgroupid);
  select @Err=@@Error,@Msg='取基本数据时出错！',@BreakPoint=42761214;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --准备单品基础数据
  insert into #427612Goodstmp(GoodsID,DeptID,VenderID,Salevalue,SaleTaxRate)
    select GoodsID,DeptID,VenderID,Salevalue-discvalue,SaleTaxRate
    from #427612SaleCost
  select @Err=@@Error,@Msg='取单品基础数据时出错！',@BreakPoint=42761220;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --计算单品无税和含税金额（须按一定公式计算，还需考虑是否免税农产品）
  update #427612Goodstmp
    set NSaleValue=SaleValue*100/(100+SaleTaxRate)
  select @Err=@@Error,@Msg='计算单品无税和含税金额时出错！',@BreakPoint=42761223;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
      
  --准备供应商基础数据
  insert into #427612tmp
    select venderid,'',deptid/@levelvalue,'',SaleTaxRate,sum(SaleValue),sum(NSaleValue)
    from #427612Goodstmp
    group by venderid,deptid/@levelvalue,SaleTaxRate;
  select @Err=@@Error,@Msg='准备供应商基础数据时出错！',@BreakPoint=42761230;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427612Goodstmp;

  --填入部类名称
  update #427612tmp set DeptName=sg.Name
    from #427612tmp a,sgroup sg
    where a.deptid=sg.id;
  --填入供应商名称
  update #427612tmp set VenderName=v.Name
    from #427612tmp a,vender v
    where a.Venderid=v.venderid;
  
  insert into #427612 select * from #427612tmp order by deptid;
  drop table #427612tmp;
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #427612Goodstmp;
  if @tempflag=2 begin
    drop table #427612Goodstmp;
    drop table #427612tmp;
   end; 
  return -1;
End
Go 

--427613 专柜商品销售汇总表
-----------------------------------------------------------------
--rp_427613		专柜商品销售汇总表
--参数：日期段、机构编码、
--	大区类别编码（大富豪为1：卖场购代销商品、2：卖场专柜区、3：大百货）
--说明：本报表取大区类别不为1的数据
--返回：成功0		断点号(427613XX)
--表：
--算法：
--建立：赵剑 2003-9-26 18:38
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
  declare @sgroupvalue	int;		--大区类别权值
  declare @sumSaleValue dec(16,4);
  declare @sumGPValue	dec(16,4);
  declare @SQLString	char(512);
  declare @tables	char(1024);
  declare @subTableName char(32);
  declare @tempflag	int;
  declare @i int;
  SET NOCOUNT ON
  select @tempflag=0;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42761310,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42761311,@msg='取管理部类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @sgroupvalue=1000000;		--大富豪大区类别权值，跟@sgroupid对应
  select * into #427613SaleCost from SaleCost where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'SaleCost',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42761312;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427613tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427613tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427613tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42761313;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427613tablename;
  create table #427613Goodstmp
  ( 
    GoodsID	int		null,		--商品编码
    VenderID	int		null,		--供应商编号
    DeptID	int		null,		--小类编码
    SaleQty	dec(16,4)	default 0 Null,	--销售数量
    SaleValue	dec(16,4)	default 0 null	--销售金额
  )
  select @tempflag=1;
  create table #427613tmp
  ( 
    GoodsID	int		null,		--商品编码
    barcodeid	char(13)	null,		--商品主条码
    GName	char(64)	null,		--商品名称
    Spec	char(16)	null,		--商品规格
    UnitName	char(8)		null,		--售卖单位
    Venderid	int		null,		--供应商编号
    VenderName	char(64)	null,		--供应商名称
    deptID	int		null,		--部类编码
    deptName	char(16)	null,		--部类名称
    SaleQty	dec(16,4)	default 0 Null,	--销售数量
    SaleValue	dec(16,4)	default 0 null,	--销售金额
  )
  select @tempflag=2;

  --清理不需要的数据
  delete from #427613SaleCost where goodsid in (select goodsid from goods where deptid/@sgroupvalue=@sgroupid);
  select @Err=@@Error,@Msg='取基本数据时出错！',@BreakPoint=42761314;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --准备单品基础数据
  insert into #427613Goodstmp(GoodsID,VenderID,DeptID,SaleQty,Salevalue)
    select GoodsID,VenderID,DeptID,Qty,Salevalue-discvalue
    from #427613SaleCost
  select @Err=@@Error,@Msg='取单品基础数据时出错！',@BreakPoint=42761320;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
        
  --准备统计基础数据
  insert into #427613tmp
    select goodsid,'','','','',venderid,'',deptid/@levelvalue,'',sum(SaleQty),sum(SaleValue)
    from #427613Goodstmp
    group by goodsid,venderid,deptid/@levelvalue;
  select @Err=@@Error,@Msg='统计基础数据时出错！',@BreakPoint=42761330;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #427613Goodstmp;

  --填入商品相关信息
  update #427613tmp set barcodeid=g.barcodeid,gName=g.name,spec=g.spec,unitname=g.unitname
    from #427613tmp a,goods g
    where a.goodsid=g.goodsid;
  --填入部类名称
  update #427613tmp set DeptName=sg.Name
    from #427613tmp a,sgroup sg
    where a.deptid=sg.id;
  --填入供应商名称
  update #427613tmp set VenderName=v.Name
    from #427613tmp a,vender v
    where a.Venderid=v.venderid;
  
  insert into #427613 select * from #427613tmp order by deptid;
  drop table #427613tmp;
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
---427720	业务单据汇总表
---参数 单据类型，开始日期，结束日期
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
  
  select @Err=@@Error,@breakpoint=425000,@msg='建立临时表时出错!!';
  if (@Err is null) or (@Err !=0) goto ErrHandle;

  if @sheetType=2301   begin         --2301-验收单       
        insert into  #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
  		select @sheettype,a.sheetid,a.venderid,sum(b.qty*b.price) priceValue,sum(b.qty*b.cost) costvalue 
  		from receipt a,receiptitem b 
  		where a.sheetid=b.sheetid  and a.flag=100
		and a.checkdate between @bdate and @edate
		group by a.sheetid,a.venderid                    
  end 
  else if @sheetType=2323  begin         --2323-退货单    
       insert into  #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		select @sheettype,a.sheetid,a.venderid,sum(b.realqty*b.price) priceValue,sum(b.realqty*b.cost) costValue
		from ret a,retitem b
		where a.sheetid=b.sheetid and a.flag=100
		      and a.checkdate between @bdate and @edate
		group by a.sheetid,a.venderid   
  end
  else if @sheetType=2413  begin  --2413-报损单     
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
  		      if @@rowcount=0    --暂时用单据类型的字段代替商品编号   
  		      	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		      		values(@sheetType,@sheetid,@venderid3,@priceValue,@CostValue);
		      		
		 end;  		 
		 CLOSE Cur_Temp
         DEALLOCATE Cur_Temp
         select @Err = @@error;
         if @Err != 0 goto ErrHandle;
   end
   else if @sheetType=2332  begin  --2332-配送/返配单 
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
  		      if @@rowcount=0    --暂时用单据类型的字段代替商品编号   
  		      	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		      		values(@sheetType,@sheetid,@venderid,@priceValue,@CostValue);		      		
		 end;  		 
		 CLOSE Cur_Temp
         DEALLOCATE Cur_Temp
         select @Err = @@error;
         if @Err != 0 goto ErrHandle;
   end     
   else if @sheetType=2251  begin  --2251-转类单     
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
  		      if @@rowcount=0    --暂时用单据类型的字段代替商品编号   
  		      	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		      		values(@sheetType,@sheetid,@venderid,0,@CostValue);		      		
		 end;  		 
		 CLOSE Cur_Temp
         DEALLOCATE Cur_Temp
         select @Err = @@error;
         if @Err != 0 goto ErrHandle;     
   end   
  else if @sheetType=2342	 begin          --2342-店间调拨单        
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
  		      if @@rowcount=0    --暂时用单据类型的字段代替商品编号   
  		      	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		      		values(@sheetType,@sheetid,@venderid,@priceValue,@CostValue);		      		
		 end;  		 
		 CLOSE Cur_Temp
         DEALLOCATE Cur_Temp
         select @Err = @@error;
         if @Err != 0 goto ErrHandle;  
  end   
  else if @sheetType=2390	 begin          --2390-转码调拨单       
	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		select @sheettype,a.sheetid,c.VenderId,d.normalprice*b.outqty PriceValue,c.cost*b.outqty costValue
		from TransferGoods a,TransferGoodsitem b,cost c,GoodsShop d
		where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
		and b.outgoodsid=c.goodsid and a.shopid=c.shopid  
        and b.outgoodsid=d.goodsid and a.shopid=d.shopid                    
  end   
  /*else if @sheetType=2423	 begin          --2423-行政领用单    --不用做    
                select '1'
  end*/ 
  else if @sheetType=2431	 begin          --2431-库存成本调整单     
      insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		      select @sheetType sheettype,a.sheetid,a.venderid,sum(abs(c.price*b.CostValue/(b.newcost-b.oldcost))) PriceValue,sum(abs(b.newcost*b.CostValue/(b.newcost-b.oldcost))) CostValue
              from UpdCostValue a,UpdCostValueitem b,goodsshop c
              where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
                    and c.goodsid=b.goodsid and a.shopid=c.shopid
              group by a.sheetid,a.venderid            
  end 
  else if @sheetType=2432	 begin          --2432-金额帐成本调整单   
      insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		      select @sheetType sheettype,a.sheetid,d.venderid,abs(newqty-oldqty)*c.price PriceValue,abs(newqty-oldqty)*d.cost CostValue
              from UpdShopsStock a,UpdShopsStockitem b,goodsshop c,cost d
              where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
                    and c.goodsid=b.goodsid and a.shopid=c.shopid
                    and b.goodsid=d.goodsid and a.shopid=d.shopid                     
  end 
  else if @sheetType=2444	 begin          --2444-盘点盈亏单         
       insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
               select @sheettype,a.sheetid,b.VenderId,0 priceValue,qty*cost CostValue
				from pdyk a,pdykcostitem b
				where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
  end 
  /*else if @sheetType=2445	 begin          --2445-批次数量更正单       
      insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		      select @sheetType sheettype,a.sheetid,a.venderid,0 PriceValue,sum(b.cost*b.adjustqty) CostValue
              from UpdGoodsCost a, UpdGoodsCostItem b
              where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
              group by a.sheetid,a.venderid                                      
  end */
  else if @sheetType=2451	 begin          --2451-批发单             
	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		select @sheettype,a.sheetid,c.VenderId,b.price*b.qty PriceValue,c.cost*b.qty costValue
		from WholeSale a,WholeSaleitem b,cost c
		where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
		and b.goodsid=c.goodsid and a.shopid=c.shopid  and a.retflag=0               
  end   
  /*else if @sheetType=2472	 begin          --2472-供应商领用单       
               select '1'
  end
  */   
  else if @sheetType=2473	 begin          --2473-加工领用单          
	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)
		select @sheettype,a.sheetid,c.VenderId,b.price*b.qty PriceValue,c.cost*b.qty costValue
		from SaleStuff a,SaleStuffItem b,cost c
		where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
		and b.goodsid=c.goodsid and a.shopid=c.shopid              
  end 
  else if @sheetType=5203	 begin          --5203-结算通知单           
	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)  
		select @sheettype,a.sheetid,a.VenderId,sum(b.SaleValue) PriceValue,sum(b.CostValue) costValue
		from billhead a,billheaditem b
		where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100
		group by a.sheetid,a.venderid         
  end   
  else if @sheetType=5205	 begin          --5205-供应商往来单据金额调整单
	insert into #temp_427720(sheettype,sheetid,VenderId,priceValue,CostValue)  
		select @sheettype,a.sheetid,a.VenderId,0 PriceValue,CostValue
		from UpdPayable a,UpdPayableitem b
		where a.sheetid=b.sheetid and a.checkdate between @bdate and @edate and a.flag=100		 
  end;        


  select @Err=@@Error,@breakpoint=425020,@Msg='取数据时出错！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;  
  
  insert into #427720 (sheettype,sheetid,VenderId,VenderName,priceValue,CostValue)
  select sheettype,sheetid,a.VenderId,b.Name,priceValue,CostValue from #temp_427720 a,vender b 
  where a.venderid=b.venderid  
  
  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

end
go

--rp_427780			单据售价金额一览表
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
   select @Err=@@Error,@msg='输出数据时出错！！';
   if (@Err is null) or (@Err !=0) goto ErrHandle;
  return 0;
  ErrHandle:
    raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    return -1;
End

GO

--rp_423470			门店订货商品在途数日报
--修改：赵剑 2003-10-16 15:37 加入部类编码
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

  select @Err=@@Error,@breakPoint=423010,@msg='建立临时表出错！！'; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=423011,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=423012,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  ----写入验收数量  
  insert into  #temp_423470_a(shopid,goodsid,dhqty,shqty,ysqty,ztqty)
              select shopid,goodsid,0,0,sum(receiptqty),0
              from RPT_Base0001
              where convert(char(8),sdate,112) between convert(char(8),@startdate,112) and convert(char(8),@enddate,112)
                    and receiptqty !=0
              group by shopid,goodsid;
  select @Err=@@Error,@breakPoint=423020,@msg='取验收数量时出错！！'; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;
 
  ----写订货申请数量
  insert into  #temp_423470_a(shopid,goodsid,dhqty,shqty,ysqty,ztqty)
              select a.shopid,b.goodsid,sum(b.qty),0,0,0
              from purchaseask a,purchaseaskitem b
              where convert(char(8),a.checkdate,112) between convert(char(8),@startdate,112) and convert(char(8),@enddate,112)
                    and a.sheetid=b.sheetid and b.qty!=0
              group by a.shopid,b.goodsid;
  select @Err=@@Error,@breakPoint=423030,@msg='取订货申请数量时出错！！'; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  ----写订货审批数量
  insert into  #temp_423470_a(shopid,goodsid,dhqty,shqty,ysqty,ztqty)
              select a.shopid,b.goodsid,0,sum(b.qty),0,0
              from purchase a,purchaseitem b
              where convert(char(8),a.checkdate,112) between convert(char(8),@startdate,112) and convert(char(8),@enddate,112)
                    and a.sheetid=b.sheetid and b.qty!=0
              group by a.shopid,b.goodsid ;
  select @Err=@@Error,@breakPoint=423040,@msg='取订货审批数量时出错！！'; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;
 -------汇总数据                     
  insert into  #temp_423470_b(shopid,goodsid,dhqty,shqty,ysqty,ztqty,diffqty)
              select shopid,goodsid,sum(dhqty),sum(shqty),sum(ysqty),sum(shqty)-sum(ysqty),sum(dhqty)-sum(ysqty)
              from #temp_423470_a
              group by shopid,goodsid;
  select @Err=@@Error,@breakPoint=423050,@msg='汇总数据时出错！！'; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;

  insert into #423470(shopid,shopname,goodsid,gname,deptid,dhqty,shqty,ysqty,ztqty,diffqty,orderrate)
             select a.shopid,b.name,a.goodsid,c.name,c.deptid/@levelvalue,a.dhqty,a.shqty,a.ysqty,a.ztqty,a.diffqty,
                    case when a.dhqty<=0 then 99999.99 else a.ysqty/a.dhqty end
             from #temp_423470_b a,shop b,goods c
             where a.shopid=b.id and a.goodsid=c.goodsid;
  select @Err=@@Error,@breakPoint=423060,@msg='返回数据时出错！！'; 
  if (@Err is null) or (@Err !=0) goto ErrHandle;
           
                                          
  drop table #temp_423470_a;
  drop table #temp_423470_b;
  return 0;
  ErrHandle:
    raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 begin
      drop table #temp_423470_a;
      drop table #temp_423470_b;
    end;   
    return -1;
End
GO

--rp_423530			负毛利报表
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
  select @Err=@@Error,@breakPoint=423010,@msg='取汇总数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;

  insert into #temp_423530_b(shopid,goodsid,cost,price,closeqty,saleqty,salecost,salevalue,mlvalue,mlrate)
          select a.shopid,a.goodsid,b.cost,c.price,a.closeqty,a.saleqty,a.salecost,a.salevalue,a.mlvalue,a.mlrate
          from #temp_423530_a a,cost b,goodsshop c
          where a.shopid=b.shopid and a.goodsid=b.goodsid and b.flag=0 and a.shopid=c.shopid and a.goodsid=c.goodsid;
  select @Err=@@Error,@breakPoint=423020,@msg='取汇总数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
          
  insert into #423530(shopid,shopname,goodsid,gname,cost,price,closeqty,saleqty,salecost,salevalue,mlvalue,mlrate)
              select a.shopid,b.name,a.goodsid,c.name,a.cost,a.price,a.closeqty,a.saleqty,a.salecost,a.salevalue,
                     a.mlvalue,a.mlrate
           from #temp_423530_b a,shop b,goods c
           where a.shopid=b.id and a.goodsid=c.goodsid          
  select @Err=@@Error,@breakPoint=423030,@msg='取汇总数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
       
         
  drop table #temp_423530_a;
  drop table #temp_423530_b;
  return 0;
  ErrHandle:
    raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 begin
      drop table #temp_423530_a;
      drop table #temp_423530_b;
    end;   
    return -1;
End
GO

--427790	大类销售汇总日报表
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
  select @Err=@@Error,@breakPoint=427010,@msg='取日汇总数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  insert into #temp_427790_b(shopid,managedeptid,saletaxrate,msalevalue,mdiscvalue,mtaxvalue) 
         select shopid,managedeptid,saletaxrate,max(salevalue),max(discvalue),max(saletaxvalue)
         from RPT_SaleGroup 
         where year(sdate) =year(@sdate) and month(sdate)=month(@sdate)
         group by  shopid,managedeptid,saletaxrate;
  select @Err=@@Error,@breakPoint=427010,@msg='取月汇总数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  select @salevalue=sum(truevalue) from #temp_427790_a;
  select @Err=@@Error,@breakPoint=427020,@msg='取分店日汇总数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  select @msalevalue=sum(salevalue-discvalue) from #temp_427790_a;
  select @Err=@@Error,@breakPoint=427030,@msg='取分店日汇总数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;

  
  insert into #427790(shopid,shopname,managedeptid,mname,saletaxrate,salevalue,discvalue,truevalue,
                      taxvalue,salerate,msalevalue,mdiscvalue,mtruevalue,mtaxvalue,msalerate)
             select a.shopid,b.name,a.managedeptid,c.name,a.saletaxrate,a.salevalue,a.discvalue,a.truevalue,
               a.taxvalue,100*a.truevalue/@salevalue,d.msalevalue,d.mdiscvalue,d.msalevalue-d.mdiscvalue,
               d.mtaxvalue,100*(d.msalevalue-d.mdiscvalue)/@msalevalue
             from #temp_427790_a a,shop b,sgroup c,#temp_427790_b d
             where a.shopid=b.id and a.managedeptid=c.id and a.shopid=d.shopid 
                      and a.managedeptid=d.managedeptid and a.saletaxrate=d.saletaxrate;
  select @Err=@@Error,@breakPoint=427040,@msg='返回数据时出错！！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
         
  drop table #temp_427790_a;
  drop table #temp_427790_b;
  return 0;
  ErrHandle:
    raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 begin
      drop table #temp_427790_a;
      drop table #temp_427790_b;
    end;   
    return -1;
End

GO

-----------------------------------------------------------------
--rp_426720			订货到货缺货商品明细查询
--参数：日期
--返回：标志0=成功		断点号(999993XX)
--表：	
--函数：
--算法：
--建立：胥亮 2003.09.11
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
  
  --写入订货商品、数量，限制为普通定单，并且不写入待验收的订货单
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
  --取出到货商品数量
  select A.ShopId,a.RefSheetID,A.SheetID,A.Logistics,A.VenderID,B.GoodsID,Sum(B.Qty) as Qty,sum(b.PresentQty) PresentQty
  	into #temp2
  	from receipt A,receiptItem B
  	where A.SheetID=B.SheetID and ReceiptFlag=0 and A.Flag=100
		and A.RefSheetID in (select distinct RefSheetID from #426720) 
  	group by A.ShopID,a.RefSheetID,A.SheetID,A.Logistics,A.VenderID,B.GoodsID;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999370
  --计算到货数 
  update #426720
  	set ReceiptQty=B.Qty,PresentQty=b.PresentQty,ReceiptSheetID=b.SheetID
  	from #426720 A,#temp2 B
  	where A.ShopID=B.ShopID and a.SheetID=b.RefSheetID and A.VenderID=B.VenderID and a.GoodsID=b.GoodsID and A.Logistics=B.Logistics
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  select @BreakPoint = 9999390

  --综合计算
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;

End
Go 

----------------------------------------------------------------------------------------
--rp_423531			产生订货汇总表
--参数：
--返回：成功为0,其他为断点号
--表：	
--函数：
--算法：
--建立：辛东春 2003.09.10
--修改：赵剑  2003-10-20 10:19 加入农产品无税金额计算
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('rp_423531') and sysstat & 0xf = 4)
    drop procedure dbo.rp_423531;
GO

create procedure dbo.rp_423531 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030909_01,Last Mender:辛东春
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='取管理部类权值出错!!';
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
      select @Err=@@Error,@msg='返回数据时出!!',@BreakPoint=420050;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  return  0;  
ErrHandle:
  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO

----------------------------------------------------------------------------------------
--rp_423533			产生收货汇总表
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：辛东春 2003.09.10
--修改：赵剑  2003-10-20 10:19 加入农产品无税金额计算
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
  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='取管理部类权值出错!!';
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
      select @Err=@@Error,@msg='返回数据时出!!',@BreakPoint=420050;
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
      select @Err=@@Error,@msg='返回数据时出!!',@BreakPoint=420050;
    if (@Err is null) or (@Err!=0)  goto ErrHandle;

  end;
   
  return  0;  
ErrHandle:
  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO


--rp_424627			产生单品进销存汇总表
----------------------------------------------------------------------------------------
--rp_424627			产生单品进销存汇总表
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：辛东春 2003.09.16
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424627') and type = 'P')
  drop procedure dbo.rp_424627
GO

create procedure dbo.rp_424627 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030916_01,Last Mender:辛东春
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
ShopID			char(4)		Not null,		--店号
GoodsID			int    		Not null,		--商品编码
startqty        dec(12,3)   default 0 not null,
startcostv      dec(12,2)   default 0 not null,
ReceiptValue		dec(12,2)	Not Null,		--验收金额
TransferInValue		dec(12,2)	Not Null,		--调入金额
PriceChgValue		dec(12,3)	default 0 not null,	--变价金额（永久调价）
RetValue		dec(12,2)	Not Null,		--退货金额
UseValue		dec(12,2)	Not Null,		--领用金额
WSaleQty		dec(12,3)	Not Null,		--批发数量
WSaleValue		dec(12,2)	Not Null,		--批发金额
SaleQty			dec(12,3)	Not Null,		--销售数量
SaleValue		dec(12,2)	Not Null,		--销售金额
Salecost		dec(12,2)	Not Null,		--销售成本金额
TransferOutValue	dec(12,2)	Not Null,		--调出金额
endqty        dec(12,3)   default 0 not null,
endcostv      dec(12,2)   default 0 not null
)
 
  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  

select * into #tmpRPT_Base0001 from rpt_base0001 where 1=2;
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @begindate=@begindate-1
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #424627tmp;

  while 1=1 begin
    select @i=charindex(',',tablesname) from #424627tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #424627tmp;              --没有,取当前值
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
  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go


--rp_424628			产生单品进销存每日表
----------------------------------------------------------------------------------------
--rp_424628			产生单品进销存每日表
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：辛东春 2003.09.16
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424628') and type = 'P')
  drop procedure dbo.rp_424628
GO

create procedure dbo.rp_424628 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030916_01,Last Mender:辛东春
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
ShopID			char(4)		Not null,		--店号
GoodsID			int    		Not null,		--商品编码
sdate           datetime    not null,
startqty        dec(12,3)   default 0 not null,
startcostv      dec(12,2)   default 0 not null,
ReceiptValue		dec(12,2)	Not Null,		--验收金额
TransferInValue		dec(12,2)	Not Null,		--调入金额
PriceChgValue		dec(12,3)	default 0 not null,	--变价金额（永久调价）
RetValue		dec(12,2)	Not Null,		--退货金额
UseValue		dec(12,2)	Not Null,		--领用金额
WSaleQty		dec(12,3)	Not Null,		--批发数量
WSaleValue		dec(12,2)	Not Null,		--批发金额
SaleQty			dec(12,3)	Not Null,		--销售数量
SaleValue		dec(12,2)	Not Null,		--销售金额
Salecost		dec(12,2)	Not Null,		--销售成本金额
TransferOutValue	dec(12,2)	Not Null,		--调出金额
endqty        dec(12,3)   default 0 not null,
endcostv      dec(12,2)   default 0 not null
)
 
  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  

select * into #tmpRPT_Base0001 from rpt_base0001 where 1=2;
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @begindate=@begindate-1
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #424628tmp;

  while 1=1 begin
    select @i=charindex(',',tablesname) from #424628tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #424628tmp;              --没有,取当前值
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
  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

--rp_421335			产生供应商进销存汇总表
----------------------------------------------------------------------------------------
--rp_421335			产生供应商进销存汇总表
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：辛东春 2003.09.17
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_421335') and type = 'P')
  drop procedure dbo.rp_421335
GO

create procedure dbo.rp_421335 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030917_01,Last Mender:辛东春
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
 
  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  

select * into #tmpRPT_Base0011 from RPT_Base0011 where 1=2;
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  exec tl_gettablesname @begindate,@enddate,'RPT_Base0011',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #421335tmp;

  while 1=1 begin
    select @i=charindex(',',tablesname) from #421335tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #421335tmp;              --没有,取当前值
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
  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

--rp_421334			产生供应商进销存每日报告
----------------------------------------------------------------------------------------
--rp_421334			产生供应商进销存每日报告
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：辛东春 2003.09.17
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_421334') and type = 'P')
  drop procedure dbo.rp_421334
GO

create procedure dbo.rp_421334 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030917_01,Last Mender:辛东春
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
 
  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  

select * into #tmpRPT_Base0011 from RPT_Base0011 where 1=2;
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  exec tl_gettablesname @begindate,@enddate,'RPT_Base0011',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #421334tmp;

  while 1=1 begin
    select @i=charindex(',',tablesname) from #421334tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #421334tmp;              --没有,取当前值
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
  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

----------------------------------------------------------------------------------------
--rp_423537   产生DM促销汇总表
--参数：
--返回：成功为0,其他为断点号,  断点号 42
--表： 
--函数：
--算法：
--建立：辛东春 2003.09.12
--修改：赵剑   2003-10-15 15:31 加入进价开始日期和结束日期
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_423537') and type = 'P')
  drop procedure dbo.rp_423537
GO
 
create procedure dbo.rp_423537 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030909_01,Last Mender:辛东春
-----------------------------------------------------------------
AS BEGIN
  declare @Err  int;
  declare @BreakPoint int;
  declare @Msg  varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='取管理部类权值出错!!';
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
 
      select @Err=@@Error,@msg='返回数据时出!!',@BreakPoint=420050;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  return  0;  
ErrHandle:
  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go


----------------------------------------------------------------------------------------
--rp_424629			产生基本码商品卡消费汇总表
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：辛东春 2003.09.19
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424629') and type = 'P')
  drop procedure dbo.rp_424629
GO

create procedure dbo.rp_424629 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030919_01,Last Mender:辛东春
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

  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  select A.sdate,A.posid,A.listno, A.goodsid into #tmp_salej from sale_J A,goods B 
    where A.goodsid=B.goodsid and B.goodstypeID=8   
    and convert(char(8),A.Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112) 
    group by A.sdate,A.posid,A.listno,A.goodsid

--去掉有非基本码商品的
  delete #tmp_salej  from #tmp_salej A,sale_j B,Goods C 
  where B.sdate=A.sdate and B.posid=A.posid and B.listno=A.listno
  and B.goodsid=C.goodsid
  and C.goodstypeID<>8;

--去掉有非信用卡支付的
  delete #tmp_salej  from #tmp_salej A,Pay_j B
  where B.sdate=A.sdate and B.posid=A.posid and B.listno=A.listno
  and B.PayReason='p'
  and B.PayType<>'R'


--计算单数
  insert into #tmp424629(goodsid,listqty,salevalue)
    select goodsid,count(*) ,0 from #tmp_salej group by goodsid

--计算金额，直接由sale_j出。
  insert into #tmp424629(goodsid,listqty,salevalue)
    select A.goodsID,0,sum(salevalue-discvalue) from #tmp_salej A,sale_J B
    where B.sdate=A.sdate and B.posid=A.posid and B.listno=A.listno
    and A.goodsid=B.goodsid
    group by A.goodsid

--汇总写入到输出临时表
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

  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

----------------------------------------------------------------------------------------
--rp_424630			产生基本码商品卡消费明细表
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：辛东春 2003.09.19
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424630') and type = 'P')
  drop procedure dbo.rp_424630
GO

create procedure dbo.rp_424630 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030919_01,Last Mender:辛东春
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


  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
  select A.sdate,A.posid,A.listno, A.goodsid into #tmp_salej from sale_J A,goods B 
    where A.goodsid=B.goodsid and B.goodstypeID=8   
    and convert(char(8),A.Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112) 
    group by A.sdate,A.posid,A.listno,A.goodsid

--去掉有非基本码商品的
  delete #tmp_salej  from #tmp_salej A,sale_j B,Goods C 
  where B.sdate=A.sdate and B.posid=A.posid and B.listno=A.listno
  and B.goodsid=C.goodsid
  and C.goodstypeID<>8;

--去掉有非信用卡支付的
  delete #tmp_salej  from #tmp_salej A,Pay_j B
  where B.sdate=A.sdate and B.posid=A.posid and B.listno=A.listno
  and B.PayReason='p'
  and B.PayType<>'R'



--汇总写入到输出临时表
  insert into #424630(sdate,posid,listno,cashierid,goodsid,goodsname,qty,salevalue)
    select B.Sdate,B.posid,B.listno,B.cashierID,B.goodsid,C.name,B.Amount,B.salevalue-B.discvalue
    from #tmp_salej A,sale_J B,Goods C
    where A.sdate=B.sdate and A.posid=B.posid and A.listno=B.listno
    and A.goodsid=B.goodsid
    and A.goodsid=c.goodsid

    
  drop table #tmp_salej;  

  return  0;  
ErrHandle:

  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

--427740	合作档口成本分摊表                      
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
    select @i=charindex(',',tablesname) from #427740tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427740tmp;              --没有,取当前值
       select @Sql='insert into #4277401tmp Select e.shopid,e.goodsid,e.salevalue,e.deptid ,e.sdate from '+rtrim(@subTableName)+' e where convert(char,e.sdate,112) between '+rtrim(convert(char,@begindate,112))+' and '+rtrim(convert(char,@enddate,112));
       execute (@sql);
       --select @subTableName;--此处可以写自己的代码
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
--427770	大类商品销售成本分摊表    
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
    select @i=charindex(',',tablesname) from #427770tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427770tmp;              --没有,取当前值
       set @Sql1='insert into #427770 select b.id,b.name,sum(a.Salevalue-a.discvalue) salevalue,sum(a.costvalue) costvalue,saleTaxRate,sum(a.costvalue/(1+a.saletaxrate/100)*a.saleTaxRate/100) SaleTax from '+rtrim(@subTableName)+' a ,sgroup b '
       set @sql= ' where a.deptid/10000=b.id and convert(char,a.sdate,112) between '+rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' and a.shopid='''+@shopid +''' group by b.id,b.name,saleTaxRate ';
       select @sql2=rtrim(@sql1)+rtrim(@sql);
       execute (@sql2);
       --select @subTableName;--此处可以写自己的代码
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

-----------------------------------427820	购销商品销售/库存明细表 
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
    select @i=charindex(',',tablesname) from #427820tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427820tmp;              --没有,取当前值
        set @sql1='insert  into #427820 select a.shopid,a.goodsid,b.venderid,sum(a.saleqty) saleqty,sum(a.salevalue) salevalue,max(sdate) sdate from '+rtrim(@subTableName)+' a,cost b,#4278201 c ';
        set @sql2=' where a.shopid=b.shopid and a.goodsid=b.goodsid and b.venderid=c.venderid and b.venderid='+rtrim(@venderid)+' and convert(char,a.sdate,112)  ';
        set @sql3=' between '+rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' group by a.shopid,a.goodsid,b.venderid ';
        select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);

        set @sql1='insert into #4278202 select a.shopid,a.goodsid,a.venderid,case when b.saleqty=0 then c.normalprice else b.salevalue/b.saleqty end price,b.closeqty,b.CloseCostV,d.shortname ';
	set @sql2=' from #427820 a, '+rtrim(@subTableName)+' b,goodsshop c,goods d where a.shopid=b.shopid and a.goodsid=b.goodsid and a.sdate=b.sdate and b.goodsid=c.goodsid and b.shopid=c.shopid and c.goodsid=d.goodsid ';
        select @sql=rtrim(@sql1)+rtrim(@sql2)
       execute (@sql);

       --select @subTableName;--此处可以写自己的代码
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

--427830	购销供应商销售/库存汇总表  
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
    select @i=charindex(',',tablesname) from #427830tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427830tmp;              --没有,取当前值
      set @sql1='insert into #427830 select c.venderid,c.name,SUM(a.salecost) Salecost,avg(a.closeCostV) CloseCostV from '+rtrim(@subTableName)+' a,cost b,#4278301 c ';
      set @sql2=' where a.shopid=b.shopid and a.goodsid=b.goodsid and convert(char,a.sdate,112) between ';
      set @sql3=' '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' and b.venderid=c.venderid  group by c.venderid,c.name order by c.venderid ';
       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);

       --select @subTableName;--此处可以写自己的代码
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

------------------------------------------427870	商品数量金额明细账  
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
    select @i=charindex(',',tablesname) from #427870tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427870tmp;              --没有,取当前值

	Set @sql1='insert into #427870 select a.sdate,a.notes,b.unitname,a.cost,case when directflag=1 then a.qty else 0 end drqty,case when directflag=1 then a.qty*a.cost else 0 end drValue,';
	set @sql2=' case when directflag=-1 then a.qty else 0 end Crqty,case when directflag=-1 then a.qty*a.cost else 0 end CrValue,CloseQty,CloseCostV,a.shopid,b.deptid,b.barcodeid,b.spec,a.goodsid from '+rtrim(@subTableName)+' a,goods b';
	set @sql3='  where b.deptid/10000='+rtrim(@deptid)+' and a.goodsid=b.goodsid and convert(char,sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' order by a.shopid,a.goodsid,a.sdate ';   

       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3);
       execute (@sql);

       --select @subTableName;--此处可以写自己的代码
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

--------------------------------------------------------------------------------427872	商品进销存汇总表  
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
--统计起初的序列号
create table #4278720(
serialid int,
goodsid  int
);--E
--统计贷的数量和金额
create table #4278721
(
goodsid int,
drvalue dec(12,2)
);--E
--统计借的数量和金额
create table #4278722
(
goodsid int,
crvalue dec(12,2)
);--E

select @tables as tablesname into #427872tmp
while 1=1 begin
    select @i=charindex(',',tablesname) from #427872tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427872tmp;              --没有,取当前值

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

       --select @subTableName;--此处可以写自己的代码
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
       --select @subTableName;--此处可以写自己的代码
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

-------------------------429020	负库存记账成本差额明细表  

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
    select @i=charindex(',',tablesname) from #429020tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #429020tmp;              --没有,取当前值
	Set @sql1='insert into #429020 select a.venderid venderid102,b.venderid Venderid2301,a.paytypeid paytypeid102,b.paytypeid paytypeid2301,a.qty,a.goodsid,a.cost cost102,b.cost cost2301,';
	set @sql2=' a.costValue costvalue102,(b.cost*a.qty) costvalue2301,a.deptid/10000 deptid,c.barcodeid,c.name,(a.cost-b.cost) Ccost,(a.costValue-b.cost*a.qty) CCostValue ';
	set @sql3=' from '+rtrim(@subTableName)+' a,'+rtrim(@subTableName)+' b,goods c where a.goodsid=b.goodsid and a.venderid=999999 and a.sheettype=102 and b.goodsid=c.goodsid ';
	set @sql4=' and b.sheettype=2301 and a.sdate=b.sdate and convert(char,a.sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' and a.deptid/10000='+rtrim(@deptid);  

       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3)+rtrim(@sql4);
       execute (@sql);

       --select @subTableName;--此处可以写自己的代码
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
       --select @subTableName;--此处可以写自己的代码
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

--------------------------------------------------------429030	农副产品收购中类成本税金表 

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
    select @i=charindex(',',tablesname) from #429030tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #429030tmp;              --没有,取当前值
	set @sql1='insert into #429030 select a.goodsid,a.qty,a.deptid/100 deptid,a.costvalue,(a.Salevalue-a.discValue) SaleValue,';
	set @sql2=' (a.Salevalue-a.discValue)/(1+b.saleTaxRate/100)*b.saleTaxRate/100 SaleTax,a.costvalue*(1+b.saleTaxRate/100)*b.saleTaxRate/100 CostTax,';
	set @sql3=' b.barcodeid,b.shortname,b.spec,b.SaleTaxRate from '+rtrim(@subTableName)+' a,goods b where a.goodsid=b.goodsid and a.deptid between 60000 and 69999 and ';
	set @sql4='  a.shopid='''+rtrim(@shopid)+''' and a.deptid/100 = '+rtrim(@deptid)+' and convert(char,a.sdate,112) between '+ rtrim(convert(char,@begindate,112))+' AND '+rtrim(convert(char,@enddate,112))+' order by a.deptid ';


       select @sql=rtrim(@sql1)+rtrim(@sql2)+rtrim(@sql3)+rtrim(@sql4);
       execute (@sql);

       --select @subTableName;--此处可以写自己的代码
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
       --select @subTableName;--此处可以写自己的代码
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
--rp_423539			产生调进价汇总表
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：辛东春 2003.09.13
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_423539') and type = 'P')
  drop procedure dbo.rp_423539
GO

create procedure dbo.rp_423539 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030913_01,Last Mender:辛东春
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='取管理部类权值出错!!';
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

      select @Err=@@Error,@msg='返回数据时出!!',@BreakPoint=420050;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  return  0;  
ErrHandle:
  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

----------------------------------------------------------------------------------------
--rp_423541			产生调售价汇总表
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：辛东春 2003.09.13
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_423541') and type = 'P')
  drop procedure dbo.rp_423541
GO

create procedure dbo.rp_423541 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030913_01,Last Mender:辛东春
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='取管理部类权值出错!!';
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

      select @Err=@@Error,@msg='返回数据时出!!',@BreakPoint=420050;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  return  0;  
ErrHandle:
  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

----------------------------------------------------------------------------------------
--rp_423543			产生调会员价汇总表
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：辛东春 2003.09.13
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_423543') and type = 'P')
  drop procedure dbo.rp_423543
GO

create procedure dbo.rp_423543 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030913_01,Last Mender:辛东春
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='取管理部类权值出错!!';
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

      select @Err=@@Error,@msg='返回数据时出!!',@BreakPoint=420050;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  return  0;  
ErrHandle:
  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go




----------------------------------------------------------------------------------------
--rp_424623			产生优惠折扣汇总表
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：辛东春 2003.09.16
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424623') and type = 'P')
  drop procedure dbo.rp_424623
GO

create procedure dbo.rp_424623 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030916_01,Last Mender:辛东春
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
  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;

--促销p
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
 
--单品折扣 
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

--时点折扣 
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

--小类折扣 
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


--会员折扣 
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


--手工折扣 
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

--手工变价
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


--汇总
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
  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go

-----------------------------------------------------------------
--rp_425103		商品销售明细表
--参数：日期段、机构编码、
--说明：
--返回：成功0		断点号(425103XX)
--表：
--算法：
--建立：赵剑 2003-10-21 16:21
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
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42510310,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42510311,@msg='取管理大类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select * into #425103SaleCost from Salecost where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'Salecost',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42510312;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #425103tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #425103tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #425103tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42510313;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #425103tablename;
  
  create table #425103tmp
  (
   sdate	datetime	null,		--销售日期
   shopid	char(4)		null,		--机构编码
   shopName	char(16)	null,		--机构名称
   VenderID	int		null,		--供应商编号
   VenderName	char(64)	null,		--供应商名称 
   sGroupID	int		null,		--管理部类编码
   sGroupName	char(16)	null,		--管理部类名称
   GoodsID	int    		null,		--商品编码
   Barcodeid	char(13)	null,		--条码               
   GoodsName	char(64)	null,		--中文名                 
   Spec		char(16)	null,		--商品规格               
   UnitName	char(8)		null,		--售卖单位
   GoodsDate	datetime	null,		--启用日期(date)
   cost		dec(10,2)	default 0 null,	--进价
   Price	dec(10,2)	default 0 null,	--售价
   DiscType	char(1)		null,		--促销类型(同Prom_Level表的PromType)
   Qty		dec(16,4)	null,		--销售数量
   SaleValue	dec(16,4)	default 0 null,	--销售金额
   SaleCost	dec(16,4)	default 0 null,	--成本金额
   DiscValue	dec(16,4)	default 0 null,	--折扣金额
   RealValue	dec(16,4)	default 0 null,	--实际销售
   GPValue	dec(16,4)	default 0 null,	--毛利
   WeekSaleQty	dec(12,3)	default 0 null,	--本周累计售数量（配送中心为配送出库数量）
   MonthSaleQty	dec(12,3)	default 0 null	--本月累计销售数量（配送中心为配送出库数量）
  )
  select @tempflag=1;
  
  insert into #425103tmp
    select a.SaleDate,a.shopid,'',a.venderid,'',a.deptid/@levelvalue,'',a.goodsid,b.barcodeid,b.name,b.spec,b.unitName,
        b.GoodsDate,a.cost,a.price,a.disctype,a.qty,a.SaleValue,a.CostValue,a.discValue,a.SaleValue-a.DiscValue,
        a.SaleValue-a.DiscValue-a.CostValue,0,0    
    from #425103SaleCost a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42510320;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
    
  update #425103tmp set ShopName=sh.Name,VenderName=v.Name,sGroupName=sg.Name
    from #425103tmp a,vender v,shop sh,sgroup sg
    where a.Venderid*=v.venderid and a.shopid=sh.id and a.sGroupID*=sg.id;
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42510325;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #425103tmp set WeekSaleQty=b.WeekSaleQty,MonthSaleQty=b.MonthSaleQty
    from #425103tmp a,demand b
    where a.shopid=b.shopid and a.goodsid=b.goodsid;  
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42510330;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  insert into #425103 select * from #425103tmp order by sdate,goodsid;
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42510335;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #425103tmp;
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #425103tmp;
  return -1;
End
Go



--421205 门店报损/领用商品明细表
--修改：赵剑 2003-10-24 10:40 重新整理，纳入全量脚本
--      加入月表查询、部类信息、申请人、审核人、备注
--	加入农产品无税成本计算
--修改： cmg 将单据类型2423写错成24723了,数量不从单据表里取得，而是从三级帐表里取得
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
  
  select * into #421205Wastebook from Wastebook where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'Wastebook',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42120512;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #421205tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #421205tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #421205tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42120513;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #421205tablename;
  
    delete from #421205 where 1=1;
  if  @SheetType = 2413 or @SheetType=0 begin   --报损2413
    insert into #421205 select w.shopid,w.goodsid,w.cost,2413,w.taxrate,
      sum(w.qty) as Qty,round(sum(w.qty*w.cost),2) as taxcostvalue,
      round(sum(w.qty*w.cost*(100-w.taxRate*g.AgroFlag)/(100+w.taxRate*(1-g.AgroFlag))),2) as NoTaxCostValue,
      w.sheetid,l.Editor,l.Checker,li.remask,'',0,'',0,'','',w.venderid,''
    from Lost l,lostItem li,#421205Wastebook w,goods g
    where l.sheetid=li.sheetid and l.sheetid=w.sheetid and w.sheettype=2413 
      and li.goodsid=w.goodsid and li.goodsid=g.goodsid
   group by w.shopid,w.goodsid,w.cost,w.sheetid,l.Editor,l.Checker,li.remask,w.taxrate,w.venderid;
   select @Err=@@Error,@BreakPoint=42120520,@msg='取报损数据时出错！';
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end;  
  if  @SheetType = 2473  or @SheetType=0 begin --加工领用单2473
    insert into #421205 select  w.shopid,w.goodsid,w.cost,2473,w.taxrate,
      sum(w.qty) as Qty,round(sum(w.qty*w.cost),2) as TaxCostValue,
      round(sum(w.qty*w.cost*(100-w.taxRate*g.AgroFlag)/(100+w.taxRate*(1-g.AgroFlag))),2) as NoTaxCostValue,
      w.sheetid,s.Editor,s.Checker,'','',0,'',0,'','',w.venderid,''
    from SaleStuff s,SaleStuffItem si,#421205Wastebook w,goods g
    where s.sheetid=si.sheetid and si.sheetid=w.sheetid and w.sheettype=2473 
      and si.goodsid=w.goodsid and si.goodsid=g.goodsid
      group by w.shopid,w.goodsid,w.cost,w.sheetid,s.Editor,s.Checker,w.taxrate,w.venderid;
    select @Err=@@Error,@BreakPoint=42120521,@msg='取加工领用数据时出错！';
    if (@Err is null) or (@Err!=0)  goto ErrHandle;  
  end;
  if  @SheetType = 2423  or @SheetType=0 begin --行政领用单2423
    insert into #421205 select  w.shopid,w.goodsid,w.cost,2423,w.taxrate,
      sum(w.qty) as Qty,round(sum(w.qty*w.cost),2) as TaxCostValue,
      round(sum(w.qty*w.cost*(100-w.taxRate*g.AgroFlag)/(100+w.taxRate*(1-g.AgroFlag))),2) as NoTaxCostValue,
      w.sheetid,s.Editor,s.Checker,'','',0,'',0,'','',w.venderid,''
    from XTran s,XTranItem si,#421205Wastebook w,goods g
    where s.sheetid=si.sheetid and si.sheetid=w.sheetid and w.sheettype=2423 
      and si.goodsid=w.goodsid and si.goodsid=g.goodsid
      group by w.shopid,w.goodsid,w.cost,w.sheetid,s.Editor,s.Checker,w.taxrate,w.venderid;
    select @Err=@@Error,@BreakPoint=42120522,@msg='取行政领用数据时出错！';
    if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end;
  
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42120530,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42120531,@msg='取管理部类权值出错!';
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
  select @Err=@@Error,@BreakPoint=42120540,@msg='取部类信息出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #421205 set shopname=sh.name
    from #421205 a,shop sh
    where a.shopid=sh.id;
  update #421205 set vendername=b.name
    from #421205 a,vender b
    where a.venderid=b.venderid;
    
  select @Err=@@Error,@BreakPoint=42120545,@msg='取机构名称出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  return 0;     
ErrHandle:  
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);  
  return -1;  
  
end;
GO



--425114 待处理销售日报表
--修改：赵剑 2003-10-24 10:40 重新整理，纳入全量脚本
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
  select @msg='取管理部门级别时出错!'
  select @deptlevel=value from config where name='管理部门级别';  
  select @Err=@@Error,@BreakPoint=425000;  
  if (@Err!=0) or (@Err is null) or (@deptlevel is null) goto ErrHandle;  
  
  select @msg='取管理部门级别权值时出错!'
  select @levelvalue=null;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;  
  select @Err=@@Error,@BreakPoint=425010;  
  if (@Err!=0) or (@Err is null) or (@levelvalue is null) goto ErrHandle;  
  select @msg='';

  if @IsGoods=1 begin  --显示商品明细
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
  end else begin--不显示商品明细
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);  
  return -1;  
  
End  
GO

--427871 DM商品促销销售明细报告
-----------------------------------------------------------------
--rp_427871			DM商品促销销售明细报告		
--参数：促销计划编号、机构编码
--返回：标志0=成功		断点号(427871XX)
--表：	
--函数：
--算法：
--建立：赵剑 2003-10-28
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
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42787110,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42787111,@msg='取管理部类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  create table #temp_427871
  (
   sDate		datetime	null,		--日期
   sGroupID		int		null,		--管理部类编码
   sGroupName		char(16)	null,		--管理部类名称
   GoodsID		int    		null,		--商品编码
   Barcodeid		char(13)	null,		--条码               
   GoodsName		char(64)	null,		--中文名                 
   Spec			char(16)	null,		--商品规格               
   UnitName		char(8)		null,		--售卖单位
   Pricebegindate	datetime        null,		--售价开始日期
   Priceenddate		datetime        null,		--售价结束日期
   costbegindate	datetime        null,		--进价开始日期
   costenddate		datetime        null,		--进价结束日期
   ContractCost		dec(16,4)	null,		--正常进价
   cost			dec(16,4)	null,		--促销进价
   NormalPrice		dec(16,4)	null,		--正常售价
   Price		dec(16,4)	null,		--促销售价
   NormalGPR		dec(16,4)	null,		--正常毛利率
   GPR			dec(16,4)	null,		--促销毛利率
   DMS			dec(16,4)	null,		--平均日销量
   SaleQty		dec(16,4)	null,		--销售数量
   SaleCost		dec(16,4)	null,		--销售成本
   SaleValue		dec(16,4)	null,		--销售金额
   GPValue		dec(16,4)	null,		--毛利额
   GPRate		dec(16,4)	null,		--销售毛利率
   GroupRate		dec(16,4)	null,		--占该期间销售部门比例%
   OpenQty		dec(16,4)	null,		--在途数
   CloseQty		dec(16,4)	null,		--当前库存数量
   CloseCostV		dec(16,4)	null,		--当前库存金额
   VenderID		int		null,		--供应商编码
   VenderName		char(64)	null		--供应商名称
  )
  select @tempflag=1;   
  --取促销计划相关信息
  select * into #427871PP from NowPromotionPlan0
    where PlanID=@PlanID and ShopID=@ShopID;
  insert into #427871PP(SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
      PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime)
    select SheetID,PlanID,ShopID,Venderid,Goodsid,Price,Cost,
        PriceBeginDate,PriceEndDate,CostBeginDate,CostEndDate,PlanDateTime from NowPromotionPlan
      where PlanID=@PlanID and ShopID=@ShopID;
  select @Err=@@Error,@BreakPoint=42787112,@msg='取促销计划时出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  select @begindate=min(PriceBeginDate),@enddate=max(PriceEndDate) from #427871PP;
  select @Err=@@Error,@BreakPoint=42787118,@msg='取促销计划日期时出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;  

  --建临时表
  --本月大类销售统计
  select SDate,GoodsID,ShopID,SaleQty,SaleValue,SaleCost,CloseQty,CloseCostV
    into #427871RPT_Base0001 from RPT_Base0001 where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'RPT_Base0001',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427871tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427871tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427871tmp;              --没有,取当前值
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
  select @Err=@@Error,@BreakPoint=42787113,@msg='取RPT_Base0001数据出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;  
  --删除无关数据
  delete from #427871RPT_Base0001 where goodsid not in (select goodsid from #427871PP);
  select @Err=@@Error,@BreakPoint=42787114,@msg='删除无关数据时出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  --插入基本信息（日期、商品编码、销售数量、销售金额、销售成本、销售毛利、结存数量、结存金额）
  insert into #temp_427871(SDate,GoodsID,SaleQty,SaleValue,SaleCost,GPValue,CloseQty,CloseCostV)
    select SDate,GoodsID,SaleQty,SaleValue,SaleCost,SaleValue-SaleCost,CloseQty,CloseCostV 
    from #427871RPT_Base0001;
  select @Err=@@Error,@BreakPoint=42787115,@msg='取基本信息出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;      
  drop table #427871RPT_Base0001;
 
  --跟DM促销计划关联，取开始结束日期、促销进价、促销售价、促销毛利率、供应商编码
  update #temp_427871 
    set PriceBeginDate=b.PriceBeginDate,PriceEndDate=b.PriceEndDate,
        CostBeginDate=b.CostBeginDate,CostEnddate=b.CostEnddate,
        cost=b.cost,Price=b.Price,GPR=(b.Price-b.cost)*100/(case b.Price when 0 then 1 else b.Price end),
        Venderid=b.venderid
    from #temp_427871 a,#427871PP b
    where a.goodsid=b.goodsid
  select @Err=@@Error,@BreakPoint=42787120,@msg='取促销开始结束日期出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --取其他附属信息（部类信息、条码、商品名称、规格、售卖单位、供应商名称）
  update #temp_427871
    set sgroupid=g.deptid/@levelvalue,sgroupname=sg.name,barcodeid=g.barcodeid,
        GoodsName=g.name,spec=g.spec,unitname=g.unitname,VenderName=v.name
    from #temp_427871 a,goods g,vender v,sgroup sg
    where a.goodsid=g.goodsid and a.venderid=v.venderid and g.deptid/@levelvalue=sg.id
  select @Err=@@Error,@BreakPoint=42787125,@msg='取附属出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  --取正常售价、正常进价、计算正常毛利率
  update #temp_427871
    set NormalPrice=b.NormalPrice
    from #temp_427871 a,goodsshop b
    where a.goodsid=b.goodsid and b.shopid=@shopid;
  select @Err=@@Error,@BreakPoint=42787130,@msg='取正常售价出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #temp_427871
    set ContractCost=b.ContractCost
    from #temp_427871 a,cost b
    where a.goodsid=b.goodsid and b.shopid=@shopid and a.venderid=b.venderid;
  select @Err=@@Error,@BreakPoint=42787131,@msg='取正常进价出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  update #temp_427871 
    set NormalGPR=(NormalPrice-ContractCost)*100/(case NormalPrice when 0 then 1 else NormalPrice end);
  select @Err=@@Error,@BreakPoint=42787132,@msg='计算正常毛利率出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  --计算销售毛利率
  update #temp_427871
    set GPRate=GPValue*100/(case SaleValue when 0 then 1 else SaleValue end);
  select @Err=@@Error,@BreakPoint=42787140,@msg='计算销售毛利率出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  --取日平均销量、在途数
  update #temp_427871 
    set DMS=b.NDMS,OpenQty=b.OpenOrderQty+b.OpenRationQty
    from #temp_427871 a,demand b
    where a.goodsid=b.goodsid and b.shopid=@shopid;
  select @Err=@@Error,@BreakPoint=42787145,@msg='取日平均销量、在途数时出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  --计算销售占比（占部门的比）
  select sdate,ManageDeptid,shopid,SaleValue 
    into #427871Rpt_Base0021
    from Rpt_Base0021
    where convert(char(8),sdate,112)>=convert(char(8),@begindate,112)
      and convert(char(8),sdate,112)<=convert(char(8),@enddate,112);
  select @Err=@@Error,@BreakPoint=42787150,@msg='取大类销售数据时出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;          
  update #temp_427871
    set GroupRate=a.SaleValue*100/(case b.SaleValue when 0 then 1 else b.SaleValue end)
    from #temp_427871 a,#427871Rpt_Base0021 b
    where a.sdate=b.sdate and b.shopid=@shopid and a.sgroupid=b.ManageDeptID;
  select @Err=@@Error,@BreakPoint=42787151,@msg='计算销售占比时出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;      
  
  insert into #427871 select * from #temp_427871; 
  select @Err=@@Error,@BreakPoint=42787160,@msg='数据返回时出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;  
  
  drop table #427871Rpt_Base0021;
  drop table #427871PP;    
  drop table #427871tmp;
  drop table #temp_427871;
 return 0;    
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_427871;
  return -1;
End
Go

--421204 超市退货明细表
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
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42120401,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42120402,@msg='取管理部类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select * into #421204Wastebook from Wastebook where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'Wastebook',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42120403;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #421204tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #421204tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #421204tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42120404;
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
  retdate	datetime	null,			--退货日期
  badflag	int		null,			--坏货标记
  cost		dec(16,4)	default 0 null,		--进价
  AppCost	dec(16,4)	default 0 null,		--分摊价
  realQty	dec(16,4)	default 0 null,		--实退数
  CostValue	dec(16,4)	default 0 null,		--退货金额
  LostCostValue	dec(16,4)	default 0 null,		--未税损耗成本
  reasontypeid	int		null,
  retreason	char(16)	null,
  reason	char(32)	null
)
  select @tempflag=1;
  select @Err=@@Error,@Msg='建临时表时出错！',@BreakPoint=42120410;
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
  select @Err=@@Error,@Msg='取基础数据时出错！',@BreakPoint=42120415;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;  
  
  update #421204tmp set shopname=b.name
    from #421204tmp a,shop b
    where a.shopid=b.id;
  select @Err=@@Error,@Msg='取机构名称时出错！',@BreakPoint=42120420;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  
  update #421204tmp set deptname=b.name
    from #421204tmp a,dept b
    where a.deptid=b.id;
  select @Err=@@Error,@Msg='取类别名称时出错！',@BreakPoint=42120425;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  
  update #421204tmp 
    set goodsname=b.name,barcodeid=b.barcodeid,spec=b.spec,unitname=b.unitname
    from #421204tmp a,goods b
    where a.goodsid=b.goodsid;
  select @Err=@@Error,@Msg='取商品信息时出错！',@BreakPoint=42120430;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  
  update #421204tmp set retreason=b.name
    from #421204tmp a,retreasontype b
    where a.reasontypeid=b.id;
  select @Err=@@Error,@Msg='取退货原因时出错！',@BreakPoint=42120435;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  insert into #421204 select * from #421204tmp;
  select @Err=@@Error,@Msg='返回数据时出错！',@BreakPoint=42120415;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  drop table #421204tmp;
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #421204tmp;
  return -1;
End
Go 

--单品进销存含税日报表(固定表)
if exists (select * from dbo.sysobjects
	where id = object_id(N'dbo.RPT_Base1001') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
	drop table dbo.RPT_Base1001
GO
Create Table RPT_Base1001
(
SDate			datetime	null,			--日期
GoodsID			int   		null,			--商品编码
ShopID			char(4)		null,			--店号
VenderID		int		null,			--供应商编码
DeptID			int   		null,			--类别编号
CostTaxRate		dec(5,2)	default 0 null,		--进项税率%
Cost			dec(12,4)	default 0 null,		--当日最后进价
SaleQty			dec(16,4)	default 0 null,		--销售数量
SaleCost		dec(16,4)	default 0 null,		--销售含税成本金额
NSaleCost		dec(16,4)	default 0 null,		--销售无税成本金额
ReceiptQty		dec(16,4)	default 0 null,		--验收数量
ReceiptValue		dec(16,4)	default 0 null,		--含税验收金额
NReceiptValue		dec(16,4)	default 0 null,		--无税验收金额
RetQty			dec(16,4)	default 0 null,		--退货数量
RetValue		dec(16,4)	default 0 null,		--含税退货金额
NRetValue		dec(16,4)	default 0 null,		--无税退货金额
TransferOutQty		dec(16,4)	default 0 null,		--调出数量
TransferOutValue	dec(16,4)	default 0 null,		--含税调出金额
NTransferOutValue	dec(16,4)	default 0 null,		--无税调出金额
TransferInQty		dec(16,4)	default 0 null,		--调入数量
TransferInValue		dec(16,4)	default 0 null,		--含税调入金额
NTransferInValue	dec(16,4)	default 0 null,		--无税调入金额
PDQty			dec(16,4)	default 0 null,		--盘点调整数量
PDValue			dec(16,4)	default 0 null,		--含税盘点调整金额
NPDValue		dec(16,4)	default 0 null,		--无税盘点调整金额
LostQty			dec(16,4)	default 0 null,		--报损数量
LostValue		dec(16,4)	default 0 null,		--含税报损金额
NLostValue		dec(16,4)	default 0 null,		--无税报损金额
WSaleQty		dec(16,4)	default 0 null,		--批发数量
WSaleValue		dec(16,4)	default 0 null,		--含税批发金额
NWSaleValue		dec(16,4)	default 0 null,		--无税批发金额
UseQty			dec(16,4)	default 0 null,		--领用数量
UseValue		dec(16,4)	default 0 null,		--含税领用金额
NUseValue		dec(16,4)	default 0 null,		--无税领用金额
AdjustQty		dec(16,4)	default 0 null,		--其他调整数量(批次更正)
AdjustValue		dec(16,4)	default 0 null,		--含税其他调整金额(库存金额调整)
NAdjustValue		dec(16,4)	default 0 null,		--无税其他调整金额(库存金额调整)
PrevQty			dec(16,4)	default 0 null,		--期初数量
PrevValue		dec(16,4)	default 0 null,		--期初含税金额
NPrevValue		dec(16,4)	default 0 null,		--期初无税金额
CloseQty		dec(16,4)	default 0 null,		--结存数量
CloseCostV		dec(16,4)	default 0 null,		--含税库存结存金额
NCloseCostV		dec(16,4)	default 0 null		--无税库存结存金额
)
GO
Create index i1_RPT_Base1001 on RPT_Base1001 (SDate,ShopID)
GO


-----------------------------------------------------------------
--SP_RPTBase1001_Stock		单品进销存含税日报表辅助存储过程
--参数：日期
--返回：标志0=成功		断点号(424601xx)
--表：
--函数：
--算法：按分组来计算期初期末库存
--建立：赵剑 2003-11-3 23:48
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
        --更新期末库存
        update #TMP_Stock1050 
          set CloseQty=PrevQty+Qty,
              CloseCostV=PrevValue+CostValue,
              NCloseCostV=NPrevValue+NcostValue
          where sdate=@sdate1 and goodsid=@goodsid1
            and shopid=@shopid1 and venderid=@venderid1
            and deptid=@deptid1 and costtaxrate=@costtaxrate1;
        select @Err=@@Error,@BreakPoint=42460105,@msg='取期末库存出错!';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
        select @CloseQty1=CloseQty,@CloseCostV1=CloseCostV,@NCloseCostV1=NCloseCostV
          from #TMP_Stock1050
          where sdate=@sdate1 and goodsid=@goodsid1
            and shopid=@shopid1 and venderid=@venderid1
            and deptid=@deptid1 and costtaxrate=@costtaxrate1;
        select @Err=@@Error,@BreakPoint=42460110,@msg='更新期末库存出错!';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;            
        fetch next from cur_stock into @Sdate2,@GoodsID2,@shopid2,
            @venderid2,@deptid2,@costtaxrate2,@qty2,@costvalue2,@NcostValue2,
            @PrevQty2,@PrevValue2,@NPrevValue2,@CloseQty2,@CloseCostV2,@NCloseCostV2;
        if @@fetch_status!=0 break;
        --如果不满足分组条件，则重新对@count置0，更新条件，转至WHILE循环开始
        if (@goodsid1<>@goodsid2 or @shopid1<>@shopid2 
            or @venderid1<>@venderid2 or @costtaxrate1<>@costtaxrate2) begin
          select @sdate1=@sdate2,@goodsid1=@goodsid2,@shopid1=@shopid2;
          select @venderid1=@venderid2,@deptid1=@deptid2,@costtaxrate1=@costtaxrate2;
        end
        else begin
          --在同一分组内
          --更新每条记录期初库存=上条记录的期末库存
          update #TMP_Stock1050 
            set PrevQty=@CloseQty1,
                PrevValue=@CloseCostV1,
                NPrevValue=@NCloseCostV1
            where sdate=@sdate2 and goodsid=@goodsid2
              and shopid=@shopid2 and venderid=@venderid2
              and deptid=@deptid2 and costtaxrate=@costtaxrate2; 
          select @Err=@@Error,@BreakPoint=42460110,@msg='取期初库存出错!';
          if (@Err is null) or (@Err!=0)  goto ErrHandle;          
          --更新变量  
          select @sdate1=@sdate2,@goodsid1=@goodsid2,@shopid1=@shopid2;
          select @venderid1=@venderid2,@deptid1=@deptid2,@costtaxrate1=@costtaxrate2;
          select @CloseQty1=@CloseQty2,@CloseCostV1=@CloseCostV2,@NCloseCostV1=@NCloseCostV2
          select @PrevQty1=@PrevQty2,@PrevValue1=@PrevValue2,@NPrevValue1=@NPrevValue2;
        end;
      end;
    end;
    close cur_stock;
    deallocate cur_stock;
  --回传数据
  insert into #tmp_stock1040 select * from #tmp_stock1050;
  select @Err=@@Error,@BreakPoint=42460120,@msg='回传数据出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;  
  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO


-----------------------------------------------------------------
--SP_RPTBase1001		单品进销存含税日报表
--参数：日期
--返回：标志0=成功		断点号(424600xx)
--表：	
--函数：
--算法：
--建立：赵剑 2003-10-30 15:40
--修改：赵剑 2003-12-15 11:45 所有业务加上进价cost
--修改：赵剑 2003-12-15 11:49 批发结果乘上-1，以满足公式
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
    --库存不足的处理模式(0=挂单 1=虚增库存 2=使用默认供应商负数库存 3=使用特殊供应商负数库存)
  
  SET NOCOUNT ON
  select @Msg = '',@Err=0;
  select @tempflag=0;
  select @BreakPoint = 42460001;
  if @begindate>@enddate begin
    select @msg='开始日期必须小于等于结束日期！';
    goto ErrHandle;
  end;  
  --select @StockLackRule=StockLackRule from StockRule where SheetType=101;
  --if @StockLackRule is null select @StockLackRule=1	--销售待处理是否产生负数库存并结转成本
  --if @StockLackRule !=0 select @StockLackRule=1

  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=42460002,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42460003,@msg='取管理部类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  Create Table #TMP_Base1001
  (
    SDate		datetime	null,			--日期
    GoodsID		int   		null,			--商品编码
    ShopID		char(4)		null,			--店号
    VenderID		int		null,			--供应商编码
    DeptID		int   		null,			--类别编号
    CostTaxRate		dec(5,2)	default 0 null,		--进项税率%
    Cost		dec(12,4)	default 0 null,		--当日最后进价
    SaleQty		dec(16,4)	default 0 null,		--销售数量
    SaleCost		dec(16,4)	default 0 null,		--销售含税成本金额
    NSaleCost		dec(16,4)	default 0 null,		--销售无税成本金额
    ReceiptQty		dec(16,4)	default 0 null,		--验收数量
    ReceiptValue	dec(16,4)	default 0 null,		--含税验收金额
    NReceiptValue	dec(16,4)	default 0 null,		--无税验收金额
    RetQty		dec(16,4)	default 0 null,		--退货数量
    RetValue		dec(16,4)	default 0 null,		--含税退货金额
    NRetValue		dec(16,4)	default 0 null,		--无税退货金额
    TransferOutQty	dec(16,4)	default 0 null,		--调出数量
    TransferOutValue	dec(16,4)	default 0 null,		--含税调出金额
    NTransferOutValue	dec(16,4)	default 0 null,		--无税调出金额
    TransferInQty	dec(16,4)	default 0 null,		--调入数量
    TransferInValue	dec(16,4)	default 0 null,		--含税调入金额
    NTransferInValue	dec(16,4)	default 0 null,		--无税调入金额
    PDQty		dec(16,4)	default 0 null,		--盘点调整数量
    PDValue		dec(16,4)	default 0 null,		--含税盘点调整金额
    NPDValue		dec(16,4)	default 0 null,		--无税盘点调整金额
    LostQty		dec(16,4)	default 0 null,		--报损数量
    LostValue		dec(16,4)	default 0 null,		--含税报损金额
    NLostValue		dec(16,4)	default 0 null,		--无税报损金额
    WSaleQty		dec(16,4)	default 0 null,		--批发数量
    WSaleValue		dec(16,4)	default 0 null,		--含税批发金额
    NWSaleValue		dec(16,4)	default 0 null,		--无税批发金额
    UseQty		dec(16,4)	default 0 null,		--领用数量
    UseValue		dec(16,4)	default 0 null,		--含税领用金额
    NUseValue		dec(16,4)	default 0 null,		--无税领用金额
    AdjustQty		dec(16,4)	default 0 null,		--其他调整数量(批次更正)
    AdjustValue		dec(16,4)	default 0 null,		--含税其他调整金额(库存金额调整)
    NAdjustValue	dec(16,4)	default 0 null,		--无税其他调整金额(库存金额调整)
    PrevQty		dec(16,4)	default 0 null,		--期初数量
    PrevValue		dec(16,4)	default 0 null,		--期初含税金额
    NPrevValue		dec(16,4)	default 0 null,		--期初无税金额
    CloseQty		dec(16,4)	default 0 null,		--结存数量
    CloseCostV		dec(16,4)	default 0 null,		--含税库存结存金额
    NCloseCostV		dec(16,4)	default 0 null,		--无税库存结存金额
  );
  
  select @tempflag=1;  
 
  select * into #Base1001_Wastebook from Wastebook where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'Wastebook',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42460007;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #Base1001tablename1
  while 1=1 begin
    select @i=charindex(',',tablesname) from #Base1001tablename1;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #Base1001tablename1;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取Wastebook数据时出错！',@BreakPoint=42460008;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

--取出三级帐数据
    --序列号、单据类型、机构、供应商、类别、商品、进项税率、记帐方向、发生数量、发生金额
    --发生税额、结存数量、结存金额、结存税额

--取出销售数据
  select @BreakPoint = 42460015;
  Insert into #TMP_Base1001(Sdate,ShopID,GoodsID,VenderID,DeptID,SaleQty,Cost,
      SaleCost,CostTaxRate,NSaleCost)
    select Sdate,ShopID,GoodsID,VenderID,DeptID,Qty,Cost,
        CostValue,TaxRate,CostValue-CostTaxValue
    from #Base1001_Wastebook where sheettype=101;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
--分类统计

  --验收
  select @BreakPoint = 42460025
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,ReceiptQty,ReceiptValue,NReceiptValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,Qty,CostValue,(CostValue-CostTaxValue),Cost 
	from #Base1001_Wastebook where SheetType=2301
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --退货
  select @BreakPoint = 42460026
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,RetQty,RetValue,NRetValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,(Directflag*Qty),(Directflag*CostValue),(Directflag*(CostValue-CostTaxValue)),Cost 
	from #Base1001_Wastebook where SheetType=2323
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --调出（配送、调拨）
  select @BreakPoint = 42460027
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,TransferOutQty,TransferOutValue,NTransferOutValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,Qty,CostValue,(CostValue-CostTaxValue),Cost 
	from #Base1001_Wastebook where SheetType in (2332,2342) and DirectFlag=-1   --1-->-1
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --调入（退配、调拨）
  select @BreakPoint = 42460028
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,TransferInQty,TransferInValue,NTransferInValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,Qty,CostValue,(CostValue-CostTaxValue),Cost 
	from #Base1001_Wastebook where SheetType in (2332,2342) and DirectFlag=1  --  -1-->1
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --盘点
  select @BreakPoint = 42460028
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,PDQty,PDValue,NPDValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,(Directflag*Qty),(Directflag*CostValue),(Directflag*(CostValue-CostTaxValue)),Cost 
	from #Base1001_Wastebook where SheetType=2444
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --报损
  select @BreakPoint = 42460029
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,LostQty,LostValue,NLostValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,Qty,CostValue,(CostValue-CostTaxValue),Cost 
	from #Base1001_Wastebook where SheetType=2413
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --批发
  select @BreakPoint = 42460030
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,WSaleQty,WSaleValue,NWSaleValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,(Directflag*Qty),(Directflag*CostValue),(Directflag*(CostValue-CostTaxValue)),Cost 
	from #Base1001_Wastebook where SheetType=2451
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --领用
  select @BreakPoint = 42460031
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,UseQty,UseValue,NUseValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,Qty,CostValue,(CostValue-CostTaxValue),Cost 
	from #Base1001_Wastebook where SheetType in (2423,2472,2473)	--行政领用、供应商领用、加工领用
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --其他调整
  select @BreakPoint = 42460032
  Insert into #TMP_Base1001(SDate,GoodsID,ShopID,Venderid,Deptid,CostTaxRate,AdjustQty,AdjustValue,NAdjustValue,Cost)
	select SDate,GoodsID,ShopID,Venderid,Deptid,TaxRate,(DirectFlag*Qty),(DirectFlag*CostValue),(Directflag*(CostValue-CostTaxValue)),Cost 
	from #Base1001_Wastebook   --验收,退货,配送,调拨,盘点,报损,批发,领用(行政、供应商、加工),销售,待处理
	where SheetType not in (2301,2323,2332,2342,2444,2413,2451,2423,2472,2473,101,102)
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

  --期初期末库存
  select @tmpdate=dateadd(mm,-1,@begindate);
  select @MonthID=Year(@tmpdate)*100+Month(@tmpdate);
  --临时期初库存表
  Create Table #TMP_Stock1001
  (
    GoodsID		int   		null,			--商品编码
    ShopID		char(4)		null,			--店号
    VenderID		int		null,			--供应商编码
    DeptID		int   		null,			--类别编号
    CostTaxRate		dec(5,2)	default 0 null,		--进项税率%
    Qty			dec(16,4)	default 0 null,		--数量
    CostValue		dec(16,4)	default 0 null,		--含税成本金额
    NCostValue		dec(16,4)	default 0 null,		--无税成本金额
  );
  select @Err=@@Error,@Msg='建临时表出错！',@BreakPoint=42460040;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  --统计商品数
  insert into #TMP_Stock1001
    select goodsid,shopid,venderid,deptid,Taxrate,0,0,0 
      from #Base1001_Wastebook
      group by goodsid,shopid,venderid,deptid,Taxrate
  select @Err=@@Error,@Msg='统计商品数出错！',@BreakPoint=42460042;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;      
  --统计上月期初库存
  insert into #TMP_Stock1001
    select goodsid,shopid,Venderid,ManageDeptID,Taxrate,qty,costvalue,CostValue-TaxValue 
      from RPT_VenderStockMonth 
      where monthid=@MonthID;
  select @Err=@@Error,@Msg='统计上月期初库存出错！',@BreakPoint=42460044;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;            
  --统计本月期初库存
  --取本月初至查询开始日期的库存
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
  select @Err=@@Error,@Msg='取本月初至查询开始日期的库存出错！',@BreakPoint=42460046;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  --取发生数量、发生金额、发生税额  
  insert into #TMP_Stock1001
    select goodsid,shopid,venderid,deptid,taxrate,
      sum(Qty*directflag) as CloseQty,sum(CostValue*Directflag),
      sum((CostValue-CostTaxValue)*Directflag)
    from #Base1001_Wastebook_Stock
    group by goodsid,deptid,shopid,venderid,taxrate;
  select @Err=@@Error,@Msg='取发生数量、发生金额、发生税额出错！',@BreakPoint=42460047;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;     
  --统计所有商品期初库存
  Create Table #TMP_Stock1002
  (
    GoodsID		int   		null,			--商品编码
    ShopID		char(4)		null,			--店号
    VenderID		int		null,			--供应商编码
    DeptID		int   		null,			--类别编号
    CostTaxRate		dec(5,2)	default 0 null,		--进项税率%
    Qty			dec(16,4)	default 0 null,		--数量
    CostValue		dec(16,4)	default 0 null,		--含税成本金额
    NCostValue		dec(16,4)	default 0 null,		--无税成本金额
  )
  insert into #TMP_Stock1002
    select goodsid,shopid,venderid,deptid,CostTaxrate,sum(qty),sum(costValue),sum(NCostValue)
      from #TMP_Stock1001
      group by shopid,goodsid,deptid,venderid,Costtaxrate;
  select @Err=@@Error,@Msg='统计所有商品期初库存出错！',@BreakPoint=42460050;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;       
  drop table #Base1001_Wastebook_Stock;
  drop table #TMP_Stock1001;
  
  --按日期统计数据
  Create Table #TMP_Stock1003
  ( 
    SDate		datetime	null,			--日期
    GoodsID		int   		null,			--商品编码
    ShopID		char(4)		null,			--店号
    VenderID		int		null,			--供应商编码
    DeptID		int   		null,			--类别编号
    CostTaxRate		dec(5,2)	default 0 null,		--进项税率%
    Qty			dec(12,3)	Not null,		--发生数量
    CostValue		dec(12,2)	Not null,		--含税发生金额
    NCostValue		dec(12,2)	Not null,		--无税发生金额
    PrevQty		dec(16,4)	default 0 null,		--期初数量
    PrevValue		dec(16,4)	default 0 null,		--期初含税金额
    NPrevValue		dec(16,4)	default 0 null,		--期初无税金额
    CloseQty		dec(16,4)	default 0 null,		--结存数量
    CloseCostV		dec(16,4)	default 0 null,		--含税库存结存金额
    NCloseCostV		dec(16,4)	default 0 null		--无税库存结存金额  
  )
  insert into #TMP_Stock1003(Sdate,GoodsID,shopid,venderid,deptid,costtaxrate,qty,costvalue,NcostValue)
    select convert(char(8),Sdate,112),GoodsID,shopid,venderid,deptid,taxrate,
        sum(directflag*qty),sum(directflag*costvalue),sum(directflag*(costvalue-costtaxvalue))
      from #Base1001_Wastebook
      group by shopid,venderid,deptid,taxrate,GoodsID,sdate;
  select @Err=@@Error,@Msg='按日期统计数据出错！',@BreakPoint=42460052;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  --统计第一日的期初的库存  
  select min(Sdate) as sdate,GoodsID,shopid,venderid,deptid,costtaxrate
      into #TMP_Stock1004
    from #TMP_Stock1003
    group by shopid,venderid,deptid,costtaxrate,GoodsID;
  select @Err=@@Error,@Msg='建临时表出错！',@BreakPoint=42460054;
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
  select @Err=@@Error,@Msg='统计第一日的期初库存出错！',@BreakPoint=42460056;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;     
  drop table #TMP_Stock1002;
  
  --建立临时表处理期初期末库存
  --表1040返回数据
  Create Table #TMP_Stock1050
  ( 
    SDate		datetime	null,			--日期
    GoodsID		int   		null,			--商品编码
    ShopID		char(4)		null,			--店号
    VenderID		int		null,			--供应商编码
    DeptID		int   		null,			--类别编号
    CostTaxRate		dec(5,2)	default 0 null,		--进项税率%
    Qty			dec(12,3)	Not null,		--发生数量
    CostValue		dec(12,2)	Not null,		--含税发生金额
    NCostValue		dec(12,2)	Not null,		--无税发生金额
    PrevQty		dec(16,4)	default 0 null,		--期初数量
    PrevValue		dec(16,4)	default 0 null,		--期初含税金额
    NPrevValue		dec(16,4)	default 0 null,		--期初无税金额
    CloseQty		dec(16,4)	default 0 null,		--结存数量
    CloseCostV		dec(16,4)	default 0 null,		--含税库存结存金额
    NCloseCostV		dec(16,4)	default 0 null		--无税库存结存金额  
  )
  Create Table #TMP_Stock1040
  ( 
    SDate		datetime	null,			--日期
    GoodsID		int   		null,			--商品编码
    ShopID		char(4)		null,			--店号
    VenderID		int		null,			--供应商编码
    DeptID		int   		null,			--类别编号
    CostTaxRate		dec(5,2)	default 0 null,		--进项税率%
    Qty			dec(12,3)	Not null,		--发生数量
    CostValue		dec(12,2)	Not null,		--含税发生金额
    NCostValue		dec(12,2)	Not null,		--无税发生金额
    PrevQty		dec(16,4)	default 0 null,		--期初数量
    PrevValue		dec(16,4)	default 0 null,		--期初含税金额
    NPrevValue		dec(16,4)	default 0 null,		--期初无税金额
    CloseQty		dec(16,4)	default 0 null,		--结存数量
    CloseCostV		dec(16,4)	default 0 null,		--含税库存结存金额
    NCloseCostV		dec(16,4)	default 0 null		--无税库存结存金额  
  )
  select @Err=@@Error,@Msg='建临时表时出错！',@BreakPoint=42460058;
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  --使用游标按分组更新期初期末库存
  declare cur_goods cursor local for
  select GoodsID,shopid,venderid,deptid,costtaxrate
        from #TMP_Stock1004
        order by shopid,venderid,deptid,costtaxrate,GoodsID;
  open cur_goods;
  while (1=1) begin
    fetch next from cur_goods into @GoodsID,@shopid,@venderid,@deptid,@costtaxrate;
    if @@fetch_status!=0 break;
    --清除1050中临时数据
    delete from #tmp_stock1050;
    --取出需要的数据
    insert into #tmp_stock1050 
      select * from #tmp_stock1003
        where goodsid=@goodsid and shopid=@shopid and venderid=@venderid
          and deptid=@deptid and costtaxrate=@costtaxrate;
    select @Err=@@Error,@Msg='取需要处理的数据时出错！',@BreakPoint=42460060;
    if (@Err is null) or (@Err!=0)  goto ErrHandle;           
    --处理取出的数据
    exec @err=SP_RPTBase1001_Stock;
    select @Msg='执行辅助存储过程出错！',@BreakPoint=42460062;
    if (@Err is null) or (@Err!=0)  goto ErrHandle;           
    
    --清除已经处理的数据
    --delete from #tmp_stock1003
    --    where goodsid=@goodsid and shopid=@shopid and venderid=@venderid
    --      and deptid=@deptid and costtaxrate=@costtaxrate;
    select @Err=@@Error,@Msg='清理已经处理数据时出错！',@BreakPoint=42460064;
    if (@Err is null) or (@Err!=0)  goto ErrHandle;               
  end;--循环结束，此时1040中的数据为所需要的
  close cur_goods;
  deallocate cur_goods;
  drop table #tmp_stock1050;
  drop table #tmp_stock1003;
  drop table #tmp_stock1004;
  select @Err=@@Error,@Msg='drop临时表出错！',@BreakPoint=42460066;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;           
  --插入统计临时表
  Insert into #TMP_Base1001 (SDate,GoodsID,ShopID,Venderid,deptid,CostTaxRate,
      PrevQty,PrevValue,NPrevValue,CloseQty,CloseCostV,NCloseCostV)
    select SDate,GoodsID,ShopID,Venderid,deptid,CostTaxRate,
      PrevQty,PrevValue,NPrevValue,CloseQty,CloseCostV,NCloseCostV
    from #tmp_stock1040;
  select @Err=@@Error,@Msg='统计期初期末库存数据时出错！',@BreakPoint=42460070;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;           
  drop table #tmp_stock1040;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  
--产生RPT_Base1001(单品进销存含税日报表)
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go




-----------------------------------------------------------------
--TL_GetWeekDateBound		给出周号@WeekID，返回该周的开始和结束日期
--参数：周号
--返回：@BeginDate、@EndDate分别为开始和结束日期
--建立：胥亮 2003.11.19
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
--TL_GetNextWeekID		获取指定周号@WeekID的下周号
--参数：周号
--返回：下周周号
--建立：胥亮 2003.11.19
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
--TL_GetPrevWeekID		获取指定周号@WeekID的上周号
--参数：周号
--返回：上周周号
--建立：胥亮 2003.11.19
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
--RP_GetWeekSaleToTable		获取指定周号@WeekID周内从星期一到星期日每天的情况
--	分别包括：10=实际销售、20=折扣、30=销售成本、40=销售毛利、50=毛利率
--		60=客单数、70=客单价
--参数：店号、周号、（#T_WeekSale表，固定表名）
--返回：0=成功
--建立：胥亮 2003.11.19
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
  select @BreakPoint=429001,@Err=@@error,@Msg='执行TL_GetWeekDateBound错误！';
  if @Err != 0 Goto ErrHandle;
  
  --写入所有初始数据
  insert into #T_WeekSale(WeekID,RowType) values (@WeekID,10);	--实际销售
  insert into #T_WeekSale(WeekID,RowType) values (@WeekID,20);	--折扣
  insert into #T_WeekSale(WeekID,RowType) values (@WeekID,30);	--成本
  insert into #T_WeekSale(WeekID,RowType) values (@WeekID,40);	--毛利
  insert into #T_WeekSale(WeekID,RowType) values (@WeekID,50);	--毛利率
  insert into #T_WeekSale(WeekID,RowType) values (@WeekID,60);	--客单数
  insert into #T_WeekSale(WeekID,RowType) values (@WeekID,70);	--客单价
  select @BreakPoint=429011,@Err=@@error,@Msg='写#T_WeekSale表错误！';
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
    select @BreakPoint=429021,@Err=@@error,@Msg='从RPT_SaleShop获取数据错误！';
    if @Err != 0 Goto ErrHandle;
    
    select @SQL='update #T_WeekSale set Day' + cast(@I as char(1)) + '=' + cast(@SaleValue as char(15))
       + ' where RowType=10 and WeekID='+cast(@WeekID as char(6));
    Exec(@SQL);
    select @BreakPoint=429022,@Err=@@error,@Msg='写销售数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekSale set Day' + cast(@I as char(2)) + '=' + cast(@DiscValue as char(15))
       + ' where RowType=20 and WeekID='+cast(@WeekID as char(6));
    Exec(@SQL);
    select @BreakPoint=429023,@Err=@@error,@Msg='写折扣数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekSale set Day' + cast(@I as char(3)) + '=' + cast(@CostValue as char(15))
       + ' where RowType=30 and WeekID='+cast(@WeekID as char(6));
    Exec(@SQL);
    select @BreakPoint=429024,@Err=@@error,@Msg='写成本数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekSale set Day' + cast(@I as char(4)) + '=' + cast(@GainValue as char(15))
       + ' where RowType=40 and WeekID='+cast(@WeekID as char(6));
    Exec(@SQL);
    select @BreakPoint=429025,@Err=@@error,@Msg='写毛利数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekSale set Day' + cast(@I as char(5)) + '=' + cast(@GainRate as char(15))
       + ' where RowType=50 and WeekID='+cast(@WeekID as char(6));
    Exec(@SQL);
    select @BreakPoint=429026,@Err=@@error,@Msg='写毛利率数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekSale set Day' + cast(@I as char(5)) + '=' + cast(@TradeNumber as char(15))
       + ' where RowType=60 and WeekID='+cast(@WeekID as char(6));
    Exec(@SQL);
    select @BreakPoint=429027,@Err=@@error,@Msg='写客单数数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekSale set Day' + cast(@I as char(5)) + '=' + cast(@TradePrice as char(15))
       + ' where RowType=70 and WeekID='+cast(@WeekID as char(6));
    Exec(@SQL);
    select @BreakPoint=429028,@Err=@@error,@Msg='写客单价数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @BeginDate=DateAdd(day,1,@BeginDate);
    select @I=@I+1;    
  END
  
  --总值（销售、折扣、成本、毛利、客单数）、平日值、双修日值
  update #T_WeekSale set Total7=Day1+Day2+Day3+Day4+Day5+Day6+Day7,
      Total5=Day1+Day2+Day3+Day4+Day5,Total2=Day6+Day7
    where WeekID=@WeekID and RowType in (10,20,30,40,60);
  select @BreakPoint=429081,@Err=@@error,@Msg='计算合计值错误！';
  if @Err != 0 Goto ErrHandle;
  
  --上述平均值
  update #T_WeekSale set Avg7=Total7/7,Avg5=Total5/5,Avg2=Total2/2
    where WeekID=@WeekID and RowType in (10,20,30,40,60);
  select @BreakPoint=429082,@Err=@@error,@Msg='计算平均值错误！';
  if @Err != 0 Goto ErrHandle;
  
  --计算毛利率与客单价
  select @Sale7=Total7,@Sale5=Total5,@Sale2=Total2
    from #T_WeekSale where WeekID=@WeekID and RowType=10;	--销售
  select @Gain7=Total7,@Gain5=Total5,@Gain2=Total2
    from #T_WeekSale where WeekID=@WeekID and RowType=40;	--毛利    
  select @Trad7=Total7,@Trad5=Total5,@Trad2=Total2
    from #T_WeekSale where WeekID=@WeekID and RowType=60;	--客单数

  --毛利率
  update #T_WeekSale set Total7=case when @Sale7=0 then 0 else @Gain7/@Sale7*100 end,
      Total5=case when @Sale5=0 then 0 else @Gain5/@Sale5*100 end,
      Total2=case when @Sale2=0 then 0 else @Gain2/@Sale2*100 end
    where WeekID=@WeekID and RowType=50;
  select @BreakPoint=429083,@Err=@@error,@Msg='计算毛利率错误！';
  if @Err != 0 Goto ErrHandle;
  update #T_WeekSale set Avg7=Total7,Avg5=Total5,Avg2=Total2 where WeekID=@WeekID and RowType=50;
  
  --客单价
  update #T_WeekSale set Total7=case when @Trad7=0 then 0 else @Sale7/@Trad7 end,
      Total5=case when @Trad5=0 then 0 else @Sale5/@Trad5 end,
      Total2=case when @Trad2=0 then 0 else @Sale2/@Trad2 end
    where WeekID=@WeekID and RowType=70;
  select @BreakPoint=429084,@Err=@@error,@Msg='计算客单价错误！';
  if @Err != 0 Goto ErrHandle;
  update #T_WeekSale set Avg7=Total7,Avg5=Total5,Avg2=Total2 where WeekID=@WeekID and RowType=70;

  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--RP_GetWeekDeptSaleToTable		获取指定周号@WeekID周内从星期一到星期日每天的情况
--	分别包括：10=实际销售、20=折扣、30=销售成本、40=销售毛利、50=毛利率
--		60=客单数、70=客单价
--参数：店号、周号、（#T_WeekSale表，固定表名）
--返回：0=成功
--建立：胥亮 2003.11.20
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
  select @BreakPoint=429001,@Err=@@error,@Msg='执行TL_GetWeekDateBound错误！';
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
  select @BreakPoint=429011,@Err=@@error,@Msg='写表T_WeekDeptSale错误！';
  if @Err != 0 Goto ErrHandle;
  
  select @I=1;
  while @BeginDate<=@EndDate
  BEGIN    
    select @WeekID WeekID,ManageDeptID,sum(SaleValue-DiscValue) SaleValue,sum(DiscValue) DiscValue,
        sum(CostValue) CostValue,sum(SaleValue-DiscValue-CostValue) GainValue
      into #T_WeekDeptSale_1 from RPT_SaleGroup with (nolock)
      where convert(char(8),SDate,112)=@BeginDate and ShopID=@ShopID
      group by ManageDeptID;
    select @BreakPoint=429021,@Err=@@error,@Msg='从RPT_SaleGroup获取数据错误！';
    if @Err != 0 Goto ErrHandle;
    
    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.SaleValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=10 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429022,@Err=@@error,@Msg='写销售数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.DiscValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=20 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429023,@Err=@@error,@Msg='写折扣数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.CostValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=30 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429024,@Err=@@error,@Msg='写成本数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.GainValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=40 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429025,@Err=@@error,@Msg='写毛利数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + 
       '=case when b.SaleValue=0 then 0 else b.GainValue/b.SaleValue*100 end' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=50 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429026,@Err=@@error,@Msg='写毛利率数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.TradeNumber ' +
       ' from #T_WeekDeptSale a,RPT_CashManageDept b ' + 
       ' where a.RowType=60 and a.ManageDeptID=b.SGroupID and b.ShopID=''' + @ShopID + '''' +
       ' and b.SDate=' + convert(char(8),@BeginDate,112);
    Exec(@SQL);
    select @BreakPoint=429027,@Err=@@error,@Msg='写客单数数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.TradePrice ' +
       ' from #T_WeekDeptSale a,RPT_CashManageDept b ' + 
       ' where a.RowType=70 and a.ManageDeptID=b.SGroupID and b.ShopID=''' + @ShopID + '''' +
       ' and b.SDate=' + convert(char(8),@BeginDate,112);
    Exec(@SQL);
    select @BreakPoint=429028,@Err=@@error,@Msg='写客单价数据错误！';
    if @Err != 0 Goto ErrHandle;

    drop table #T_WeekDeptSale_1;

    select @BeginDate=DateAdd(day,1,@BeginDate);
    select @I=@I+1;    
  END  
  
  --总值（销售、折扣、成本、毛利、客单数）、平日值、双修日值
  update #T_WeekDeptSale set Total7=Day1+Day2+Day3+Day4+Day5+Day6+Day7,
      Total5=Day1+Day2+Day3+Day4+Day5,Total2=Day6+Day7
    where WeekID=@WeekID and RowType in (10,20,30,40,60);
  select @BreakPoint=429081,@Err=@@error,@Msg='计算合计值错误！';
  if @Err != 0 Goto ErrHandle;
  
  --上述平均值
  update #T_WeekDeptSale set Avg7=Total7/7,Avg5=Total5/5,Avg2=Total2/2
    where WeekID=@WeekID and RowType in (10,20,30,40,60);
  select @BreakPoint=429082,@Err=@@error,@Msg='计算平均值错误！';
  if @Err != 0 Goto ErrHandle;
  
  --计算毛利率与客单价
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
    from #T_WeekDeptSale where RowType=10;			--销售
  update #T_WeekDeptSale_2 set Gain7=b.Total7,Gain5=b.Total5,Gain2=b.Total2
    from #T_WeekDeptSale_2 a,#T_WeekDeptSale b
    where a.ManageDeptID=b.ManageDeptID and b.RowType=40;	--毛利
  update #T_WeekDeptSale_2 set Trad7=b.Total7,Trad5=b.Total5,Trad2=b.Total2
    from #T_WeekDeptSale_2 a,#T_WeekDeptSale b
    where a.ManageDeptID=b.ManageDeptID and b.RowType=60;	--客单数
    
  --毛利率
  update #T_WeekDeptSale set Total7=case when b.Sale7=0 then 0 else b.Gain7/b.Sale7*100 end,
      Total5=case when b.Sale5=0 then 0 else b.Gain5/b.Sale5*100 end,
      Total2=case when b.Sale2=0 then 0 else b.Gain2/b.Sale2*100 end
    from #T_WeekDeptSale a,#T_WeekDeptSale_2 b
    where a.ManageDeptID=b.ManageDeptID and a.RowType=50;
  select @BreakPoint=429083,@Err=@@error,@Msg='计算毛利率错误！';
  if @Err != 0 Goto ErrHandle;
  update #T_WeekDeptSale set Avg7=Total7,Avg5=Total5,Avg2=Total2 where WeekID=@WeekID and RowType=50;
  
  --客单价
  update #T_WeekDeptSale set Total7=case when b.Trad7=0 then 0 else b.Sale7/b.Trad7 end,
      Total5=case when b.Trad5=0 then 0 else b.Sale5/b.Trad5 end,
      Total2=case when b.Trad2=0 then 0 else b.Sale2/b.Trad2 end
    from #T_WeekDeptSale a,#T_WeekDeptSale_2 b
    where a.ManageDeptID=b.ManageDeptID and a.RowType=70;
  select @BreakPoint=429084,@Err=@@error,@Msg='计算客单价错误！';
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--rp_GetMonthDataToTable	获取指定开始和结束日期内，分月表的数据到临时表
--参数：日期段、月表名称（不带月份的正式表名称）、附加筛选条件
--返回：标志0=成功，#+@TableName为保存数据的临时表	断点号(429999XX)
--表：	
--函数：
--算法：
--建立：胥亮   2003.11.13
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
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42999901;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tables as tablesname into #423410tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #423410tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #423410tmp;              --没有,取当前值
       select @SQLString='insert into #' +@TableName + ' select * from '
           + ltrim(rtrim(@subTableName))
           + ' with (nolock) where convert(char(8),sdate,112)>=''' 
           + convert(char(8),@begindate,112) 
           + ''' and convert(char(8),sdate,112)<=''' 
           + convert(char(8),@enddate,112)
           + ''' and ' + @SCond;
       execute (@SQLString);
       select @Err=@@Error,@Msg='插入数据出错！',@BreakPoint=42999911;
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
       select @Err=@@Error,@Msg='插入数据出错！',@BreakPoint=42999921;
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--RP_GetWeekGoodsSaleToTable	获取指定周号@WeekID周内从星期一到星期日每天的情况
--	分别包括：10=实际销售、20=销售数量、30=销售毛利、40=毛利率、50=销售数周占比
--参数：店号、周号、商品编码、（#T_WeekGoodsSale表，固定表名）
--返回：0=成功
--建立：胥亮 2003.11.27
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
  select @BreakPoint=429001,@Err=@@error,@Msg='执行TL_GetWeekDateBound错误！';
  if @Err != 0 Goto ErrHandle;
 
  select @I=10;
  while @I<=50 
  BEGIN
    insert into #T_WeekGoodsSale(WeekID,GoodsID,RowType) values(@WeekID,@GoodsID,@I);
    select @I=@I+10;
  END
  select @BreakPoint=429011,@Err=@@error,@Msg='写表T_WeekGoodsSale错误！';
  if @Err != 0 Goto ErrHandle;
  
  --获取周销售数据
  select * into #RPT_Base0001 from RPT_Base0001 where 0=1;
  select @SCond='GoodsID='+cast(@GoodsID as char(6))+' and ShopID='''+@ShopID+'''';
  exec RP_GetMonthDataToTable @BeginDate,@EndDate,'RPT_Base0001',@SCond;
  select @BreakPoint=429012,@Err=@@error,@Msg='执行RP_GetMonthDataToTable失败！';
  if @Err != 0 Goto ErrHandle;
  
  select @I=1;
  while @BeginDate<=@EndDate
  BEGIN    
    select @WeekID WeekID,GoodsID,sum(SaleValue) SaleValue,sum(SaleQty) SaleQty,
        sum(SaleValue-SaleCost) GainValue
      into #T_WeekGoodsSale_1 from #RPT_Base0001
      where convert(char(8),SDate,112)=@BeginDate and ShopID=@ShopID
      group by GoodsID;
    select @BreakPoint=429021,@Err=@@error,@Msg='获取数据错误！';
    if @Err != 0 Goto ErrHandle;
    
    select @SQL='update #T_WeekGoodsSale set Day' + cast(@I as char(1)) + '=b.SaleValue ' +
       ' from #T_WeekGoodsSale a,#T_WeekGoodsSale_1 b ' + 
       ' where a.RowType=10 and a.WeekID=b.WeekID and a.GoodsID=b.GoodsID';
    Exec(@SQL);
    select @BreakPoint=429022,@Err=@@error,@Msg='写销售数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekGoodsSale set Day' + cast(@I as char(1)) + '=b.SaleQty ' +
       ' from #T_WeekGoodsSale a,#T_WeekGoodsSale_1 b ' + 
       ' where a.RowType=20 and a.WeekID=b.WeekID and a.GoodsID=b.GoodsID';
    Exec(@SQL);
    select @BreakPoint=429024,@Err=@@error,@Msg='写销售数量数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekGoodsSale set Day' + cast(@I as char(1)) + '=b.GainValue ' +
       ' from #T_WeekGoodsSale a,#T_WeekGoodsSale_1 b ' + 
       ' where a.RowType=30 and a.WeekID=b.WeekID and a.GoodsID=b.GoodsID';
    Exec(@SQL);
    select @BreakPoint=429025,@Err=@@error,@Msg='写毛利数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekGoodsSale set Day' + cast(@I as char(1)) + 
       '=case when b.SaleValue=0 then 0 else b.GainValue/b.SaleValue*100 end' +
       ' from #T_WeekGoodsSale a,#T_WeekGoodsSale_1 b ' + 
       ' where a.RowType=40 and a.WeekID=b.WeekID and a.GoodsID=b.GoodsID';
    Exec(@SQL);
    select @BreakPoint=429026,@Err=@@error,@Msg='写毛利率数据错误！';
    if @Err != 0 Goto ErrHandle;

    drop table #T_WeekGoodsSale_1;

    select @BeginDate=DateAdd(day,1,@BeginDate);
    select @I=@I+1;    
  END  
  
  --总值（销售、销量、毛利）、平日值、双修日值
  update #T_WeekGoodsSale set Total7=Day1+Day2+Day3+Day4+Day5+Day6+Day7,
      Total5=Day1+Day2+Day3+Day4+Day5,Total2=Day6+Day7
    where WeekID=@WeekID and RowType in (10,20,30);
  select @BreakPoint=429081,@Err=@@error,@Msg='计算合计值错误！';
  if @Err != 0 Goto ErrHandle;
  
  --上述平均值
  update #T_WeekGoodsSale set Avg7=Total7/7,Avg5=Total5/5,Avg2=Total2/2
    where WeekID=@WeekID and RowType in (10,20,30);
  select @BreakPoint=429082,@Err=@@error,@Msg='计算平均值错误！';
  if @Err != 0 Goto ErrHandle;
  
  --计算毛利率与客单价
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
    from #T_WeekGoodsSale where RowType=10;			--销售
  update #T_WeekGoodsSale_2 set Gain7=b.Total7,Gain5=b.Total5,Gain2=b.Total2
    from #T_WeekGoodsSale_2 a,#T_WeekGoodsSale b
    where a.GoodsID=b.GoodsID and b.RowType=30;	--毛利
    
  --毛利率
  update #T_WeekGoodsSale set Total7=case when b.Sale7=0 then 0 else b.Gain7/b.Sale7*100 end,
      Total5=case when b.Sale5=0 then 0 else b.Gain5/b.Sale5*100 end,
      Total2=case when b.Sale2=0 then 0 else b.Gain2/b.Sale2*100 end
    from #T_WeekGoodsSale a,#T_WeekGoodsSale_2 b
    where a.GoodsID=b.GoodsID and a.RowType=40;
  select @BreakPoint=429083,@Err=@@error,@Msg='计算毛利率错误！';
  if @Err != 0 Goto ErrHandle;
  update #T_WeekGoodsSale set Avg7=Total7,Avg5=Total5,Avg2=Total2 where WeekID=@WeekID and RowType=40;
  
  drop table #T_WeekGoodsSale_2;
  
  --销售数量周占比
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--RP_GetWeekCashHour	获取指定周号@WeekID从周一到周日每个时段的客单数
--参数：店号、周号、（#T_WeekCashHour，固定表名）
--返回：0=成功
--建立：胥亮 2003.11.20
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

  --所有时点
  insert into #T_WeekCashHour(WeekID,Hour)
    select @WeekID,SaleHour
    from RPT_CashHour
    group by SaleHour;
  select @BreakPoint=429001,@Err=@@error,@Msg='写时点数据错误！';
  if @Err != 0 Goto ErrHandle;

  exec TL_GetWeekDateBound @WeekID,@BeginDate output,@EndDate output;
  select @BreakPoint=429002,@Err=@@error,@Msg='执行TL_GetWeekDateBound错误！';
  if @Err != 0 Goto ErrHandle;

  select @I=1;
  while @BeginDate<=@EndDate
  BEGIN
    select @SQL='update #T_WeekCashHour set Day' + cast(@I as char(1)) + '=b.SheetQty ' +
        ' from #T_WeekCashHour a,RPT_CashHour b with (nolock) where a.Hour=b.SaleHour and ' +
        ' convert(char(8),b.SDate,112)=''' + convert(char(8),@BeginDate,112) + ''''
    Exec(@SQL);
    select @BreakPoint=429021,@Err=@@error,@Msg='从RPT_CashHour获取数据错误！';
    if @Err != 0 Goto ErrHandle;
    
    select @BeginDate=DateAdd(day,1,@BeginDate);
    select @I=@I+1;    
  END
  
  --总值（销售、折扣、成本、毛利、客单数）、平日值、双修日值
  update #T_WeekCashHour set Total7=Day1+Day2+Day3+Day4+Day5+Day6+Day7,
      Total5=Day1+Day2+Day3+Day4+Day5,Total2=Day6+Day7
    where WeekID=@WeekID
  select @BreakPoint=429081,@Err=@@error,@Msg='计算合计值错误！';
  if @Err != 0 Goto ErrHandle;
  
  --上述平均值
  update #T_WeekCashHour set Avg7=Total7/7,Avg5=Total5/5,Avg2=Total2/2
    where WeekID=@WeekID
  select @BreakPoint=429082,@Err=@@error,@Msg='计算平均值错误！';
  if @Err != 0 Goto ErrHandle;
  
  --计算累计值
  declare cur_CashHour cursor local for
    select Total7,Total5,Total2 from #T_WeekCashHour order by WeekID,Hour
    for update;
  Open cur_CashHour;
  select @BreakPoint=429084,@Err=@@error,@Msg='建立光标错误！';
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

  --计算累计进度比
  select @I=max(Hour) from #T_WeekCashHour;
  select @Total7=SubTotal7,@Total5=SubTotal5,@Total2=SubTotal2 from #T_WeekCashHour
    where Hour=@I and WeekID=@WeekID;
  update #T_WeekCashHour set 
    SubRate7=case when @Total7=0 then 0 else cast(SubTotal7 as float)/@Total7*100 end,
    SubRate5=case when @Total5=0 then 0 else cast(Subtotal5 as float)/@Total5*100 end,
    SubRate2=case when @Total2=0 then 0 else cast(SubTotal2 as float)/@Total2*100 end
    
  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--RP_GetWeekSaleHour	获取指定周号@WeekID从周一到周日每个时段的收银额（销售额）
--参数：店号、周号、（#T_WeekSaleHour，固定表名）
--返回：0=成功
--建立：胥亮 2003.11.20
--修改：谭福伦 2006.11.06 增加储值卡礼券统计
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

  --所有时点
  insert into #T_WeekSaleHour(WeekID,Hour)
    select @WeekID,SaleHour
    from RPT_CashHour
    group by SaleHour;
  select @BreakPoint=429001,@Err=@@error,@Msg='写时点数据错误！';
  if @Err != 0 Goto ErrHandle;

  exec TL_GetWeekDateBound @WeekID,@BeginDate output,@EndDate output;
  select @BreakPoint=429002,@Err=@@error,@Msg='执行TL_GetWeekDateBound错误！';
  if @Err != 0 Goto ErrHandle;

  select @I=1;
  while @BeginDate<=@EndDate
  BEGIN
    select @SQL='update #T_WeekSaleHour set Day' + cast(@I as char(1)) + 
        '=CashValue+CardValue+CheckValue+BankValue+TicketValue-RetValue+GiftValue ' +
        ' from #T_WeekSaleHour a,RPT_CashHour b with (nolock) where a.Hour=b.SaleHour and ' +
        ' convert(char(8),b.SDate,112)=''' + convert(char(8),@BeginDate,112) + ''''
    Exec(@SQL);
    select @BreakPoint=429021,@Err=@@error,@Msg='从RPT_CashHour获取数据错误！';
    if @Err != 0 Goto ErrHandle;
    
    select @BeginDate=DateAdd(day,1,@BeginDate);
    select @I=@I+1;    
  END
  
  --总值（销售、折扣、成本、毛利、客单数）、平日值、双修日值
  update #T_WeekSaleHour set Total7=Day1+Day2+Day3+Day4+Day5+Day6+Day7,
      Total5=Day1+Day2+Day3+Day4+Day5,Total2=Day6+Day7
    where WeekID=@WeekID
  select @BreakPoint=429081,@Err=@@error,@Msg='计算合计值错误！';
  if @Err != 0 Goto ErrHandle;
  
  --上述平均值
  update #T_WeekSaleHour set Avg7=Total7/7,Avg5=Total5/5,Avg2=Total2/2
    where WeekID=@WeekID
  select @BreakPoint=429082,@Err=@@error,@Msg='计算平均值错误！';
  if @Err != 0 Goto ErrHandle;
  
  --计算累计值
  declare cur_SaleHour cursor local for
    select Total7,Total5,Total2 from #T_WeekSaleHour order by WeekID,Hour
    for update;
  Open cur_SaleHour;
  select @BreakPoint=429084,@Err=@@error,@Msg='建立光标错误！';
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

  --计算累计进度比
  select @I=max(Hour) from #T_WeekSaleHour;
  select @Total7=SubTotal7,@Total5=SubTotal5,@Total2=SubTotal2 from #T_WeekSaleHour
    where Hour=@I and WeekID=@WeekID;
  update #T_WeekSaleHour set 
    SubRate7=case when @Total7=0 then 0 else SubTotal7/@Total7*100 end,
    SubRate5=case when @Total5=0 then 0 else Subtotal5/@Total5*100 end,
    SubRate2=case when @Total2=0 then 0 else SubTotal2/@Total2*100 end
    
  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--rp_427877			促销商品销售明细查询
--参数：日期段（必须）、店号、#427877临时表含需要选择的商品
--返回：标志0=成功	
--表：	
--函数：
--算法：
--建立：胥亮   2003.11.27
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
  
  --获取商品促销信息
  select GoodsID,min(SDate) StartDate,max(SDate) EndDate,sum(Qty) PromSaleQty,sum(SaleValue-DiscValue) PromSaleValue,
      sum(SaleValue-DiscValue-PromCost*Qty) PromGain,sum(DiscValue) PromDiscValue
    into #tmp1 from RPT_SalePromotion with (nolock)
    where convert(char(8),SDate,112) between convert(char(8),@BeginDate,112) and convert(char(8),@EndDate,112)
      and ShopID=@ShopID and GoodsID in (select GoodsID from #427877)
    group by GoodsID;    
  select @Err=@@error,@BreakPoint=42787701,@Msg='从RPT_SalePromotion获取数据到tmp1错误！'
  if @Err != 0 goto ErrHandle;
    
  update #427877 set PromStartDate=b.StartDate,PromEndDate=b.EndDate,PromSaleValue=b.PromSaleValue,
      PromSaleQty=b.PromSaleQty,PromGain=b.PromGain,PromDiscValue=b.PromDiscValue
    from #427877 a,#tmp1 b
    where a.GoodsID=b.GoodsID
  select @Err=@@error,@BreakPoint=42787702,@Msg='update错误！'
  if @Err != 0 goto ErrHandle;
  drop table #tmp1;
  
  --删除没有促销的商品，计算促销平均售价
  delete from #427877 where (PromStartDate is null) or (PromEndDate is null) or (PromSaleQty=0);
  update #427877 set PromPrice=PromSaleValue/PromSaleQty;
  
  --获取普通销售情况，先获取月表数据
  select * into #RPT_Base0001 from RPT_Base0001 where 0=1;
  select @Err=@@error,@BreakPoint=42787703,@Msg='无法建立临时表#RPT_Base0001！'
  if @Err != 0 goto ErrHandle;
  select @SCond='ShopID='''+@ShopID+''' and GoodsID in (select GoodsID from #427877)';
  exec rp_GetMonthDataToTable @BeginDate,@EndDate,'RPT_Base0001',@SCond;
  select @Err=@@error,@BreakPoint=42787703,@Msg='执行存储过程rp_GetMonthDataToTable失败！'
  if @Err != 0 goto ErrHandle;
  
  --普通销售信息
  select GoodsID,sum(SaleValue) SaleValue,sum(SaleQty) SaleQty,sum(SaleValue-SaleCost) SaleGain
    into #tmp2 from #RPT_Base0001
    group by GoodsID;
  select @Err=@@error,@BreakPoint=42787704,@Msg='从RPT_Base0001获取数据到tmp2错误！'
  if @Err != 0 goto ErrHandle;
  update #427877 set SaleValue=b.SaleValue,SaleQty=b.SaleQty,SaleGain=b.SaleGain
    from #427877 a,#tmp2 B
    where a.GoodsID=b.GoodsID;
  drop table #tmp2;
  
  --售价
  update #427877 set NormPrice=b.NormalPrice,Price=b.Price
    from #427877 a,GoodsShop b with (nolock)
    where a.GoodsID=b.GoodsID and b.ShopID=@ShopID;
  --库存
  update #427877 set StockQty=b.Qty
    from #427877 a,ShopsStock b with (nolock)
    where a.GoodsID=b.GoodsID and b.ShopID=@ShopID;
  --在途
  update #427877 set OnPurQty=b.OpenOrderQty+b.OpenRationQty
    from #427877 a,Demand b with (nolock)
    where a.GoodsID=b.GoodsID and b.ShopID=@ShopID;
    
  return 0;    
ErrHandle:  
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--rp_427887			门店日销售周报比较表
--参数：门店编码（必须）、周号（必须）
--返回：标志0=成功		
--建立：胥亮   2003.11.21
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
    WeekID	int not null,	--周号
    RowType	int not null,	--行属性，10=销售 20=折扣金额 30=成本 40=销售毛利 50=毛利率 60=客单数 70=客单价
    Day1	dec(15,5) default 0 not null,	--星期一
    Day2	dec(15,5) default 0 not null,
    Day3	dec(15,5) default 0 not null,
    Day4	dec(15,5) default 0 not null,
    Day5	dec(15,5) default 0 not null,
    Day6	dec(15,5) default 0 not null,
    Day7	dec(15,5) default 0 not null,	--星期日
    Total7	dec(15,5) default 0 not null,	--7天的总值
    Total5	dec(15,5) default 0 not null,	--平日（周一到周五）总值
    Total2	dec(15,5) default 0 not null,	--双休日（周六到周日）总值
    Avg7	dec(15,5) default 0 not null,	--周平均值
    Avg5	dec(15,5) default 0 not null,	--平日平均值
    Avg2	dec(15,5) default 0 not null,	--双休日平均值
    primary key (WeekID,rowType)
  )
  select @BreakPoint=42788701,@Err=@@error,@Msg='建立临时表出错！';
  if @Err != 0 goto ErrHandle;
  
  exec TL_GetPrevWeekID @WeekID,@PreWeekID output;
  select @BreakPoint=42788702,@Err=@@error,@Msg='执行TL_GetPrevWeekID出错！';
  if @Err != 0 goto ErrHandle;

  exec RP_GetWeekSaleToTable @ShopID,@PreWeekID;
  select @BreakPoint=42788703,@Err=@@error,@Msg='获取上周数据出错！';
  if @Err != 0 goto ErrHandle;
  
  select * into #T_PreWeekSale from #T_WeekSale;
  select @BreakPoint=42788704,@Err=@@error,@Msg='建立临时表出错！';
  if @Err != 0 goto ErrHandle;
  
  delete from #T_WeekSale;
  exec RP_GetWeekSaleToTable @ShopID,@WeekID;
  select @BreakPoint=42788705,@Err=@@error,@Msg='获取本周数据出错！';
  if @Err != 0 goto ErrHandle;
  
  insert into #427887
    select WeekID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,RowType
      from #T_WeekSale where WeekID=@WeekID and RowType in (10,40,60,70);
  select @BreakPoint=42788706,@Err=@@error,@Msg='写入本周数据出错！';
  if @Err != 0 goto ErrHandle;

  insert into #427887
    select WeekID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,RowType+1
      from #T_PreWeekSale where WeekID=@PreWeekID and RowType in (10,40,60,70);
  select @BreakPoint=42788707,@Err=@@error,@Msg='写入上周数据出错！';
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
  select @BreakPoint=42788708,@Err=@@error,@Msg='写入比较数据出错！';
  if @Err != 0 goto ErrHandle;

  drop table #T_WeekSale;
  drop table #T_PreWeekSale;
  select @BreakPoint=42788708,@Err=@@error,@Msg='写入比较数据出错！';
  if @Err != 0 goto ErrHandle;
  return 0;    
ErrHandle:  
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--rp_427888 			部门日销售周报比较表
--参数：门店编码（必须）、部门（必须）、周号（必须）
--返回：标志0=成功		
--建立：胥亮   2003.11.24
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
    WeekID		int not null,	--周号
    ManageDeptID	int not null,	--管理部门
    RowType		int not null,	--行属性，10=销售 20=折扣金额 30=成本 40=销售毛利 50=毛利率 60=客单数 70=客单价
    Day1		dec(15,6) default 0 not null,	--星期一
    Day2		dec(15,6) default 0 not null,
    Day3		dec(15,6) default 0 not null,
    Day4		dec(15,6) default 0 not null,
    Day5		dec(15,6) default 0 not null,
    Day6		dec(15,6) default 0 not null,
    Day7		dec(15,6) default 0 not null,	--星期日
    Total7		dec(15,6) default 0 not null,	--7天的总值
    Total5		dec(15,6) default 0 not null,	--平日（周一到周五）总值
    Total2		dec(15,6) default 0 not null,	--双休日（周六到周日）总值
    Avg7		dec(15,6) default 0 not null,	--周平均值
    Avg5		dec(15,6) default 0 not null,	--平日平均值
    Avg2		dec(15,6) default 0 not null,	--双休日平均值
    primary key (WeekID,ManageDeptID,rowType)
  );	
  select @BreakPoint=42788801,@Err=@@error,@Msg='建立临时表出错！';
  if @Err != 0 goto ErrHandle;
  
  exec TL_GetPrevWeekID @WeekID,@PreWeekID output;
  select @BreakPoint=42788802,@Err=@@error,@Msg='执行TL_GetPrevWeekID出错！';
  if @Err != 0 goto ErrHandle;

  exec RP_GetWeekDeptSaleToTable @ShopID,@PreWeekID,@ManageDeptID;
  select @BreakPoint=42788803,@Err=@@error,@Msg='获取上周数据出错！';
  if @Err != 0 goto ErrHandle;
  
  select * into #T_PreWeekDeptSale from #T_WeekDeptSale;
  select @BreakPoint=42788804,@Err=@@error,@Msg='建立临时表出错！';
  if @Err != 0 goto ErrHandle;
  
  delete from #T_WeekDeptSale;
  exec RP_GetWeekDeptSaleToTable @ShopID,@WeekID,@ManageDeptID;
  select @BreakPoint=42788805,@Err=@@error,@Msg='获取本周数据出错！';
  if @Err != 0 goto ErrHandle;
  
  insert into #427888
    select WeekID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,RowType
      from #T_WeekDeptSale where WeekID=@WeekID and RowType in (10,40,60,70);
  select @BreakPoint=42788806,@Err=@@error,@Msg='写入本周数据出错！';
  if @Err != 0 goto ErrHandle;

  insert into #427888
    select WeekID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,RowType+1
      from #T_PreWeekDeptSale where WeekID=@PreWeekID and RowType in (10,40,60,70);
  select @BreakPoint=42788807,@Err=@@error,@Msg='写入上周数据出错！';
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
  select @BreakPoint=42788808,@Err=@@error,@Msg='写入比较数据出错！';
  if @Err != 0 goto ErrHandle;

  drop table #T_WeekDeptSale;
  drop table #T_PreWeekDeptSale;
  select @BreakPoint=42788808,@Err=@@error,@Msg='写入比较数据出错！';
  if @Err != 0 goto ErrHandle;
  return 0;    
ErrHandle:  
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
	select @Msg='取周时间段错误!';
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
	select @Msg='取月表数据错误!';
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
    select @deptlevel=value from config where name='管理部门级别'
    select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
    update #temp set managedeptid=(g.deptid/@levelvalue),managedeptname=s.Name
      from #temp a,goods g,sgroup s
      where a.goodsid=g.goodsid and g.deptid/@levelvalue=s.id;
  */
    update #temp set deptid=g.deptid,deptname=s.Name
      from #temp a,goods g,dept s
      where a.goodsid=g.goodsid and g.deptid=s.id;
  
  if @Err <> 0 or @Err is null begin
	select @Msg='取管理部类出错!';
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
	select @Msg='取商品库存出错!';
	goto ErrHandle;
  end

  select @BreakPoint=200300;
    
  drop table #tmp;
  drop table #t0;
  drop table #t;
  drop table #temp_shopsstock;

  if @Err <> 0 or @Err is null begin
	select @Msg='清除临表出错!';
	goto ErrHandle;
  end
    
  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
	declare @allsalevalue     dec(12,2);       --全店销售
	declare @csalevalue       dec(12,2);       --超市销售
	declare @allgpvalue       dec(12,2);       --全店毛利
	
	declare @lmmonthid          char(6);         --上月编号
	declare @lmallsalevalue     dec(12,2);       --上月全店销售
	declare @lmcsalevalue       dec(12,2);       --上月超市销售
	declare @lmallgpvalue       dec(12,2);       --上月全店毛利
	
	declare @lymonthid          char(6);         --上年同月编号
	declare @lyallsalevalue     dec(12,2);       --上年全店销售
	declare @lycsalevalue       dec(12,2);       --上年超市销售
	declare @lyallgpvalue       dec(12,2);       --上年全店毛利		
	
	declare @deptlevelid  int;
	declare @levelvalue   int;
	select @deptlevelid=value from config where name = '管理部门级别';
	select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevelid;
	--取管理部门级别

	select @deptlevel=value from config where name='管理部门级别';
	--取当月销售金额，折扣金额，毛利额，毛利率，销售占比，毛利占比，销售占超市比，销售占店比，毛利占全店比
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
	       	select @msg='汇总本月数据出错';
	        goto errhandle 
	        end;
	       
	       
	--取上月销售金额，折扣金额，毛利额，毛利率，销售占比，毛利占比，销售占超市比，销售占店比，毛利占全店比
	--计算上月月号
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
	       	select @msg='汇总上月数据出错';
	        goto errhandle 
	        end;
	       
	--取上年销售金额，折扣金额，毛利额，毛利率，销售占比，毛利占比，销售占超市比，销售占店比，毛利占全店比	      
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
	       	select @msg='汇总去年同期数据出错';
	        goto errhandle 
	        end;	
		    
	--数据汇总过程
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
	declare @allsalevalue     dec(12,2);       --全店销售
	declare @csalevalue       dec(12,2);       --超市销售
	declare @allgpvalue       dec(12,2);       --全店毛利
	
	declare @lmmonthid          char(6);         --上月编号
	declare @lmallsalevalue     dec(12,2);       --上月全店销售
	declare @lmcsalevalue       dec(12,2);       --上月超市销售
	declare @lmallgpvalue       dec(12,2);       --上月全店毛利
	
	declare @lymonthid          char(6);         --上年同月编号
	declare @lyallsalevalue     dec(12,2);       --上年全店销售
	declare @lycsalevalue       dec(12,2);       --上年超市销售
	declare @lyallgpvalue       dec(12,2);       --上年全店毛利		
	


	declare @deptlevelid  int;
	declare @levelvalue   int;
	select @deptlevelid=value from config where name = '管理部门级别';
	select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevelid;
	
	--取管理部门级别
	select @deptlevel=value from config where name='管理部门级别';
	--取当月销售金额，折扣金额，毛利额，毛利率，销售占比，毛利占比，销售占超市比，销售占店比，毛利占全店比
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
	       	select @msg='汇总本月数据出错';
	        goto errhandle 
	        end;
	       
	       
	--取上月销售金额，折扣金额，毛利额，毛利率，销售占比，毛利占比，销售占超市比，销售占店比，毛利占全店比
	--计算上月月号
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
	       	select @msg='汇总上月数据出错';
	        goto errhandle 
	        end;
	       
	--取上年销售金额，折扣金额，毛利额，毛利率，销售占比，毛利占比，销售占超市比，销售占店比，毛利占全店比	      
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
	       	select @msg='汇总去年同期数据出错';
	        goto errhandle 
	        end;	
		    
	--数据汇总过程
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
END;
GO


-----------------------------------------------------------------
--rp_427893 			门店周销售对比报表
--参数：门店编码（必须）、周号（必须）
--返回：标志0=成功		
--建立：胥亮   2003.11.25
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
    WeekID		int not null,	--周号
    ManageDeptID	int not null,	--管理部门
    RowType		int not null,	--行属性，10=销售 20=折扣金额 30=成本 40=销售毛利 50=毛利率 60=客单数 70=客单价
    Day1		dec(15,6) default 0 not null,	--星期一
    Day2		dec(15,6) default 0 not null,
    Day3		dec(15,6) default 0 not null,
    Day4		dec(15,6) default 0 not null,
    Day5		dec(15,6) default 0 not null,
    Day6		dec(15,6) default 0 not null,
    Day7		dec(15,6) default 0 not null,	--星期日
    Total7		dec(15,6) default 0 not null,	--7天的总值
    Total5		dec(15,6) default 0 not null,	--平日（周一到周五）总值
    Total2		dec(15,6) default 0 not null,	--双休日（周六到周日）总值
    Avg7		dec(15,6) default 0 not null,	--周平均值
    Avg5		dec(15,6) default 0 not null,	--平日平均值
    Avg2		dec(15,6) default 0 not null,	--双休日平均值
    primary key (WeekID,ManageDeptID,rowType)
  );	
  select @BreakPoint=42789301,@Err=@@error,@Msg='建立临时表出错！';
  if @Err != 0 goto ErrHandle;
  
  exec TL_GetPrevWeekID @WeekID,@PreWeekID output;
  select @BreakPoint=42789302,@Err=@@error,@Msg='执行TL_GetPrevWeekID出错！';
  if @Err != 0 goto ErrHandle;

  exec RP_GetWeekDeptSaleToTable @ShopID,@PreWeekID;
  select @BreakPoint=42789303,@Err=@@error,@Msg='获取上周数据出错！';
  if @Err != 0 goto ErrHandle;
  
  select * into #T_PreWeekDeptSale from #T_WeekDeptSale;
  select @BreakPoint=42789304,@Err=@@error,@Msg='建立临时表出错！';
  if @Err != 0 goto ErrHandle;
  
  delete from #T_WeekDeptSale;
  exec RP_GetWeekDeptSaleToTable @ShopID,@WeekID;
  select @BreakPoint=42789305,@Err=@@error,@Msg='获取本周数据出错！';
  if @Err != 0 goto ErrHandle;
  
  insert into #T_WeekDeptSale
    select WeekID,0,RowType,sum(Day1),sum(Day2),sum(Day3),sum(Day4),sum(Day5),sum(Day6),
    	sum(Day7),sum(Total7),sum(Total5),sum(Total2),sum(Avg7),sum(Avg5),sum(Avg2)
      from #T_WeekDeptSale where WeekID=@WeekID and RowType=10
      group by WeekID,RowType;
  select @BreakPoint=42789306,@Err=@@error,@Msg='写入本周汇总数据出错！';
  if @Err != 0 goto ErrHandle;

  insert into #T_PreWeekDeptSale
    select WeekID,0,RowType,sum(Day1),sum(Day2),sum(Day3),sum(Day4),sum(Day5),sum(Day6),
    	sum(Day7),sum(Total7),sum(Total5),sum(Total2),sum(Avg7),sum(Avg5),sum(Avg2)
      from #T_PreWeekDeptSale where WeekID=@PreWeekID and RowType=10
      group by WeekID,RowType;
  select @BreakPoint=42789307,@Err=@@error,@Msg='写入上周汇总数据出错！';
  if @Err != 0 goto ErrHandle;

  insert into #427893
    select WeekID,ManageDeptID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,Avg7,RowType
      from #T_WeekDeptSale where WeekID=@WeekID and RowType=10;
  select @BreakPoint=42789308,@Err=@@error,@Msg='写入本周数据出错！';
  if @Err != 0 goto ErrHandle;

  insert into #427893
    select WeekID,ManageDeptID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,Avg7,RowType+1
      from #T_PreWeekDeptSale where WeekID=@PreWeekID and RowType=10;
  select @BreakPoint=42789309,@Err=@@error,@Msg='写入上周数据出错！';
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
  select @BreakPoint=42789310,@Err=@@error,@Msg='写入比较数据出错！';
  if @Err != 0 goto ErrHandle;

  drop table #T_WeekDeptSale;
  drop table #T_PreWeekDeptSale;
  select @BreakPoint=42789311,@Err=@@error,@Msg='写入比较数据出错！';
  if @Err != 0 goto ErrHandle;
  return 0;    
ErrHandle:  
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--rp_427894 			单品当前库存周转天数报表
--参数：门店（必须）
--返回：标志0=成功		
--建立：胥亮   2003.11.26
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
  
  declare @dWeekStart 	datetime;		--本周一
  declare @dMonthStart 	datetime;		--本月一号
  declare @StartDate datetime,@EndDate datetime;	--上月一号到今天
  declare @WeekID int;
  declare @sCond varchar(255);
  SET NOCOUNT ON
  
  --条件
  select @sCond='ShopID='''+@ShopID+''' and GoodsID in (select GoodsID from #427894)';
  --计算总日期区间
  select @StartDate=cast(left(convert(char(8),DateAdd(month,-1,getdate()),112),6)+'01' as datetime);
  select @WeekID=DatePart(week,GetDate());
  exec TL_GetWeekDateBound @WeekID,@dWeekStart output,@EndDate output;
  select @EndDate=convert(char(8),getdate(),112);
  select @dWeekStart=convert(char(8),@dWeekStart,112);
  select @dMonthStart=DateAdd(month,1,@StartDate);
  --数据
  select * into #rpt_Base0001 from rpt_Base0001 where 0=1;
  exec rp_GetMonthDataToTable @StartDate,@EndDate,'rpt_Base0001',@sCond;
  select @Err=@@error,@BreakPoint=42789401,@Msg='获取月表数据错误！';
  if @Err != 0 goto ErrHandle;
  --本周销售,上周销售,DMS,在途
  update #427894 set DMS=b.NDMS,WeekSale=WeekSaleQty,PreWeekSale=WeekSaleQty1,OnPurQty=b.OpenOrderQty+b.OpenRationQty
    from #427894 a,Demand b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  --当前库存,周转天数
  update #427894 set StockQty=b.Qty,CostValue=b.CostValue,
      SaleDays=case when a.DMS=0 then 0 else b.Qty/a.DMS end
    from #427894 a,ShopsStock b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
 --本月销售,周转次数
  select GoodsID,sum(SaleQty) SaleQty,case when sum(SaleQty)=0 then 0 else sum(CloseQty)/sum(SaleQty) end Times
    into #tmp3 from #rpt_Base0001 
    where convert(char(8),SDate,112) between convert(char(8),@dMonthStart,112) and convert(char(8),@EndDate,112)
    group by GoodsID;
  update #427894 set MonthSale=b.SaleQty,MonthDays=Times
    from #427894 a,#tmp3 b 
    where a.GoodsID=b.GoodsID;
  drop table #tmp3;
  --上月销售,周转次数
  select GoodsID,sum(SaleQty) SaleQty,case when sum(SaleQty)=0 then 0 else sum(CloseQty)/sum(SaleQty) end Times
    into #tmp4 from #rpt_Base0001 
    where convert(char(8),SDate,112) between convert(char(8),@StartDate,112) and convert(char(8),@dMonthStart-1,112)
    group by GoodsID;
  update #427894 set PreMonthSale=b.SaleQty,PreMonthDays=Times
    from #427894 a,#tmp4 b 
    where a.GoodsID=b.GoodsID;
  drop table #tmp4;
  --最近进货,销售日期
  select ShopID,GoodsID,max(SaleDate) SaleDate,max(ReceiptDate) ReceiptDate
    into #tmp1 from LatelyGoodsList
    where ShopID=@ShopID
    group by ShopID,GoodsID;
  update #427894 set LastPurDay=b.ReceiptDate,LastSaleDay=b.SaleDate
    from #427894 a,#tmp1 b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  drop table #tmp1;
  --当前售价
  update #427894 set Price=b.Price
    from #427894 a,GoodsShop b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  --默认供应商,进价
  update #427894 set VenderID=b.VenderID,Cost=b.Cost
    from #427894 a,Cost b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID and b.Flag=0
  --负数的周转天数设置为0
  update #427894 set MonthDays=case when MonthDays<0 then 0 else MonthDays end,
      PreMonthDays=case when PreMonthDays<0 then 0 else PreMonthDays end;  
  drop table #rpt_Base0001;
  
  return 0;    
ErrHandle:  
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--rp_427895 			门店销售比较日报
--参数：日期（必须）、门店（可选）
--返回：标志0=成功		
--建立：胥亮   2003.11.28
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
  --条件
  select @sCond='convert(char(8),SDate,112)=''' + convert(char(8),@SDate,112) + ''' and SaleValue<>0';
  if @ShopID is not null
    select @SCond=@SCond + ' and ShopID=''' + @ShopID + '''';    
    
  --数据
  select * into #rpt_Base0001 from rpt_Base0001 where 0=1;
  exec rp_GetMonthDataToTable @SDate,@SDate,'rpt_Base0001',@sCond;
  select @Err=@@error,@BreakPoint=42789501,@Msg='获取月表数据错误！';
  if @Err != 0 goto ErrHandle;

  --动销单品数
  insert into #427895(ShopID,SaleSKU)
    select ShopID,count(distinct GoodsID) from #RPT_Base0001 group by ShopID;
  drop table #RPT_Base0001;
  
  --总单品数
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

  --本日发生
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
        
  --本月至今
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
  
  --汇总
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go

-----------------------------------------------------------------
--rp_427896 			部门销售比较日报
--参数：日期（必须）、门店（必须）
--返回：标志0=成功		
--建立：胥亮   2003.11.28
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
  select @DeptLevelID=Value from config where name='管理部门级别';
  select @Err=@@error,@BreakPoint=42789601,@Msg='获取管理部门级别错误！';
  if (@Err != 0) or (@DeptLevelID is null) goto ErrHandle;
  select @LevelValue=LevelValue from DeptLevel where DeptLevelID=@DeptLevelID;
  
  --条件
  select @sCond='convert(char(8),SDate,112)='''+convert(char(8),@SDate,112)+''' and ShopID='''+@ShopID
    +''' and SaleValue<>0';    
    
  --数据
  select * into #rpt_Base0001 from rpt_Base0001 where 0=1;
  exec rp_GetMonthDataToTable @SDate,@SDate,'rpt_Base0001',@sCond;
  select @Err=@@error,@BreakPoint=42789602,@Msg='获取月表数据错误！';
  if @Err != 0 goto ErrHandle;

  --动销单品数
  insert into #427896(ManageDeptID,SaleSKU)
    select Floor(b.DeptID/@LevelValue),count(distinct a.GoodsID) 
      from #RPT_Base0001 a,Goods b with (nolock)
      where a.GoodsID=b.GoodsID 
      group by Floor(b.DeptID/@LevelValue);
  drop table #RPT_Base0001;
  
  --总单品数
  insert into #427896(ManageDeptID,TotalSKU)
    select Floor(b.DeptID/@LevelValue),count(distinct a.GoodsID) 
      from GoodsShop a with (nolock),Goods b with (nolock)
      where a.ShopID=@ShopID and a.GoodsID=b.GoodsID and a.Flag<>3
      group by Floor(b.DeptID/@LevelValue);

  --本日发生
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
      
  --本月至今
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
  
  --汇总
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
Go





--rp_427890 商品数量金额明细帐                                              
--建立：魏薇 2003.11.24
--修改：改为从wastebook取值 解决转类数据不平的问题  魏薇 2003.11.28 
--计算公式:
----借方数量=sum(Qty*Directflag) 
----借方金额=sum(CostValue*Directflag)
----期初金额=期末-借方+贷方

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
SDate		datetime	null,  --发生日期
ShopID		char(4)		null,  --发生门店
GoodsID		int		null,  --商品编号
DeptID		int		null,  --小类编号
Cost		dec(12,4)	null,  --执行进价
QCCount     	dec(12,2)	null,  --期初数量
QCCostValue	dec(12,2) 	null,  --期初金额
JCount     	dec(12,2)	null,  --借方数量
JCostValue	dec(12,2) 	null,  --借方金额	
DCount     	dec(12,2)	null,  --贷方数量
DCostValue	dec(12,2) 	null,  --贷方金额
QMCount     	dec(12,2)	null,  --期末数量
QMCostValue	dec(12,2) 	null   --期末金额
);

create table #427890_tmp1(
SDate		datetime	null,  --发生日期
ShopID		char(4)		null,  --发生门店
GoodsID		int		null,  --商品编号
DeptID		int		null,  --小类编号
JCount     	dec(12,2) 	default 0.00 null,  --借方数量
JCostValue	dec(12,2) 	default 0.00 null,    --借方金额	
DCount     	dec(12,2) 	default 0.00 null,    --贷方数量
DCostValue	dec(12,2) 	default 0.00 null     --贷方金额
);

create table #427890_tmp2(
SDate		datetime	null,  --发生日期
ShopID		char(4)		null,  --发生门店
GoodsID		int		null,  --商品编号
DeptID		int		null,  --小类编号
maxserialid     int 		null   --最大序列号
);

create table #427890_tmp3(
SDate		datetime	null,  --发生日期
ShopID		char(4)		null,  --发生门店
GoodsID		int		null,  --商品编号
DeptID		int		null,  --小类编号
QMCount     	dec(12,2) 	default 0.00 null,    --期末数量
QMCostValue	dec(12,2) 	default 0.00 null      --期末金额
);

  select @Err=@@Error,@BreakPoint=427000,@Msg='建立临时表出错';
  if @Err != 0 goto ErrHandle;
  
  select @tempflag=1;
  select @tablename='wastebook'+left(convert(char(8),@BeginDate,112),6);
  --select @stable='dbo.'+@tablename;
  if not exists (select * from dbo.sysobjects 
	where id = object_id(@tablename) and type='U') 
	select @tablename='wastebook'; 
  select @Err=@@Error,@BreakPoint=427010,@Msg='取月表出错';
  if @Err != 0 goto ErrHandle;	
  
  Select @SQL1=
  'insert into #427890_tmp1(Sdate,Shopid,goodsid,deptid,JCount,JCostValue) '+
  '	select Sdate,Shopid,goodsid,deptid,sum(Qty*Directflag) JCount,sum(CostValue*Directflag) JCostValue '+
  '	from '+@tablename +' where shopid=''' +@shopid+'''' + ' and goodsid= '+cast(@goodsid as char(6)) +' and sheettype <> 101' +
  ' 	group by Sdate,Shopid,goodsid,deptid';
    
  exec (@SQL1);	
  select @Err=@@Error,@BreakPoint=427020,@Msg='取借方出错';
  if @Err != 0 goto ErrHandle;
  
  Select @SQL2=
  'insert into #427890_tmp1(Sdate,Shopid,goodsid,deptid,DCount,DCostValue) '+
  '	select Sdate,Shopid,goodsid,deptid,sum(Qty) DCount,sum(CostValue) DCostValue '+
  '	from '+@tablename +' where shopid=''' +@shopid+'''' + ' and goodsid= '+cast(@goodsid as char(6)) +' and sheettype = 101' +
  ' 	group by Sdate,Shopid,goodsid,deptid';
  exec (@SQL2);	
  select @Err=@@Error,@BreakPoint=427030,@Msg='取贷方出错';
  if @Err != 0 goto ErrHandle;
  
  insert into #tmp_427890(Sdate,Shopid,goodsid,deptid,JCount,JCostValue,DCount,DCostValue) 
  	select Sdate,Shopid,goodsid,deptid,sum(JCount) JCount,sum(JCostValue) JCostValue,sum(DCount) DCount,sum(DCostValue) DCostValue 
  	from #427890_tmp1 group by Sdate,Shopid,goodsid,deptid;
  select @Err=@@Error,@BreakPoint=427040,@Msg='汇总出错';
  if @Err != 0 goto ErrHandle;
  
  --取期末  算法：取当天该门店单品的最大序列号的结存
  Select @SQL1=
  'insert into #427890_tmp2(Sdate,Shopid,goodsid,deptid,maxserialid) '+
  '	select b.Sdate,b.Shopid,b.goodsid,b.deptid,max(a.serialid) '+
  '	from '+@tablename +' a,#tmp_427890 b where a.sdate=b.sdate and a.Shopid=b.shopid and a.goodsid=b.goodsid and a.deptid=b.deptid '+
  '	group by b.Sdate,b.Shopid,b.goodsid,b.deptid '; 
  exec (@SQL1);	
  select @Err=@@Error,@BreakPoint=427050,@Msg='取最大流水号出错';
  if @Err != 0 goto ErrHandle;
  
  Select @SQL2=
  'insert into #427890_tmp3(Sdate,Shopid,goodsid,deptid,QMCount,QMCostValue) '+
  '	select b.Sdate,b.Shopid,b.goodsid,b.deptid,a.closeqty,a.CloseCostV '+
  '	from '+@tablename +' a,#427890_tmp2 b where a.sdate=b.sdate and a.Shopid=b.shopid and a.goodsid=b.goodsid and a.deptid=b.deptid and a.serialid=b.maxserialid '; 
  exec (@SQL2);	
  select @Err=@@Error,@BreakPoint=427060,@Msg='取期末出错';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select Sdate,Shopid,goodsid,deptid,QMCount,QMCostValue from #427890_tmp3; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @sdate,@ShopID1,@GoodsID1,@deptid,@QMCount,@QMCostValue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427890 set QMCount=@QMCount,QMCostValue=@QMCostValue where sdate=@sdate and shopid=@shopid1 and goodsid=@goodsid1 and deptid=@deptid;
 	select @Err=@@Error,@BreakPoint=427070,@msg='更新期末出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  update #tmp_427890 set QCCount=QMCount+DCount-JCount where 1=1;
  update #tmp_427890 set QCCostValue=QMCostValue+DCostValue-JCostValue where 1=1;
  select @Err=@@Error,@BreakPoint=427080,@Msg='取期初出错';
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
 	select @Err=@@Error,@BreakPoint=427090,@msg='更新执行进价出错！';
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427890;
  return -1;
End
Go


--rp_427891 商品三级帐汇总报告                                              
--建立：魏薇 2003.11.26
--计算公式:
----借方数量=sum(Qty*Directflag) 
----借方金额=sum(CostValue*Directflag)
----期初金额=期末-借方+贷方

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
  
  declare @QMCount     	dec(12,3);         --期末数量
  declare @QMCostValue	dec(12,2);   --期末金额
--  declare @maxsdate     datetime;
  declare @maxserialid     int;
  declare @DCount     	dec(12,3); 	    --贷方数量
  declare @DCostValue	dec(12,2);  --贷方金额
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
ShopID		char(4)		null,  --发生门店
GoodsID		int		null,  --商品编号
DeptID		int		null,  --小类编号
QCCount     	dec(12,3) 	default 0 null,  --期初数量
QCCostValue	dec(12,2) 	default 0 null,  --期初金额
JCount     	dec(12,3) 	default 0 null,  --借方数量
JCostValue	dec(12,2) 	default 0 null,  --借方金额	
DCount     	dec(12,3) 	default 0 null,  --贷方数量
DCostValue	dec(12,2) 	default 0 null,  --贷方金额
QMCount     	dec(12,3) 	default 0 null,  --期末数量
QMCostValue	dec(12,2) 	default 0 null   --期末金额
);
  
  select @Err=@@Error,@BreakPoint=427000,@Msg='建立临时表出错';
  if @Err != 0 goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=427010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  	
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=427020,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tablename='wastebook'+left(convert(char(8),@BeginDate,112),6);
  --select @stable='dbo.'+@tablename;
  if not exists (select * from dbo.sysobjects 
	where id = object_id(@tablename) and type='U') 
	select @tablename='wastebook'; 
  select @Err=@@Error,@BreakPoint=427030,@Msg='取月表出错';
  if @Err != 0 goto ErrHandle;	
  
  create table #427891_tmp(
SerialID	int		null,	-- 顺序号  
SDate		datetime	null,  --发生日期
ShopID		char(4)		null,  --发生门店
GoodsID		int		null,  --商品编号
DeptID		int		null,   --小类编号
Directflag		int		null,		--记帐方向:+1=Dr /-1=Cr
Qty			dec(12,3)	default 0 null,		--发生数量
CostValue		dec(12,2)	default 0 null,		--发生金额
CloseQty		dec(12,3)	default 0 null,		--结存数量
CloseCostV		dec(12,2)	default 0 null, 		--结存金额
SheetType		int		null 		--单据类型
);

  create table #rp_427891tmp3(
ShopID		char(4)		null,  --发生门店
GoodsID		int		null,  --商品编号
DeptID		int		null,   --小类编号
--QCCount     	dec(12,3) 	default 0 null,  --期初数量
--QCCostValue	dec(12,2) 	default 0 null,  --期初金额
JCount     	dec(12,3) 	default 0 null,  --借方数量
JCostValue	dec(12,2) 	default 0 null,  --借方金额	
DCount     	dec(12,3) 	default 0 null,  --贷方数量
DCostValue	dec(12,2) 	default 0 null   --贷方金额
--QMCount     	dec(12,3) 	default 0 null,  --期末数量
--QMCostValue	dec(12,2) 	default 0 null   --期末金额
);

  select @Err=@@Error,@BreakPoint=427040,@Msg='建立临时表出错';
  if @Err != 0 goto ErrHandle;

  Select @SQL1=
  'insert into #427891_tmp select serialid,Sdate,Shopid,goodsid,deptid,Directflag,Qty,CostValue,CloseQty,CloseCostV,SheetType '+ 
  '	from '+@tablename +' where shopid=''' +@shopid+''''+' and round(deptid/'+ltrim(rtrim(cast(@levelvalue as char))) +',0)= '+ ltrim(rtrim(cast(@sgroupid as char)));
  exec (@SQL1);	
  select @Err=@@Error,@BreakPoint=427050,@Msg='取值出错';
  if @Err != 0 goto ErrHandle;

  insert into #rp_427891tmp3(ShopID,GoodsID,DeptID,JCount,JCostValue) 
  select ShopID,GoodsID,DeptID,sum(Directflag*qty),sum(Directflag*CostValue) 
  	from #427891_tmp where sheettype <> 101 
  	group by Shopid,goodsid,deptid;
  select @Err=@@Error,@BreakPoint=427060,@Msg='取借方值出错';
  if @Err != 0 goto ErrHandle;

  insert into #rp_427891tmp3(ShopID,GoodsID,DeptID,DCount,DCostValue) 
  	select ShopID,GoodsID,DeptID,sum(qty),sum(costvalue) 
  		from #427891_tmp where sheettype = 101 
  		group by Shopid,goodsid,deptid;
  select @Err=@@Error,@BreakPoint=427070,@Msg='取贷方值出错';
  if @Err != 0 goto ErrHandle;	
  
  insert into #tmp_427891(ShopID,GoodsID,DeptID,JCount,JCostValue,DCount,DCostValue)
  select ShopID,GoodsID,DeptID,sum(JCount) JCount,sum(JCostValue) JCostValue,sum(DCount) DCount,sum(DCostValue) DCostValue from #rp_427891tmp3 
  	group by ShopID,GoodsID,DeptID;
  select @Err=@@Error,@BreakPoint=427080,@Msg='汇总出错';
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
 	select @Err=@@Error,@BreakPoint=427090,@msg='更新期末出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle; 	
  
  update #tmp_427891 set QCCount=QMCount+DCount-JCount where 1=1;
  update #tmp_427891 set QCCostValue=QMCostValue+DCostValue-JCostValue where 1=1;
  select @Err=@@Error,@BreakPoint=427100,@Msg='取期初出错';
  if @Err != 0 goto ErrHandle;
  
  insert into #427891 select * from #tmp_427891;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #rp_427891tmp3;
  drop table #427891_tmp;
  drop table #tmp_427891;
  return 0;   
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427891;
  return -1;
End
Go


--rp_427892 部门进销存汇总表                                              
--建立：魏薇 2003.11.27
--计算公式:
----借方数量=a.ReceiptQty+a.RetQty-a.TransferOutQty+a.TransferInQty+a.PDQty-a.LostQty-a.WSaleQty-a.UseQty+a.AdjustQty --转类不影响单品发生数量和结存
-------------PriceChgQty是变价时商品库存
----借方金额=a.ReceiptValue+a.RetValue-a.TransferOutValue+a.TransferInValue+a.PDValue-a.LostValue-a.WSaleValue-a.UseValue+a.AdjustValue --转类不影响单品发生数量和结存
----期初金额=期末-借方+贷方

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
  
  declare @QMCount     	int;         --期末数量
  declare @QMCostValue	dec(12,2);   --期末金额
  declare @maxsdate     datetime;
  declare @ManageDeptID  int;
  declare @shopid1   	char(4);

--  declare @deptlevel    int;
--  declare @levelvalue   int;
  
  SET NOCOUNT ON
  select @tempflag=0;

create table #tmp_427892(
ShopID		char(4)		null,  --发生门店
ManageDeptID	int		null,  --大类编号
QCCostValue	dec(12,2) 	null,  --期初金额
JCostValue	dec(12,2) 	null,  --借方金额	
DCostValue	dec(12,2) 	null,  --贷方金额
QMCostValue	dec(12,2) 	null   --期末金额
);

  select @Err=@@Error,@BreakPoint=427000,@Msg='建立临时表出错';
  if @Err != 0 goto ErrHandle;

  select @tempflag=1;
  select a.SDate,a.ShopID,a.ManageDeptID,a.SaleCost DCostValue,a.CloseCostV QMCostValue,
	sum(a.ReceiptValue+a.RetValue-a.TransferOutValue+a.TransferInValue+a.PDValue-a.LostValue-a.WSaleValue-a.UseValue+a.AdjustValue) JCostValue 
	into #rp_427892tmp1 from RPT_Base0021 a 
	where a.shopid=@shopid and convert(char(10),a.SDate,120) between @BeginDate and @EndDate 
	group by a.SDate,a.ShopID,a.ManageDeptID,a.SaleCost,a.CloseCostV;
  select @Err=@@Error,@BreakPoint=427030,@Msg='取值出错';
  if @Err != 0 goto ErrHandle;
  
  select a.ShopID,a.ManageDeptID,sum(JCostValue) JCostValue,sum(DCostValue) DCostValue 
  	into #rp_427892tmp2 from #rp_427892tmp1 a 
  	group by a.shopid,a.ManageDeptID;
  select @Err=@@Error,@BreakPoint=427031,@Msg='统计出错';
  if @Err != 0 goto ErrHandle;
  
  insert into #tmp_427892(ShopID,ManageDeptID,JCostValue,DCostValue) 
  	select ShopID,ManageDeptID,JCostValue,DCostValue 
  		from  #rp_427892tmp2;
  select @Err=@@Error,@BreakPoint=427040,@Msg='取值出错';
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
 	select @Err=@@Error,@BreakPoint=427050,@msg='更新期末出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle; 	
  
  update #tmp_427892 set QCCostValue=QMCostValue+DCostValue-JCostValue where 1=1;
  select @Err=@@Error,@BreakPoint=427070,@Msg='取期初出错';
  if @Err != 0 goto ErrHandle;
  
  insert into #427892 select * from #tmp_427892;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #rp_427892tmp1;
  drop table #rp_427892tmp2;
  return 0;   
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427892;
  return -1;
End
Go



----------------------------------------------------------------------------------------
--rp_427899			快讯商品库存跟踪报表    
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：魏薇 2003.12.10
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427899') and type = 'P')
  drop procedure dbo.rp_427899
GO

create procedure dbo.rp_427899 @PlanID int,@ShopID char(4) 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031210_01,Last Mender:魏薇
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag     int;
  
  declare @PriceBeginDate	datetime;       --销售开始日期 (售价开始日期)
  declare @PriceEndDate	        datetime;       --销售结束日期 (售价结束日期)
  declare @shopid1		char(4);
  declare @goodsid		int;
  declare @maxsdate		datetime;  --已销售最大日期
  declare @SaleQty		dec(12,3);  --销售数量
  declare @SaleValue		dec(12,2);  --销售金额
  declare @SaleCost		dec(12,2);  --销售成本金额
  declare @StockQty		dec(12,3);  --库存数量
  declare @OpenOrderQty		dec(12,3);  --在途订单数量

  SET NOCOUNT ON
  select @tempflag=0;
  
  create table #tmp_427899(
ShopID          char(4)         null,               --店号(只能为分店店号)    
GoodsID		int		null,		--编码(促销商品编码)
Venderid        int             null,               --供应商编码(参加促销的供应商)
Price		dec(12,2)	default 0 null,		--促销售价
Cost		dec(12,4)	default 0 null,		--促销进价
PriceBeginDate	datetime	null,		--销售开始日期 (售价开始日期)
PriceEndDate	datetime	null,		--销售结束日期 (售价结束日期)
YSdays		int 		default 0 null,				--已销天数
Maxsdate        datetime	null,		--已销售最大日期
SaleQty		dec(12,3)	default 0 null,	--销售数量	
SaleValue	dec(12,2)	default 0 null,	--销售金额
SaleCost	dec(12,2)	default 0 null,		--销售成本金额
ProfitValue	dec(12,2)	default 0 null,			--毛利
profitrate	dec(4,2)	default 0 null,	 --毛利率
Avgsaleqty	dec(12,3)	default 0 null,	--日均销售数量	
AvgSaleValue	dec(12,2)	default 0 null,	--日均销售金额
SYdays		int 		default 0 null,			--剩余天数
StockQty	dec(12,3) 	default 0 null,			--库存数量
OpenOrderQty	dec(12,3) 	default 0 null,			--在途订单数量
KPdays		dec(12,2) 	default 0 null,			--可配天数
KXdays		dec(12,2) 	default 0 null			--可销天数
);

  select @Err=@@Error,@BreakPoint=420000,@Msg='建立临时表出错';
  if @Err != 0 goto ErrHandle;

  --取当前促销计划商品  
  select @tempflag=1;
  insert into #tmp_427899(ShopID,GoodsID,Venderid,Price,Cost,PriceBeginDate,PriceEndDate)
 	 select ShopID,GoodsID,Venderid,Price,Cost,PriceBeginDate,PriceEndDate from nowpromotionplan0 
 	 where planid=@PlanID and shopid=@ShopID;
  select @Err=@@Error,@BreakPoint=420010,@Msg='取促销计划数据出错';
  if @Err != 0 goto ErrHandle;
	 
  --统计销售
  select @PriceBeginDate=PriceBeginDate,@PriceEndDate=PriceEndDate from #tmp_427899;
  select @Err=@@Error,@BreakPoint=420020,@Msg='取促销时间出错';
  if @Err != 0 goto ErrHandle;

  select a.shopid,a.goodsid,max(sdate) maxsdate,sum(a.SaleQty) SaleQty,sum(a.SaleValue) SaleValue,sum(a.SaleCost) SaleCost into #rp_427899tmp1 
  	from RPT_Base0001 a,#tmp_427899 b 
  	where a.shopid=b.shopid and a.goodsid=b.goodsid and convert(char(10),a.sdate,120) between @PriceBeginDate and @PriceEndDate 
  	group by a.shopid,a.goodsid;
  select @Err=@@Error,@BreakPoint=420030,@Msg='取销售数据出错';
  if @Err != 0 goto ErrHandle;
  	
  declare cur_stock cursor local for
      	select shopid,goodsid,maxsdate,SaleQty,SaleValue,SaleCost from #rp_427899tmp1; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid1,@goodsid,@maxsdate,@SaleQty,@SaleValue,@SaleCost;
    	if  @@fetch_status !=0 break;
 	update #tmp_427899 set Maxsdate=@Maxsdate,SaleQty=@SaleQty,SaleValue=@SaleValue,SaleCost=@SaleCost where shopid=@shopid1 and goodsid=@goodsid;
	select @Err=@@Error,@BreakPoint=420040,@msg='更新销售数据出错！';
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
  select @Err=@@Error,@BreakPoint=420050,@Msg='更新毛利和日均值出错';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427899tmp1;
  
  --统计库存
  select a.shopid,a.goodsid,b.qty StockQty,c.OpenOrderQty into #rp_427899tmp2 from #tmp_427899 a,shopsstock b,demand c 
  	where a.shopid=b.shopid and a.goodsid=b.goodsid and a.shopid=c.shopid and a.goodsid=b.goodsid;
  select @Err=@@Error,@BreakPoint=420060,@Msg='取库存值出错';
  if @Err != 0 goto ErrHandle;
  	
  declare cur_stock cursor local for
      	select shopid,goodsid,StockQty,OpenOrderQty from #rp_427899tmp2; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid1,@goodsid,@StockQty,@OpenOrderQty;
    	if  @@fetch_status !=0 break;
 	update #tmp_427899 set StockQty=@StockQty,OpenOrderQty=@OpenOrderQty where shopid=@shopid1 and goodsid=@goodsid;
	select @Err=@@Error,@BreakPoint=420070,@msg='更新库存值出错！';
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
  select @Err=@@Error,@BreakPoint=420080,@Msg='更新可配可销出错';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427899tmp2;
  
  insert into #427899 select * from #tmp_427899;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #tmp_427899;
  return  0;  
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427899;
  return -1;
End
Go

----------------------------------------------------------------------------------------
--rp_427900			单品业绩考核表    
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：魏薇 2003.12.11
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427900') and type = 'P')
  drop procedure dbo.rp_427900
GO

create procedure dbo.rp_427900 @begindate int,@enddate int,@DeptID int 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031211_01,Last Mender:魏薇
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @tempflag     int;
  
  declare @shopid		char(4);
  declare @goodsid		int;
  declare @countno		int;	    --销售商品数
  declare @TolSaleQty		dec(12,3);  --销售数量
  declare @TolSaleValue		dec(12,2);  --销售金额
  declare @TolSaleCost		dec(12,2);  --销售成本金额
  declare @TolProfitValue	dec(12,2);  --总毛利
  declare @TolStockvalue	dec(12,2);  --总库存金额
  declare @Stockvalue		dec(12,2);  --库存金额
  declare @venderid		int;	    
  declare @BeginYM		int;
  declare @EndYM		int;

  SET NOCOUNT ON
  select @tempflag=0;
  
  create table #tmp_427900(
DeptID		int		null,				--小类编码
GoodsID		int		null,		--商品编码
ShopID          char(4)         null,               --店号(只能为分店店号)    
Venderid        int             null,               --默认供应商编码
Countno		int		default 0 null,		--销售商品数
TolSaleQty	dec(12,3)	default 0 null,	--总销售数量	
TolSaleValue	dec(12,2)	default 0 null,	--总销售金额
TolSaleCost	dec(12,2)	default 0 null,		--总销售成本
TolProfitValue  dec(12,2)	default 0 null,			--总毛利
SaleQty		dec(12,3)	default 0 null,	--销售数量	
AvgSaleQty	dec(12,3)	default 0 null,	--(小类)平均销售数量
DiffSaleQty	dec(12,3)	default 0 null,	--与平均值差异
SaleValue	dec(12,2)	default 0 null,	--销售金额
AvgSaleValue	dec(12,2)	default 0 null,	--(小类)平均销售金额
DiffSaleValue	dec(12,2)	default 0 null,	--与平均值差异
SaleCost	dec(12,2)	default 0 null,		--销售成本
AvgSaleCost	dec(12,2)	default 0 null,	--(小类)平均销售成本
DiffSaleCost	dec(12,2)	default 0 null,	--与平均值差异
ProfitValue	dec(12,2)	default 0 null,			--毛利
AvgProfitValue	dec(12,2)	default 0 null,	--(小类)平均毛利
DiffProfitValue	dec(12,2)	default 0 null,	--与平均值差异
profitrate	dec(4,2)	default 0 null,	 --毛利率
Avgprofitrate	dec(4,2)	default 0 null,	--(小类)平均毛利率
Diffprofitrate	dec(4,2)	default 0 null,	--与平均值差异
TolStockvalue   dec(12,2)       default 0 null, --小类总库存
Stockvalue	dec(12,2)	default 0 null,  --单品库存
DeptGMROI	dec(12,4)	default 0 null,	--品类平均GMROI	
GoodsGMROI	dec(12,4)	default 0 null 	--单品实际GMROI	
);

  select @Err=@@Error,@BreakPoint=420000,@Msg='建立临时表出错';
  if @Err != 0 goto ErrHandle;

  --统计销售值
  select @tempflag=1;
  --select @BeginYM=year(@begindate)*100+month(@begindate);
  --select @EndYM=year(@enddate)*100+month(@enddate);
  select a.deptid,b.goodsid,b.shopid,sum(b.SaleQty) SaleQty,sum(b.SaleValue) SaleValue,sum(b.SaleCost) SaleCost into #rp_427900tmp 
  		from goods a,rpt_base0003 b 
  		where a.deptid=@DeptID and a.goodsid=b.goodsid and b.MonthID between @begindate and @enddate   
  		group by a.deptid,b.goodsid,b.shopid;
  select @Err=@@Error,@BreakPoint=420010,@Msg='取销售值出错';
  if @Err != 0 goto ErrHandle;
  
  insert into #rp_427900tmp 
  	select a.deptid,b.goodsid,b.shopid,sum(b.SaleQty) SaleQty,sum(b.SaleValue) SaleValue,sum(b.SaleCost) SaleCost 
  		from goods a,rpt_base0001 b 
  		where a.deptid=@DeptID and a.goodsid=b.goodsid and (year(b.sdate)*100+month(b.sdate)) between @Begindate and @Enddate   
  		group by a.deptid,b.goodsid,b.shopid;
  select @Err=@@Error,@BreakPoint=420012,@Msg='取销售值出错';
  if @Err != 0 goto ErrHandle;
  
  insert into #tmp_427900(deptid,goodsid,shopid,SaleQty,SaleValue,SaleCost)
  	select deptid,goodsid,shopid,sum(SaleQty),sum(SaleValue),sum(SaleCost) 
  	from #rp_427900tmp group by deptid,goodsid,shopid;
  select @Err=@@Error,@BreakPoint=420015,@Msg='汇总销售值出错';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427900tmp;
  
  update #tmp_427900 set ProfitValue=SaleValue-SaleCost where 1=1; 
  update #tmp_427900 set profitrate=(SaleValue-SaleCost)/SaleValue*100 where SaleValue <> 0;
  select @Err=@@Error,@BreakPoint=420020,@Msg='更新毛利出错';
  if @Err != 0 goto ErrHandle;
    
  --统计平均销售值
  select shopid,count(distinct goodsid) countno,sum(SaleQty) TolSaleQty,sum(SaleValue) TolSaleValue,sum(SaleCost) TolSaleCost,sum(ProfitValue) TolProfitValue 
  	into #rp_427900tmp1 from #tmp_427900 group by shopid;
  select @Err=@@Error,@BreakPoint=420030,@Msg='统计总销售出错';
  if @Err != 0 goto ErrHandle;
  	
  declare cur_stock cursor local for
      	select shopid,countno,TolSaleQty,TolSaleValue,TolSaleCost,TolProfitValue from #rp_427900tmp1; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid,@countno,@TolSaleQty,@TolSaleValue,@TolSaleCost,@TolProfitValue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427900 set countno=@countno,TolSaleQty=@TolSaleQty,TolSaleValue=@TolSaleValue,TolSaleCost=@TolSaleCost,TolProfitValue=@TolProfitValue where shopid=@shopid;
	select @Err=@@Error,@BreakPoint=420040,@msg='更新总销售出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420050,@Msg='更新总销售出错';
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
  select @Err=@@Error,@BreakPoint=420060,@Msg='统计平均值出错';
  if @Err != 0 goto ErrHandle;
  
  --统计库存
  select a.shopid,a.goodsid,b.CostValue Stockvalue into #rp_427900tmp2 from #tmp_427900 a,shopsstock b 
  	where a.shopid=b.shopid and a.goodsid=b.goodsid;
  select shopid,sum(Stockvalue) TolStockvalue into #rp_427900tmp3 from #rp_427900tmp2 group by shopid;
  select @Err=@@Error,@BreakPoint=420070,@Msg='统计库存出错';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select shopid,goodsid,Stockvalue from #rp_427900tmp2; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid,@goodsid,@Stockvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427900 set Stockvalue=@Stockvalue where shopid=@shopid and goodsid=@goodsid;
	select @Err=@@Error,@BreakPoint=420080,@msg='更新单品库存出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420090,@Msg='更新单品库存出错！';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427900tmp2;	
  
  declare cur_stock cursor local for
      	select shopid,TolStockvalue from #rp_427900tmp3; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid,@TolStockvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427900 set TolStockvalue=@TolStockvalue where shopid=@shopid;
	select @Err=@@Error,@BreakPoint=420100,@msg='更新总库存出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420110,@Msg='更新总库存出错！';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427900tmp3;	
  
  update #tmp_427900 set DeptGMROI=TolProfitValue/TolStockvalue*100 where TolStockvalue <> 0;
  update #tmp_427900 set DeptGMROI=9999999.0000 where TolStockvalue = 0;
  update #tmp_427900 set GoodsGMROI=ProfitValue/Stockvalue*100 where Stockvalue <> 0;
  update #tmp_427900 set GoodsGMROI=9999999.0000 where Stockvalue = 0;
  select @Err=@@Error,@BreakPoint=420120,@Msg='统计GMROI出错！';
  if @Err != 0 goto ErrHandle;
  
  --取默认供应商
  select a.shopid,a.goodsid,b.venderid into #rp_427900tmp4 from #tmp_427900 a,cost b 
  	where a.shopid=b.shopid and a.goodsid=b.goodsid and b.flag=0;
  select @Err=@@Error,@BreakPoint=420130,@Msg='取默认供应商出错！';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select shopid,goodsid,venderid from #rp_427900tmp4; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid,@goodsid,@venderid;
    	if  @@fetch_status !=0 break;
 	update #tmp_427900 set venderid=@venderid where shopid=@shopid and goodsid=@goodsid;
	select @Err=@@Error,@BreakPoint=420140,@msg='更新默认供应商出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420150,@Msg='更新默认供应商出错！';
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427900;
  return -1;
End
Go

----------------------------------------------------------------------------------------
--rp_429910			收银员效率考核日报    
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：魏薇 2003.12.15
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_429910') and type = 'P')
  drop procedure dbo.rp_429910
GO

create procedure dbo.rp_429910 @begindate datetime 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031215_01,Last Mender:魏薇
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
CashierID	char(4)		null,		--收银员号
PosID		char(4)		null,		--POS号
BeginTime	char(8)		null,		--开始时间
EndTime		char(8)		null,		--结束时间
Countlist	int		default 0 null,		--收银单数
HCountlist	dec(12,4)	default 0 null,		--收银单张数/小时
Countgoods	int		default 0 null,		--商品件数
MCountgoods	dec(12,4)	default 0 null		--件数/分钟
--Totaltime	dec(12,2)  	default 0 null,		--找零时间
--AvgTotaltime	dec(12,2)  	default 0 null 		--平均找零时间/张
);

  select @Err=@@Error,@BreakPoint=420000,@Msg='建立临时表出错';
  if @Err != 0 goto ErrHandle;

  select @tempflag=1;
  --统计收银单数、商品件数
  --计算一般商品件数(除销售退货外)
  select CashierID,PosID,Listno,stime,sum(Amount) Countgoods into #rp_429910tmp1 
  	from sale_j where TrainFlag=0 and saletype<> 'r' and X=1 and convert(char(10),sdate,120)=@begindate 
  	group by CashierID,PosID,Listno,stime;
  select @Err=@@Error,@BreakPoint=420010,@Msg='统计商品数出错';
  if @Err != 0 goto ErrHandle;
  --计算一般商品件数(销售退货)
  insert into #rp_429910tmp1 
  	select CashierID,PosID,Listno,stime,(sum(Amount)*(-1)) Countgoods 
  	from sale_j where TrainFlag=0 and saletype= 'r' and X=1 and convert(char(10),sdate,120)=@begindate 
  	group by CashierID,PosID,Listno,stime;
  select @Err=@@Error,@BreakPoint=420010,@Msg='统计商品数出错';
  if @Err != 0 goto ErrHandle;
 --计算金额码或称重码商品件数
  insert into #rp_429910tmp1 
  	select CashierID,PosID,Listno,stime,count(goodsid) Countgoods 
  		from sale_j where TrainFlag=0 and X=1000 and convert(char(10),sdate,120)=@begindate 
  		group by CashierID,PosID,Listno,stime;
  select @Err=@@Error,@BreakPoint=420015,@Msg='统计商品数出错';
  if @Err != 0 goto ErrHandle;
  
  select CashierID,PosID,min(stime) minstime,max(stime) maxstime into #rp_429910tmp2 
  	from #rp_429910tmp1 group by CashierID,PosID;
  select @Err=@@Error,@BreakPoint=420020,@Msg='统计时间出错';
  if @Err != 0 goto ErrHandle;
  
  insert into #tmp_429910(CashierID,PosID,Countgoods)	
  	select CashierID,PosID,sum(Countgoods) Countgoods from #rp_429910tmp1 
  	group by CashierID,PosID;
  select @Err=@@Error,@BreakPoint=420030,@Msg='插入商品数出错';
  if @Err != 0 goto ErrHandle;
  
  --统计开始时间、结束时间	
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
	select @Err=@@Error,@BreakPoint=420040,@msg='更新时间出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420050,@Msg='更新时间出错！';
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
	select @Err=@@Error,@BreakPoint=420060,@msg='更新收银单数出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420060,@Msg='更新收银单数出错！';
  if @Err != 0 goto ErrHandle;
  drop table #rp_429910tmp1;
  drop table #rp_429910tmp3;
  

  --统计收银单张数/小时、件数/分钟
  declare cur_stock cursor local for
      	select CashierID,PosID,BeginTime,EndTime from #tmp_429910; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @CashierID,@PosID,@BeginTime,@EndTime;
    	if  @@fetch_status !=0 break;
    	--统计小时、分钟
 	select @DiffTime=convert(char(8),(cast(@EndTime as datetime)-cast(@BeginTime as datetime)),108);
 	if left(@DiffTime,1) =0 
 		begin 
 			select @Hhour=cast(right(left(@DiffTime,2),1) as int)+cast(right(left(@DiffTime,5),2) as dec)/60+cast(right(@DiffTime,2) as dec)/3600;
			select @Mmins=(cast(right(left(@DiffTime,2),1) as int)*60)+cast(right(left(@DiffTime,5),2) as int)+cast(right(@DiffTime,2) as dec)/60;
 			select @Err=@@Error,@BreakPoint=420050,@msg='统计历时出错！';
        		if (@Err is null) or (@Err!=0)  goto ErrHandle;
 		end 
 		else  begin 
 			select @Hhour=cast(left(@DiffTime,2) as int)+cast(right(left(@DiffTime,5),2) as dec)/60+cast(right(@DiffTime,2) as dec)/3600;
			select @Mmins=(cast(left(@DiffTime,2) as int)*60)+cast(right(left(@DiffTime,5),2) as int)+cast(right(@DiffTime,2) as dec)/60;
 		  	select @Err=@@Error,@BreakPoint=420060,@msg='统计历时出错！';
        		if (@Err is null) or (@Err!=0)  goto ErrHandle;
 		      end;	
	update #tmp_429910 set HCountlist=Countlist/@Hhour where CashierID=@CashierID and PosID=@PosID and @Hhour <>0;
        update #tmp_429910 set MCountgoods=Countgoods/@Mmins where CashierID=@CashierID and PosID=@PosID and @Mmins <>0;
 	select @Err=@@Error,@BreakPoint=420070,@msg='取平均值出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420080,@Msg='取平均值出错！';
  if @Err != 0 goto ErrHandle;

  /*
   --统计找零时间(分钟)
  select distinct a.listno listno,a.CashierID,a.PosID,min(a.stime) Beginstime,max(b.stime) Endstime,9999999.99 Mmins into #rp_429910tmp2 from sale_j a,pay_j b 
  	where a.CashierID=b.CashierID and a.PosID=b.PosID and a.listno=b.listno and a.sdate=b.sdate and a.SaleType='a' and a.DeliverFlag=0 and a.TrainFlag=0 
  	and convert(char(10),a.sdate,120)=@begindate and convert(char(10),b.sdate,120)=@begindate 
  	group by a.CashierID,a.PosID,a.listno; 
  select @Err=@@Error,@BreakPoint=420090,@msg='取找零时间出错！';
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
 	select @Err=@@Error,@BreakPoint=420100,@msg='取找零差异出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420110,@Msg='取找零差异出错！';
  if @Err != 0 goto ErrHandle;
 
  update #rp_429910tmp2 set Mmins=0 where Mmins=9999999.99;
  select CashierID,PosID,sum(Mmins) Totaltime into #rp_429910tmp3 from #rp_429910tmp2 group by CashierID,PosID;
  select @Err=@@Error,@BreakPoint=420120,@msg='统计找零时间出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #rp_429910tmp2;
  
  declare cur_stock cursor local for
      	select CashierID,PosID,Totaltime from #rp_429910tmp3; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @CashierID,@PosID,@Totaltime;
    	if  @@fetch_status !=0 break;
 	update #tmp_429910 set Totaltime=@Totaltime where CashierID=@CashierID and PosID=@PosID;	
	select @Err=@@Error,@BreakPoint=420130,@msg='更新找零时间出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420140,@Msg='更新找零时间出错！';
  if @Err != 0 goto ErrHandle;
  drop table #rp_429910tmp3;
  
  update #tmp_429910 set AvgTotaltime=Totaltime/Countlist where Countlist <>0;
  select @Err=@@Error,@BreakPoint=420150,@Msg='更新平均找零时间出错！';
  if @Err != 0 goto ErrHandle;
  */
  
  insert into #429910 select * from #tmp_429910;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #tmp_429910;
  return  0;  
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_429910;
  return -1;
End
Go

----------------------------------------------------------------------------------------
--rp_427901			门店库存周转天数统计表    
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：魏薇 2003.12.16
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427901') and type = 'P')
  drop procedure dbo.rp_427901
GO

create procedure dbo.rp_427901 @begindate datetime,@enddate datetime 
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031216_01,Last Mender:魏薇
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
ShopID			char(4)		null,				--店号
SaleValue		dec(12,2)	default 0 Not Null,		--销售金额
SaleCost		dec(12,2)	default 0 Not Null,		--销售成本
CloseCostV		dec(12,2)	default 0 Not Null,		--期末库存成本
AvgMDCloseCostV		dec(12,2)	default 0 Not Null,		--月度每日库存合计
AvgMCloseCostV		dec(12,2)	default 0 Not Null,		--月平均库存成本
AvgDays			dec(12,2)	default 0 Not Null		--月平均周转天数
);

  select @Err=@@Error,@BreakPoint=420000,@Msg='建立临时表出错';
  if @Err != 0 goto ErrHandle;

  select @tempflag=1;
  insert into #tmp_427901(ShopID,SaleValue,SaleCost,AvgMDCloseCostV) 
  	select ShopID,sum(SaleValue) SaleValue,sum(SaleCost) SaleCost,sum(CloseCostV) CloseCostV 
  	from rpt_base0031 where convert(char(10),sdate,120) between @begindate and @enddate 
  	group by shopid;
  select @Err=@@Error,@BreakPoint=420010,@Msg='统计销售出错';
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
 	select @Err=@@Error,@BreakPoint=420020,@msg='更新期末库存出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420030,@Msg='更新期末库存出错！';
  if @Err != 0 goto ErrHandle;
   

  update #tmp_427901 set AvgMCloseCostV=AvgMDCloseCostV/@diffdays where @diffdays <>0;
  update #tmp_427901 set AvgMCloseCostV=AvgMDCloseCostV/1.00 where @diffdays =0;
  update #tmp_427901 set AvgDays=AvgMDCloseCostV/SaleCost where SaleCost <>0;
  update #tmp_427901 set AvgDays=99999999.00 where SaleCost =0;
  select @Err=@@Error,@BreakPoint=420040,@msg='更新平均值出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
        
  insert into #427901 select * from #tmp_427901;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #tmp_427901;
  return  0;  
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427901;
  return -1;
End
Go

----------------------------------------------------------------------------------------
--rp_427902			供应商库存周转天数统计表    
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：魏薇 2003.12.18
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427902') and type = 'P')
  drop procedure dbo.rp_427902
GO

create procedure dbo.rp_427902 @begindate datetime,@enddate datetime  
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple2.0_20031218_01,Last Mender:魏薇
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
ShopID			char(4)		null,				--店号
SaleCost		dec(12,2)	default 0 Not Null,		--销售成本
CloseCostV		dec(12,2)	default 0 Not Null,		--期末库存成本
AvgMDCloseCostV		dec(12,2)	default 0 Not Null,		--月度每日库存合计
AvgMCloseCostV		dec(12,2)	default 0 Not Null,		--月平均库存成本
AvgDays			dec(12,2)	default 0 Not Null		--月平均周转天数
);
  
  select @Err=@@Error,@BreakPoint=420000,@Msg='建立临时表出错';
  if @Err != 0 goto ErrHandle;

  select @tempflag=1;
  declare @i int exec @i=SP_RPTBase1001 @begindate,@enddate select @i;
  select @Err=@@Error,@BreakPoint=420010,@Msg='执行存储出错';
  if @Err != 0 goto ErrHandle;
  
  insert into #tmp_427902(VenderID,ShopID,SaleCost,AvgMDCloseCostV)
	select VenderID,ShopID,sum(SaleCost) SaleCost,sum(CloseCostV) AvgMDCloseCostV   
	 from RPT_Base1001 group by VenderID,ShopID;
  select @Err=@@Error,@BreakPoint=420020,@Msg='取销售库存出错';
  if @Err != 0 goto ErrHandle;

  select max(sdate) maxsdate,venderid,shopid into #rp_427902tmp1 from RPT_Base1001 group by venderid,shopid;
  select @Err=@@Error,@BreakPoint=420030,@Msg='取期末时间出错';
  if @Err != 0 goto ErrHandle;

  select a.venderid,a.shopid,a.CloseCostV into #rp_427902tmp2 from RPT_Base1001 a,#rp_427902tmp1 b 
  	where a.venderid=b.venderid and a.shopid=b.shopid and a.sdate=maxsdate;
  select @Err=@@Error,@BreakPoint=420040,@Msg='取期末库存出错';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427902tmp1;
	
  declare cur_stock cursor local for
      	select venderid,shopid,CloseCostV from #rp_427902tmp2; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@shopid,@CloseCostV;
    	if  @@fetch_status !=0 break;
    	update #tmp_427902 set CloseCostV=@CloseCostV where venderid=@venderid and shopid=@shopid;
    	select @Err=@@Error,@BreakPoint=420050,@msg='更新期末库存出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=420060,@Msg='更新期末库存出错！';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427902tmp2;	
  
  update #tmp_427902 set AvgMCloseCostV=AvgMDCloseCostV/@diffdays where @diffdays <>0;
  update #tmp_427902 set AvgMCloseCostV=AvgMDCloseCostV/1.00 where @diffdays =0;
  update #tmp_427902 set AvgDays=AvgMDCloseCostV/SaleCost where SaleCost <>0;
  update #tmp_427902 set AvgDays=99999999.00 where SaleCost =0;
  select @Err=@@Error,@BreakPoint=420040,@msg='更新平均值出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  
  insert into #427902 select * from #tmp_427902;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #tmp_427902;
  return  0;  
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427902;
  return -1;
End
Go

---------------------------------------------------------------------------------------
--getSaleCost
--说明: 	代销结算报表[销售],有荣需求。			[无事务]
--参数: 销售日期
--输出: 产生一个##getCurSale的内容.
--建立：管文芳 2004-08-27
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
	+'(select distinct rtrim(name) from serialnumber where serialid=M.sheettype) as sheettype' /*结算类型*/
	+',M.VenderID,(select rtrim(name) from Vender where venderid=M.VenderID) as VenderName,M.ShopID,M.GoodsID'
	+',(select rtrim(Name) from Goods where GoodsID=M.GoodsID) as GoodsName'
	+',sum(isnulL(M.Qty,0)) as Qty '
	+',(select customno from goods where GoodsID=M.GoodsID) as CustomNo '
--	+',isnull((select DKRate  from Cost where VenderID=M.VenderID and ShopID=M.ShopID and GoodsID=M.GoodsID),0) as DKRate' /*倒扣率*/
	+',isnull(M.CostTaxRate,0) as CostTaxRate'/*进项税率*/
	+',isnUll(M.cost,0) as cost' /*进价*/
	+',(sum((isnull(M.costvalue,0))*isnull(M.costtaxrate,0))/100) as costtaxvalue'/*税额*/

	+',sum(isnulL(M.CostValue,0)) as CostValue' /*成本额 */
--	+',sum(isnULL(M.SaleValue,0)) as SaleValue'/*销售金额*/ 
	+',(select name from paytype where  id=M.paytypeid) as payname'/*结算名称*/
	+',(select paytypeday from paytype where  id=M.paytypeid) as paytypeday'/*结算天数*/
	+' from '+ltrim(rtrim(@tableName)) +' M '
	+' where  Exists (select VenderID from Vender where VenderID=M.VenderID '
	+' and PayTypeID in (select id from payType where PayTypeSortID=''d'') )' /*为代销才选出*/
	+' and Convert(varchar(8),M.saleDate,112) Between '+Convert(varchar(8),@sDate,112)
	+' and '+Convert(varchar(8),@eDate,112)/*时间*/
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
--说明: 主要算出每个供应商每张单的期末余额可有问题吧！
--参数: 无
--输出: 产生一个##getCurSale的内容.
--建立：管文芳 2004-08-27 有荣需求
---------------------------------------------------------------------------------------
if Object_id('get_Rpt_AccCurrent') is not null drop function get_Rpt_AccCurrent
Go
create function get_Rpt_AccCurrent()
Returns @Rpt_AccCurrent table(
	     RecordNo  int identity(1,1)--顺序号	
            ,VenderID  int--供应商编码            
            ,SheetID char(16) not null --单据编号
            ,SheetType int not null-- 单据类型-
            ,RefSheetID char(16) default '' not null --相关单据编号
            ,RefSheettype int default '' not null--相关单据类型
            ,CostAmt dec(12,2) --发生金额
            ,DirectFlag   int not null --发生方向
--            ,OpenAmt dec(12,2)--期初余额
            ,CloseAmt dec(12,2) default 0 not null--期末余额
	)
as 
begin
Declare @vCount int,@iMax int,@Max int,@RecordNo int,@VenderID char(16)
--存在于结算单的.
insert @Rpt_AccCurrent 
	select  (select distinct ClientID from AccCurrentBook where SheetID=M.SheetID and SheetType=M.RefSheetType) as VenderID			
		--下面4列位置换了。以保持SheetID为最终的业务单号.
		,M.RefSheetID as SheetID/*相关单号*/
		,M.RefSheetType as SheetType/*单据类型*/		
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
--不存于结算单中的. 
insert @Rpt_AccCurrent
select 	ClientID,SheetID,SheetType,'' as RefSheetID,'' as RefSheetType,SumMoney,DirectFlag,CloseMoney
	from AccCurrentBook where Sheetid  not in (select distinct  SheetID from BillHeadItem )
	order by ClientID DESC



return
end
Go

---------------------------------------------------------------------------------------
--get_rp_apBillHead
--说明: 应付账款报表  调用get_Rpt_AccCurrent
--参数: 无   
--输出: 返回一个表.
--建立：管文芳 2004-08-27 有荣需求
---------------------------------------------------------------------------------------
if Object_id('get_rp_apBillHead') is not null 	drop function get_rp_apBillHead
Go
create function  get_rp_apBillHead(@sDate datetime,@eDate datetime)
Returns  Table
as return(
	select  (select name from Vender where VenderID=M.VenderID) as VenderName 
	,M.VenderID,M.EditDate/*制单日期*/,D.RefSheetID,M.SheetID
	,( case RefSheetType                                                                                                                                                                                                                     
		when 2301 then (select sum(Qty*Cost) from ReceiptItem where SheetID=D.RefSheetID)
		when 5205 then (select sum(CostValue) from updpayableitem where SheetID=D.RefSheetID)
		when 2323 then (select sum(kxsummoney) from ret where SheetID=D.RefSheetID)
	end ) as D_Amt/*借方金额*/
	,D.CostValue as C_Amt/*贷方金额*/
	,(select sum(CloseAmt) from get_Rpt_AccCurrent() where SheetID=D.RefSheetID) as CloseAmt/*应付款期末余额*/
	 from BillHead M inner join BillHeadItem D on M.SheetID=D.SheetID 
	where D.RefSheetType in (5205,2301,2323)  
			and convert(varchar(8),M.PayDate,112) between  Convert(varchar(8),@sDate,112) and Convert(varchar(8),@eDate,112)
	)
Go



-----------------------------------------------------------------------------------
--rp_getPlanPayBillhead
--说明: 每日付款情况一览表   条件为实际付款日期 要排序放外面.
--参数: 无
--输出: 产报表结果内容
--建立：管文芳 2004-08-31 有荣需求 #914
--
-----------------------------------------------------------------------------------
if Object_id('rp_getPlanPayBillhead') is not null drop function rp_getPlanPayBillhead
Go
create function rp_getPlanPayBillhead(@sDate datetime,@edate datetime)
returns table
as 
return(
--Report SQL

select 	isnull((select AccNo from VenderExt where VenderID=M.VenderID),'') as AccNO /*付款账号*/
	,M.ShopID/*付款单位*/
	,(select Name from Vender where VenderID=M.VenderID) as VenderName/*收款供应商名称*/
	,M.Venderid/*收款供应商编号*/
	,sum(isnull(M.PayableMoney,0)-isnulL(M.KXmoney,0)+isnull(M.KXCash,0)) as PayMoney/*付款金额 本期实付＝本期应付－（本期扣项金额－本期扣项缴款金额）*/
	,(select RebateStyle from VenderExt where VenderID=M.VenderID) as RebateStyle/*帐期*/
 	,isnulL(D.InvoiceSheetID,'') as InvoiceSheetID /*CheckDate发票日期*/
 	,convert(varchar(10),D.payableDate,110) as payableDate/*付款日期*/
	,convert(varchar(10),M.PlanPayDate,110) as PlanPayDate/*实际付款日期*/
	,isnull(M.Note,'') as Note
	from BillHead M inner join BillHeadItem D on M.SheetID=D.SheetID		
	where Convert(varchar(8),PlanPayDate,112) between convert(varchar(8),@sdate,112) and convert(varchar(8),@edate,112)	 
	group by M.VenderID,M.ShopID,D.InvoiceSheetID,convert(varchar(10),D.payableDate,110),convert(varchar(10),M.PlanPayDate,110),M.Note
	)
Go

-----------------------------------------------------------------------------------
--mcEngine 主函数外加4个Function构成.
--说明: 大小写转换函数东莞客户报表之用.  
--参数: *
--输出: 产报表结果内容
--建立：管文芳 2004-08-31 
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
--可实现行分离(注，调用此函数一定要先生成Table f_dd_a
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
  select @Amount='仟 佰 拾 万 仟 佰 拾 元 角 分 零 壹 贰 叁 肆 伍 陆 柒 捌 玖',@SplitChar=' ' 
  select @str=convert(varchar(100),@Qty*100),@str=SubString(@str,0,Charindex('.',@str)) --转换
  ----------------为零或超出10位则退出
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
  
  select @Value=Value from config where name='报表是否限制部类权限';
  
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
		GoodsID			int		Not null,		--商品编码
		GoodsCostID		int		not null,		--批次号
		DeptID			int		Not null,		--商品类别
		ShopID			char(4)		Not null,		--店号	
		VenderID		int		Not null,		--供应商编码
		PayTypeID		char(2)		Not null,		--结算方式
		Directflag		int		Not null,		--记帐方向:+1=Dr /-1=Cr
		Qty			dec(12,3)	Not null,		--发生数量
		Cost			dec(12,4)	Not null,		--发生进价
		TaxRate			dec(4,2)	Not null,		--进项税率%
		CostValue		dec(12,3)	Not null,		--发生金额
		CostTaxValue		dec(12,3)	Not null,		--发生税额
		CloseQty		dec(12,3)	Not null,		--结存数量
		CloseCostV		dec(12,3)	Not null,		--结存金额
		CloseTaxV		dec(12,3)	Not null,		--结存税额
		SheetID			char(16)	Not null,		--单据编号
		SheetType		int		Not null,		--单据类型
		SDate			datetime	Not null		--发生日期
		)
---

        if object_id('tempdb..##TMP_SaleCost') is not null drop table ##TMP_SaleCost
	      create table ##TMP_SaleCost
	       (
		SDate		datetime	not null,		--结转日期
		SaleDate	datetime	not null,		--销售日期
		ShopID		char(4)		not null,		--店号
		GoodsID		int		not null,		--商品编码
		DeptID		int		not null,		--类型
		VenderID	int		not null,		--供应商编号
		PaytypeID	char(2)		not null,		--结算方式编号
		AgroFlag	int		default 0 not null,	--是否免税农产品(0=不是 1=是)
		Qty		dec(12,3)	default 0 not null,	--数量
		Price		dec(10,2)	not null,		--分店售价 
		Cost		dec(12,4)	default 0 not null,	--进价
		CostValue	dec(12,2)	not null,		--成本额 
		CostTaxRate	dec(4,2)	default 17 not null,	--进项税率%
		SaleTaxRate	dec(4,2)	default 17 not null,	--销项税率%
		SaleValue	dec(12,2)	default 0 not null,	--销售金额
		DiscValue	dec(12,2)	default 0 not null,	--折扣金额
		DiscType	char(1)		not null,		--促销类型(同Prom_Level表的PromType)
		SheetType	int		default 101 not null	--单据类型,101=销售 102=待处理	
		--DKRate 		dec(4,2) 	default 0 not null	--倒扣率		
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
	  	select @BreakPoint = 99994001,@Msg='建立[##TMP_WasteBook]时出错!';
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
		select @BreakPoint = 99994003,@Msg='建立[##TMP_SaleCost]时出错!';
		goto ErrHandle;
	end;
	set @tRow=@tRow-1;
	end;

  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
--修改：2012-06-08 cjx 修改南平好当家 部类进销存汇总查询在汇总本月结存税金时，数据取值有误的问题
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
	--取本店类型
	select @MyShopType=A.ShopType from Shop A with (NoLock),Config B with (NoLock) where A.ID=B.Value and B.name='本店号'
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	if @MyShopType is null select @MyShopType=11;
	
	select @SDate=convert(varchar(10),getdate(),112);
        select @sdate1=year(@begindate)*10000+month(@begindate)*100+01;
	select @begindate1=convert(datetime,@sdate1);	
	-----------------数据生成---------------------------		
        select @BreakPoint=853191;
        if object_id('tempdb..#TMP_WasteBook') is not null drop table #TMP_WasteBook
           create table dbo.#TMP_WasteBook
	      (
		GoodsID			int		Not null,		--商品编码
		GoodsCostID		int		not null,		--批次号
		DeptID			int		Not null,		--商品类别
		ShopID			char(4)		Not null,		--店号	
		VenderID		int		Not null,		--供应商编码
		PayTypeID		char(2)		Not null,		--结算方式
		Directflag		int		Not null,		--记帐方向:+1=Dr /-1=Cr
		Qty			dec(12,3)	Not null,		--发生数量
		Cost			dec(12,4)	Not null,		--发生进价
		TaxRate			dec(4,2)	Not null,		--进项税率%
		CostValue		dec(12,3)	Not null,		--发生金额
		CostTaxValue		dec(12,3)	Not null,		--发生税额
		CloseQty		dec(12,3)	Not null,		--结存数量
		CloseCostV		dec(12,3)	Not null,		--结存金额
		CloseTaxV		dec(12,3)	Not null,		--结存税额
		SheetID			char(16)	Not null,		--单据编号
		SheetType		int		Not null,		--单据类型
		SDate			datetime	Not null		--发生日期
		)
---
        if object_id('tempdb..#TMP_SaleCost') is not null drop table #TMP_SaleCost
	      create table #TMP_SaleCost
	       (
		SDate		datetime	not null,		--结转日期
		SaleDate	datetime	not null,		--销售日期
		ShopID		char(4)		not null,		--店号
		GoodsID		int		not null,		--商品编码
		DeptID		int		not null,		--类型
		VenderID	int		not null,		--供应商编号
		PaytypeID	char(2)		not null,		--结算方式编号
		AgroFlag	int		default 0 not null,	--是否免税农产品(0=不是 1=是)
		Qty		dec(12,3)	default 0 not null,	--数量
		Price		dec(10,2)	not null,		--分店售价 
		Cost		dec(12,4)	default 0 not null,	--进价
		CostValue	dec(12,2)	not null,		--成本额 
		CostTaxRate	dec(4,2)	default 17 not null,	--进项税率%
		SaleTaxRate	dec(4,2)	default 17 not null,	--销项税率%
		SaleValue	dec(12,2)	default 0 not null,	--销售金额
		DiscValue	dec(12,2)	default 0 not null,	--折扣金额
		DiscType	char(1)		not null,		--促销类型(同Prom_Level表的PromType)
		SheetType	int		default 101 not null	--单据类型,101=销售 102=待处理	
		--DKRate 		dec(4,2) 	default 0 not null	--倒扣率		
	        )
        
	exec @err=LD_JXCBookData @begindate,@endDate,@paytypesortid,'0',@shopid
	if @Err<>0
	begin
		select @Msg='生成准备数据时出错！';
		if @Err != 0 goto ErrHandle;
	end;
	-----------------分类统计-----------------------------	
	--期初库存
	       --每月期初
	      
		INSERT INTO #TMP_Base0001(deptid,ShopID,taxrate,StartQty,StartCostV,Starttaxvalue)
		SELECT deptid,Shopid,taxrate,sum(CloseQty),sum(CloseCostV),sum(Closetaxv)
		FROM #TMP_WasteBook 
		WHERE sheettype =6666 		 
		  and sdate<=@begindate 		 
		group by deptid,shopid,taxrate
               --切换期初          
	 	INSERT INTO #TMP_Base0001(deptid,ShopID,taxrate,StartQty,StartCostV,starttaxvalue)		
		SELECT deptid,Shopid,taxrate,sum(directflag*qty),sum(directflag*costvalue),
		       sum(directflag*Costtaxvalue)
		FROM #TMP_WasteBook 
		WHERE sheettype =8888
		  and sdate<=@begindate	
		group by deptid,shopid,taxrate
              
	       --发生
		INSERT INTO #TMP_Base0001(deptid,ShopID,taxrate,StartQty,StartCostV,starttaxvalue)		
		SELECT deptid,Shopid,taxrate,sum(Directflag*Qty),sum(Directflag*costvalue),
		       sum(directflag*costtaxvalue)
		FROM #TMP_WasteBook
		WHERE sdate<@begindate
                    and sheettype not in(8888,6666)                           
		Group By deptid,Shopid,taxrate	
	        
	        DELETE #TMP_WasteBook WHERE sDate<@begindate;
       
        --管理库存商品的销售数据
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
                			
	--不管理库商品的销售数据
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
	--验收
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
	--退货
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
	--配送出库
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
	--配送入库
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
	--店间调拨出库
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
	--店间调拨入库
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
	
	--盘点
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
	--报损
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
	--批发
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
	--领用：行政领用
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
	
	--领用：加工领用
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
	
	
	--领用：供应商领用
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
-------将其他调整单据分解，begin--------------------------------------------------------------
       --加工分解：2522  
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
        --批次更正：2445 
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
      --库存成本调整：2431
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
       --商品转码调拨：2390
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
       --库存类型转换：2253
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
       --转类：2251
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
	
-------------------------将其他调整单据分解，end--------------------------------------------
 
     --其他调整(负库存冲减)
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
                
        --期末库存  --2006-11-01 加上其他分解的单据金额
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End


create procedure dbo.LD_JXCBookMachine_goods @Flag int=1,@begindate datetime,@endDate datetime

-----------------------------------------------------------------
--Version Number: Mender:GWF  针对单品进销售存
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
	--取本店类型
	select @MyShopType=A.ShopType from Shop A with (NoLock),Config B with (NoLock) where A.ID=B.Value and B.name='本店号'
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	if @MyShopType is null select @MyShopType=11;

	
	select @SDate=convert(varchar(10),getdate(),112);
        select @sdate1=year(@begindate)*10000+month(@begindate)*100+01;
	select @begindate1=convert(datetime,@sdate1);	

	-----------------数据生成---------------------------		
	select @BreakPoint=853191;

          if object_id('tempdb..#TMP_WasteBook') is not null drop table #TMP_WasteBook
	 create table dbo.#TMP_WasteBook
	      (
		GoodsID			int		Not null,		--商品编码
		GoodsCostID		int		not null,		--批次号
		DeptID			int		Not null,		--商品类别
		ShopID			char(4)		Not null,		--店号	
		VenderID		int		Not null,		--供应商编码
		PayTypeID		char(2)		Not null,		--结算方式
		Directflag		int		Not null,		--记帐方向:+1=Dr /-1=Cr
		Qty			dec(12,3)	Not null,		--发生数量
		Cost			dec(12,4)	Not null,		--发生进价
		TaxRate			dec(4,2)	Not null,		--进项税率%
		CostValue		dec(12,3)	Not null,		--发生金额
		CostTaxValue		dec(12,3)	Not null,		--发生税额
		CloseQty		dec(12,3)	Not null,		--结存数量
		CloseCostV		dec(12,3)	Not null,		--结存金额
		CloseTaxV		dec(12,3)	Not null,		--结存税额
		SheetID			char(16)	Not null,		--单据编号
		SheetType		int		Not null,		--单据类型
		SDate			datetime	Not null		--发生日期
		)
---

        if object_id('tempdb..#TMP_SaleCost') is not null drop table #TMP_SaleCost
	      create table #TMP_SaleCost
	       (
		SDate		datetime	not null,		--结转日期
		SaleDate	datetime	not null,		--销售日期
		ShopID		char(4)		not null,		--店号
		GoodsID		int		not null,		--商品编码
		DeptID		int		not null,		--类型
		VenderID	int		not null,		--供应商编号
		PaytypeID	char(2)		not null,		--结算方式编号
		AgroFlag	int		default 0 not null,	--是否免税农产品(0=不是 1=是)
		Qty		dec(12,3)	default 0 not null,	--数量
		Price		dec(10,2)	not null,		--分店售价 
		Cost		dec(12,4)	default 0 not null,	--进价
		CostValue	dec(12,2)	not null,		--成本额 
		CostTaxRate	dec(4,2)	default 17 not null,	--进项税率%
		SaleTaxRate	dec(4,2)	default 17 not null,	--销项税率%
		SaleValue	dec(12,2)	default 0 not null,	--销售金额
		DiscValue	dec(12,2)	default 0 not null,	--折扣金额
		DiscType	char(1)		not null,		--促销类型(同Prom_Level表的PromType)
		SheetType	int		default 101 not null	--单据类型,101=销售 102=待处理	
		--DKRate 		dec(4,2) 	default 0 not null	--倒扣率		
	        )
          
	exec @err=LD_JXCBookData @begindate,@endDate
	if @Err<>0
	begin
		select @Msg='生成准备数据时出错！';
		if @Err != 0 goto ErrHandle;
	end;

	-----------------分类统计-----------------------------
	--修改 Ch 2008-02-19 #TMP_WasteBook-->##TMP_WasteBook, #TMP_SaleCost-->##TMP_SaleCost	--begin  
	--期初库存
	       --每月期初
		INSERT INTO #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,StartQty,StartCostV)
		SELECT GoodsID,deptid,Shopid,taxrate,sum(CloseQty),sum(CloseCostV)
		FROM ##TMP_WasteBook WHERE sheettype =6666 
		 and convert(char(8),sdate,112)<=convert(char(8),@begindate,112) 
		group by goodsid,deptid,shopid,taxrate
               --切换期初
	 	INSERT INTO #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,StartQty,StartCostV)
		--SELECT @begindate,GoodsID,deptid,Shopid,taxrate,sum(directflag*qty),sum(directflag*qty*cost)
		SELECT GoodsID,deptid,Shopid,taxrate,sum(directflag*qty),sum(directflag*costvalue)
		
		FROM ##TMP_WasteBook WHERE sheettype =8888
		and convert(char(8),sdate,112)<=convert(char(8),@begindate,112)
		group by goodsid,deptid,shopid,taxrate
	       --发生
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
        --管理库存商品的销售数据
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
                			
	--不管理库商品的销售数据
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,SaleQty1,SaleValue1,SaleCost1)
		select a.GoodsID,deptid,a.ShopID,a.costtaxrate,sum(a.qty),sum(a.salevalue-a.discvalue),sum(a.costvalue)		
		from ##TMP_SaleCost a
                WHERE a.SheetType in(101,102)                
                and cast(shopid as char(4))+cast(a.goodsid as char(6))+cast(a.sdate as char(10)) 
                    not in(select goodsid from #tmp_goods) 
                and convert(char(8),a.sdate,112) between @Begindate and @Enddate
		group by a.GoodsID,deptid,a.ShopID,a.costtaxrate

        drop table #tmp_goods;

	--验收
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

	--退货
	select @BreakPoint = 853151
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,RetQty,RetValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2323
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--调出（配送、调拨）
	select @BreakPoint = 853152
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,TransferOutQty,TransferOutValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2332,2342) and DirectFlag=-1   --1-->-1
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--调入（退配、调拨）
	select @BreakPoint = 853153
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,TransferInQty,TransferInValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2332,2342) and DirectFlag=1  --  -1-->1
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--盘点
	select @BreakPoint = 853160
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,PDQty,PDValue)
		select GoodsID,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2444
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate
            
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--报损
	select @BreakPoint = 853161
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,LostQty,LostValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2413
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--批发
	select @BreakPoint = 853162
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,WSaleQty,WSaleValue,PriceValue)
		select GoodsID,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2451
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--领用：行政领用、供应商领用、加工领用
	select @BreakPoint = 853163
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,UseQty,UseValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2423,2472,2473)	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

-------将其他调整单据分解，begin--------------------------------------------------------------

       --加工分解：2522  
	select @BreakPoint = 853164
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,JgQty,JgValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2522	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

        --批次更正：2445 
	select @BreakPoint = 853165
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,PcgzQty,PcgzValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2445	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
	        group by goodsid,deptid,shopid,taxrate
	
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

      --库存成本调整：2431
	select @BreakPoint = 853166
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,KccbQty,KccbValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2431	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

     --商品转码调拨：2390
	select @BreakPoint = 853167
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,ZmdbQty,ZmdbValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2390
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		
group by goodsid,deptid,shopid,taxrate
	
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;


     --库存类型转换：2253
	select @BreakPoint = 853168
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,KclxzhQty,KclxzhValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2253
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

       --转类：2251
	select @BreakPoint = 853169
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,ZlQty,ZlValue)
		select GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2251
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate
				
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

    

-------------------------将其他调整单据分解，end--------------------------------------------
	
	--其他调整(批次数量调整,库存进价调整,负库存冲减)
	select @BreakPoint = 853171
	Insert into #TMP_Base0001(GoodsID,deptid,ShopID,taxrate,AdjustQty,AdjustValue)
		select GoodsID,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook			     
		where SheetType not in (2301,2323,2332,2342,2444,2413,2451,2423,2472,2473,101,102,6666,8888,2522,2445,2431,2390,2253,2251)
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
        
        --期末库存  --2006-11-01 加上其他分解的单据金额
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
--修改 Ch 2008-02-19 #TMP_WasteBook-->##TMP_WasteBook, #TMP_SaleCost-->##TMP_SaleCost	--end
  return 0;

ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO

--------------------------
if exists (select * from sysobjects where id = object_id('dbo.LD_JXCBookMachine_vendergoods') and type = 'P')
  drop procedure dbo.LD_JXCBookMachine_vendergoods
GO

create procedure dbo.LD_JXCBookMachine_vendergoods @Flag int=1,@begindate datetime,@endDate datetime

-----------------------------------------------------------------
--Version Number: Mender:GWF  针对单品进销售存
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
	--取本店类型
	select @MyShopType=A.ShopType from Shop A with (NoLock),Config B with (NoLock) where A.ID=B.Value and B.name='本店号'
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	if @MyShopType is null select @MyShopType=11;

	
	select @SDate=convert(varchar(10),getdate(),112);
        select @sdate1=year(@begindate)*10000+month(@begindate)*100+01;
	select @begindate1=convert(datetime,@sdate1);	

	-----------------数据生成---------------------------		
	select @BreakPoint=853191;

          if object_id('tempdb..#TMP_WasteBook') is not null drop table #TMP_WasteBook
	 create table dbo.#TMP_WasteBook
	      (
		GoodsID			int		Not null,		--商品编码
		GoodsCostID		int		not null,		--批次号
		DeptID			int		Not null,		--商品类别
		ShopID			char(4)		Not null,		--店号	
		VenderID		int		Not null,		--供应商编码
		PayTypeID		char(2)		Not null,		--结算方式
		Directflag		int		Not null,		--记帐方向:+1=Dr /-1=Cr
		Qty			dec(12,3)	Not null,		--发生数量
		Cost			dec(12,4)	Not null,		--发生进价
		TaxRate			dec(4,2)	Not null,		--进项税率%
		CostValue		dec(12,3)	Not null,		--发生金额
		CostTaxValue		dec(12,3)	Not null,		--发生税额
		CloseQty		dec(12,3)	Not null,		--结存数量
		CloseCostV		dec(12,3)	Not null,		--结存金额
		CloseTaxV		dec(12,3)	Not null,		--结存税额
		SheetID			char(16)	Not null,		--单据编号
		SheetType		int		Not null,		--单据类型
		SDate			datetime	Not null		--发生日期
		)
---

        if object_id('tempdb..#TMP_SaleCost') is not null drop table #TMP_SaleCost
	      create table #TMP_SaleCost
	       (
		SDate		datetime	not null,		--结转日期
		SaleDate	datetime	not null,		--销售日期
		ShopID		char(4)		not null,		--店号
		GoodsID		int		not null,		--商品编码
		DeptID		int		not null,		--类型
		VenderID	int		not null,		--供应商编号
		PaytypeID	char(2)		not null,		--结算方式编号
		AgroFlag	int		default 0 not null,	--是否免税农产品(0=不是 1=是)
		Qty		dec(12,3)	default 0 not null,	--数量
		Price		dec(10,2)	not null,		--分店售价 
		Cost		dec(12,4)	default 0 not null,	--进价
		CostValue	dec(12,2)	not null,		--成本额 
		CostTaxRate	dec(4,2)	default 17 not null,	--进项税率%
		SaleTaxRate	dec(4,2)	default 17 not null,	--销项税率%
		SaleValue	dec(12,2)	default 0 not null,	--销售金额
		DiscValue	dec(12,2)	default 0 not null,	--折扣金额
		DiscType	char(1)		not null,		--促销类型(同Prom_Level表的PromType)
		SheetType	int		default 101 not null	--单据类型,101=销售 102=待处理	
		--DKRate 		dec(4,2) 	default 0 not null	--倒扣率		
	        )
          
	exec @err=LD_JXCBookData @begindate,@endDate
	if @Err<>0
	begin
		select @Msg='生成准备数据时出错！';
		if @Err != 0 goto ErrHandle;
	end;

	-----------------分类统计-----------------------------	
	--修改 Ch 2008-02-19 #TMP_WasteBook-->##TMP_WasteBook, #TMP_SaleCost-->##TMP_SaleCost  --begin
	--期初库存
	       --每月期初
		INSERT INTO #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,StartQty,StartCostV)
		SELECT venderid,GoodsID,deptid,Shopid,taxrate,sum(CloseQty),sum(CloseCostV)
		FROM ##TMP_WasteBook WHERE sheettype =6666 
		 and convert(char(8),sdate,112)<=convert(char(8),@begindate,112) 
		group by goodsid,deptid,shopid,taxrate,venderid
               --切换期初
	 	INSERT INTO #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,StartQty,StartCostV)
		--SELECT @begindate,GoodsID,deptid,Shopid,taxrate,sum(directflag*qty),sum(directflag*qty*cost)
		SELECT venderid,GoodsID,deptid,Shopid,taxrate,sum(directflag*qty),sum(directflag*costvalue)
		
		FROM ##TMP_WasteBook WHERE sheettype =8888
		and convert(char(8),sdate,112)<=convert(char(8),@begindate,112)
		group by goodsid,deptid,shopid,taxrate,venderid
	       --发生
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
        --管理库存商品的销售数据
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
                			
	--不管理库商品的销售数据
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,SaleQty1,SaleValue1,SaleCost1)
		select venderid,a.GoodsID,a.deptid,a.ShopID,a.costtaxrate,sum(a.qty),sum(a.salevalue-a.discvalue),sum(a.costvalue)		
		from ##TMP_SaleCost a
                WHERE a.SheetType in(101,102)                
                and cast(a.shopid as char(4))+cast(a.goodsid as char(6))+cast(a.sdate as char(10)) 
                    not in(select goodsid from #tmp_goods) 
                and convert(char(8),a.sdate,112) between @Begindate and @Enddate
		group by a.GoodsID,deptid,a.ShopID,a.costtaxrate,venderid

        drop table #tmp_goods;

	--验收
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

	--退货
	select @BreakPoint = 853151
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,RetQty,RetValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2323
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--调出（配送、调拨）
	select @BreakPoint = 853152
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,TransferOutQty,TransferOutValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2332,2342) and DirectFlag=-1   --1-->-1
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--调入（退配、调拨）
	select @BreakPoint = 853153
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,TransferInQty,TransferInValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2332,2342) and DirectFlag=1  --  -1-->1
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--盘点
	select @BreakPoint = 853160
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,PDQty,PDValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2444
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid
            
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--报损
	select @BreakPoint = 853161
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,LostQty,LostValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2413
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--批发
	select @BreakPoint = 853162
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,WSaleQty,WSaleValue,PriceValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2451
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--领用：行政领用、供应商领用、加工领用
	select @BreakPoint = 853163
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,UseQty,UseValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2423,2472,2473)	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate,venderid
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

-------将其他调整单据分解，begin--------------------------------------------------------------

       --加工分解：2522  
	select @BreakPoint = 853164
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,JgQty,JgValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2522	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate,venderid
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

        --批次更正：2445 
	select @BreakPoint = 853165
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,PcgzQty,PcgzValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2445	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
	        group by goodsid,deptid,shopid,taxrate,venderid
	
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

      --库存成本调整：2431
	select @BreakPoint = 853166
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,KccbQty,KccbValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2431	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate,venderid
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

     --商品转码调拨：2390
	select @BreakPoint = 853167
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,ZmdbQty,ZmdbValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2390
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate,venderid
	
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;


     --库存类型转换：2253
	select @BreakPoint = 853168
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,KclxzhQty,KclxzhValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2253
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		group by goodsid,deptid,shopid,taxrate,venderid
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

       --转类：2251
	select @BreakPoint = 853169
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,ZlQty,ZlValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2251
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid
				
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

    

-------------------------将其他调整单据分解，end--------------------------------------------
	
	--其他调整(批次数量调整,库存进价调整,负库存冲减)
	select @BreakPoint = 853171
	Insert into #TMP_Base0001(venderid,GoodsID,deptid,ShopID,taxrate,AdjustQty,AdjustValue)
		select venderid,GoodsID,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook			     
		where SheetType not in (2301,2323,2332,2342,2444,2413,2451,2423,2472,2473,101,102,6666,8888,2522,2445,2431,2390,2253,2251)
			and convert(char(8),sdate,112) between @Begindate and @Enddate
                group by goodsid,deptid,shopid,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
        
        --期末库存  --2006-11-01 加上其他分解的单据金额
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
--修改 Ch 2008-02-19 #TMP_WasteBook-->##TMP_WasteBook, #TMP_SaleCost-->##TMP_SaleCost  --end
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
	--取本店类型
	select @MyShopType=A.ShopType from Shop A with (NoLock),Config B with (NoLock) where A.ID=B.Value and B.name='本店号'
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
	if @MyShopType is null select @MyShopType=11;

	
	select @SDate=convert(varchar(10),getdate(),112);
        select @sdate1=year(@begindate)*10000+month(@begindate)*100+01;
	select @begindate1=convert(datetime,@sdate1);	

	-----------------数据生成---------------------------		
        select @BreakPoint=853191;
         if object_id('tempdb..#TMP_WasteBook') is not null drop table #TMP_WasteBook
	 create table dbo.#TMP_WasteBook
	      (
              
		GoodsID			int		Not null,		--商品编码
		GoodsCostID		int		not null,		--批次号
		DeptID			int		Not null,		--商品类别
		ShopID			char(4)		Not null,		--店号	
		VenderID		int		Not null,		--供应商编码
		PayTypeID		char(2)		Not null,		--结算方式
		Directflag		int		Not null,		--记帐方向:+1=Dr /-1=Cr
		Qty			dec(12,3)	Not null,		--发生数量
		Cost			dec(12,4)	Not null,		--发生进价
		TaxRate			dec(4,2)	Not null,		--进项税率%
		CostValue		dec(12,3)	Not null,		--发生金额
		CostTaxValue		dec(12,3)	Not null,		--发生税额
		CloseQty		dec(12,3)	Not null,		--结存数量
		CloseCostV		dec(12,3)	Not null,		--结存金额
		CloseTaxV		dec(12,3)	Not null,		--结存税额
		SheetID			char(16)	Not null,		--单据编号
		SheetType		int		Not null,		--单据类型
		SDate			datetime	Not null		--发生日期
		)
---

        if object_id('tempdb..#TMP_SaleCost') is not null drop table #TMP_SaleCost
	      create table #TMP_SaleCost
	       (
              
		SDate		datetime	not null,		--结转日期
		SaleDate	datetime	not null,		--销售日期
		ShopID		char(4)		not null,		--店号
		GoodsID		int		not null,		--商品编码
		DeptID		int		not null,		--类型
		VenderID	int		not null,		--供应商编号
		PaytypeID	char(2)		not null,		--结算方式编号
		AgroFlag	int		default 0 not null,	--是否免税农产品(0=不是 1=是)
		Qty		dec(12,3)	default 0 not null,	--数量
		Price		dec(10,2)	not null,		--分店售价 
		Cost		dec(12,4)	default 0 not null,	--进价
		CostValue	dec(12,2)	not null,		--成本额 
		CostTaxRate	dec(4,2)	default 17 not null,	--进项税率%
		SaleTaxRate	dec(4,2)	default 17 not null,	--销项税率%
		SaleValue	dec(12,2)	default 0 not null,	--销售金额
		DiscValue	dec(12,2)	default 0 not null,	--折扣金额
		DiscType	char(1)		not null,		--促销类型(同Prom_Level表的PromType)
		SheetType	int		default 101 not null	--单据类型,101=销售 102=待处理	
		--DKRate 		dec(4,2) 	default 0 not null	--倒扣率		
	        )

        
	exec @err=LD_JXCBookData @begindate,@endDate
	if @Err<>0
	begin
		select @Msg='生成准备数据时出错！';
		if @Err != 0 goto ErrHandle;
	end;

	-----------------分类统计-----------------------------	
	--修改 Ch 2008-02-19 #TMP_WasteBook-->##TMP_WasteBook, #TMP_SaleCost-->##TMP_SaleCost  --begin
	--期初库存
	       --每月期初
	      
		INSERT INTO #TMP_Base0001(venderid,deptid,ShopID,taxrate,StartQty,StartCostV)
		SELECT venderid,deptid,Shopid,taxrate,sum(CloseQty),sum(CloseCostV)
		FROM ##TMP_WasteBook WHERE sheettype =6666 
		 and convert(char(8),sdate,112)<=convert(char(8),@begindate,112) 
		group by deptid,shopid,taxrate,venderid
               --切换期初
	 	INSERT INTO #TMP_Base0001(venderid,deptid,ShopID,taxrate,StartQty,StartCostV)
		--SELECT @begindate,GoodsID,deptid,Shopid,taxrate,sum(directflag*qty),sum(directflag*qty*cost)
		SELECT venderid,deptid,Shopid,taxrate,sum(directflag*qty),sum(directflag*costvalue)
		
		FROM ##TMP_WasteBook WHERE sheettype =8888
		and convert(char(8),sdate,112)<=convert(char(8),@begindate,112)
		group by deptid,shopid,taxrate,venderid
	   
    --发生
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
        --管理库存商品的销售数据
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
                			
	--不管理库商品的销售数据
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,SaleQty1,SaleValue1,SaleCost1)
		select venderid,deptid,a.ShopID,a.costtaxrate,sum(a.qty),sum(a.salevalue-a.discvalue),sum(a.costvalue)		
		from ##TMP_SaleCost a
                WHERE a.SheetType in(101,102)                
                and cast(shopid as char(4))+cast(a.goodsid as char(6))+cast(a.sdate as char(10)) + cast(a.venderid as char(6))
                    not in(select goodsid from #tmp_goods) 
                and convert(char(8),a.sdate,112) between @Begindate and @Enddate
		group by deptid,a.ShopID,a.costtaxrate,venderid

        drop table #tmp_goods;

	--验收
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

	--退货
	select @BreakPoint = 853151
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,RetQty,RetValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2323
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--调出（配送、调拨）
	select @BreakPoint = 853152
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,TransferOutQty,TransferOutValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2332,2342) and DirectFlag=-1   --1-->-1
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--调入（退配、调拨）
	select @BreakPoint = 853153
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,TransferInQty,TransferInValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2332,2342) and DirectFlag=1  --  -1-->1
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--盘点
	select @BreakPoint = 853160
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,PDQty,PDValue)
		select venderid,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2444
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--报损
	select @BreakPoint = 853161
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,LostQty,LostValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2413
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--批发
	select @BreakPoint = 853162
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,WSaleQty,WSaleValue,PriceValue)
		select venderid,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook 
		where SheetType=2451
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

	--领用：行政领用、供应商领用、加工领用
	select @BreakPoint = 853163
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,UseQty,UseValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType in (2423,2472,2473)	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		GROUP BY deptid,ShopID,taxrate,venderid
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

-------将其他调整单据分解，begin--------------------------------------------------------------

       --加工分解：2522  
	select @BreakPoint = 853164
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,JgQty,JgValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2522	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		GROUP BY deptid,ShopID,taxrate,venderid
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

        --批次更正：2445 
	select @BreakPoint = 853165
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,PcgzQty,PcgzValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2445	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		GROUP BY deptid,ShopID,taxrate,venderid
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

      --库存成本调整：2431
	select @BreakPoint = 853166
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,KccbQty,KccbValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2431	
			and convert(char(8),sdate,112) between @Begindate and @Enddate
	        GROUP BY deptid,ShopID,taxrate,venderid
		
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

     --商品转码调拨：2390
	select @BreakPoint = 853167
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,ZmdbQty,ZmdbValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2390
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;


     --库存类型转换：2253
	select @BreakPoint = 853168
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,KclxzhQty,KclxzhValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2253
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid
		 
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;

       --转类：2251
	select @BreakPoint = 853169
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,ZlQty,ZlValue)
		select venderid,deptid,ShopID,taxrate,sum(directflag*Qty),sum(directflag*CostValue)
		from ##TMP_WasteBook 
		where SheetType = 2251
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		 GROUP BY deptid,ShopID,taxrate,venderid
				
	select @Err = @@error;
	if @Err != 0 goto ErrHandle;



-------------------------将其他调整单据分解，end--------------------------------------------
	
	--其他调整(批次数量调整,库存进价调整,负库存冲减)
	select @BreakPoint = 853171
	Insert into #TMP_Base0001(venderid,deptid,ShopID,taxrate,AdjustQty,AdjustValue)
		select venderid,deptid,ShopID,taxrate,sum(DirectFlag*Qty),sum(DirectFlag*CostValue)
		from ##TMP_WasteBook			     
		where SheetType not in (2301,2323,2332,2342,2444,2413,2451,2423,2472,2473,101,102,6666,8888,2522,2445,2431,2390,2253,2251)
			and convert(char(8),sdate,112) between @Begindate and @Enddate
		GROUP BY deptid,ShopID,taxrate,venderid

	select @Err = @@error;
	if @Err != 0 goto ErrHandle;
        
        --期末库存  --2006-11-01 加上其他分解的单据金额
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
--修改 Ch 2008-02-19 #TMP_WasteBook-->##TMP_WasteBook, #TMP_SaleCost-->##TMP_SaleCost  --end
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
  
  declare @dWeekStart 	datetime;		--本周一
  declare @dMonthStart 	datetime;		--本月一号
  declare @StartDate datetime,@EndDate datetime;	--上月一号到今天
  declare @WeekID int;
  declare @sCond varchar(255);
  SET NOCOUNT ON
  
  if @dms is null
  select @dms=1;
  
  --条件
  select @sCond='ShopID='''+@ShopID+''' and GoodsID in (select GoodsID from #427894)';
  --计算总日期区间
  select @StartDate=cast(left(convert(char(8),DateAdd(month,-1,getdate()),112),6)+'01' as datetime);
  select @WeekID=DatePart(week,GetDate());
  exec TL_GetWeekDateBound @WeekID,@dWeekStart output,@EndDate output;
  select @EndDate=convert(char(8),getdate(),112);
  select @dWeekStart=convert(char(8),@dWeekStart,112);
  select @dMonthStart=DateAdd(month,1,@StartDate);
  --数据
  select * into #rpt_Base0001 from rpt_Base0001 where 0=1;
  exec rp_GetMonthDataToTable @StartDate,@EndDate,'rpt_Base0001',@sCond;
  select @Err=@@error,@BreakPoint=42789401,@Msg='获取月表数据错误！';
  if @Err != 0 goto ErrHandle;
  --本周销售,上周销售,DMS,在途
  update #427894 set DMS=b.NDMS,WeekSale=WeekSaleQty,PreWeekSale=WeekSaleQty1,OnPurQty=b.OpenOrderQty+b.OpenRationQty
    from #427894 a,Demand b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  --当前库存,周转天数
  update #427894 set StockQty=b.Qty,CostValue=b.CostValue,
      SaleDays=case when a.DMS=0 then 0 else b.Qty/a.DMS end
    from #427894 a,ShopsStock b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
 --本月销售,周转次数
  select GoodsID,sum(SaleQty) SaleQty,case when sum(SaleQty)=0 then 0 else sum(CloseQty)/sum(SaleQty) end Times
    into #tmp3 from #rpt_Base0001 
    where convert(char(8),SDate,112) between convert(char(8),@dMonthStart,112) and convert(char(8),@EndDate,112)
    group by GoodsID;
  update #427894 set MonthSale=b.SaleQty,MonthDays=Times
    from #427894 a,#tmp3 b 
    where a.GoodsID=b.GoodsID;
  drop table #tmp3;
  --上月销售,周转次数
  select GoodsID,sum(SaleQty) SaleQty,case when sum(SaleQty)=0 then 0 else sum(CloseQty)/sum(SaleQty) end Times
    into #tmp4 from #rpt_Base0001 
    where convert(char(8),SDate,112) between convert(char(8),@StartDate,112) and convert(char(8),@dMonthStart-1,112)
    group by GoodsID;
  update #427894 set PreMonthSale=b.SaleQty,PreMonthDays=Times
    from #427894 a,#tmp4 b 
    where a.GoodsID=b.GoodsID;
  drop table #tmp4;
  --最近进货,销售日期
  select ShopID,GoodsID,max(SaleDate) SaleDate,max(ReceiptDate) ReceiptDate
    into #tmp1 from LatelyGoodsList
    where ShopID=@ShopID
    group by ShopID,GoodsID;
  update #427894 set LastPurDay=b.ReceiptDate,LastSaleDay=b.SaleDate
    from #427894 a,#tmp1 b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  drop table #tmp1;
  --当前售价
  update #427894 set Price=b.Price
    from #427894 a,GoodsShop b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  --默认供应商,进价
  update #427894 set VenderID=b.VenderID,Cost=b.Cost
    from #427894 a,Cost b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID and b.Flag=0
  --负数的周转天数设置为0
  update #427894 set MonthDays=case when MonthDays<0 then 0 else MonthDays end,
      PreMonthDays=case when PreMonthDays<0 then 0 else PreMonthDays end;  
  drop table #rpt_Base0001;
  
  --删除库存信息不为0的商品
  delete from #427894 where StockQty<>0;

  --删除在途量不为0的商品
  delete from #427894 where OnPurQty<>0;  
  
  --删除DMS不合条件的记录
  delete from #427894 where dms<@dms;
    
  return 0;    
ErrHandle:  
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
  declare @preyearbegindate  datetime  --去年同期开始日期
  declare @preyearEndDate datetime --去年同期结束日期
  
  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;
  declare @cnt  int;

  SET NOCOUNT ON
    
  select @tempflag=0;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=423410,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=423411,@msg='取管理部类权值出错!';
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
  select @Err=@@Error,@BreakPoint=423412,@msg='取促销计划起止日期出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
 

  select @day=datediff(day,@enddate,@begindate);
  select @preEndDate=dateadd(day,-1,@begindate);--取同期结束日期
  select @prebegindate=dateadd(day,@day,@preEndDate);--取同期开始日期 
  
  create table #temp_423410
  (
   shopid       char(4)         null,
   sGroupID	int		null,		--管理部类编码
   sGroupName	char(16)	null,		--管理部类名称
   DMGoodsNum	int		default 0  null,		--DM商品品种数
   DMSaleNum	int		default 0  null,		--DM动销商品数
   DMSaleQty	dec(16,4)	default 0  null,		--DM商品销售数总和
   DMSaleValue	dec(16,4)	default 0  null,		--DM商品销售额总和
   DMCost	dec(16,4)	default 0  null,		--DM动销商品成本金额
   SaleGoodsNum	int		default 0  null,		--动销商品品种数
   SaleQty	dec(16,4)	default 0  null,		--管理部类商品超市销售数
   SaleValue	dec(16,4)	default 0  null,		--管理部类商品超市销售额
   SaleCost	dec(16,4)	default 0  null,		--超市动销商品成本金额
   GoodsNum	int		default 0  null,		--管理部类商品品种数
   PreMonValue	dec(16,4)	default 0  null,		--上月同期管理部类商品销售额
   PreyearValue dec(16,4)	default 0  null			--去年同期管理部类商品销售额
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


--建临时表
--本月大类销售统计
  select * into #423410salecost from salecost where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'salecost',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #423410tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #423410tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #423410tmp;              --没有,取当前值
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
  --汇总管理部门DM销售金额
  select shopid,ManageDeptID,sum(SaleValue) salevalue,sum(DMSaleValue) DMSaleValue,
      sum(DMCostValue) DMCostValue,sum(saleCost) saleCost
    into #423410tmp1
    from #423410salecost a
    where SDate>=@begindate and SDate<=@enddate and disctype='m'
--      and shopid=@shopid
    group by managedeptid,shopid;
*/
  --汇总管理部门DM销售金额
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
    
--PreMonValue  lvyf 20061109 优化,不从月表取,速度快,原来上面的脚本已经删除
  select shopid,ManageDeptID sgid,sum(isnull(SaleValue-discvalue,0)) PreMonValue
    into #423410tmp6
    from rpt_salegroup a
    where a.SDate>=@prebegindate and a.SDate<=@preEndDate
--      and shopid=@shopid
    group by managedeptid,shopid;

--去年同期销售记录
  select @day=datediff(day,@enddate,@begindate);
  select @preyearEndDate=dateadd(day,-365,@enddate);--取去年同期结束日期
  select @preyearbegindate=dateadd(day,@day,@preyearEndDate);--取去年同期开始日期 

  select shopid,ManageDeptID sgid,sum(isnull(SaleValue-discvalue,0)) PreYearValue
    into #423410yeartmp6
    from rpt_salegroup a
    where a.SDate>=@preyearbegindate and a.SDate<=@preyearEndDate
    group by managedeptid,shopid;
  
  update #temp_423410 set PreYearValue=b.PreYearValue
    from #temp_423410 a,#423410yeartmp6 b
    where a.shopid=b.shopid and a.sgroupid=b.sgid;

--更新最终报表记录
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
  declare @preyearbegindate  datetime  --去年同期开始日期
  declare @preyearEndDate datetime --去年同期结束日期
  
  declare @SQLString char(512);
  declare @tables char(1024);
  declare @subTableName char(32);
  declare @i int;
  declare @cnt  int;

  SET NOCOUNT ON 
    
  select @tempflag=0;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=112801,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=423411,@msg='取管理部类权值出错!';
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

  
  --去本档期开始和结束日期    
  select @begindate=min(PriceBeginDate),@enddate=max(PriceEndDate) 
    from #tmpPromotionPlan 
    where PlanID=@PlanID;
  select @Err=@@Error,@BreakPoint=423412,@msg='取促销计划起止日期出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;    
  
  --插入商品明细数据
  insert into #112801(shopid,goodsid)
  select distinct shopid,goodsid 
  from #tmpPromotionPlan;

  

--建临时表,取本期DM商品销售明细
  select * into #112801salecost from salecost where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'salecost',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #112801tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #112801tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #112801tmp;              --没有,取当前值
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
  

  --取同期商品销售数据
  select @day=datediff(day,@enddate,@begindate);
  select @preEndDate=dateadd(day,-1,@begindate);--取同期结束日期
  select @prebegindate=dateadd(day,@day,@preEndDate);--取同期开始日期 

  select * into #112801presalecost from salecost where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'salecost',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #pre112801tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #pre112801tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #pre112801tmp;              --没有,取当前值
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
  
--取去年同期商品销售数据

--去年同期销售记录
  select @day=datediff(day,@enddate,@begindate);
  select @preyearEndDate=dateadd(day,-365,@enddate);--取去年同期结束日期
  select @preyearbegindate=dateadd(day,@day,@preyearEndDate);--取去年同期开始日期 

  select * into #112801preyearsalecost from salecost where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'salecost',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=423413;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #preyear112801tmp
  while 1=1 begin
    select @i=charindex(',',tablesname) from #preyear112801tmp;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #preyear112801tmp;              --没有,取当前值
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #temp_112801;
  return -1;
End
go



--------------------------
----------------------------------------------------------------------------------------
--rp_423535			产生退货汇总表
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：辛东春 2003.09.10
--修改：赵剑  2003-10-20 10:19 加入农产品无税金额计算
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_423535') and sysstat & 0xf = 4)
    drop procedure dbo.rp_423535
GO

create procedure dbo.rp_423535 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030909_01,Last Mender:辛东春
-----------------------------------------------------------------
AS BEGIN
  declare @Err		int;
  declare @BreakPoint	int;
  declare @Msg		varchar(255);
  declare @deptlevel    int;
  declare @levelvalue   int;
  declare @tempflag     int;
  SET NOCOUNT ON
  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420010,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420020,@msg='取管理部类权值出错!!';
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
                
      select @Err=@@Error,@msg='返回数据时出!!',@BreakPoint=420050;
      if (@Err is null) or (@Err!=0)  goto ErrHandle;
      
  return  0;  
ErrHandle:
  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
  
  select * into #421205Wastebook from Wastebook where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'Wastebook',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=42120512;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #421205tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #421205tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #421205tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=42120513;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #421205tablename;
  
    delete from #421205 where 1=1;
  if  @SheetType = 2413 or @SheetType=0 begin   --报损2413
    insert into #421205 select l.shopid,li.goodsid,w.cost,2413,w.taxrate,
      sum(w.qty) as Qty,round(sum(w.qty*w.cost),2) as taxcostvalue,
      round(sum(w.qty*w.cost*(100-w.taxRate*g.AgroFlag)/(100+w.taxRate*(1-g.AgroFlag))),2) as NoTaxCostValue,
      l.sheetid,l.Editor,l.Checker,li.remask,'',0,'',0,'','',w.venderid,''
    from Lost l,lostItem li,#421205Wastebook w,goods g
    where l.sheetid=li.sheetid and l.sheetid=w.sheetid and w.sheettype=2413 
      and li.goodsid=w.goodsid and li.goodsid=g.goodsid 
   group by l.shopid,w.venderid,li.goodsid,w.cost,l.sheetid,l.Editor,l.Checker,w.taxrate,li.remask;
   select @Err=@@Error,@BreakPoint=42120520,@msg='取报损数据时出错！';
   if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end;  
  if  @SheetType = 2473  or @SheetType=0 begin --加工领用单2473
    insert into #421205 select  s.shopid,si.goodsid,w.cost,2473,w.taxrate,
      sum(w.qty) as Qty,round(sum(w.qty*w.cost),2) as TaxCostValue,
      round(sum(w.qty*w.cost*(100-w.taxRate*g.AgroFlag)/(100+w.taxRate*(1-g.AgroFlag))),2) as NoTaxCostValue,
      s.sheetid,s.Editor,s.Checker,'','',0,'',0,'','',w.venderid,''
    from SaleStuff s,SaleStuffItem si,#421205Wastebook w,goods g
    where s.sheetid=si.sheetid and si.sheetid=w.sheetid and w.sheettype=2473 
      and si.goodsid=w.goodsid and si.goodsid=g.goodsid 
      group by s.shopid,w.venderid,si.goodsid,w.cost,s.sheetid,s.Editor,w.taxrate,s.Checker;
    select @Err=@@Error,@BreakPoint=42120521,@msg='取加工领用数据时出错！';
    if (@Err is null) or (@Err!=0)  goto ErrHandle; 
 
  end;
  if  @SheetType = 2423  or @SheetType=0 begin --行政领用单2423
    insert into #421205 select  s.shopid,si.goodsid,w.cost,2423,w.taxrate,
      sum(w.directflag*w.qty) as Qty,round(sum(w.directflag*w.costvalue),2) as TaxCostValue,
      round(sum(w.directflag*w.costvalue*(100-w.taxRate*g.AgroFlag)/(100+w.taxRate*(1-g.AgroFlag))),2) as 
NoTaxCostValue,
      s.sheetid,s.Editor,s.Checker,'','',0,'',0,'','',w.venderid,''
    from XTran s,XTranItem si,#421205Wastebook w,goods g
    where s.sheetid=si.sheetid and si.sheetid=w.sheetid and w.sheettype=2423 
      and si.goodsid=w.goodsid and si.goodsid=g.goodsid 
      group by s.shopid,w.venderid,si.goodsid,w.cost,s.sheetid,s.Editor,w.taxrate,s.Checker;
    select @Err=@@Error,@BreakPoint=42120522,@msg='取行政领用数据时出错！';
    if (@Err is null) or (@Err!=0)  goto ErrHandle;
  end;
  
  select @deptlevel=value from config where name='管理部门级别';
    --select @deptlevel=2               --2007/11/12范华敏修改部门管理级别
  select @Err=@@Error,@BreakPoint=42120530,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=42120531,@msg='取管理部类权值出错!';
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
  select @Err=@@Error,@BreakPoint=42120540,@msg='取部类信息出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #421205 set shopname=sh.name
    from #421205 a,shop sh
    where a.shopid=sh.id;
  select @Err=@@Error,@BreakPoint=42120545,@msg='取机构名称出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  return 0;     
ErrHandle:  
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);  
  return -1;  
  
end
go



---------------------
----------------------------------------------------------------------------------------
--rp_424621			产生收银异动汇总表
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：辛东春 2003.09.16
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_424621') and type = 'P')
  drop procedure dbo.rp_424621
GO

create procedure dbo.rp_424621 @begindate datetime,@enddate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20030916_01,Last Mender:辛东春
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
vqty       int         default 0 not null,--更正笔数
vvalue     dec(12,2)   default 0 not null,--更正金额
qqty       int         default 0 not null,--取消笔数
qvalue     dec(12,2)   default 0 not null,--取消金额
rqty       int         default 0 not null,--退货笔数
rvalue     dec(12,2)   default 0 not null,--退货金额
Aqty       int         default 0 not null,--整单取消笔数
Avalue     dec(12,2)   default 0 not null--整单取消金额
)
  select @Err=@@Error,@BreakPoint=421000,@msg='建立临时单据表时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select @tempflag=1;

--更正笔数
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select sdate,shopid,count(*),0,0,0,0,0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and saletype='v'
      group by sdate,shopid

  select @Err=@@Error,@BreakPoint=420020;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
--更正金额
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select sdate,shopid,0,sum(salevalue-discvalue),0,0,0,0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and saletype='v'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

--取消笔数
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select sdate,shopid,0,0,count(*),0,0,0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and saletype='q'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
--取消金额
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select sdate,shopid,0,0,0,sum(salevalue-discvalue),0,0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and saletype='q'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
--退货笔数
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select sdate,shopid,0,0,0,0,count(*),0,0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and saletype='r'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
--退货金额
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select sdate,shopid,0,0,0,0,0,sum(salevalue-discvalue),0,0
      from RPT_SaleExcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and saletype='r'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
--整单取消单数
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select a.sdate,a.shopid,0,0,0,0,0,0,count(*),0
      from (select sdate,shopid,posid,listno from rpt_saleexcept where saletype='c' and convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert
(char(8),@enddate,112) group by sdate,shopid,posid,listno) a
      group by a.sdate,a.shopid       
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
--整单取消金额
  insert into #424621tmp(SDate,ShopID,vqty,vvalue,qqty,qvalue,rqty,rvalue,Aqty,Avalue)
    select sdate,shopid,0,0,0,0,0,0,0,sum(salevalue-discvalue)
      from rpt_saleexcept 
      where convert(char(8),Sdate,112) between convert(char(8),@begindate,112) and convert(char(8),@enddate,112)
      and saletype='c'
      group by sdate,shopid
  select @Err=@@Error,@BreakPoint=420030;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

--汇总
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
  raiserror('[%s],断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
  select @shopid=value from config where name='本店号';
  
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
  select @Err=@@Error,@breakpoint=425000,@msg='建立临时表时出错!!';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  execute @LevelValue=TL_ManageDeptGene;
  if @LevelValue <= 0 begin
	select @Err=0;
	select @BreakPoint=425010;
	select @Msg='产生管理部类的计算因子错误!';
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
  select @Err=@@Error,@breakpoint=425020,@Msg='取数据时出错！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
   
  insert into #425104(sdate,shopid,shopname,managedeptid,deptid,deptname,goodsid,gname,saletaxrate,costtaxrate,salevalue,discvalue,truevalue,qty)
  select a.sdate,a.shopid,b.name,a.managedeptid,a.deptid,c.name,a.goodsid,d.name,a.saletaxrate,a.costtaxrate,a.salevalue,a.discvalue,a.truevalue,a.qty
  from #temp_425104 a,shop b,dept c,goods d
  where a.shopid=b.id and a.deptid=c.id and a.goodsid=d.goodsid
  select @Err=@@Error,@breakpoint=425030,@Msg='取数据时出错！';
  if (@Err is null) or (@Err !=0) goto ErrHandle;
  
  drop table #temp_425104;
  return 0;
  ErrHandle:
    raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
    if @tempflag=1 drop table #temp_425104;
    return -1;
End
GO

-------------------------------
-----------------------------------------------------------------
--425302 时段收银日报表                                              
--建立：魏薇 2003.11.17
--计算公式:
----时点客数占比:  时点客数/当日总客数×100
----累计客数占比： 本时点和之前时点客数之和/当日总客数×100
----累积销售金额:  本时点和之前时点销售金额之和
----销售占比:	   本时点销售额/本日总销售额*100
----累积销售占比:  本时点和之前时点销售金额之和/本日总销售额*100
--修改：谭福伦 2006.11.06 增加储值卡礼券统计
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
  declare @WSheetQty  	int;   		--当日客单总计
  declare @Wtotalvalue 	dec(12,2);	--当日销售总计
  declare @THSheetQty	int;		--累计客单
  declare @THSalevalue  dec(12,2);	--累计销售额  

  SET NOCOUNT ON
  select @tempflag=0;
    create table #tmp_425302
(
SDate           datetime        null,               --日期(date) 
ShopID          char(4)         null,               --分店号 
SaleHour        char(2)         null,               --销售时点 
SheetQty        int             default 0 null,     --销售笔数 
CashQty         int             null,               --现金交易次数C 
sheetvalue 	dec(12,2)       default 0 null,     --客单价	
WSheetQty	int       default 0 null,     --当日客单量
HQrate		dec(12,2)       default 0 null,     --时点客单占比
THSheetQty	int       default 0 null,	    --累计客单量
THQrate		dec(12,2)       default 0 null,	    --累计客单占比
Wtotalvalue	dec(12,2)       default 0 null,	    --当日销售额
salerate	dec(12,2)       default 0 null,     --时点销售占比
THSalevalue	dec(12,2)       default 0 null,     --累计销售额
THSalerate	dec(12,2)       default 0 null,	    --累计销售占比
CardQty         int             null,               --购物卡交易次数V 
CheckQty        int             null,               --支票交易次数K 
BankQty         int             null,               --信用卡交易次数R 
TicketQty       int             null,               --礼券交易次数D 
RetQty          int             null,               --退货交易次数 
DiscQty         int             null,               --折扣交易次数 
DeliverQty      int             null,               --送货交易次数 
CashValue       dec(12,2)       null,               --现金金额C 
CardValue       dec(12,2)       null,               --购物卡金额V 
CheckValue      dec(12,2)       null,               --支票金额K 
BankValue       dec(12,2)       null,               --信用卡金额R 
TicketValue     dec(12,2)       null,               --礼券金额D 
RetValue        dec(12,2)       null,               --退货金额 
DiscValue       dec(12,2)       null,               --折扣金额 
DeliverValue    dec(12,2)       null,               --送货金额
totalvalue 	dec(12,2)       default 0 null      --时点收银金额
);

  select @Err=@@Error,@BreakPoint=420000,@Msg='建立临时表出错';
  if @Err != 0 goto ErrHandle;
  
  select @tempflag=1;
  insert into #tmp_425302(Shopid,SDate,SaleHour,SheetQty,CashQty,CardQty,CheckQty,BankQty,TicketQty,RetQty,DiscQty,
  	DeliverQty,CashValue,CardValue,CheckValue,BankValue,TicketValue,RetValue,DiscValue,DeliverValue,totalvalue)  
  	select Shopid,SDate,SaleHour,sum(SheetQty),sum(CashQty),sum(CardQty),sum(CheckQty),sum(BankQty),
  		sum(TicketQty),sum(RetQty),sum(DiscQty),sum(DeliverQty),sum(CashValue),sum(CardValue),
  		sum(CheckValue),sum(BankValue),sum(TicketValue),sum(RetValue),sum(DiscValue),sum(DeliverValue),
  		sum(CashValue+CardValue+CheckValue+BankValue+TicketValue) 
  	--(sum(CashValue+CardValue+CheckValue+BankValue+TicketValue)/sum(SheetQty)) as sheetvalue 可能有除零错误
  		from RPT_CashHour 
  		where Shopid=@Shopid and convert(char(10),Sdate,120) between @BeginDate and @EndDate 
  		group by shopid,SDate,SaleHour; 
  select @Err=@@Error,@BreakPoint=420010,@msg='建立临时表出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  update #tmp_425302 set sheetvalue=(CashValue+CardValue+CheckValue+BankValue+TicketValue)/SheetQty where SheetQty <> 0;
    
  select Shopid,Sdate,sum(SheetQty) WSheetQty,sum(totalvalue) Wtotalvalue 
  	into #rp_425302tmp1 from #tmp_425302 
  	group by Shopid,Sdate;
  select @Err=@@Error,@BreakPoint=420020,@msg='建立临时表出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;  	
  
  --计算时点占比
  declare cur_stock cursor local for
      	select Shopid,Sdate,WSheetQty,Wtotalvalue from #rp_425302tmp1; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @shopid1,@Sdate,@WSheetQty,@Wtotalvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_425302 set WSheetQty=@WSheetQty,Wtotalvalue=@Wtotalvalue where Shopid=@shopid1 and Sdate=@Sdate;
	select @Err=@@Error,@BreakPoint=420030,@msg='计算时点累计出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  update #tmp_425302 set HQrate=cast(Sheetqty as float)/Wsheetqty*100 where Wsheetqty <> 0;
  update #tmp_425302 set salerate=totalvalue/Wtotalvalue*100 where Wtotalvalue <> 0;
  select @Err=@@Error,@BreakPoint=420040,@msg='计算时点占比出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  --计算累计占比
  select Shopid,Sdate,SaleHour,SheetQty,totalvalue,THSheetQty,THSalevalue     
  	into #rp_425302tmp2 from #tmp_425302; 
  select @Err=@@Error,@BreakPoint=420050,@msg='建立临时表出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  declare cur_stock cursor local for
      	select Shopid,Sdate,SaleHour from #rp_425302tmp2; 
    open cur_stock;
    while (1=1) begin  
    	fetch next from cur_stock into @shopid1,@Sdate,@SaleHour;
    	if @@fetch_status != 0 break;
      	select @THSheetQty=sum(SheetQty),@THSalevalue=sum(totalvalue) from #rp_425302tmp2  
        	where Shopid=@Shopid and Sdate=@Sdate and SaleHour<=@SaleHour;
      	select @Err=@@Error,@BreakPoint=420060,@msg='计算累计出错！';
      	if (@Err is null) or (@Err!=0)  goto ErrHandle;
      	
      	update #rp_425302tmp2 set THSheetqty=@THSheetQty,THsalevalue=@THSalevalue where Shopid=@Shopid1 and Sdate=@Sdate and SaleHour=@SaleHour; 
      	update #tmp_425302 set THSheetqty=@THSheetQty,THsalevalue=@THSalevalue where Shopid=@Shopid1 and Sdate=@Sdate and SaleHour=@SaleHour; 
      	select @Err=@@Error,@BreakPoint=420070,@msg='累计出错！';
      	if (@Err is null) or (@Err!=0)  goto ErrHandle;
 
    end  
        CLOSE cur_stock;
  	DEALLOCATE cur_stock;
  	select @Err = @@error;
  	if @Err != 0 goto ErrHandle;
  
  update #tmp_425302 set THQrate=cast(THSheetQty as float)/Wsheetqty*100 where WSheetQty <> 0;
  update #tmp_425302 set THSalerate=THsalevalue/Wtotalvalue*100 where Wtotalvalue <> 0;
  select @Err=@@Error,@BreakPoint=420080,@msg='计算累计占比出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  insert into #425302 select * from #tmp_425302;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  drop table #rp_425302tmp1; 
  drop table #rp_425302tmp2;
  drop table #tmp_425302; 
 return 0;   
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_425302;
  return -1;
End
GO


-----------------------
-----------------------------------------------------------------
--427413 商品销售排行榜
--修改：赵剑 2003-10-28 10:11 加入商品条码、售卖单位，将部类改为小类。
-----------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427413') and sysstat & 0xf = 4)
    drop procedure dbo.rp_427413
GO
CREATE procedure dbo.rp_427413 @beginDate datetime,@endDate datetime
WITH ENCRYPTION
-----------------------------------------------------------------
--Version Number:Apple1.0_20031022_01,Last Mender:Jeffrey Zhao
-------2009.03.12 范华敏 修改 更新促销状态
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
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=427413,@msg='取管理部门级别时出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=427423,@msg='取管理部类权值出错!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select * into #427413RPT_Base from salecost where 1=2;--建临时表
  exec tl_gettablesname @begindate,@enddate,'salecost',@tables output
  select @Err=@@Error,@Msg='取备份表名时出错！',@BreakPoint=427433;
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  select @tables as tablesname into #427413tablename
  while 1=1 begin
    select @i=charindex(',',tablesname) from #427413tablename;        --判断是否有','分割符
    if @i=0 begin
       select @subTableName=tablesname from #427413tablename;              --没有,取当前值
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
  select @Err=@@Error,@Msg='取数据时出错！',@BreakPoint=427443;
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

  select @Err=@@Error,@BreakPoint=427451,@msg='取基础数据出错！';  
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #427413tmp set GPRate=isNull(GPValue,0)*100/(case SaleValue when 0 then 1 else SaleValue end)
  select @Err=@@Error,@BreakPoint=427452,@msg='计算毛利率出错！';  
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  update #427413tmp set cost=c.cost,venderid=c.venderid
    from #427413tmp a,cost c
    where a.shopid=c.shopid and a.goodsid=c.goodsid and c.flag=0;
  select @Err=@@Error,@BreakPoint=427454,@msg='取进价和供应商信息出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  update #427413tmp set Price=gs.Price
    from #427413tmp a,goodsshop gs
    where a.shopid=gs.shopid and a.goodsid=gs.goodsid;
  select @Err=@@Error,@BreakPoint=427455,@msg='取售价信息出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;

  update #427413tmp set CloseQty=ss.Qty,CloseValue=ss.CostValue
    from #427413tmp a,shopsstock ss
    where a.shopid=ss.shopid and a.goodsid=ss.goodsid;
  select @Err=@@Error,@BreakPoint=427456,@msg='取当前库存信息出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  update #427413tmp set DMS=d.NDMS
    from #427413tmp a,demand d
    where a.shopid=d.shopid and a.goodsid=d.goodsid;
  select @Err=@@Error,@BreakPoint=427457,@msg='取DMS信息出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  ---更新促销状态--2009.03.12 范华敏修改
  update #427413tmp set PMFlag=b.PromotionType
    from #427413tmp a, goodsshop b
   where a.goodsid=b.goodsid ;
  select @Err=@@Error,@BreakPoint=427459,@msg='更新促销状态！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  ---
   insert into #427413
      select * from #427413tmp order by SaleValue;
  select @Err=@@Error,@BreakPoint=427458,@msg='返回数据信息出错！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle; 
  drop table #427413tmp;
  return 0;
  ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
  select @BreakPoint=429001,@Err=@@error,@Msg='执行TL_GetWeekDateBound错误！';
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

  select @BreakPoint=429011,@Err=@@error,@Msg='写表T_WeekDeptSale错误！';
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

    select @BreakPoint=429021,@Err=@@error,@Msg='从RPT_Saledept获取数据错误！';
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
    select @BreakPoint=429021,@Err=@@error,@Msg='从RPT_SaleGroup获取数据错误！';
    if @Err != 0 Goto ErrHandle;    
    */
    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.SaleValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=10 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429022,@Err=@@error,@Msg='写销售数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.DiscValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=20 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429023,@Err=@@error,@Msg='写折扣数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.CostValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=30 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429024,@Err=@@error,@Msg='写成本数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.GainValue ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=40 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429025,@Err=@@error,@Msg='写毛利数据错误！';
    if @Err != 0 Goto ErrHandle;

    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + 
       '=case when b.SaleValue=0 then 0 else b.GainValue/b.SaleValue*100 end' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale_1 b ' + 
       ' where a.RowType=50 and a.WeekID=b.WeekID and a.ManageDeptID=b.ManageDeptID';
    Exec(@SQL);
    select @BreakPoint=429026,@Err=@@error,@Msg='写毛利率数据错误！';
    if @Err != 0 Goto ErrHandle;


    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.TradeNumber ' +
       ' from #T_WeekDeptSale a,RPT_CashManageDept b ' + 
       ' where a.RowType=60 and a.ManageDeptID=b.SGroupID and b.ShopID=''' + @ShopID + '''' +
       ' and b.SDate=' + convert(char(8),@BeginDate,112);
    Exec(@SQL);
    select @BreakPoint=429027,@Err=@@error,@Msg='写客单数数据错误！';
    if @Err != 0 Goto ErrHandle;
   /*
    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=day'+cast(@I as char(1))+'-isnull(b.TradeNumber,0) ' +
       ' from #T_WeekDeptSale a,RPT_zwCashManageDept b ' + 
       ' where a.RowType=60 and a.ManageDeptID*=b.SGroupID and b.ShopID=''' + @ShopID + '''' +
       ' and b.SDate=' + convert(char(8),@BeginDate,112);
    Exec(@SQL);
    select @BreakPoint=429060,@Err=@@error,@Msg='写帐外客单数数据错误！';
    if @Err != 0 Goto ErrHandle;
   */
    
/*   
    select @SQL='update #T_WeekDeptSale set Day' + cast(@I as char(1)) + '=b.TradePrice ' +
       ' from #T_WeekDeptSale a,RPT_CashManageDept b ' + 
       ' where a.RowType=70 and a.ManageDeptID=b.SGroupID and b.ShopID=''' + @ShopID + '''' +
       ' and b.SDate=' + convert(char(8),@BeginDate,112);
    Exec(@SQL);
    select @BreakPoint=429028,@Err=@@error,@Msg='写客单价数据错误！';
    if @Err != 0 Goto ErrHandle;
*/
    select @SQL='update a set a.Day' + cast(@I as char(1)) + '=case b.day'+cast(@I as char(1))+' when 0 then 0 else c.day'+cast(@I as char(1))+'/b.day'+cast(@I as char(1))+' end ' +
       ' from #T_WeekDeptSale a,#T_WeekDeptSale b,#T_WeekDeptSale c' + 
       ' where a.RowType=70 and b.RowType=60 and c.RowType=10 and a.ManageDeptID=b.ManageDeptID and b.ManageDeptID=c.ManageDeptID ';
    Exec(@SQL);
    select @BreakPoint=429028,@Err=@@error,@Msg='写客单价数据错误！';
    if @Err != 0 Goto ErrHandle;

    drop table #T_WeekDeptSale_1;

    select @BeginDate=DateAdd(day,1,@BeginDate);
    select @I=@I+1;    
  END  
  
  --总值（销售、折扣、成本、毛利、客单数）、平日值、双修日值
  update #T_WeekDeptSale set Total7=Day1+Day2+Day3+Day4+Day5+Day6+Day7,
      Total5=Day1+Day2+Day3+Day4+Day5,Total2=Day6+Day7
    where WeekID=@WeekID and RowType in (10,20,30,40,60);
  select @BreakPoint=429081,@Err=@@error,@Msg='计算合计值错误！';
  if @Err != 0 Goto ErrHandle;
  
  --上述平均值
  update #T_WeekDeptSale set Avg7=Total7/7,Avg5=Total5/5,Avg2=Total2/2
    where WeekID=@WeekID and RowType in (10,20,30,40,60);
  select @BreakPoint=429082,@Err=@@error,@Msg='计算平均值错误！';
  if @Err != 0 Goto ErrHandle;
  
  --计算毛利率与客单价
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
    from #T_WeekDeptSale where RowType=10;			--销售
  update #T_WeekDeptSale_2 set Gain7=b.Total7,Gain5=b.Total5,Gain2=b.Total2
    from #T_WeekDeptSale_2 a,#T_WeekDeptSale b
    where a.ManageDeptID=b.ManageDeptID and b.RowType=40;	--毛利
  update #T_WeekDeptSale_2 set Trad7=b.Total7,Trad5=b.Total5,Trad2=b.Total2
    from #T_WeekDeptSale_2 a,#T_WeekDeptSale b
    where a.ManageDeptID=b.ManageDeptID and b.RowType=60;	--客单数
    
  --毛利率
  update #T_WeekDeptSale set Total7=case when b.Sale7=0 then 0 else b.Gain7/b.Sale7*100 end,
      Total5=case when b.Sale5=0 then 0 else b.Gain5/b.Sale5*100 end,
      Total2=case when b.Sale2=0 then 0 else b.Gain2/b.Sale2*100 end
    from #T_WeekDeptSale a,#T_WeekDeptSale_2 b
    
where a.ManageDeptID=b.ManageDeptID and a.RowType=50;
  select @BreakPoint=429083,@Err=@@error,@Msg='计算毛利率错误！';
  if @Err != 0 Goto ErrHandle;
  update #T_WeekDeptSale set Avg7=Total7,Avg5=Total5,Avg2=Total2 where WeekID=@WeekID and RowType=50;
  
  --客单价
  update #T_WeekDeptSale set Total7=case when b.Trad7=0 then 0 else b.Sale7/b.Trad7 end,
      Total5=case when b.Trad5=0 then 0 else b.Sale5/b.Trad5 end,
      Total2=case when b.Trad2=0 then 0 else b.Sale2/b.Trad2 end
    from #T_WeekDeptSale a,#T_WeekDeptSale_2 b
    where a.ManageDeptID=b.ManageDeptID and a.RowType=70;
  select @BreakPoint=429084,@Err=@@error,@Msg='计算客单价错误！';
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
    WeekID		int not null,	--周号
    ManageDeptID	int not null,	--管理部门
    RowType		int not null,	--行属性，10=销售 20=折扣金额 30=成本 40=销售毛利 50=毛利率 60=客单数 70=客单价
    Day1		dec(15,6) default 0 not null,	--星期一
    Day2		dec(15,6) default 0 not null,
    Day3		dec(15,6) default 0 not null,
    Day4		dec(15,6) default 0 not null,
    Day5		dec(15,6) default 0 not null,
    Day6		dec(15,6) default 0 not null,
    Day7		dec(15,6) default 0 not null,	--星期日
    Total7		dec(15,6) default 0 not null,	--7天的总值
    Total5		dec(15,6) default 0 not null,	--平日（周一到周五）总值
    Total2		dec(15,6) default 0 not null,	--双休日（周六到周日）总值
    Avg7		dec(15,6) default 0 not null,	--周平均值
    Avg5		dec(15,6) default 0 not null,	--平日平均值
    Avg2		dec(15,6) default 0 not null,	--双休日平均值
    primary key (WeekID,ManageDeptID,rowType)
  );	
  select @BreakPoint=42788801,@Err=@@error,@Msg='建立临时表出错！';
  if @Err != 0 goto ErrHandle;
  
  exec TL_GetPrevWeekID @WeekID,@PreWeekID output;
  select @BreakPoint=42788802,@Err=@@error,@Msg='执行TL_GetPrevWeekID出错！';
  if @Err != 0 goto ErrHandle;
  exec RP_GetWeekDeptSaleToTable_sybj @ShopID,@PreWeekID,@ManageDeptID;
  select @BreakPoint=42788803,@Err=@@error,@Msg='获取上周数据出错！';
  if @Err != 0 goto ErrHandle;
  
  select * into #T_PreWeekDeptSale from #T_WeekDeptSale;
  select @BreakPoint=42788804,@Err=@@error,@Msg='建立临时表出错！';
  if @Err != 0 goto ErrHandle;
  
  delete from #T_WeekDeptSale;
  exec RP_GetWeekDeptSaleToTable_sybj @ShopID,@WeekID,@ManageDeptID;
  select @BreakPoint=42788805,@Err=@@error,@Msg='获取本周数据出错！';
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

  select @BreakPoint=42788806,@Err=@@error,@Msg='写入本周数据出错！';
  if @Err != 0 goto ErrHandle;

  insert into #427888
    select WeekID,Day1,Day2,Day3,Day4,Day5,Day6,Day7,Total5,Total2,Total7,RowType+1
      from #T_preWeekDeptSale_jxgg where WeekID=@preWeekID and RowType in (10,40,60,70);     

  select @BreakPoint=42788807,@Err=@@error,@Msg='写入上周数据出错！';
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
  
  select @BreakPoint=42788808,@Err=@@error,@Msg='写入比较数据出错！';
  if @Err != 0 goto ErrHandle;

  drop table #T_WeekDeptSale;
  drop table #T_PreWeekDeptSale;
  drop table #T_WeekDeptSale_jxgg;
  drop table #T_PreWeekDeptSale_jxgg;
  select @BreakPoint=42788808,@Err=@@error,@Msg='写入比较数据出错！';
  if @Err != 0 goto ErrHandle;
  return 0;    
ErrHandle:  
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
go


-----------------------------
--427881 供应商付款评估报表                                              
--建立：魏薇 2003.11.19
--计算公式:
----库存可销天数:  库存金额/上月日均销售 (显示格式 0.00 )
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
VenderID	int		null,		--供应商编号
VenderName	char(64)	null,		--供应商名称
ManageDeptID	int    		null,		--管理类别
ManageName      char(64)	null,		--管理部类名称
Stockvalue	dec(12,2)	default 0 not null,		--库存金额
Avgsale		dec(12,2)	default 0 not null,		--上月日均销售
SaleDays        dec(12,2)	default 0 not null,		--库存可销天数
Paytype		int 		null,		--结算周期 0表示从验收时开始（日结）,1表示从验收日次月开始（月结）,2表示从验收日次半月开始（半月结）,3表示从验收日次周开始（周结）
OpenValue       dec(12,2)	default 0 not null,		--在途金额
JSCostValue	dec(12,2) 	default 0 not null,		--已结算金额
JSCount     	int 		default 0 not null,		--已结算次数
DJvalue		dec(12,2) 	default 0 not null,		--本次待结算金额,（即本期应结未结金额）
KXvalue		dec(12,2)	default 0 not null,	        --扣项金额汇总
sy_salevalue    dec(12,2)       default 0 not null,           --上月销售金额
sy_costvalue    dec(12,2)       default 0 not null,            --上月销售成本,
wjsje           dec(12,2)       default 0 not null,          --未结算金额，到目前为止还没结算的 
bqyjsje         dec(12,2)       default 0 not null,           --本期已结算金额  
bqyjje          dec(12,2)       default 0 not null,            --本期应结金额 
wsKXvalue       dec(12,2)       default 0 not null,           --未收扣项金额   
bqwsKXvalue     dec(12,2)       default 0 not null,           --本期未收扣项金额
bqKXvalue       dec(12,2)       default 0 not null,           --本期已收扣项金额
bqyskxvalue     dec(12,2)       default 0 not null             -- 本期应收扣项金额
);

  select @Err=@@Error,@BreakPoint=427000,@Msg='建立临时表出错';
  if @Err != 0 goto ErrHandle;
  
  select @tempflag=1;
  select a.shopid,a.venderid,a.goodsid,b.deptid,b.stocktype into #rp_427881tmp1 from cost a,goods b  
	where a.goodsid=b.goodsid and a.clearflag<>3 and a.venderid=@Venderid; 
  select @Err=@@Error,@BreakPoint=427010,@Msg='取值出错';
  if @Err != 0 goto ErrHandle;	
  
  --取数量金额帐商品库存	
  select a.shopid,a.venderid,a.goodsid,a.deptid,sum(b.qty*b.cost) costvalue into #rp_427881tmp2 from #rp_427881tmp1 a,goodscost b 
	where a.shopid=b.shopid and a.venderid=b.venderid and a.goodsid=b.goodsid and a.stocktype=0 
	group by a.shopid,a.venderid,a.goodsid,a.deptid;
  select @Err=@@Error,@BreakPoint=427020,@Msg='取数量金额商品出错';
  if @Err != 0 goto ErrHandle;	
	
  --取金额帐商品库存
 insert into #rp_427881tmp2 
 select a.shopid,a.venderid,a.goodsid,a.deptid,sum(b.costvalue) costvalue from #rp_427881tmp1 a,shopsstock b 
	where a.shopid=b.shopid and a.goodsid=b.goodsid and a.stocktype=2 
	group by a.shopid,a.venderid,a.goodsid,a.deptid;
  select @Err=@@Error,@BreakPoint=427030,@Msg='取金额商品出错';
  if @Err != 0 goto ErrHandle;	
  	
  --计算部门库存
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=427040,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  	
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=427050,@msg='取管理部类权值出错!!';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  
  select venderid,round(deptid/@levelvalue,0) ManageDeptID,sum(costvalue) Stockvalue into #rp_427881tmp3 from #rp_427881tmp2 
  group by venderid,round(deptid/@levelvalue,0);
  select @Err=@@Error,@BreakPoint=427060,@Msg='合计库存金额出错';
  if @Err != 0 goto ErrHandle;
  
  --计算上月日均销售额
  --算法：取当前查询日期的前一月平均销售 天数按平均月30天计算
  select @tablename='salecost'+left(convert(char(8),DateAdd(mm,-1,getdate()),112),6);
  select @stable='dbo.'+@tablename;
  if not exists (select * from dbo.sysobjects 
	where id = object_id(@stable) and OBJECTPROPERTY(id, @stable) = 1) 
	select @tablename='salecost'; --考虑新开业情况，取当月销售额
  select @Err=@@Error,@BreakPoint=427070,@Msg='取月表出错';
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
  select @Err=@@Error,@BreakPoint=427080,@Msg='计算日期出错';
  if @Err != 0 goto ErrHandle;
  
  select @SQL1=
  'insert into #tmp2 select a.venderid,a.goodsid,b.deptid,a.paytypeid,sum(a.salevalue-discvalue) salevalue,999999999.99 avgsale,sum(a.costvalue) costvalue '+ 
  '	from '+@tablename+' a,#rp_427881tmp2 b  ' +
  ' 	where a.goodsid=b.goodsid and a.venderid=b.venderid and a.shopid=b.shopid '+
  	' group by a.venderid,a.goodsid,b.deptid,a.paytypeid';
  exec (@SQL1);	
  select @Err=@@Error,@BreakPoint=427210,@Msg='取销售额出错';
  if @Err != 0 goto ErrHandle;
  
  insert into #rp_427881tmp4 
  	select Venderid,round(deptid/@levelvalue,0) ManageDeptID,paytypeid,sum(salevalue) salevalue,avgsale,sum(costvalue) costvalue from #tmp2 
  	group by Venderid,round(deptid/@levelvalue,0),paytypeid,avgsale;
  
  update #rp_427881tmp4 set avgsale=round(salevalue/30,2) where salevalue <> 0 or salevalue is not null;
  update #rp_427881tmp4 set avgsale=0.00 where salevalue = 0 or salevalue is null;
  select @Err=@@Error,@BreakPoint=427100,@Msg='计算平均销售出错';
  if @Err != 0 goto ErrHandle;
  drop table #tmp2;
  	
  --插入库存金额和日均销售
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
	select @Err=@@Error,@BreakPoint=427110,@msg='更新日均销售出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=427120,@Msg='汇总出错';
  if @Err != 0 goto ErrHandle;	
  	
  update #tmp_427881 set SaleDays=Stockvalue/Avgsale where Avgsale <> 0 or Avgsale is not null;
  drop table #rp_427881tmp1;
  drop table #rp_427881tmp3;
  drop table #rp_427881tmp4;

  select @Err=@@Error,@BreakPoint=427130,@Msg='计算可销天数出错';
  if @Err != 0 goto ErrHandle;
  
  --计算在途订货数量
  --算法：demand表中goodsid的默认供应商是该供应商，则认为本单品在途数全属该供应商；如果不是，保持为空
  ----在途金额=正常进价ContractCost×在途数量
  select a.shopid,a.vender
id,a.goodsid,a.deptid,b.OpenOrderQty,c.ContractCost into #rp_427881tmp5 from #rp_427881tmp2 a,demand b,cost c 
  	where a.shopid=b.shopid and a.goodsid=b.goodsid and a.shopid=c.shopid and a.goodsid=c.goodsid and a.venderid=c.venderid and
              c.flag=0;
  select @Err=@@Error,@BreakPoint=427140,@Msg='统计在途数量出错';
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
	select @Err=@@Error,@BreakPoint=427150,@msg='更新在途金额出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  drop table #rp_427881tmp5;
  drop table #rp_427881tmp6;
  select @Err=@@Error,@BreakPoint=427160,@Msg='删除临时表出错';
  if @Err != 0 goto ErrHandle;
  
    --计算已结算金额
  select a.venderid,b.ManageDeptID,count(a.sheetid) JSCount,sum(b.costvalue) JSCostValue into #rp_427881tmp8 from Billhead a,BillheadItem b 
	where a.sheetid=b.sheetid  and a.venderid=@venderid 
	group by a.venderid,b.ManageDeptID;
  select @Err=@@Error,@BreakPoint=427170,@msg='统计已结算金额和次数出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;	 
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,JSCount,JSCostValue from #rp_427881tmp8; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid1,@ManageDeptID,@JSCount,@JSCostValue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set JSCount=@JSCount,JSCostValue=@JSCostValue where venderid=@venderid1 and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427180,@msg='更新已结算金额出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;

 drop table #rp_427881tmp8; 

--07-02-08 add
--计算本期已结算金额
  select a.venderid,b.ManageDeptID,sum(b.costvalue) bqyjsje into #rp_427881tmp81 from Billhead a,BillheadItem b 
	where a.sheetid=b.sheetid  and a.venderid=@venderid and convert(char(10),PayableDate,120) between @BeginDate and @EndDate 
	group by a.venderid,b.ManageDeptID;
  select @Err=@@Error,@BreakPoint=427170,@msg='统计本期已结算金额和出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;	 
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,bqyjsje from #rp_427881tmp81; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid1,@ManageDeptID,@bqyjsje;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set bqyjsje=@bqyjsje where venderid=@venderid1 and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427180,@msg='更新本期已结算金额出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  
  drop table #rp_427881tmp81; 
 
--07-02-08 add

 
  --计算本次待结算金额
  select distinct a.venderid,b.paytypesortid into #rp_427881tmp7 from #tmp1 a,paytype b 
  	where a.paytypeid=b.id;
  
   select a.ManageDeptID,a.Venderid,sum(a.costvalue) DJvalue into #rp_427881tmp9 from UnpaidSheet0 a,#rp_427881tmp7 b 
  	where a.venderid=b.venderid and b.paytypesortid='g' and convert(char(10),PayableDate,120) between @BeginDate and @EndDate 
  	group by a.ManageDeptID,a.Venderid; 
  	 
   insert into #rp_427881tmp9 
   select a.ManageDeptID,a.Venderid,sum(a.costvalue) DJvalue from BalanceBook0 a,#rp_427881tmp7 b 
  	where a.venderid=b.venderid and b.paytypesortid <> 'g'  and convert(char(10),PayableDate,120) between @BeginDate and @EndDate 
  	group by a.ManageDeptID,a.Venderid; 
  select @Err=@@Error,@BreakPoint=427190,@Msg='计算本次待结算金额出错';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,DJvalue from #rp_427881tmp9; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@ManageDeptID,@DJvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set DJvalue=@DJvalue where venderid=@venderid and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427200,@msg='更新待结算金额出错！';
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

    --计算到目前为止未结算金额
  select distinct a.venderid,b.paytypesortid into #rp_427881tmp71 from #tmp1 a,paytype b 
  	where a.paytypeid=b.id;
  
   select a.ManageDeptID,a.Venderid,sum(a.costvalue) wjsje into #rp_427881tmp91 from UnpaidSheet0 a,#rp_427881tmp71 b 
  	where a.venderid=b.venderid and b.paytypesortid='g'
  	group by a.ManageDeptID,a.Venderid; 
  	 
   insert into #rp_427881tmp91 
   select a.ManageDeptID,a.Venderid,sum(a.costvalue) wjsje from BalanceBook0 a,#rp_427881tmp71 b 
  	where a.venderid=b.venderid and b.paytypesortid <> 'g'  
  	group by a.ManageDeptID,a.Venderid; 
  select @Err=@@Error,@BreakPoint=427190,@Msg='计算未结算金额出错';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,wjsje from #rp_427881tmp91; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@ManageDeptID,@wjsje;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set wjsje=@wjsje where venderid=@venderid and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427200,@msg='更新未结算金额出错！';
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

   --计算扣项汇总
  select a.venderid,a.ManageDeptID,sum(b.Kmoney) KXvalue into #rp_427881tmp10 from #tmp_427881 a,kxsum b 
  	where a.venderid=b.venderid and a.ManageDeptID=b.ManageDeptID 
  	group by a.venderid,a.ManageDeptID;
  select @Err=@@Error,@BreakPoint=427210,@Msg='计算扣项汇总出错';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,KXvalue from #rp_427881tmp10; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@ManageDeptID,@KXvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set KXvalue=@KXvalue where venderid=@venderid and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427220,@msg='更新已结算扣项金额出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  drop table #rp_427881tmp10;	

--add,2007-02-08
 --计算未收扣项汇总
  select a.venderid,a.ManageDeptID,sum(b.Kmoney) wsKXvalue into #rp_427881tmp101 from #tmp_427881 a,kxsum0 b 
  	where a.venderid=b.venderid and a.ManageDeptID=b.ManageDeptID 
  	group by a.venderid,a.ManageDeptID;
  select @Err=@@Error,@BreakPoint=427210,@Msg='计算未收扣项汇总出错';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,wsKXvalue from #rp_427881tmp101; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@ManageDeptID,@wsKXvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set wsKXvalue=@wsKXvalue where venderid=@venderid and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427220,@msg='更新未收扣项汇总出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
  
      CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  drop table #rp_427881tmp101;	

 --计算应收未收扣项汇总
  select a.venderid,a.ManageDeptID,sum(b.Kmoney) bqwsKXvalue into #rp_427881tmp102 from #tmp_427881 a,kxsum0 b 
  	where a.venderid=b.venderid and a.ManageDeptID=b.ManageDeptID 
                and convert(char(10),b.ReceivableDate,120) between @BeginDate and @EndDate 
  	group by a.venderid,a.ManageDeptID;
  select @Err=@@Error,@BreakPoint=427210,@Msg='计算未收扣项汇总出错';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,bqwsKXvalue from #rp_427881tmp102; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@ManageDeptID,@bqKXvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set bqwsKXvalue=isnull(@bqwsKXvalue,0) where venderid=@venderid and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427220,@msg='更新未收扣项汇总出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err = @@error;
  if @Err != 0 goto ErrHandle;
  drop table #rp_427881tmp102;	

 --计算本期已收扣项
   select a.venderid,a.ManageDeptID,sum(b.Kmoney) bqKXvalue into #rp_427881tmp103 from #tmp_427881 a,kxsum b 
  	where a.venderid=b.venderid and a.ManageDeptID=b.ManageDeptID 
                and convert(char(10),b.ReceivableDate,120) between @BeginDate and @EndDate 
  	group by a.venderid,a.ManageDeptID;
  select @Err=@@Error,@BreakPoint=427210,@Msg='计算扣项汇总出错';
  if @Err != 0 goto ErrHandle;
  
  declare cur_stock cursor local for
      	select venderid,ManageDeptID,bqKXvalue from #rp_427881tmp103; 
    open cur_stock;
    while (1=1)  begin 
    	fetch next from cur_stock into @venderid,@ManageDeptID,@bqKXvalue;
    	if  @@fetch_status !=0 break;
 	update #tmp_427881 set bqKXvalue=@bqKXvalue where venderid=@venderid and ManageDeptID=@ManageDeptID;
	select @Err=@@Error,@BreakPoint=427220,@msg='更新已结算扣项金额出错！';
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  if @tempflag=1 drop table #tmp_427881;
  return -1;
End
GO

/*
Name: TL_GetNextWeekID @WeekID int,@NextWeekID int output
func: 获取指定周号@WeekID的下周号

Name: TL_GetPrevWeekID @WeekID int,@PreWeekID int output
func: 获取指定周号@WeekID的上周号

Name: TL_GetWeekDateBound @WeekID int,@BeginDate datetime out,@EndDate datetime out
func: 给出周号@WeekID，返回该周的开始和结束日期

Name: RP_GetWeekSaleToTable @ShopID char(4),@WeekID int
func: 获取指定周号@WeekID周内从星期一到星期日每天的销售额、折扣、成本、毛利、毛利率、客单数、客单价等，见下表：
	create table #T_WeekSale(
	  WeekID	int not null,	--周号
	  RowType	int not null,	--行属性，10=销售 20=折扣金额 30=成本 40=销售毛利 50=毛利率 60=客单数 70=客单价
	  Day1		dec(15,5) default 0 not null,	--星期一
	  Day2		dec(15,5) default 0 not null,
	  Day3		dec(15,5) default 0 not null,
	  Day4		dec(15,5) default 0 not null,
	  Day5		dec(15,5) default 0 not null,
	  Day6		dec(15,5) default 0 not null,
	  Day7		dec(15,5) default 0 not null,	--星期日
	  Total7	dec(15,5) default 0 not null,	--7天的总值
	  Total5	dec(15,5) default 0 not null,	--平日（周一到周五）总值
	  Total2	dec(15,5) default 0 not null,	--双休日（周六到周日）总值
	  Avg7		dec(15,5) default 0 not null,	--周平均值
	  Avg5		dec(15,5) default 0 not null,	--平日平均值
	  Avg2		dec(15,5) default 0 not null,	--双休日平均值
	  primary key (WeekID,rowType)
	)
	
Name: RP_GetWeekDeptSaleToTable @ShopID char(4),@WeekID int,@ManageDeptID int=null
func: 同上功能，但目标是各管理部门相关的值，而不是整个门店，表结构如下：
	create table #T_WeekDeptSale(
	  WeekID	int not null,	--周号
	  ManageDeptID	int not null,	--管理部门
	  RowType	int not null,	--行属性，10=销售 20=折扣金额 30=成本 40=销售毛利 50=毛利率 60=客单数 70=客单价
	  Day1		dec(15,6) default 0 not null,	--星期一
	  Day2		dec(15,6) default 0 not null,
	  Day3		dec(15,6) default 0 not null,
	  Day4		dec(15,6) default 0 not null,
	  Day5		dec(15,6) default 0 not null,
	  Day6		dec(15,6) default 0 not null,
	  Day7		dec(15,6) default 0 not null,	--星期日
	  Total7	dec(15,6) default 0 not null,	--7天的总值
	  Total5	dec(15,6) default 0 not null,	--平日（周一到周五）总值
	  Total2	dec(15,6) default 0 not null,	--双休日（周六到周日）总值
	  Avg7		dec(15,6) default 0 not null,	--周平均值
	  Avg5		dec(15,6) default 0 not null,	--平日平均值
	  Avg2		dec(15,6) default 0 not null,	--双休日平均值
	  primary key (WeekID,ManageDeptID,rowType)
	)

Name: RP_GetWeekGoodsSaleToTable @ShopID char(4),@WeekID int,@GoodsID int
func: 同上功能，计算单品的销售状况，表结构如下：
	create table #T_WeekGoodsSale(
	  WeekID	int not null,	--周号
	  GoodsID	int not null,	--商品编码
	  RowType	int not null,	--行属性，10=销售额 20=销售数量 30=销售毛利 40=毛利率 50=销售数周占比
	  Day1		dec(15,6) default 0 not null,	--星期一
	  Day2		dec(15,6) default 0 not null,
	  Day3		dec(15,6) default 0 not null,
	  Day4		dec(15,6) default 0 not null,
	  Day5		dec(15,6) default 0 not null,
	  Day6		dec(15,6) default 0 not null,
	  Day7		dec(15,6) default 0 not null,	--星期日
	  Total7	dec(15,6) default 0 not null,	--7天的总值
	  Total5	dec(15,6) default 0 not null,	--平日（周一到周五）总值
	  Total2	dec(15,6) default 0 not null,	--双休日（周六到周日）总值
	  Avg7		dec(15,6) default 0 not null,	--周平均值
	  Avg5		dec(15,6) default 0 not null,	--平日平均值
	  Avg2		dec(15,6) default 0 not null,	--双休日平均值
	  primary key (WeekID,GoodsID,rowType)
	)

Name: RP_GetWeekCashHour @ShopID char(4),@WeekID int
func: 获取指定周号@WeekID从周一到周日每个时段的客单数，见表：
	create table #T_WeekCashHour(
	  WeekID	int not null,			--周号
	  Hour		int not null,			--时点
	  Day1		int default 0 not null,		--星期一
	  Day2		int default 0 not null,
	  Day3		int default 0 not null,
	  Day4		int default 0 not null,
	  Day5		int default 0 not null,
	  Day6		int default 0 not null,
	  Day7		int default 0 not null,		--星期日
	  Total7	int default 0 not null,		--一周总值
	  Total5	int default 0 not null,		--平日（周一到周五）总值
	  Total2	int default 0 not null,		--双休日（周六到周日）总值
	  Avg7		int default 0 not null,		--周平均值
	  Avg5		int default 0 not null,		--平日平均值
	  Avg2		int default 0 not null,		--双休日平均值
	  SubTotal7	int default 0 not null,		--一周累计客单数
	  SubTotal5	int default 0 not null,		--平日累计客单数
	  SubTotal2	int default 0 not null,		--双休累计客单数
	  SubRate7	dec(10,2) default 0 not null,	--周累计进度比
	  SubRate5	dec(10,2) default 0 not null,	--平日累计进度比
	  SubRate2	dec(10,2) default 0 not null	--双休日累计进度比
	  primary key (WeekID,Hour)
	)

Name: RP_GetWeekSaleHour @ShopID char(4),@WeekID int
func: 获取指定周号@WeekID从周一到周日每个时段的收银额（销售额），见表:
	create table #T_WeekSaleHour(
	  WeekID	int not null,			--周号
	  Hour		int not null,			--时点
	  Day1		dec(15,6) default 0 not null,	--星期一
	  Day2		dec(15,6) default 0 not null,
	  Day3		dec(15,6) default 0 not null,
	  Day4		dec(15,6) default 0 not null,
	  Day5		dec(15,6) default 0 not null,
	  Day6		dec(15,6) default 0 not null,
	  Day7		dec(15,6) default 0 not null,	--星期日
	  Total7	dec(15,6) default 0 not null,	--一周总值
	  Total5	dec(15,6) default 0 not null,	--平日（周一到周五）总值
	  Total2	dec(15,6) default 0 not null,	--双休日（周六到周日）总值
	  Avg7		dec(15,6) default 0 not null,	--周平均值
	  Avg5		dec(15,6) default 0 not null,	--平日平均值
	  Avg2		dec(15,6) default 0 not null,	--双休日平均值
	  SubTotal7	dec(15,6) default 0 not null,	--一周累计销售额
	  SubTotal5	dec(15,6) default 0 not null,	--平日累计销售额
	  SubTotal2	dec(15,6) default 0 not null,	--双休累计销售额
	  SubRate7	dec(10,2) default 0 not null,	--周累计进度比
	  SubRate5	dec(10,2) default 0 not null,	--平日累计进度比
	  SubRate2	dec(10,2) default 0 not null	--双休日累计进度比
	  primary key (WeekID,Hour)
	)


报表过程实现
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
  
  declare @dWeekStart 	datetime;		--本周一
  declare @dMonthStart 	datetime;		--本月一号
  declare @StartDate datetime,@EndDate datetime;	--上月一号到今天
  declare @WeekID int;
  declare @sCond varchar(255);
  SET NOCOUNT ON
  
  --条件
  select @sCond='ShopID='''+@ShopID+''' and GoodsID in (select GoodsID from #427894)';
  --计算总日期区间
  select @StartDate=cast(left(convert(char(8),DateAdd(month,-1,getdate()),112),6)+'01' as datetime);
  select @WeekID=DatePart(week,GetDate());
  exec TL_GetWeekDateBound @WeekID,@dWeekStart output,@EndDate output;
  select @EndDate=convert(char(8),getdate(),112);
  select @dWeekStart=convert(char(8),@dWeekStart,112);
  select @dMonthStart=DateAdd(month,1,@StartDate);
  --数据
  select * into #salecost from salecost where 0=1;
  exec rp_GetMonthDataToTable @StartDate,@EndDate,'salecost',@sCond;
  select @Err=@@error,@BreakPoint=42789401,@Msg='获取月表数据错误！';
  if @Err != 0 goto ErrHandle;
  --本周销售,上周销售,DMS,在途
  update #427894 set DMS=b.NDMS,WeekSale=WeekSaleQty,PreWeekSale=WeekSaleQty1,OnPurQty=b.OpenOrderQty+b.OpenRationQty
    from #427894 a,Demand b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  --当前库存,周转天数
  update #427894 set StockQty=b.Qty,CostValue=b.CostValue,
      SaleDays=case when a.DMS=0 then 0 else b.Qty/a.DMS end
    from #427894 a,ShopsStock b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
--修改 Ch 2008-02-19 改rpt_base001为salecost,去除了周转天数字段  --begin    
/*    
 --本月销售,周转次数
  select GoodsID,sum(Qty) SaleQty,case when sum(Qty)=0 then 0 else sum(CloseQty)/sum(Qty) end Times
    into #tmp3 from #salecost 
    where convert(char(8),SDate,112) between convert(char(8),@dMonthStart,112) and convert(char(8),@EndDate,112)
    group by GoodsID;
  update #427894 set MonthSale=b.SaleQty,MonthDays=Times
    from #427894 a,#tmp3 b 
    where a.GoodsID=b.GoodsID;
  drop table #tmp3;
  --上月销售,周转次数
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
  --上月销售,周转次数
  select GoodsID,sum(Qty) SaleQty
    into #tmp4 from #salecost 
    where convert(char(8),SDate,112) between convert(char(8),@StartDate,112) and convert(char(8),@dMonthStart-1,112)
    group by GoodsID;
  update #427894 set PreMonthSale=b.SaleQty from #427894 a,#tmp4 b 
    where a.GoodsID=b.GoodsID;
  drop table #tmp4;
--修改 Ch 2008-02-19 改rpt_base001为salecost,去除了周转天数字段  --end

  --最近进货,销售日期
  select ShopID,GoodsID,max(SaleDate) SaleDate,max(ReceiptDate) ReceiptDate
    into #tmp1 from LatelyGoodsList
    where ShopID=@ShopID
    group by ShopID,GoodsID;
  update #427894 set LastPurDay=b.ReceiptDate,LastSaleDay=b.SaleDate
    from #427894 a,#tmp1 b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  drop table #tmp1;
  --当前售价
  update #427894 set Price=b.Price
    from #427894 a,GoodsShop b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID;
  --默认供应商,进价
  update #427894 set VenderID=b.VenderID,Cost=b.Cost
    from #427894 a,Cost b
    where a.ShopID=b.ShopID and a.GoodsID=b.GoodsID and b.Flag=0
  --负数的周转天数设置为0
  update #427894 set MonthDays=case when MonthDays<0 then 0 else MonthDays end,
      PreMonthDays=case when PreMonthDays<0 then 0 else PreMonthDays end;  
  drop table #salecost;
  
  return 0;    
ErrHandle:  
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
End
GO



----------------------
----------------------------------------------------------------------------------------
--rp_427898			供应商扣项金额汇总表  
--参数：
--返回：成功为0,其他为断点号,		断点号 42
--表：	
--函数：
--算法：
--建立：魏薇 2003.12.08
----------------------------------------------------------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.rp_427898') and type = 'P')
  drop procedure dbo.rp_427898
GO
create procedure dbo.rp_427898 @begindate datetime,@enddate datetime 

-----------------------------------------------------------------
--Version Number:Apple2.0_20031208_01,Last Mender:魏薇
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
VenderID	int		null,		--供应商编号
ManageDeptID	int    		null,		--管理类别
SaleCost	dec(12,2)	default 0 Null,		--上月销售成本
TmpkxValue	dec(12,2) 	default 0 null,		--临时扣项金额
GdkxValue     	dec(12,2) 	default 0 null,		--固定扣项金额
RecKXvalue	dec(12,2)	default 0 null		--已收金额
);

  select @Err=@@Error,@BreakPoint=420000,@Msg='建立临时表出错';
  if @Err != 0 goto ErrHandle;

  --统计临时扣项  
  select @tempflag=1;
  select VenderID,ManageDeptID,sum(kmoney) TmpkxValue into #rp_427898tmp1 from KXSum0 
  	where Ktype=1 and convert(char(10),ReceivableDate,120) between @BeginDate and @EndDate 
  	group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=420010,@Msg='统计临时扣项出错';
  if @Err != 0 goto ErrHandle;
  
  insert into #rp_427898tmp1 	 
  select VenderID,ManageDeptID,sum(kmoney) TmpkxValue from KXSum 
  	where Ktype=1 and convert(char(10),ReceivableDate,120) between @BeginDate and @EndDate 
  	group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=420020,@Msg='统计临时扣项出错';
  if @Err != 0 goto ErrHandle;
  
  insert into #tmp_427898(VenderID,ManageDeptID,TmpkxValue) 
  	select VenderID,ManageDeptID,sum(TmpkxValue) TmpkxValue from #rp_427898tmp1 group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=420030,@Msg='插入临时扣项值出错';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427898tmp1;
  
  --统计固定扣项	
  select VenderID,ManageDeptID,sum(kmoney) GdkxValue into #rp_427898tmp2 from KXSum0  
  	where Ktype=0 and convert(char(10),ReceivableDate,120) between @BeginDate and @EndDate 
  	group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=420040,@Msg='统计固定扣项出错';
  if @Err != 0 goto ErrHandle;
  
  insert into #rp_427898tmp2 	 
  select VenderID,ManageDeptID,sum(kmoney) GdkxValue from KXSum  
  	where Ktype=0 and convert(char(10),ReceivableDate,120) between @BeginDate and @EndDate 
  	group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=420050,@Msg='统计固定扣项出错';
  if @Err != 0 goto ErrHandle;
  
  insert into #tmp_427898(VenderID,ManageDeptID,GdkxValue) 
  	select VenderID,ManageDeptID,sum(GdkxValue) GdkxValue from #rp_427898tmp2 group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=420060,@Msg='插入固定扣项值出错';
  if @Err != 0 goto ErrHandle;
  drop table #rp_427898tmp2;
  
  --统计已收金额
  insert into #tmp_427898(VenderID,ManageDeptID,RecKXvalue) 
  	select VenderID,ManageDeptID,sum(kmoney) RecKXvalue from kxsum 
  		where convert(char(10),ReceivableDate,120) between @BeginDate and @EndDate 
  		group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=420070,@Msg='插入已收金额出错';
  if @Err != 0 goto ErrHandle;
  
  --统计上月销售金额 
  --算法：取查询当日所在月的上月销售总额
  select @deptlevel=value from config where name='管理部门级别';
  select @Err=@@Error,@BreakPoint=420080,@msg='取管理部门级别时出错！！';
  if (@Err is null) or (@Err!=0)  goto ErrHandle;
  	
  select @levelvalue=levelvalue from deptlevel where deptlevelid=@deptlevel;
  select @Err=@@Error,@BreakPoint=420090,@msg='取管理部类权值出错!!';
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
	select @Err=@@Error,@BreakPoint=427100,@msg='统计上月销售成本出错！';
        if (@Err is null) or (@Err!=0)  goto ErrHandle;
    end
        CLOSE cur_stock;
  DEALLOCATE cur_stock;
  select @Err=@@Error,@BreakPoint=427110,@Msg='统计上月销售成本出错';
  if @Err != 0 goto ErrHandle;
  
  insert into #427898(VenderID,ManageDeptID,SaleCost,TmpkxValue,GdkxValue,RecKXvalue) 
  	select VenderID,ManageDeptID,sum(SaleCost),sum(TmpkxValue),sum(GdkxValue),sum(RecKXvalue) from #tmp_427898 
  		group by VenderID,ManageDeptID;
  select @Err=@@Error,@BreakPoint=427120,@Msg='汇总出错';
  if @Err != 0 goto ErrHandle;  		
  		
  update #427898 set KXvalue=TmpkxValue+GdkxValue where 1=1;
  drop table #tmp_427898;
  
  return  0;  
ErrHandle:
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
	
	
	
	----取状态为新品的商品列表
	select distinct gs.goodsid,g.name,g.barcodeid,g.deptid,d.name dname,gs.price,g.InDate,g.TryDays,g.TrySaleValue
        into #goodslist
	from goodsshop gs,goods g,dept d
	where gs.goodsid=g.goodsid and gs.shopid=@shopid 
	      and gs.flag=8 and g.deptid=d.id
	      and convert(char(10),g.indate,120) between @begindate and @enddate;
	      
	select @count=@@ROWCOUNT
	if @count=0 or @count is null
	return 0  --无新品直接返回
	
	--按照新品引如日期--当前日期取商品销售数据
	select @begindate=min(InDate) from #goodslist;
	select @enddate  =getdate();
	select @breakpoint=100001;
        select * into #TmpRPT_salecost from salecost where 1=2;--建临时表
        exec @err=tl_gettablesname @begindate,@enddate,'salecost',@tables output
        if @err<>0 or @err is null begin
        	select @msg='取月表出错'
        	goto errhandle
        end;
        
        select @tables as tablesname into #tablename
        select @breakpoint=100002;
        while 1=1 begin
          select @i=charindex(',',tablesname) from #tablename;        --判断是否有','分割符
          if @i=0 begin
             select @subTableName=tablesname from #tablename;              --没有,取当前值
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
	
	--汇总商品销售数据
	select @breakpoint=100002;
	select goodsid,min(saledate) saledate,sum(qty) qty,sum(salevalue-discvalue) salevalue,sum(costvalue) costvalue,sum(salevalue-discvalue-costvalue) gpvalue,
	       sum(salevalue-discvalue-costvalue)/sum(salevalue-discvalue)*100 gprate
	       into #goodssale
	       from #TmpRPT_salecost
	       group by goodsid
	       select @err=@@error
	       if @err<>0 or @err is null
	       goto errhandle;
	 
	 --查询商品的首次进货日期
	 select @breakpoint=100003;
	 select a.goodsid,min(r.checkdate) checkdate
	 into #goodsreceipt
	 from #goodslist a,receipt r,receiptitem ri
	 where a.goodsid=ri.goodsid and ri.sheetid=r.sheetid and r.flag=100 and r.shopid=@shopid
	 group by a.goodsid
	 select @err=@@error
	 if @err<>0 or @err is null
	 goto errhandle;
	 
	 
	 --数据汇总
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
	 
	 --删除临时表
	 drop table #goodslist;
	 drop table #goodssale
	 drop table #TmpRPT_salecost;
	 drop table #goodsreceipt;
	 drop table #temp1;
	 drop table #temp2;
	 
	 
	 return 0;

ERRHANDLE:	 
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;
  
end;
GO
--------------------------------------
if exists (select * from sysobjects where id = object_id('dbo.tl_getcardpoint') and type = 'P')
  drop procedure dbo.tl_getcardpoint
GO
create procedure dbo.tl_getcardpoint      @point int,@cardtype  char(2)='99' 
--------------------------------------积分分析区间段,卡类型.卡类型为99时取所有会员卡
as begin
	
	declare @err               int;
	declare @breakpoint        int;
	declare @msg               char(255);
	
	declare @maxpoint          int;      ----当前最大积分值
	declare @initpoint         int;	   ----计算积分范围初始值
	declare @closepoint        int;      ----计算积分单位末尾值
	
	declare @notes              char(255);
	declare @cardmember        int;            ----积分范围内卡数量
	
	select @maxpoint = max(point) from guest   ----当前最大积分值
	select @initpoint=1
	select @closepoint=@point;
	
	while @closepoint<@maxpoint+@point
	begin
		if @cardtype='99'
		begin
			select @cardmember=count(*) 
			from guest a with (nolock),cardtype b with (nolock),cardflag c  with (nolock)
			where a.cardtype=b.cardtype and b.flag=c.flag and c.flag=0 and a.point between @initpoint and @closepoint  ----只取会员卡
		end
		else
		begin
			select @cardmember=count(*) 
			from guest a with (nolock),cardtype b with (nolock),cardflag c  with (nolock)
			where a.cardtype=b.cardtype and b.flag=c.flag and c.flag=0 and a.cardtype=@cardtype and a.point between @initpoint and @closepoint  ----只取会员卡
		end;

		select @notes = '积分值从'+rtrim(cast(@initpoint as char(8)))+'----'+rtrim(cast(@closepoint as char(8)))+'的会员卡数量为:';
		
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
create procedure dbo.rp_dailysale @sdate datetime,@lastmonthdate datetime,@shopid  char(4)  --销售日期,上月对比日期,机构编码

as begin 
	declare   @err      int;
	declare   @msg      varchar(255);
	declare   @BreakPoint	int;
	
	declare   @startdate   datetime;   --本月开始时间
	declare   @lastweekdate  datetime; --上周同期时间
	declare   @lastmonthdate1  datetime;   --上月累计销售截止日期
	declare   @lastmonthstartdate datetime; --上月开始日期
	  
	declare   @DeptLevelID	int;
	declare   @LevelValue	int;
	declare   @sCond        varchar(255);  
	declare   @msaletotal   dec(12,2)   --当月到现在销售总额
	declare   @cssaletotal   dec(12,2)  --超市部分销售总额
	declare   @lastweekcssaletotal   dec(12,2)  --上周同期超市部分销售总额
	declare   @tablename         char(64);
	declare   @monthid              char(20);
	declare   @sql              varchar(255);
	
	
	select @lastweekdate=@sdate-7;          --上周同期日期
	select @sdate=convert (char(8),@sdate,112);
	select @startdate=cast(left(convert(char(8),@SDate,112),6)+'01' as datetime);  --本月开始日期
	select @lastmonthdate1=dateadd(mm,-1,@sdate);  --上月累计销售的截止日期
	select @lastmonthstartdate=cast(left(convert(char(8),@lastmonthdate1,112),6)+'01' as datetime);  --上月开始日期
	
	select @DeptLevelID=value from config where name = '管理部门级别';
	select @LevelValue=LevelValue from deptlevel where DeptLevelID=@DeptLevelID;
	

	--计算本月累计销售	
	select @breakpoint=527002;
	select @msaletotal=sum(salevalue-discvalue) from rpt_salegroup where convert(char(8),sdate,112) >= @startdate
	       and convert(char(8),sdate,112) <= @sdate and shopid=@shopid;
	select @err=@@error;
	if @err<>0 goto errhandle;
	
	
	--计算本日销售情况
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
		select @msg='计算本日销售情况错误'
		goto errhandle;
	end;
	
	--计算本日部门客单
	select @breakpoint=527004;	
	insert into #dailysale(id,TradeNumber,tradeprice)
	select sgroupid,TradeNumber,tradeprice
		from rpt_cashmanagedept
		where sdate=@sdate and shopid=@shopid and DeptLevelID=@DeptLevelID;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='计算本日部门客单'
		goto errhandle;
	end;

	--计算本日DM销售
	select @breakpoint=527005;	
	insert into #dailysale(id,dmsalevalue)
	select deptid/@LevelValue,sum(salevalue-discvalue) as dmsalevalue
		from rpt_salepromotion
		where shopid=@shopid and convert(char(8),sdate,112)=@sdate and disctype='m'
		group by deptid/@LevelValue;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='计算本日DM销售'
		goto errhandle;
	end;
	
	--计算上周同期销售
	select @breakpoint=527006;	
	insert into #dailysale(id,lastweeksalevalue)
	select managedeptid,sum(salevalue-discvalue)
		from rpt_salegroup
		where convert(char(8),sdate,112)=@lastweekdate and shopid=@shopid and salevalue<>0
		group by managedeptid;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='计算上周同期销售'
		goto errhandle;
	end;


	--计算上周同期部门客单
	select @breakpoint=527007;	
	insert into #dailysale(id,lastweekTradeNumber,lastweektradeprice)
	select sgroupid,TradeNumber,tradeprice
		from rpt_cashmanagedept
		where convert(char(8),sdate,112)=@lastweekdate and shopid=@shopid and DeptLevelID=@DeptLevelID;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='计算上周同期部门客单'
		goto errhandle;
	end;
	
	--计算上月同期销售
	select @breakpoint=527008;	
	insert into #dailysale(id,lastmonthsalevalue)
	select managedeptid,sum(salevalue-discvalue)
		from rpt_salegroup
		where convert(char(8),sdate,112)=@lastmonthdate and shopid=@shopid and salevalue<>0
		group by managedeptid;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='计算上月同期销售'
		goto errhandle;
	end;
	
	--计算月累计销售
	select @breakpoint=527009;	
	insert into #dailysale(id,monthsale,monthsalerate,mgrate)
	select managedeptid,sum(salevalue-discvalue),sum(salevalue-discvalue)/@msaletotal*100,sum(salevalue-discvalue-costvalue)/sum(salevalue-discvalue)*100
		from rpt_salegroup
		where convert(char(8),sdate,112) between @startdate and @sdate and shopid=@shopid and salevalue<>0
		group by managedeptid;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='计算月累计销售'
		goto errhandle;
	end;
	
	--计算上月累计销售
	select @breakpoint=527010;	
	insert into #dailysale(id,lastmonthsale)
	select managedeptid,sum(salevalue-discvalue)
		from rpt_salegroup
		where convert(char(8),sdate,112) between @lastmonthstartdate and @lastmonthdate1 and shopid=@shopid and salevalue<>0
		group by managedeptid;
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='计算上月累计销售'
		goto errhandle;
	end;
	
	--汇总销售数据
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
		select @msg='汇总销售数据'
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
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
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
  
  --计算@sdate所在周的开始时间和结束时间,礼拜一做为开始日期,礼拜日作为结束日期
  select @startdate=@sdate-datepart(weekday,@sdate-1)+1;
  select @enddate  =@sdate+(7-datepart(weekday,@sdate-1));
  
  --取管理类别级别
  select @deptlevelid = value from config where name='管理部门级别';
  select @LevelValue = LevelValue from DeptLevel where DeptLevelID=@DeptLevelID;
  
  --计算本周内的销售总额，销售占比，毛利率
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
		select @msg='计算本周内的销售'
		goto errhandle;
	end;
        
  
  --上周同期销售
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
		select @msg='上周同期销售'
		goto errhandle;
	end;
        
 
  --上月同期销售
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
		select @msg='上月同期销售'
		goto errhandle;
	end;
        
        
  --月累计销售
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
		select @msg='月累计销售'
		goto errhandle;
	end;
        

  --上月累计销售
  
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
		select @msg='上月累计销售'
		goto errhandle;
	end;
        
  --客单量和客单价
  
  select @breakpoint=525006;
  insert into #weeksale (deptid,tradenumber,tradeprice)
  select SGroupID,sum(TradeNumber),sum(salevalue)/sum(TradeNumber) as TradePrice--计算总客流量,然后取平均客单价
        from RPT_CashManageDept
        where  DeptLevelID=@DeptLevelID and ShopID=@ShopID and convert(char(8),sdate,112) between convert(char(8),@startdate,112) and convert(char(8),@enddate,112)
        group by SGroupID
	select @err=@@error;
	if @err<>0 or @err is null
	begin
		select @msg='客单量和客单价'
		goto errhandle;
	end;
      
  
  --数据汇总
  
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
		 select @msg='数据汇总'
		 goto errhandle;
	 end;
         
        
  drop table #temp1;

                        
    return 0;
    
ErrHandle:  
  raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
  return -1;                          
         
     
end;

GO

if exists (select * from sysobjects where id = object_id('dbo.rp_monthsale') and type = 'P')
  drop procedure dbo.rp_monthsale
GO                              
create procedure dbo.rp_monthsale    @shopid  char(4),@sdate datetime --店号          当月任意一天，自动转换当月月份
as begin
	
	declare @err             int;
	declare @breakpoint      int;
	declare @msg             varchar(255);
	
	declare @monthid         int;   --月编号
	declare @lymonthid       int;   --上年同期月编号
	declare @lmmonthid       int;   --上月月编号
	declare @mclsalevalue    dec(12,2);  --当月超市部分销售总额
	declare @msalevalue      dec(12,2);
	declare @lmsalevalue     dec(12,2);
	declare @lysalevalue     dec(12,2);
	declare @tradenumber3678   int;
  	declare @DeptLevelID	int;
  	declare @LevelValue	int;	
	
  	--取管理类别级别
  	select @deptlevelid = value from config where name='管理部门级别';
  	select @LevelValue = LevelValue from DeptLevel where DeptLevelID=@DeptLevelID;	
	
	--取月编号
	select @monthid=substring(convert(char(8),@sdate,112),1,6);
	
	--取当月超市部分累计销售金额
	select @breakpoint=110301;
	select @mclsalevalue=sum(salevalue-discvalue) from rpt_salegroup where shopid=@shopid
	       and substring(convert(char(8),sdate,112),1,6)=@monthid;
	select @err=@@error;
	if @err<>0 goto errhandle;
	
	--计算部门当月实际销售金额，占比，毛利，毛利率
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
		select @msg='计算当月销售数据错误';
		goto errhandle;
	end;
	
	
	--计算上年同期月编号
	select @lymonthid=substring(convert(char(8),@sdate-365,112),1,6);
	
	--计算上年同期部门月销售
	select @breakpoint=110303;
	insert into #monthsale(groupid,groupname,lysalevalue)
	select b.id,b.name,isnull(sum(salevalue-discvalue),0) as lysalevalue
	from rpt_salegroup a,sgroup b
	where a.managedeptid=b.id and b.deptlevelid=@deptlevelid and a.shopid=@shopid 
	      and substring(convert(char(8),sdate,112),1,6)=@lymonthid and a.salevalue<>0
	group by b.id,b.name;
	select @msg='计算上年同期部门月销售';
	if @@error<>0 goto errhandle;
		
	--计算上月月编号
	if month(@sdate)=1 begin
		select @lmmonthid=cast(year(@sdate)-1 as char(4))+'12';
	end
	else begin
		select @lmmonthid=substring(convert(char(8),@sdate-30,112),1,6);
	end;
	
	--计算上月部门销售
	select @breakpoint=110304;
	insert into #monthsale(groupid,groupname,lmsalevalue)
	select b.id,b.name,isnull(sum(salevalue-discvalue),0) as lmsalevalue
	from rpt_salegroup a,sgroup b
	where a.managedeptid=b.id and b.deptlevelid=@deptlevelid and a.shopid=@shopid 
	      and substring(convert(char(8),sdate,112),1,6)=@lmmonthid and a.salevalue<>0
        group by b.id,b.name;	  
	select @msg='计算上月部门销售';
	if @@error<>0 goto errhandle;
	
	
	--计算年累计部门销售，年累计毛利额
	select @breakpoint=110305;
	insert into #monthsale(groupid,groupname,ylgsalevalue,ylgvalue)		
	select b.id,b.name,isnull(sum(salevalue-discvalue),0) as ylgsalevalue,isnull(sum(salevalue-discvalue-costvalue),0) as ylgvalue
	from rpt_salegroup a,sgroup b
	where a.managedeptid=b.id and b.deptlevelid=@deptlevelid and a.shopid=@shopid and year(sdate)=year(@sdate) and month(sdate)<=month(@sdate)
		and a.salevalue<>0
	group by b.id,b.name;
	select @msg='计算年累计销售出错';
	if @@error<>0 goto errhandle;
	
	--计算当月部门累计客流量
	select @breakpoint=110306;	
	insert into #monthsale(groupid,groupname,mtnumber)
	select b.id,b.name,sum(tradenumber) as mtnumber
	from rpt_cashmanagedept a,sgroup b
	where a.sgroupid=b.id and b.deptlevelid=@deptlevelid and a.shopid=@shopid and substring(convert(char(8),sdate,112),1,6)=@monthid
	group by b.id,b.name;
	select @msg='计算月客流量出错';
	if @@error<>0 goto errhandle;

	--数据合并	
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
	select @msg='数据汇总出错';
	if @@error<>0 goto errhandle;	 
	
	drop table #temp1;
	
	return 0;

errhandle:
        raiserror('%s,断点=%d,Err=%d',16,1,@Msg,@BreakPoint,@Err);
        return -1;
end;
GO
--2008
-----------------------------------------------------------------------------------------------------