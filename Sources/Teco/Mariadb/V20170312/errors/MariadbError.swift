public struct TCMariadbError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation = "FailedOperation"
        case failedOperation_AddInstanceInfoFailed = "FailedOperation.AddInstanceInfoFailed"
        case failedOperation_ApplyVipFailed = "FailedOperation.ApplyVipFailed"
        case failedOperation_AssociateSecurityGroupsFailed = "FailedOperation.AssociateSecurityGroupsFailed"
        case failedOperation_AuthNoStrategy = "FailedOperation.AuthNoStrategy"
        case failedOperation_ClearInstanceInfoFailed = "FailedOperation.ClearInstanceInfoFailed"
        case failedOperation_CopyRightError = "FailedOperation.CopyRightError"
        case failedOperation_CreateFlowFailed = "FailedOperation.CreateFlowFailed"
        case failedOperation_CreateOrderFailed = "FailedOperation.CreateOrderFailed"
        case failedOperation_CreateUserFailed = "FailedOperation.CreateUserFailed"
        case failedOperation_DeleteUserFailed = "FailedOperation.DeleteUserFailed"
        case failedOperation_DisassociateSecurityGroupsFailed = "FailedOperation.DisassociateSecurityGroupsFailed"
        case failedOperation_GetSecurityGroupDetailFailed = "FailedOperation.GetSecurityGroupDetailFailed"
        case failedOperation_InstanceCanNotReturn = "FailedOperation.InstanceCanNotReturn"
        case failedOperation_InstanceReturnFailed = "FailedOperation.InstanceReturnFailed"
        case failedOperation_ModifyRightFailed = "FailedOperation.ModifyRightFailed"
        case failedOperation_OssIsolateInstanceFailed = "FailedOperation.OssIsolateInstanceFailed"
        case failedOperation_OssOperationFailed = "FailedOperation.OssOperationFailed"
        case failedOperation_PayFailed = "FailedOperation.PayFailed"
        case failedOperation_ResetPasswordFailed = "FailedOperation.ResetPasswordFailed"
        case failedOperation_SGChangeVip = "FailedOperation.SGChangeVip"
        case failedOperation_SetRuleLocationFailed = "FailedOperation.SetRuleLocationFailed"
        case failedOperation_SetSvcLocationFailed = "FailedOperation.SetSvcLocationFailed"
        case failedOperation_TagDryRunError = "FailedOperation.TagDryRunError"
        case failedOperation_TagQuotaExceedLimit = "FailedOperation.TagQuotaExceedLimit"
        case failedOperation_UpdateInstanceInfoFailed = "FailedOperation.UpdateInstanceInfoFailed"
        case failedOperation_UserNotAuthed = "FailedOperation.UserNotAuthed"
        case failedOperation_VipNotChange = "FailedOperation.VipNotChange"
        case failedOperation_VpcAddServiceFailed = "FailedOperation.VpcAddServiceFailed"
        case failedOperation_VpcUpdateRouteFailed = "FailedOperation.VpcUpdateRouteFailed"
        case failedOperation_WanStatusAbnormal = "FailedOperation.WanStatusAbnormal"
        case internalError = "InternalError"
        case internalError_CamAuthFailed = "InternalError.CamAuthFailed"
        case internalError_CheckVipStatusFailed = "InternalError.CheckVipStatusFailed"
        case internalError_CosConfiguration = "InternalError.CosConfiguration"
        case internalError_CosSignUrl = "InternalError.CosSignUrl"
        case internalError_CreateFlowFailed = "InternalError.CreateFlowFailed"
        case internalError_DBRowsAffectedError = "InternalError.DBRowsAffectedError"
        case internalError_DbOperationFailed = "InternalError.DbOperationFailed"
        case internalError_FenceError = "InternalError.FenceError"
        case internalError_GetDbConfigFailed = "InternalError.GetDbConfigFailed"
        case internalError_GetDbListFailed = "InternalError.GetDbListFailed"
        case internalError_GetDbObjectFailed = "InternalError.GetDbObjectFailed"
        case internalError_GetInstanceDetailFailed = "InternalError.GetInstanceDetailFailed"
        case internalError_GetInstanceInfoFailed = "InternalError.GetInstanceInfoFailed"
        case internalError_GetRightFailed = "InternalError.GetRightFailed"
        case internalError_GetSecurityGroupDetailFailed = "InternalError.GetSecurityGroupDetailFailed"
        case internalError_GetSlowLogFailed = "InternalError.GetSlowLogFailed"
        case internalError_GetSubnetFailed = "InternalError.GetSubnetFailed"
        case internalError_GetTableInfoFailed = "InternalError.GetTableInfoFailed"
        case internalError_GetUserListFailed = "InternalError.GetUserListFailed"
        case internalError_GetUserSGCountFailed = "InternalError.GetUserSGCountFailed"
        case internalError_GetUsgQuotaError = "InternalError.GetUsgQuotaError"
        case internalError_GetVpcFailed = "InternalError.GetVpcFailed"
        case internalError_HDFSError = "InternalError.HDFSError"
        case internalError_InnerConfigurationMissing = "InternalError.InnerConfigurationMissing"
        case internalError_InnerSystemError = "InternalError.InnerSystemError"
        case internalError_InsertFail = "InternalError.InsertFail"
        case internalError_InstanceOperatePermissionError = "InternalError.InstanceOperatePermissionError"
        case internalError_InstanceSGOverLimitError = "InternalError.InstanceSGOverLimitError"
        case internalError_ListInstanceRespResourceCountNotMatchError = "InternalError.ListInstanceRespResourceCountNotMatchError"
        case internalError_ListInstancesError = "InternalError.ListInstancesError"
        case internalError_LogDBFailed = "InternalError.LogDBFailed"
        case internalError_OperateDatabaseFailed = "InternalError.OperateDatabaseFailed"
        case internalError_QueryDatabaseFailed = "InternalError.QueryDatabaseFailed"
        case internalError_QueryOrderFailed = "InternalError.QueryOrderFailed"
        case internalError_QueryPriceFailed = "InternalError.QueryPriceFailed"
        case internalError_ReadDatabaseFailed = "InternalError.ReadDatabaseFailed"
        case internalError_RetreateTime = "InternalError.RetreateTime"
        case internalError_RouteNotFound = "InternalError.RouteNotFound"
        case internalError_SetSvcLocationFailed = "InternalError.SetSvcLocationFailed"
        case internalError_UpdateDatabaseFailed = "InternalError.UpdateDatabaseFailed"
        case internalError_VpcOperationFailed = "InternalError.VpcOperationFailed"
        case internalError_WanServiceFailed = "InternalError.WanServiceFailed"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_AccountAlreadyExists = "InvalidParameterValue.AccountAlreadyExists"
        case invalidParameterValue_BadSyncMode = "InvalidParameterValue.BadSyncMode"
        case invalidParameterValue_BadUserRight = "InvalidParameterValue.BadUserRight"
        case invalidParameterValue_BadUserType = "InvalidParameterValue.BadUserType"
        case invalidParameterValue_IllegalCount = "InvalidParameterValue.IllegalCount"
        case invalidParameterValue_IllegalExclusterID = "InvalidParameterValue.IllegalExclusterID"
        case invalidParameterValue_IllegalInitParam = "InvalidParameterValue.IllegalInitParam"
        case invalidParameterValue_IllegalInstanceId = "InvalidParameterValue.IllegalInstanceId"
        case invalidParameterValue_IllegalLogSaveDays = "InvalidParameterValue.IllegalLogSaveDays"
        case invalidParameterValue_IllegalQuantity = "InvalidParameterValue.IllegalQuantity"
        case invalidParameterValue_IllegalRightParam = "InvalidParameterValue.IllegalRightParam"
        case invalidParameterValue_IllegalZone = "InvalidParameterValue.IllegalZone"
        case invalidParameterValue_InstanceNameIllegal = "InvalidParameterValue.InstanceNameIllegal"
        case invalidParameterValue_InvalidParameterValueError = "InvalidParameterValue.InvalidParameterValueError"
        case invalidParameterValue_SpecIdIllegal = "InvalidParameterValue.SpecIdIllegal"
        case invalidParameterValue_SuperUserForbidden = "InvalidParameterValue.SuperUserForbidden"
        case invalidParameterValue_SyncModeNotAllowed = "InvalidParameterValue.SyncModeNotAllowed"
        case invalidParameter_ActionNotFound = "InvalidParameter.ActionNotFound"
        case invalidParameter_CharacterError = "InvalidParameter.CharacterError"
        case invalidParameter_CheckParamNotPass = "InvalidParameter.CheckParamNotPass"
        case invalidParameter_DealNameNotGiven = "InvalidParameter.DealNameNotGiven"
        case invalidParameter_FlowNotFound = "InvalidParameter.FlowNotFound"
        case invalidParameter_GenericParameterError = "InvalidParameter.GenericParameterError"
        case invalidParameter_IllegalParameterError = "InvalidParameter.IllegalParameterError"
        case invalidParameter_IllegalTime = "InvalidParameter.IllegalTime"
        case invalidParameter_InstanceNotFound = "InvalidParameter.InstanceNotFound"
        case invalidParameter_NotSupportedPayMode = "InvalidParameter.NotSupportedPayMode"
        case invalidParameter_PermissionDenied = "InvalidParameter.PermissionDenied"
        case invalidParameter_SGCheckFail = "InvalidParameter.SGCheckFail"
        case invalidParameter_ShardResourceIdNotFound = "InvalidParameter.ShardResourceIdNotFound"
        case invalidParameter_SpecNotFound = "InvalidParameter.SpecNotFound"
        case invalidParameter_SubnetNotFound = "InvalidParameter.SubnetNotFound"
        case invalidParameter_SubnetUnavailable = "InvalidParameter.SubnetUnavailable"
        case invalidParameter_VipNotInSubnet = "InvalidParameter.VipNotInSubnet"
        case invalidParameter_VipUsed = "InvalidParameter.VipUsed"
        case invalidParameter_VpcNotFound = "InvalidParameter.VpcNotFound"
        case invalidParameter_VportUsed = "InvalidParameter.VportUsed"
        case invalidParameter_ZoneIdIllegal = "InvalidParameter.ZoneIdIllegal"
        case limitExceeded_TooFrequentlyCalled = "LimitExceeded.TooFrequentlyCalled"
        case resourceInUse_TempInstanceExist = "ResourceInUse.TempInstanceExist"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound_AccountDoesNotExist = "ResourceNotFound.AccountDoesNotExist"
        case resourceNotFound_InstanceNotFound = "ResourceNotFound.InstanceNotFound"
        case resourceNotFound_NoInstanceFound = "ResourceNotFound.NoInstanceFound"
        case resourceNotFound_ProductConfigNotExistedError = "ResourceNotFound.ProductConfigNotExistedError"
        case resourceNotFound_SyncTaskDeleted = "ResourceNotFound.SyncTaskDeleted"
        case resourceUnavailable_BadInstanceStatus = "ResourceUnavailable.BadInstanceStatus"
        case resourceUnavailable_CosApiFailed = "ResourceUnavailable.CosApiFailed"
        case resourceUnavailable_ExclusterStatusAbnormal = "ResourceUnavailable.ExclusterStatusAbnormal"
        case resourceUnavailable_InstanceAlreadyDeleted = "ResourceUnavailable.InstanceAlreadyDeleted"
        case resourceUnavailable_InstanceHasBeenLocked = "ResourceUnavailable.InstanceHasBeenLocked"
        case resourceUnavailable_InstanceStatusAbnormal = "ResourceUnavailable.InstanceStatusAbnormal"
        case resourceUnavailable_SGCheckFail = "ResourceUnavailable.SGCheckFail"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_PermissionDenied = "UnauthorizedOperation.PermissionDenied"
        case unsupportedOperation_InvalidOperation = "UnsupportedOperation.InvalidOperation"
        case unsupportedOperation_OldProxyVersion = "UnsupportedOperation.OldProxyVersion"
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
    /// Initializer used by ``TCClient`` to match an error of this type.
    ///
    /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
    public init ?(errorCode: String, context: TCErrorContext) {
        guard let error = Code(rawValue: errorCode) else {
            return nil
        }
        self.error = error
        self.context = context
    }
    
    internal init (_ error: Code, context: TCErrorContext? = nil) {
        self.error = error
        self.context = context
    }
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCMariadbError {
        TCMariadbError(.authFailure)
    }
    
    /// 操作失败。
    public static var failedOperation: TCMariadbError {
        TCMariadbError(.failedOperation)
    }
    
    /// 实例安全组信息添加失败。
    public static var failedOperation_AddInstanceInfoFailed: TCMariadbError {
        TCMariadbError(.failedOperation_AddInstanceInfoFailed)
    }
    
    /// 申请VIP失败。
    public static var failedOperation_ApplyVipFailed: TCMariadbError {
        TCMariadbError(.failedOperation_ApplyVipFailed)
    }
    
    /// 绑定安全组失败。
    public static var failedOperation_AssociateSecurityGroupsFailed: TCMariadbError {
        TCMariadbError(.failedOperation_AssociateSecurityGroupsFailed)
    }
    
    /// 鉴权失败。
    public static var failedOperation_AuthNoStrategy: TCMariadbError {
        TCMariadbError(.failedOperation_AuthNoStrategy)
    }
    
    /// 实例安全组信息清除失败。
    public static var failedOperation_ClearInstanceInfoFailed: TCMariadbError {
        TCMariadbError(.failedOperation_ClearInstanceInfoFailed)
    }
    
    /// 复制账号权限出错。
    public static var failedOperation_CopyRightError: TCMariadbError {
        TCMariadbError(.failedOperation_CopyRightError)
    }
    
    /// 创建流程失败。
    public static var failedOperation_CreateFlowFailed: TCMariadbError {
        TCMariadbError(.failedOperation_CreateFlowFailed)
    }
    
    /// 创建订单失败。
    public static var failedOperation_CreateOrderFailed: TCMariadbError {
        TCMariadbError(.failedOperation_CreateOrderFailed)
    }
    
    /// 创建账号失败。
    public static var failedOperation_CreateUserFailed: TCMariadbError {
        TCMariadbError(.failedOperation_CreateUserFailed)
    }
    
    /// 删除账号失败。
    public static var failedOperation_DeleteUserFailed: TCMariadbError {
        TCMariadbError(.failedOperation_DeleteUserFailed)
    }
    
    /// 解绑安全组失败。
    public static var failedOperation_DisassociateSecurityGroupsFailed: TCMariadbError {
        TCMariadbError(.failedOperation_DisassociateSecurityGroupsFailed)
    }
    
    public static var failedOperation_GetSecurityGroupDetailFailed: TCMariadbError {
        TCMariadbError(.failedOperation_GetSecurityGroupDetailFailed)
    }
    
    /// 实例不可退费。
    public static var failedOperation_InstanceCanNotReturn: TCMariadbError {
        TCMariadbError(.failedOperation_InstanceCanNotReturn)
    }
    
    /// 实例退费失败。
    public static var failedOperation_InstanceReturnFailed: TCMariadbError {
        TCMariadbError(.failedOperation_InstanceReturnFailed)
    }
    
    /// 修改账号权限失败。
    public static var failedOperation_ModifyRightFailed: TCMariadbError {
        TCMariadbError(.failedOperation_ModifyRightFailed)
    }
    
    public static var failedOperation_OssIsolateInstanceFailed: TCMariadbError {
        TCMariadbError(.failedOperation_OssIsolateInstanceFailed)
    }
    
    /// 请求后端接口失败。
    public static var failedOperation_OssOperationFailed: TCMariadbError {
        TCMariadbError(.failedOperation_OssOperationFailed)
    }
    
    /// 支付订单失败。
    public static var failedOperation_PayFailed: TCMariadbError {
        TCMariadbError(.failedOperation_PayFailed)
    }
    
    /// 重置账号密码失败。
    public static var failedOperation_ResetPasswordFailed: TCMariadbError {
        TCMariadbError(.failedOperation_ResetPasswordFailed)
    }
    
    /// 更新安全组失败。
    public static var failedOperation_SGChangeVip: TCMariadbError {
        TCMariadbError(.failedOperation_SGChangeVip)
    }
    
    /// 设置规则失败。
    public static var failedOperation_SetRuleLocationFailed: TCMariadbError {
        TCMariadbError(.failedOperation_SetRuleLocationFailed)
    }
    
    public static var failedOperation_SetSvcLocationFailed: TCMariadbError {
        TCMariadbError(.failedOperation_SetSvcLocationFailed)
    }
    
    /// 标签键值校验或鉴权失败。
    public static var failedOperation_TagDryRunError: TCMariadbError {
        TCMariadbError(.failedOperation_TagDryRunError)
    }
    
    public static var failedOperation_TagQuotaExceedLimit: TCMariadbError {
        TCMariadbError(.failedOperation_TagQuotaExceedLimit)
    }
    
    /// 实例安全组信息更新失败。
    public static var failedOperation_UpdateInstanceInfoFailed: TCMariadbError {
        TCMariadbError(.failedOperation_UpdateInstanceInfoFailed)
    }
    
    public static var failedOperation_UserNotAuthed: TCMariadbError {
        TCMariadbError(.failedOperation_UserNotAuthed)
    }
    
    /// VIP不能与之前一样。
    public static var failedOperation_VipNotChange: TCMariadbError {
        TCMariadbError(.failedOperation_VipNotChange)
    }
    
    /// VPC添加服务失败。
    public static var failedOperation_VpcAddServiceFailed: TCMariadbError {
        TCMariadbError(.failedOperation_VpcAddServiceFailed)
    }
    
    /// VPC更新路由失败。
    public static var failedOperation_VpcUpdateRouteFailed: TCMariadbError {
        TCMariadbError(.failedOperation_VpcUpdateRouteFailed)
    }
    
    /// 外网状态异常。
    public static var failedOperation_WanStatusAbnormal: TCMariadbError {
        TCMariadbError(.failedOperation_WanStatusAbnormal)
    }
    
    /// 内部错误。
    public static var internalError: TCMariadbError {
        TCMariadbError(.internalError)
    }
    
    /// CAM鉴权请求失败。
    public static var internalError_CamAuthFailed: TCMariadbError {
        TCMariadbError(.internalError_CamAuthFailed)
    }
    
    /// 检测vip状态失败。
    public static var internalError_CheckVipStatusFailed: TCMariadbError {
        TCMariadbError(.internalError_CheckVipStatusFailed)
    }
    
    /// COS地址配置错误。
    public static var internalError_CosConfiguration: TCMariadbError {
        TCMariadbError(.internalError_CosConfiguration)
    }
    
    /// 备份文件签名失败。
    public static var internalError_CosSignUrl: TCMariadbError {
        TCMariadbError(.internalError_CosSignUrl)
    }
    
    /// 创建任务流程失败。
    public static var internalError_CreateFlowFailed: TCMariadbError {
        TCMariadbError(.internalError_CreateFlowFailed)
    }
    
    /// DB影响行数为0错误。
    public static var internalError_DBRowsAffectedError: TCMariadbError {
        TCMariadbError(.internalError_DBRowsAffectedError)
    }
    
    /// 查询数据库失败。
    public static var internalError_DbOperationFailed: TCMariadbError {
        TCMariadbError(.internalError_DbOperationFailed)
    }
    
    /// 查询独享集群信息失败。
    public static var internalError_FenceError: TCMariadbError {
        TCMariadbError(.internalError_FenceError)
    }
    
    /// 获取数据库实例参数失败。
    public static var internalError_GetDbConfigFailed: TCMariadbError {
        TCMariadbError(.internalError_GetDbConfigFailed)
    }
    
    /// 获取数据库列表失败。
    public static var internalError_GetDbListFailed: TCMariadbError {
        TCMariadbError(.internalError_GetDbListFailed)
    }
    
    /// 获取数据库对象失败。
    public static var internalError_GetDbObjectFailed: TCMariadbError {
        TCMariadbError(.internalError_GetDbObjectFailed)
    }
    
    /// 获取实例详情失败。
    public static var internalError_GetInstanceDetailFailed: TCMariadbError {
        TCMariadbError(.internalError_GetInstanceDetailFailed)
    }
    
    /// 获取后端实例信息失败。
    public static var internalError_GetInstanceInfoFailed: TCMariadbError {
        TCMariadbError(.internalError_GetInstanceInfoFailed)
    }
    
    /// 获取账号当前权限失败。
    public static var internalError_GetRightFailed: TCMariadbError {
        TCMariadbError(.internalError_GetRightFailed)
    }
    
    /// 拉圈安全组详情失败。
    public static var internalError_GetSecurityGroupDetailFailed: TCMariadbError {
        TCMariadbError(.internalError_GetSecurityGroupDetailFailed)
    }
    
    /// 查询错误日志失败。
    public static var internalError_GetSlowLogFailed: TCMariadbError {
        TCMariadbError(.internalError_GetSlowLogFailed)
    }
    
    /// 查询虚拟私有网络子网信息失败。
    public static var internalError_GetSubnetFailed: TCMariadbError {
        TCMariadbError(.internalError_GetSubnetFailed)
    }
    
    /// 获取表结构失败。
    public static var internalError_GetTableInfoFailed: TCMariadbError {
        TCMariadbError(.internalError_GetTableInfoFailed)
    }
    
    /// 获取账号列表失败。
    public static var internalError_GetUserListFailed: TCMariadbError {
        TCMariadbError(.internalError_GetUserListFailed)
    }
    
    public static var internalError_GetUserSGCountFailed: TCMariadbError {
        TCMariadbError(.internalError_GetUserSGCountFailed)
    }
    
    /// 获取用户安全组配额失败。
    public static var internalError_GetUsgQuotaError: TCMariadbError {
        TCMariadbError(.internalError_GetUsgQuotaError)
    }
    
    /// 查询虚拟私有网络信息失败。
    public static var internalError_GetVpcFailed: TCMariadbError {
        TCMariadbError(.internalError_GetVpcFailed)
    }
    
    /// 读取备份文件失败。
    public static var internalError_HDFSError: TCMariadbError {
        TCMariadbError(.internalError_HDFSError)
    }
    
    /// 内部配置缺失。
    public static var internalError_InnerConfigurationMissing: TCMariadbError {
        TCMariadbError(.internalError_InnerConfigurationMissing)
    }
    
    /// 内部系统错误。
    public static var internalError_InnerSystemError: TCMariadbError {
        TCMariadbError(.internalError_InnerSystemError)
    }
    
    /// 数据库插入失败。
    public static var internalError_InsertFail: TCMariadbError {
        TCMariadbError(.internalError_InsertFail)
    }
    
    /// 用户对当前实例无操作权限。
    public static var internalError_InstanceOperatePermissionError: TCMariadbError {
        TCMariadbError(.internalError_InstanceOperatePermissionError)
    }
    
    /// 单实例绑定安全组数量超限。
    public static var internalError_InstanceSGOverLimitError: TCMariadbError {
        TCMariadbError(.internalError_InstanceSGOverLimitError)
    }
    
    /// 查询实例时返回的资源数量与请求不匹配。
    public static var internalError_ListInstanceRespResourceCountNotMatchError: TCMariadbError {
        TCMariadbError(.internalError_ListInstanceRespResourceCountNotMatchError)
    }
    
    /// 查询实例错误。
    public static var internalError_ListInstancesError: TCMariadbError {
        TCMariadbError(.internalError_ListInstancesError)
    }
    
    /// 获取慢日志失败。
    public static var internalError_LogDBFailed: TCMariadbError {
        TCMariadbError(.internalError_LogDBFailed)
    }
    
    /// 操作数据库失败。
    public static var internalError_OperateDatabaseFailed: TCMariadbError {
        TCMariadbError(.internalError_OperateDatabaseFailed)
    }
    
    /// 操作读DB数据错误。
    public static var internalError_QueryDatabaseFailed: TCMariadbError {
        TCMariadbError(.internalError_QueryDatabaseFailed)
    }
    
    /// 查询订单信息失败。
    public static var internalError_QueryOrderFailed: TCMariadbError {
        TCMariadbError(.internalError_QueryOrderFailed)
    }
    
    /// 查询价格失败。
    public static var internalError_QueryPriceFailed: TCMariadbError {
        TCMariadbError(.internalError_QueryPriceFailed)
    }
    
    /// 操作读DB数据错误。
    public static var internalError_ReadDatabaseFailed: TCMariadbError {
        TCMariadbError(.internalError_ReadDatabaseFailed)
    }
    
    /// 回档时间错误。
    public static var internalError_RetreateTime: TCMariadbError {
        TCMariadbError(.internalError_RetreateTime)
    }
    
    /// 路由未发现。
    public static var internalError_RouteNotFound: TCMariadbError {
        TCMariadbError(.internalError_RouteNotFound)
    }
    
    /// 资源安全组策略下发错误。
    public static var internalError_SetSvcLocationFailed: TCMariadbError {
        TCMariadbError(.internalError_SetSvcLocationFailed)
    }
    
    /// 数据库更新失败。
    public static var internalError_UpdateDatabaseFailed: TCMariadbError {
        TCMariadbError(.internalError_UpdateDatabaseFailed)
    }
    
    /// VPC操作失败。
    public static var internalError_VpcOperationFailed: TCMariadbError {
        TCMariadbError(.internalError_VpcOperationFailed)
    }
    
    /// 外网操作失败。
    public static var internalError_WanServiceFailed: TCMariadbError {
        TCMariadbError(.internalError_WanServiceFailed)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCMariadbError {
        TCMariadbError(.invalidParameter)
    }
    
    /// 想要创建的账号已经存在。
    public static var invalidParameterValue_AccountAlreadyExists: TCMariadbError {
        TCMariadbError(.invalidParameterValue_AccountAlreadyExists)
    }
    
    /// 该实例不支持此同步模式。
    public static var invalidParameterValue_BadSyncMode: TCMariadbError {
        TCMariadbError(.invalidParameterValue_BadSyncMode)
    }
    
    /// 指定的权限无法赋予给该账号。
    public static var invalidParameterValue_BadUserRight: TCMariadbError {
        TCMariadbError(.invalidParameterValue_BadUserRight)
    }
    
    /// 账号类型不正确。
    public static var invalidParameterValue_BadUserType: TCMariadbError {
        TCMariadbError(.invalidParameterValue_BadUserType)
    }
    
    /// 商品数量超出限制。
    public static var invalidParameterValue_IllegalCount: TCMariadbError {
        TCMariadbError(.invalidParameterValue_IllegalCount)
    }
    
    /// 找不到数据库实例所属的独享集群。
    public static var invalidParameterValue_IllegalExclusterID: TCMariadbError {
        TCMariadbError(.invalidParameterValue_IllegalExclusterID)
    }
    
    /// 初始化数据库实例参数错误。
    public static var invalidParameterValue_IllegalInitParam: TCMariadbError {
        TCMariadbError(.invalidParameterValue_IllegalInitParam)
    }
    
    /// 非法实例ID。
    public static var invalidParameterValue_IllegalInstanceId: TCMariadbError {
        TCMariadbError(.invalidParameterValue_IllegalInstanceId)
    }
    
    /// 修改log保存天数时过小或过大。
    public static var invalidParameterValue_IllegalLogSaveDays: TCMariadbError {
        TCMariadbError(.invalidParameterValue_IllegalLogSaveDays)
    }
    
    /// 商品数量超出限制。
    public static var invalidParameterValue_IllegalQuantity: TCMariadbError {
        TCMariadbError(.invalidParameterValue_IllegalQuantity)
    }
    
    /// 权限参数不正确。
    public static var invalidParameterValue_IllegalRightParam: TCMariadbError {
        TCMariadbError(.invalidParameterValue_IllegalRightParam)
    }
    
    /// 未找到对应的可用区信息。
    public static var invalidParameterValue_IllegalZone: TCMariadbError {
        TCMariadbError(.invalidParameterValue_IllegalZone)
    }
    
    /// 非法的实例名称。
    public static var invalidParameterValue_InstanceNameIllegal: TCMariadbError {
        TCMariadbError(.invalidParameterValue_InstanceNameIllegal)
    }
    
    /// 参数验证错误。
    public static var invalidParameterValue_InvalidParameterValueError: TCMariadbError {
        TCMariadbError(.invalidParameterValue_InvalidParameterValueError)
    }
    
    /// 找不到数据库实例对应的规格信息。
    public static var invalidParameterValue_SpecIdIllegal: TCMariadbError {
        TCMariadbError(.invalidParameterValue_SpecIdIllegal)
    }
    
    /// 系统用户不允许操作。
    public static var invalidParameterValue_SuperUserForbidden: TCMariadbError {
        TCMariadbError(.invalidParameterValue_SuperUserForbidden)
    }
    
    public static var invalidParameterValue_SyncModeNotAllowed: TCMariadbError {
        TCMariadbError(.invalidParameterValue_SyncModeNotAllowed)
    }
    
    /// 接口没有找到。
    public static var invalidParameter_ActionNotFound: TCMariadbError {
        TCMariadbError(.invalidParameter_ActionNotFound)
    }
    
    /// 密码包含了非法字符。
    public static var invalidParameter_CharacterError: TCMariadbError {
        TCMariadbError(.invalidParameter_CharacterError)
    }
    
    /// 入参校验失败。
    public static var invalidParameter_CheckParamNotPass: TCMariadbError {
        TCMariadbError(.invalidParameter_CheckParamNotPass)
    }
    
    /// 未指定需要查询的订单ID。
    public static var invalidParameter_DealNameNotGiven: TCMariadbError {
        TCMariadbError(.invalidParameter_DealNameNotGiven)
    }
    
    /// 找不到指定的流程信息。
    public static var invalidParameter_FlowNotFound: TCMariadbError {
        TCMariadbError(.invalidParameter_FlowNotFound)
    }
    
    /// 参数合法性校验错误。
    public static var invalidParameter_GenericParameterError: TCMariadbError {
        TCMariadbError(.invalidParameter_GenericParameterError)
    }
    
    /// 非法参数。
    public static var invalidParameter_IllegalParameterError: TCMariadbError {
        TCMariadbError(.invalidParameter_IllegalParameterError)
    }
    
    /// 错误的时间参数。
    public static var invalidParameter_IllegalTime: TCMariadbError {
        TCMariadbError(.invalidParameter_IllegalTime)
    }
    
    /// 未找到请求的实例。
    public static var invalidParameter_InstanceNotFound: TCMariadbError {
        TCMariadbError(.invalidParameter_InstanceNotFound)
    }
    
    /// 不支持此计费类型调用当前接口。
    public static var invalidParameter_NotSupportedPayMode: TCMariadbError {
        TCMariadbError(.invalidParameter_NotSupportedPayMode)
    }
    
    /// 没有权限操作该接口或资源。
    public static var invalidParameter_PermissionDenied: TCMariadbError {
        TCMariadbError(.invalidParameter_PermissionDenied)
    }
    
    /// 安全组合法性校验不通过。
    public static var invalidParameter_SGCheckFail: TCMariadbError {
        TCMariadbError(.invalidParameter_SGCheckFail)
    }
    
    /// 实例分片不存在。
    public static var invalidParameter_ShardResourceIdNotFound: TCMariadbError {
        TCMariadbError(.invalidParameter_ShardResourceIdNotFound)
    }
    
    /// 找不到对应的售卖规格。
    public static var invalidParameter_SpecNotFound: TCMariadbError {
        TCMariadbError(.invalidParameter_SpecNotFound)
    }
    
    /// 找不到指定的虚拟私有网络子网。
    public static var invalidParameter_SubnetNotFound: TCMariadbError {
        TCMariadbError(.invalidParameter_SubnetNotFound)
    }
    
    /// snat子网不支持申请IP。
    public static var invalidParameter_SubnetUnavailable: TCMariadbError {
        TCMariadbError(.invalidParameter_SubnetUnavailable)
    }
    
    /// Vip不在子网内。
    public static var invalidParameter_VipNotInSubnet: TCMariadbError {
        TCMariadbError(.invalidParameter_VipNotInSubnet)
    }
    
    /// Vip被占用。
    public static var invalidParameter_VipUsed: TCMariadbError {
        TCMariadbError(.invalidParameter_VipUsed)
    }
    
    /// 找不到指定的虚拟私有网络。
    public static var invalidParameter_VpcNotFound: TCMariadbError {
        TCMariadbError(.invalidParameter_VpcNotFound)
    }
    
    /// Vport被占用。
    public static var invalidParameter_VportUsed: TCMariadbError {
        TCMariadbError(.invalidParameter_VportUsed)
    }
    
    /// 可用区信息错误。
    public static var invalidParameter_ZoneIdIllegal: TCMariadbError {
        TCMariadbError(.invalidParameter_ZoneIdIllegal)
    }
    
    /// 请求过于频繁。
    public static var limitExceeded_TooFrequentlyCalled: TCMariadbError {
        TCMariadbError(.limitExceeded_TooFrequentlyCalled)
    }
    
    /// 临时实例已经存在。
    public static var resourceInUse_TempInstanceExist: TCMariadbError {
        TCMariadbError(.resourceInUse_TempInstanceExist)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCMariadbError {
        TCMariadbError(.resourceInsufficient)
    }
    
    /// 指定的账号不存在。
    public static var resourceNotFound_AccountDoesNotExist: TCMariadbError {
        TCMariadbError(.resourceNotFound_AccountDoesNotExist)
    }
    
    /// 实例不存在。
    public static var resourceNotFound_InstanceNotFound: TCMariadbError {
        TCMariadbError(.resourceNotFound_InstanceNotFound)
    }
    
    /// 找不到指定的数据库实例。
    public static var resourceNotFound_NoInstanceFound: TCMariadbError {
        TCMariadbError(.resourceNotFound_NoInstanceFound)
    }
    
    /// 接入安全组产品配置不存在。
    public static var resourceNotFound_ProductConfigNotExistedError: TCMariadbError {
        TCMariadbError(.resourceNotFound_ProductConfigNotExistedError)
    }
    
    /// 同步任务已删除。
    public static var resourceNotFound_SyncTaskDeleted: TCMariadbError {
        TCMariadbError(.resourceNotFound_SyncTaskDeleted)
    }
    
    /// 实例状态错误，不能初始化。
    public static var resourceUnavailable_BadInstanceStatus: TCMariadbError {
        TCMariadbError(.resourceUnavailable_BadInstanceStatus)
    }
    
    /// COS API调用错误。
    public static var resourceUnavailable_CosApiFailed: TCMariadbError {
        TCMariadbError(.resourceUnavailable_CosApiFailed)
    }
    
    /// 独享集群状态不正常。
    public static var resourceUnavailable_ExclusterStatusAbnormal: TCMariadbError {
        TCMariadbError(.resourceUnavailable_ExclusterStatusAbnormal)
    }
    
    /// 数据库实例已被删除。
    public static var resourceUnavailable_InstanceAlreadyDeleted: TCMariadbError {
        TCMariadbError(.resourceUnavailable_InstanceAlreadyDeleted)
    }
    
    /// 数据库实例已经被锁定，当前无法操作。
    public static var resourceUnavailable_InstanceHasBeenLocked: TCMariadbError {
        TCMariadbError(.resourceUnavailable_InstanceHasBeenLocked)
    }
    
    /// 数据库实例状态不正确，当前无法操作。
    public static var resourceUnavailable_InstanceStatusAbnormal: TCMariadbError {
        TCMariadbError(.resourceUnavailable_InstanceStatusAbnormal)
    }
    
    public static var resourceUnavailable_SGCheckFail: TCMariadbError {
        TCMariadbError(.resourceUnavailable_SGCheckFail)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCMariadbError {
        TCMariadbError(.unauthorizedOperation)
    }
    
    /// 没有权限操作该接口或资源。
    public static var unauthorizedOperation_PermissionDenied: TCMariadbError {
        TCMariadbError(.unauthorizedOperation_PermissionDenied)
    }
    
    /// 不支持的无效操作。
    public static var unsupportedOperation_InvalidOperation: TCMariadbError {
        TCMariadbError(.unsupportedOperation_InvalidOperation)
    }
    
    /// Proxy软件版本太旧，请联系客服升级到新版本后再试。
    public static var unsupportedOperation_OldProxyVersion: TCMariadbError {
        TCMariadbError(.unsupportedOperation_OldProxyVersion)
    }
}

extension TCMariadbError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceInUse.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCMariadbError: Equatable {
    public static func == (lhs: TCMariadbError, rhs: TCMariadbError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMariadbError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCMariadbError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
