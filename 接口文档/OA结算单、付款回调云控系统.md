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


## 2 云控小贷流程回调云控
### 2.1 功能描述
+ 云控小贷流程回调云控(SAP发起的流程OA调用两次此接口、易煤交易此类流程OA只调用此接口一次)
### 2.1.1 回调后云控状态描述 
+ OA 第一次回调云控申请云控系统做融资
+ OA 第二次回调云控申请云控系统做放款
+ 易煤校验发起的付款流程只调用一次是因为OA已经调用过交易。交易接受回调OA后，交易回调了云控
### 2.2 请求说明
> 请求方式：POST<br>
> 请求方式URL
   * 生产： /a/ifc/oa/pettyLoanApproval
   * staging：/a/ifc/oa/pettyLoanApproval

### 2.3 请求参数
字段          | 字段类型  | 字段长度| 必填| 字段说明
--------------|:-----------|:-----------|:-----------|:-----------
businessNum  | String      |128    | true|  OA流水号 
orderId      | String      |128    | true|  订单编号 
approveStatus| String      |128    | true|  OA审核结果: 1 为通过、2 为不通过 
payDate       | String      |128    | true|  付款日期


## 3.云控小贷流程付款结果回调云控
### 3.1 功能描述
云控小贷流程付款结果回调云控
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
payDate      | String      |128    | true|  付款日期
