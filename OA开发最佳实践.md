##### 需求文档规范
##### 应用开发规范

##### 流程开发规范
* BO(表名)
 1. 命名 BO_EU_应用简称_功能简称 
   >* eg:陕煤合同主表 BO_EU_SM_CONTRACT
   >* eg:陕煤合同子表 BO_EU_SM_CONTRACT_DETAIL
 2. 字段命名 英文下划线 
   >* eg:CONTRACT_NUM 合同号
 3. 唯一性约束
   >* eg:CONTRACT_NUM 合同号
 4. 常规组件列表使用(必须按照key-value形式配置)

   >* eg:puwen:朴雯|heyamin:何亚敏
* PROCESS
  1. 流程名称一定要与**TAPD**流程需求一致、规范流程名称一般为：事业部-业务类型-流程名称
  2. 要求流程组、流程名称一致。流程界面要复制流程名称。
     1. 错误示范: ![正确演示](http://aws-staging.yimei180.com/portal/process_def_name.png '区块链') 
     2. 流程、流程组一致输入一致:![正确演示](http://aws-staging.yimei180.com/portal/process_name_right.png '区块链') 
     3. 流程图要显示具体流程名称: ![正确演示](http://aws-staging.yimei180.com/portal/bpmn_process3.png '区块链')
  3. 流程节点复制一定要检查**自定义ID**、**事件触发**、**抄送**
  4. bpmn流程图规范
     1. ***流程节点之间的连线不可交叉***![正确演示](http://aws-staging.yimei180.com/portal/bpmn_process_error.png '区块链')
     2. ***使用并行网关一定对称并行网关结束*** ![错误演示](http://aws-staging.yimei180.com/portal/bpmn_process_error2.png '区块链')
  5. bpmn 并行网关注意要点：并行网关流程系统服务都必须改成异步，否则一个报错系统任务报错后，其他任务节点将不会执行。
  6. bpmn 并行网关注意要点：只能单条入线,否则可能后续节点不会执行。
  7. bpmn 排他网关注意要点：多条出线时，一定要添加审核菜单意见，否则系统会判断出错。
  8. bpmn 并行网关注意要点：只能单入,否则可能后续节点不会执行。
* FORM(表单)
  1. 新建表单 添加申请人信息 ![正确演示](http://aws-staging.yimei180.com/portal/form_001.png '区块链')
  2. form表单可以使用@表达式 巧用@表达式可以提升工作效率。@processDefName 获取流程组名称 
     ```js 
     if ('@processDefName()'.indexOf("合资") != -1) {
               if(ui('CALLBACK_YM')!='1'){
                 uiEditable("CALLBACK_YM", false);
                ui("CALLBACK_YM", "2");
               uiRequiredClass("SYNCHRONIZATION_TAG", true)
              }
     }
  3. 建议修改表单js，用web编译器修改，尽量少在**源码**中打开。
  
* DD 数据字典模型
  1. DD命名规则 **应用名称-功能名称**
  2. DD是不可以另存为到其他应用，一个DD只能给一个对应一个BO。复用冗容易导致错乱。
* DR 参考录入模型
  1. DR命名规则 **应用名称-功能名称**
* DW 数据视图 
  1. 如果没有特殊需求,为了缓解导航树加载慢，基本信息页-->视图布局选项用**传统布局** 
  2. 如果没有特殊需求，查询器-->高级选项-->条件查询展示  默认选**平铺**
##### 字典维护规范
##### 后端代码开发
* MVC开发规范 
  1. cmd 命名规则 **appId_功能名称** 
     1. 返回视图:com.haier.apps.globalorder_home_dashboard
     1. restController: com.haier.apps.globalorder_saveContent
  2. 要求流程组、流程名称一致。流程界面要复制流程名称。
     1. 错误示范: ![正确演示](http://aws-staging.yimei180.com/portal/process_def_name.png '区块链') 
##### 升级规范
#####  迁移规范

