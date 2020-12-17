#!/bin/shell
#author lubiao
# desc拉取生产流程
jointVentureProd=/opt/release/apps/install/com.awspaas.user.apps.jointventure/repository/process/
jointVenture=~/opt/release/apps/install/com.awspaas.user.apps.jointventure/repository/process/
expenseProd=/opt/release/apps/install/com.awspaas.user.apps.finance_expense_loan/repository/process/
expense=~/opt/release/apps/install/com.awspaas.user.apps.finance_expense_loan/repository/process/
shanmeiProd=/opt/release/apps/install/com.awspaas.user.apps.shanxishanmei/repository/process/
shanmei=~/opt/release/apps/install/com.awspaas.user.apps.shanxishanmei/repository/process/
adminisProd=/opt/release/apps/install/com.awspaas.user.apps.administrative/repository/process/
adminis=~/opt/release/apps/install/com.awspaas.user.apps.administrative/repository/process/
deshengProd=/opt/release/apps/install/com.awspaas.user.apps.desheng/repository/process/
desheng=~/opt/release/apps/install/com.awspaas.user.apps.desheng/repository/process/
financeProd=/opt/release/apps/install/com.awspaas.user.apps.finance/repository/process/
finance=~/opt/release/apps/install/com.awspaas.user.apps.finance/repository/process/
sapPaymentProd=/opt/release/apps/install/com.awspaas.user.apps.ccs_sap_payment/repository/process/
sapPayment=~/opt/release/apps/install/com.awspaas.user.apps.ccs_sap_payment/repository/process/
bpmn='.bpmn'
draw='.draw'
tag='/'
#echo 'SAP付款流程'
#paymentArray=(
#obj_9ccbf626e93d4732858ff2c5d354694e
#obj_bf487a815a194493a4ce2cb48415ddca
#		)
#for str in ${paymentArray[@]}
#do 
#scp aws_prod:~$sapPaymentProd$str$tag$str$bpmn $sapPayment$str$tag$str
#scp aws_prod:~$sapPaymentProd$str$tag$str$draw $sapPayment$str$tag$str
#done
#
#
#echo '财务流程执行'
#expenseArray=(
#obj_e1c107cd1f424860895675fddeae0496
#obj_deae6efdaac14a2ba4f05393ee176866
#obj_c4efd6ccf9fa4c2393baab5c5b6e37d3
#obj_13d61cdd7ead4174b9125d2c018460f5
#obj_10db6f16ef4e4b2a822b0c37dfa7e0df
#obj_aebb295faf9d4250be1d5745ddec6f62
#		)
#for str in ${expenseArray[@]}
#do 
#scp aws_prod:~$financeProd$str$tag$str$bpmn $finance$str$tag$str
#scp aws_prod:~$financeProd$str$tag$str$draw $finance$str$tag$str
#done
#
#
#echo '德盛流程执行'
#deshengArray=(
#obj_3032d14e2ce843f0a47a301fcd83828b
#obj_35d5f58f3c0f452f8e6fc0daaa039ca9
#obj_fc79fb0ae0e3401fb9aa1ee76b59dcf6
#		)
#for str in ${deshengArray[@]}
#do 
#scp aws_prod:~$deshengProd$str$tag$str$bpmn $desheng$str$tag$str
#scp aws_prod:~$deshengProd$str$tag$str$draw $desheng$str$tag$str
#done
#
#echo '行政流程执行'
#adminisArray=(
#obj_857c0ed20d6841918fb0e2df1efaba03
#obj_28920963c86f4b3389b2a3b64b9baeaa
#obj_485b63eba9d2423884cdf17efd72a2ed
#		)
#for str in ${adminisArray[@]} 
#do
#scp aws_prod:~$adminisProd$str$tag$str$bpmn $adminis$str$tag$str
#scp aws_prod:~$adminisProd$str$tag$str$draw $adminis$str$tag$str
#done
#echo '陕煤流程执行'
#shanmeiArray=(obj_5ee235fa99b04863b233296371009465)
#for str in ${shanmeiArray[@]}
#do
#scp aws_prod:~$shanmeiProd$str$tag$str$bpmn $shanmei$str$tag$str
#scp aws_prod:~$shanmeiProd$str$tag$str$draw $shanmei$str$tag$str
#done
#

echo '报销流程执行'
expenseArray=(
obj_0dccbe33a5da4206af57613422609402
obj_7417ad8095c44fbfb06a6267bb5ce30d
obj_84ffef645b414ea5a3f29e93bd48af9b
obj_cc3b45797d7b4d1ba71f7fbd6932d3ca
obj_e7906e129fef41e0b00e11fef581f70b)

for str in ${expenseArray[@]}
do 
scp aws_prod:~$expenseProd$str$tag$str$bpmn  $expense$str$tag$str
scp aws_prod:~$expenseProd$str$tag$str$draw  $expense$str$tag$str
done 

arrayJointArrays=(
obj_8e9b78b3d6b642a0a0bf496db8a6db0f
obj_be91f0337b844fa2aa46fe5018dcecfe
obj_a9b2eba305b94d8bbd0d661b8cacd17c
obj_71ef38f989fa410681c5da15bb4224d5
obj_36de902a1a174631a2d5b8af43660a52)

for str in ${arrayJointArrays[@]}
do
echo "$jointVenture$str$bpmn"
#find $jointVenture  -name "$str$bpmn"
#scp aws_prod:~$jointVentureProd$str$tag$str$bpmn $jointVenture$str$tag$str
#scp aws_prod:~$jointVentureProd$str$tag$str$draw $jointVenture$str$tag$str
done
