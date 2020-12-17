[TOC]
结算单、付款审批回传云控
## 1.获取结算单流程审批记录(合同发起)
### 1.1 功能描述
合同流程回传易煤
### 1.2 请求说明
> 请求方式：POST<br>
> 请求方式URL
   * 生产： /a/ifc/oa/statement
   * staging：/a/ifc/oa/statement
### 1.3 请求参数
字段          | 字段类型  | 字段长度| 必填| 字段说明
--------------|:-----------|:-----------|:-----------|:-----------
businessNum  | String      |128    | true|  OA流水号 
businessTitle| String      |128    | true|  OA流程标题
contractNo   | String      |128    | true|  合同编号 
sellerName   | String      |128    | true|  卖方名称 
sellerUscc   | String      |128    | true|  卖方信用代码 
buyerName    | String      |128    | true|  买方名称 
buyerUscc    | String      |128    | true|  买方信用代码 
list         | List        |128    | true|  附件记录 

字段          | 字段类型  | 字段长度| 必填| 字段说明
--------------|:-----------|:-----------|:-----------|:-----------
date          | String      |128    | true|  结算日期 
amount        | String      |128    | true|   结算金额 
quantity      | String      |128    | true|  结算数量 
unit          | String      |128    | true|  结算单价 
attachment    | String      |128    | true|  附件地址 


## 2.回传保理合同用款申请审批状态
### 2.1 功能描述
回传保理合同用款申请审批状态
### 2.2 请求说明
> 请求方式：POST<br>
> 请求方式URL
   * 生产： /a/ifc/oa/ccsfactor/approval
   * staging：/a/ifc/oa/ccsfactor/approval

### 2.3 请求参数
字段          | 字段类型  | 字段长度| 必填| 字段说明
--------------|:-----------|:-----------|:-----------|:-----------
businessNum  | String      |128    | true|  OA流水号 
procNo       | String      |128    | true|  流程编号 
approveStatus| String      |128    | true|  OA审核结果: 1 为通过、2 为不通过 
approveRecordList | List |128    | true| 审批记录  已经废弃


字段          | 字段类型  | 字段长度| 必填| 字段说明
--------------|:-----------|:-----------|:-----------|:-----------
signatureDate | String      |128    | true|  办理日期 
nodeName      | String      |128    | true|  节点名称 
signature     | String      |128    | true|  签名 
operation     | String      |128    | true|  办理人 
message       | String      |128    | true|  审批信息 

## 3.回传保理合同用款申请付款状态
### 3.1 功能描述
回传保理合同用款申请付款状态
### 3.2 请求说明
> 请求方式：POST<br>
> 请求方式URL
   * 生产： /a/ifc/oa/ccsfactor/paymentResult
   * staging：/a/ifc/oa/ccsfactor/paymentResult
### 3.3 请求参数
字段          | 字段类型  | 字段长度| 必填| 字段说明
--------------|:-----------|:-----------|:-----------|:-----------
businessNum  | String      |128    | true|  OA流水号 
orderId      | String      |128    | true|  订单编号 
approveStatus| String      |128    | true|  OA审核结果: 1 为通过、2 为不通过 
payDate       | String      |128    | true|  付款日期


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

