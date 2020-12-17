[TOC]
合同、结算单、付款审批回传易煤
## 1.获取合同流程审批记录
### 1.1 功能描述
合同流程回传易煤
### 1.2 请求说明
> 请求方式：POST<br>
> 请求方式URL
   * 生产：ifc/oa/contractResult
   * staging：ifc/oa/contractResult
### 1.3 请求参数
字段          | 字段类型  | 字段长度| 必填| 字段说明
--------------|:-----------|:-----------|:-----------|:-----------
businessNum  | String      |128    | true|  OA流水号 
serialNo     | String      |128    | true|  订单编号 
approveStatus| String      |128    | true|  OA审核结果: 1 为通过、2 为不通过 
approveRecordList | List |128    | true| 审批记录  已经废弃
document     |String |128    | true| 附件 

## 2.回传结算单流程审批状态
### 2.1 功能描述
回传结算单流程审批状态
### 2.2 请求说明
> 请求方式：POST<br>
> 请求方式URL
   * 生产：ifc/oa/statementResult
   * staging：ifc/oa/statementResult

### 2.3 请求参数
字段          | 字段类型  | 字段长度| 必填| 字段说明
--------------|:-----------|:-----------|:-----------|:-----------
businessNum  | String      |128    | true|  OA流水号 
serialNo     | String      |128    | true|  订单编号 
approveStatus| String      |128    | true|  OA审核结果: 1 为通过、2 为不通过 
approveRecordList | List |128    | true| 审批记录  已经废弃
settleNo     | String |128    | true| 结算单号 
correctId    | String |128    | true| 结算修正ID
correctNo    | String |128    | true| 结算修正单号 

## 3.回传付款流程审批状态
### 3.1 功能描述
回传付款流程审批状态
### 3.2 请求说明
> 请求方式：POST<br>
> 请求方式URL
   * 生产：ifc/oa/paymentResult
   * staging：ifc/oa/paymentResult
### 3.3 请求参数
字段          | 字段类型  | 字段长度| 必填| 字段说明
--------------|:-----------|:-----------|:-----------|:-----------
businessNum  | String      |128    | true|  OA流水号 
serialNo     | String      |128    | true|  订单编号 
approveStatus| String      |128    | true|  OA审核结果: 1 为通过、2 为不通过 
approveRecordList | List |128    | true| 审批记录  已经废弃
paymentAccNo  | String      |128    | true|  银行账号 
payAccBank   | String      |128    | true|   银行名称 
actualPayDate | String      |128    | true|  付款日期 
actualAmount  | String      |128    | true|  实际付款金额 
serialNo      | String      |128    | true|  校验单号 
documentList  | List  |128    | true|   附件列表 


字段          | 字段类型  | 字段长度| 必填| 字段说明
--------------|:-----------|:-----------|:-----------|:-----------
type          | String      |128    | true|  附件类型 
no            | String      |128    | true|  下游和同编号 
url           | String      |128    | true|  附件地址 


## 3.回传发货审批状态
### 3.1 功能描述
回传付款流程审批状态
### 3.2 请求说明
> 请求方式：POST<br>
> 请求方式URL
   * 生产：ifc/oa/deliverBatchResult
   * staging：ifc/oa/deliverBatchResult
### 3.3 请求参数
字段          | 字段类型  | 字段长度| 必填| 字段说明
--------------|:-----------|:-----------|:-----------|:-----------
businessNum  | String      |128    | true|  OA流水号 
serialNo     | String      |128    | true|  订单编号 
approveStatus| String      |128    | true|  OA审核结果: 1 为通过、2 为不通过 
batchNo      | String      |128    | true|  发货批次号 
no           | String      |128    | true|  货转凭证 

