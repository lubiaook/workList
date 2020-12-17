SAP利润中心编号删除标志更新接口
## 1. SAP利润中心编号删除标志更新接口
### 1.1  
SAP利润中心编号删除标志更新接口
### 1.2 请求说明
> 请求方式：get <br>
> 请求方式URL
   * 生产：http://192.168.80.27:8088/portal/r/jd?cmd=com.awspaas.user.apps.finance/oa/organization/deletedSapEmployeeOrganization
   * staging：http://192.168.80.27:8088/portal/r/jd?cmd=com.awspaas.user.apps.finance/oa/organization/deletedSapEmployeeOrganization
   * 测试：http://192.168.80.26:8088/portal/r/jd?cmd=com.awspaas.user.apps.finance/oa/organization/deletedSapEmployeeOrganization
### 1.3 请求参数
字段          | 字段类型  | 字段长度| 必填| 字段说明
--------------|:-----------|:-----------|:-----------|:-----------
employeeId    | String      |12          | true|   利润中心编号 
deletedTag    | String      |1          | true|    删除标志：1.删除、0 非删除 
### 1.4 请求演示
``` curl 
curl 'https://aws-staging.yimei180.com/portal/r/jd?cmd=com.awspaas.user.apps.finance/oa/organization/deletedSapEmployeeOrganization&employeeId=E000473&deletedTag=1'
```
### 1.5 返回参数
字段          | 字段类型  | 字段长度| 必填| 字段说明
--------------|:-----------|:-----------|:-----------|:-----------
msg           | String      |12          | true|    请求成功是时获取 
errorCode     | String      |10          | false|    
result        | String      |20          | true|    result: <br>ok :操作成功<br> error:操作失败<br> 
data          | String      |2000        | false |    请求错误时获取 data 里的desc 

> 异常报文 
``` json
{
    "msg": "更新Sap组织利润中心编号,更新标志必须是0或1",
    "id": ":RO;",
    "result": "error"
}
```
> 成功报文
``` json
{
    "msg": "成功",
    "id": ":RO;",
    "result": "ok"
}
```
