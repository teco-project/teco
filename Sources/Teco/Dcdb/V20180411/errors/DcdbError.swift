public struct TCDcdbError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
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
        case failedOperation_ModifyRightFailed = "FailedOperation.ModifyRightFailed"
        case failedOperation_MsgQueueOperationFailed = "FailedOperation.MsgQueueOperationFailed"
        case failedOperation_OssIsolateInstanceFailed = "FailedOperation.OssIsolateInstanceFailed"
        case failedOperation_OssOperationFailed = "FailedOperation.OssOperationFailed"
        case failedOperation_PayFailed = "FailedOperation.PayFailed"
        case failedOperation_ResetPasswordFailed = "FailedOperation.ResetPasswordFailed"
        case failedOperation_SGChangeVip = "FailedOperation.SGChangeVip"
        case failedOperation_SetRuleLocationFailed = "FailedOperation.SetRuleLocationFailed"
        case failedOperation_SetSvcLocationFailed = "FailedOperation.SetSvcLocationFailed"
        case failedOperation_TagDryRunError = "FailedOperation.TagDryRunError"
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
        case internalError_InnerSystemError = "InternalError.InnerSystemError"
        case internalError_InsertFail = "InternalError.InsertFail"
        case internalError_InstanceOperatePermissionError = "InternalError.InstanceOperatePermissionError"
        case internalError_InstanceSGOverLimitError = "InternalError.InstanceSGOverLimitError"
        case internalError_ListInstanceRespResourceCountNotMatchError = "InternalError.ListInstanceRespResourceCountNotMatchError"
        case internalError_ListInstancesError = "InternalError.ListInstancesError"
        case internalError_ListProjectFailed = "InternalError.ListProjectFailed"
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
        case invalidParameterValue_IllegalExclusterID = "InvalidParameterValue.IllegalExclusterID"
        case invalidParameterValue_IllegalInitParam = "InvalidParameterValue.IllegalInitParam"
        case invalidParameterValue_IllegalQuantity = "InvalidParameterValue.IllegalQuantity"
        case invalidParameterValue_IllegalRightParam = "InvalidParameterValue.IllegalRightParam"
        case invalidParameterValue_IllegalZone = "InvalidParameterValue.IllegalZone"
        case invalidParameterValue_InvalidParameterValueError = "InvalidParameterValue.InvalidParameterValueError"
        case invalidParameterValue_ShardNotExist = "InvalidParameterValue.ShardNotExist"
        case invalidParameterValue_SpecIdIllegal = "InvalidParameterValue.SpecIdIllegal"
        case invalidParameterValue_SuperUserForbidden = "InvalidParameterValue.SuperUserForbidden"
        case invalidParameterValue_SyncModeNotAllowed = "InvalidParameterValue.SyncModeNotAllowed"
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
        case invalidParameter_SpecNotFound = "InvalidParameter.SpecNotFound"
        case invalidParameter_SubnetNotFound = "InvalidParameter.SubnetNotFound"
        case invalidParameter_SubnetUnavailable = "InvalidParameter.SubnetUnavailable"
        case invalidParameter_VipNotInSubnet = "InvalidParameter.VipNotInSubnet"
        case invalidParameter_VipUsed = "InvalidParameter.VipUsed"
        case invalidParameter_VpcNotFound = "InvalidParameter.VpcNotFound"
        case invalidParameter_VportUsed = "InvalidParameter.VportUsed"
        case invalidParameter_ZoneIdIllegal = "InvalidParameter.ZoneIdIllegal"
        case limitExceeded_TooFrequentlyCalled = "LimitExceeded.TooFrequentlyCalled"
        case resourceNotFound_AccountDoesNotExist = "ResourceNotFound.AccountDoesNotExist"
        case resourceNotFound_InstanceNotFound = "ResourceNotFound.InstanceNotFound"
        case resourceNotFound_NoInstanceFound = "ResourceNotFound.NoInstanceFound"
        case resourceNotFound_ProductConfigNotExistedError = "ResourceNotFound.ProductConfigNotExistedError"
        case resourceUnavailable_BadInstanceStatus = "ResourceUnavailable.BadInstanceStatus"
        case resourceUnavailable_CosApiFailed = "ResourceUnavailable.CosApiFailed"
        case resourceUnavailable_InstanceAlreadyDeleted = "ResourceUnavailable.InstanceAlreadyDeleted"
        case resourceUnavailable_InstanceHasBeenLocked = "ResourceUnavailable.InstanceHasBeenLocked"
        case resourceUnavailable_InstanceStatusAbnormal = "ResourceUnavailable.InstanceStatusAbnormal"
        case resourceUnavailable_SGCheckFail = "ResourceUnavailable.SGCheckFail"
        case unauthorizedOperation_PermissionDenied = "UnauthorizedOperation.PermissionDenied"
        case unsupportedOperation_InvalidOperation = "UnsupportedOperation.InvalidOperation"
        case unsupportedOperation_OldProxyVersion = "UnsupportedOperation.OldProxyVersion"
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
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
    public static var authFailure: TCDcdbError {
        TCDcdbError(.authFailure)
    }
    
    /// 实例安全组信息添加失败。
    public static var failedOperation_AddInstanceInfoFailed: TCDcdbError {
        TCDcdbError(.failedOperation_AddInstanceInfoFailed)
    }
    
    /// 申请VIP失败。
    public static var failedOperation_ApplyVipFailed: TCDcdbError {
        TCDcdbError(.failedOperation_ApplyVipFailed)
    }
    
    /// 绑定安全组失败。
    public static var failedOperation_AssociateSecurityGroupsFailed: TCDcdbError {
        TCDcdbError(.failedOperation_AssociateSecurityGroupsFailed)
    }
    
    /// 鉴权失败。
    public static var failedOperation_AuthNoStrategy: TCDcdbError {
        TCDcdbError(.failedOperation_AuthNoStrategy)
    }
    
    /// 实例安全组信息清除失败。
    public static var failedOperation_ClearInstanceInfoFailed: TCDcdbError {
        TCDcdbError(.failedOperation_ClearInstanceInfoFailed)
    }
    
    /// 复制账号权限出错。
    public static var failedOperation_CopyRightError: TCDcdbError {
        TCDcdbError(.failedOperation_CopyRightError)
    }
    
    /// 创建流程失败。
    public static var failedOperation_CreateFlowFailed: TCDcdbError {
        TCDcdbError(.failedOperation_CreateFlowFailed)
    }
    
    /// 创建订单失败。
    public static var failedOperation_CreateOrderFailed: TCDcdbError {
        TCDcdbError(.failedOperation_CreateOrderFailed)
    }
    
    /// 创建账号失败。
    public static var failedOperation_CreateUserFailed: TCDcdbError {
        TCDcdbError(.failedOperation_CreateUserFailed)
    }
    
    /// 删除账号失败。
    public static var failedOperation_DeleteUserFailed: TCDcdbError {
        TCDcdbError(.failedOperation_DeleteUserFailed)
    }
    
    /// 解绑安全组失败。
    public static var failedOperation_DisassociateSecurityGroupsFailed: TCDcdbError {
        TCDcdbError(.failedOperation_DisassociateSecurityGroupsFailed)
    }
    
    public static var failedOperation_GetSecurityGroupDetailFailed: TCDcdbError {
        TCDcdbError(.failedOperation_GetSecurityGroupDetailFailed)
    }
    
    /// 修改账号权限失败。
    public static var failedOperation_ModifyRightFailed: TCDcdbError {
        TCDcdbError(.failedOperation_ModifyRightFailed)
    }
    
    /// 消息队列操作失败。
    public static var failedOperation_MsgQueueOperationFailed: TCDcdbError {
        TCDcdbError(.failedOperation_MsgQueueOperationFailed)
    }
    
    public static var failedOperation_OssIsolateInstanceFailed: TCDcdbError {
        TCDcdbError(.failedOperation_OssIsolateInstanceFailed)
    }
    
    /// 请求后端接口失败。
    public static var failedOperation_OssOperationFailed: TCDcdbError {
        TCDcdbError(.failedOperation_OssOperationFailed)
    }
    
    /// 支付订单失败。
    public static var failedOperation_PayFailed: TCDcdbError {
        TCDcdbError(.failedOperation_PayFailed)
    }
    
    /// 重置账号密码失败。
    public static var failedOperation_ResetPasswordFailed: TCDcdbError {
        TCDcdbError(.failedOperation_ResetPasswordFailed)
    }
    
    /// 更新安全组失败。
    public static var failedOperation_SGChangeVip: TCDcdbError {
        TCDcdbError(.failedOperation_SGChangeVip)
    }
    
    /// 设置规则失败。
    public static var failedOperation_SetRuleLocationFailed: TCDcdbError {
        TCDcdbError(.failedOperation_SetRuleLocationFailed)
    }
    
    public static var failedOperation_SetSvcLocationFailed: TCDcdbError {
        TCDcdbError(.failedOperation_SetSvcLocationFailed)
    }
    
    /// 标签键值校验或鉴权失败。
    public static var failedOperation_TagDryRunError: TCDcdbError {
        TCDcdbError(.failedOperation_TagDryRunError)
    }
    
    /// 实例安全组信息更新失败。
    public static var failedOperation_UpdateInstanceInfoFailed: TCDcdbError {
        TCDcdbError(.failedOperation_UpdateInstanceInfoFailed)
    }
    
    /// 用户未实名认证。
    public static var failedOperation_UserNotAuthed: TCDcdbError {
        TCDcdbError(.failedOperation_UserNotAuthed)
    }
    
    /// VIP不能与之前一样。
    public static var failedOperation_VipNotChange: TCDcdbError {
        TCDcdbError(.failedOperation_VipNotChange)
    }
    
    /// VPC添加服务失败。
    public static var failedOperation_VpcAddServiceFailed: TCDcdbError {
        TCDcdbError(.failedOperation_VpcAddServiceFailed)
    }
    
    /// VPC更新路由失败。
    public static var failedOperation_VpcUpdateRouteFailed: TCDcdbError {
        TCDcdbError(.failedOperation_VpcUpdateRouteFailed)
    }
    
    /// 外网状态异常。
    public static var failedOperation_WanStatusAbnormal: TCDcdbError {
        TCDcdbError(.failedOperation_WanStatusAbnormal)
    }
    
    /// 内部错误。
    public static var internalError: TCDcdbError {
        TCDcdbError(.internalError)
    }
    
    /// CAM鉴权请求失败。
    public static var internalError_CamAuthFailed: TCDcdbError {
        TCDcdbError(.internalError_CamAuthFailed)
    }
    
    /// 校验VIP状态失败。
    public static var internalError_CheckVipStatusFailed: TCDcdbError {
        TCDcdbError(.internalError_CheckVipStatusFailed)
    }
    
    /// COS地址配置错误。
    public static var internalError_CosConfiguration: TCDcdbError {
        TCDcdbError(.internalError_CosConfiguration)
    }
    
    /// 备份文件签名失败。
    public static var internalError_CosSignUrl: TCDcdbError {
        TCDcdbError(.internalError_CosSignUrl)
    }
    
    public static var internalError_CreateFlowFailed: TCDcdbError {
        TCDcdbError(.internalError_CreateFlowFailed)
    }
    
    /// DB影响行数为0错误。
    public static var internalError_DBRowsAffectedError: TCDcdbError {
        TCDcdbError(.internalError_DBRowsAffectedError)
    }
    
    /// 查询数据库失败。
    public static var internalError_DbOperationFailed: TCDcdbError {
        TCDcdbError(.internalError_DbOperationFailed)
    }
    
    /// 查询独享集群信息失败。
    public static var internalError_FenceError: TCDcdbError {
        TCDcdbError(.internalError_FenceError)
    }
    
    /// 获取数据库实例参数失败。
    public static var internalError_GetDbConfigFailed: TCDcdbError {
        TCDcdbError(.internalError_GetDbConfigFailed)
    }
    
    /// 获取数据库列表失败。
    public static var internalError_GetDbListFailed: TCDcdbError {
        TCDcdbError(.internalError_GetDbListFailed)
    }
    
    /// 获取数据库对象失败。
    public static var internalError_GetDbObjectFailed: TCDcdbError {
        TCDcdbError(.internalError_GetDbObjectFailed)
    }
    
    /// 获取实例详情失败。
    public static var internalError_GetInstanceDetailFailed: TCDcdbError {
        TCDcdbError(.internalError_GetInstanceDetailFailed)
    }
    
    /// 获取实例信息失败。
    public static var internalError_GetInstanceInfoFailed: TCDcdbError {
        TCDcdbError(.internalError_GetInstanceInfoFailed)
    }
    
    /// 获取账号当前权限失败。
    public static var internalError_GetRightFailed: TCDcdbError {
        TCDcdbError(.internalError_GetRightFailed)
    }
    
    /// 拉圈安全组详情失败。
    public static var internalError_GetSecurityGroupDetailFailed: TCDcdbError {
        TCDcdbError(.internalError_GetSecurityGroupDetailFailed)
    }
    
    /// 查询慢日志DB失败。
    public static var internalError_GetSlowLogFailed: TCDcdbError {
        TCDcdbError(.internalError_GetSlowLogFailed)
    }
    
    /// 查询虚拟私有网络子网信息失败。
    public static var internalError_GetSubnetFailed: TCDcdbError {
        TCDcdbError(.internalError_GetSubnetFailed)
    }
    
    /// 获取表信息失败。
    public static var internalError_GetTableInfoFailed: TCDcdbError {
        TCDcdbError(.internalError_GetTableInfoFailed)
    }
    
    /// 获取账号列表失败。
    public static var internalError_GetUserListFailed: TCDcdbError {
        TCDcdbError(.internalError_GetUserListFailed)
    }
    
    public static var internalError_GetUserSGCountFailed: TCDcdbError {
        TCDcdbError(.internalError_GetUserSGCountFailed)
    }
    
    /// 获取用户安全组配额失败。
    public static var internalError_GetUsgQuotaError: TCDcdbError {
        TCDcdbError(.internalError_GetUsgQuotaError)
    }
    
    /// 查询虚拟私有网络信息失败。
    public static var internalError_GetVpcFailed: TCDcdbError {
        TCDcdbError(.internalError_GetVpcFailed)
    }
    
    /// 内部系统错误。
    public static var internalError_InnerSystemError: TCDcdbError {
        TCDcdbError(.internalError_InnerSystemError)
    }
    
    /// 数据库插入失败。
    public static var internalError_InsertFail: TCDcdbError {
        TCDcdbError(.internalError_InsertFail)
    }
    
    /// 用户对当前实例无操作权限。
    public static var internalError_InstanceOperatePermissionError: TCDcdbError {
        TCDcdbError(.internalError_InstanceOperatePermissionError)
    }
    
    /// 单实例绑定安全组数量超限。
    public static var internalError_InstanceSGOverLimitError: TCDcdbError {
        TCDcdbError(.internalError_InstanceSGOverLimitError)
    }
    
    /// 查询实例时返回的资源数量与请求不匹配。
    public static var internalError_ListInstanceRespResourceCountNotMatchError: TCDcdbError {
        TCDcdbError(.internalError_ListInstanceRespResourceCountNotMatchError)
    }
    
    /// 查询实例错误。
    public static var internalError_ListInstancesError: TCDcdbError {
        TCDcdbError(.internalError_ListInstancesError)
    }
    
    /// 拉取项目列表失败。
    public static var internalError_ListProjectFailed: TCDcdbError {
        TCDcdbError(.internalError_ListProjectFailed)
    }
    
    /// 数据库操作失败。
    public static var internalError_OperateDatabaseFailed: TCDcdbError {
        TCDcdbError(.internalError_OperateDatabaseFailed)
    }
    
    /// 操作读DB数据错误。
    public static var internalError_QueryDatabaseFailed: TCDcdbError {
        TCDcdbError(.internalError_QueryDatabaseFailed)
    }
    
    /// 查询订单信息失败。
    public static var internalError_QueryOrderFailed: TCDcdbError {
        TCDcdbError(.internalError_QueryOrderFailed)
    }
    
    /// 查询价格失败。
    public static var internalError_QueryPriceFailed: TCDcdbError {
        TCDcdbError(.internalError_QueryPriceFailed)
    }
    
    /// 操作读DB数据错误。
    public static var internalError_ReadDatabaseFailed: TCDcdbError {
        TCDcdbError(.internalError_ReadDatabaseFailed)
    }
    
    /// 回档的时间不合法。
    public static var internalError_RetreateTime: TCDcdbError {
        TCDcdbError(.internalError_RetreateTime)
    }
    
    /// 路由未发现。
    public static var internalError_RouteNotFound: TCDcdbError {
        TCDcdbError(.internalError_RouteNotFound)
    }
    
    /// 资源安全组策略下发错误。
    public static var internalError_SetSvcLocationFailed: TCDcdbError {
        TCDcdbError(.internalError_SetSvcLocationFailed)
    }
    
    /// 数据库更新失败。
    public static var internalError_UpdateDatabaseFailed: TCDcdbError {
        TCDcdbError(.internalError_UpdateDatabaseFailed)
    }
    
    /// VPC操作失败。
    public static var internalError_VpcOperationFailed: TCDcdbError {
        TCDcdbError(.internalError_VpcOperationFailed)
    }
    
    /// 外网操作失败。
    public static var internalError_WanServiceFailed: TCDcdbError {
        TCDcdbError(.internalError_WanServiceFailed)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCDcdbError {
        TCDcdbError(.invalidParameter)
    }
    
    /// 想要创建的账号已经存在。
    public static var invalidParameterValue_AccountAlreadyExists: TCDcdbError {
        TCDcdbError(.invalidParameterValue_AccountAlreadyExists)
    }
    
    /// 该实例不支持此同步模式。
    public static var invalidParameterValue_BadSyncMode: TCDcdbError {
        TCDcdbError(.invalidParameterValue_BadSyncMode)
    }
    
    /// 指定的权限无法赋予给该账号。
    public static var invalidParameterValue_BadUserRight: TCDcdbError {
        TCDcdbError(.invalidParameterValue_BadUserRight)
    }
    
    /// 账号类型不正确。
    public static var invalidParameterValue_BadUserType: TCDcdbError {
        TCDcdbError(.invalidParameterValue_BadUserType)
    }
    
    /// 找不到数据库实例所属的独享集群。
    public static var invalidParameterValue_IllegalExclusterID: TCDcdbError {
        TCDcdbError(.invalidParameterValue_IllegalExclusterID)
    }
    
    /// 初始化数据库实例参数错误。
    public static var invalidParameterValue_IllegalInitParam: TCDcdbError {
        TCDcdbError(.invalidParameterValue_IllegalInitParam)
    }
    
    /// 商品数量超出限制。
    public static var invalidParameterValue_IllegalQuantity: TCDcdbError {
        TCDcdbError(.invalidParameterValue_IllegalQuantity)
    }
    
    /// 权限参数不正确。
    public static var invalidParameterValue_IllegalRightParam: TCDcdbError {
        TCDcdbError(.invalidParameterValue_IllegalRightParam)
    }
    
    /// 找不到指定的可用区。
    public static var invalidParameterValue_IllegalZone: TCDcdbError {
        TCDcdbError(.invalidParameterValue_IllegalZone)
    }
    
    public static var invalidParameterValue_InvalidParameterValueError: TCDcdbError {
        TCDcdbError(.invalidParameterValue_InvalidParameterValueError)
    }
    
    /// 分片不存在。
    public static var invalidParameterValue_ShardNotExist: TCDcdbError {
        TCDcdbError(.invalidParameterValue_ShardNotExist)
    }
    
    /// 找不到数据库实例对应的规格信息。
    public static var invalidParameterValue_SpecIdIllegal: TCDcdbError {
        TCDcdbError(.invalidParameterValue_SpecIdIllegal)
    }
    
    /// 系统用户不允许操作。
    public static var invalidParameterValue_SuperUserForbidden: TCDcdbError {
        TCDcdbError(.invalidParameterValue_SuperUserForbidden)
    }
    
    public static var invalidParameterValue_SyncModeNotAllowed: TCDcdbError {
        TCDcdbError(.invalidParameterValue_SyncModeNotAllowed)
    }
    
    /// 密码包含了非法字符。
    public static var invalidParameter_CharacterError: TCDcdbError {
        TCDcdbError(.invalidParameter_CharacterError)
    }
    
    /// 入参校验失败。
    public static var invalidParameter_CheckParamNotPass: TCDcdbError {
        TCDcdbError(.invalidParameter_CheckParamNotPass)
    }
    
    /// 未指定需要查询的订单ID。
    public static var invalidParameter_DealNameNotGiven: TCDcdbError {
        TCDcdbError(.invalidParameter_DealNameNotGiven)
    }
    
    /// 找不到指定的流程信息。
    public static var invalidParameter_FlowNotFound: TCDcdbError {
        TCDcdbError(.invalidParameter_FlowNotFound)
    }
    
    /// 参数合法性校验错误。
    public static var invalidParameter_GenericParameterError: TCDcdbError {
        TCDcdbError(.invalidParameter_GenericParameterError)
    }
    
    /// 非法参数。
    public static var invalidParameter_IllegalParameterError: TCDcdbError {
        TCDcdbError(.invalidParameter_IllegalParameterError)
    }
    
    /// 错误的时间参数。
    public static var invalidParameter_IllegalTime: TCDcdbError {
        TCDcdbError(.invalidParameter_IllegalTime)
    }
    
    /// 未找到请求的实例。
    public static var invalidParameter_InstanceNotFound: TCDcdbError {
        TCDcdbError(.invalidParameter_InstanceNotFound)
    }
    
    /// 该接口不支持此付费类型的实例。
    public static var invalidParameter_NotSupportedPayMode: TCDcdbError {
        TCDcdbError(.invalidParameter_NotSupportedPayMode)
    }
    
    /// 没有权限操作该接口或资源。
    public static var invalidParameter_PermissionDenied: TCDcdbError {
        TCDcdbError(.invalidParameter_PermissionDenied)
    }
    
    /// 安全组合法性校验不通过。
    public static var invalidParameter_SGCheckFail: TCDcdbError {
        TCDcdbError(.invalidParameter_SGCheckFail)
    }
    
    /// 找不到对应的售卖规格。
    public static var invalidParameter_SpecNotFound: TCDcdbError {
        TCDcdbError(.invalidParameter_SpecNotFound)
    }
    
    /// 找不到指定的虚拟私有网络子网。
    public static var invalidParameter_SubnetNotFound: TCDcdbError {
        TCDcdbError(.invalidParameter_SubnetNotFound)
    }
    
    /// snat子网不支持申请IP。
    public static var invalidParameter_SubnetUnavailable: TCDcdbError {
        TCDcdbError(.invalidParameter_SubnetUnavailable)
    }
    
    /// Vip不在子网内。
    public static var invalidParameter_VipNotInSubnet: TCDcdbError {
        TCDcdbError(.invalidParameter_VipNotInSubnet)
    }
    
    /// Vip被占用。
    public static var invalidParameter_VipUsed: TCDcdbError {
        TCDcdbError(.invalidParameter_VipUsed)
    }
    
    /// 找不到指定的虚拟私有网络。
    public static var invalidParameter_VpcNotFound: TCDcdbError {
        TCDcdbError(.invalidParameter_VpcNotFound)
    }
    
    /// Vport被占用。
    public static var invalidParameter_VportUsed: TCDcdbError {
        TCDcdbError(.invalidParameter_VportUsed)
    }
    
    /// 可用区信息错误。
    public static var invalidParameter_ZoneIdIllegal: TCDcdbError {
        TCDcdbError(.invalidParameter_ZoneIdIllegal)
    }
    
    /// 请求过于频繁。
    public static var limitExceeded_TooFrequentlyCalled: TCDcdbError {
        TCDcdbError(.limitExceeded_TooFrequentlyCalled)
    }
    
    /// 指定的账号不存在。
    public static var resourceNotFound_AccountDoesNotExist: TCDcdbError {
        TCDcdbError(.resourceNotFound_AccountDoesNotExist)
    }
    
    /// 实例不存在。
    public static var resourceNotFound_InstanceNotFound: TCDcdbError {
        TCDcdbError(.resourceNotFound_InstanceNotFound)
    }
    
    /// 找不到指定的数据库实例。
    public static var resourceNotFound_NoInstanceFound: TCDcdbError {
        TCDcdbError(.resourceNotFound_NoInstanceFound)
    }
    
    /// 接入安全组产品配置不存在。
    public static var resourceNotFound_ProductConfigNotExistedError: TCDcdbError {
        TCDcdbError(.resourceNotFound_ProductConfigNotExistedError)
    }
    
    /// 实例状态错误，不能初始化。
    public static var resourceUnavailable_BadInstanceStatus: TCDcdbError {
        TCDcdbError(.resourceUnavailable_BadInstanceStatus)
    }
    
    /// COS API调用错误。
    public static var resourceUnavailable_CosApiFailed: TCDcdbError {
        TCDcdbError(.resourceUnavailable_CosApiFailed)
    }
    
    /// 数据库实例已被删除。
    public static var resourceUnavailable_InstanceAlreadyDeleted: TCDcdbError {
        TCDcdbError(.resourceUnavailable_InstanceAlreadyDeleted)
    }
    
    /// 数据库实例已经被锁定，当前无法操作。
    public static var resourceUnavailable_InstanceHasBeenLocked: TCDcdbError {
        TCDcdbError(.resourceUnavailable_InstanceHasBeenLocked)
    }
    
    /// 数据库实例状态不正确，当前无法操作。
    public static var resourceUnavailable_InstanceStatusAbnormal: TCDcdbError {
        TCDcdbError(.resourceUnavailable_InstanceStatusAbnormal)
    }
    
    public static var resourceUnavailable_SGCheckFail: TCDcdbError {
        TCDcdbError(.resourceUnavailable_SGCheckFail)
    }
    
    /// 没有权限操作该接口或资源。
    public static var unauthorizedOperation_PermissionDenied: TCDcdbError {
        TCDcdbError(.unauthorizedOperation_PermissionDenied)
    }
    
    /// 不支持的无效操作。
    public static var unsupportedOperation_InvalidOperation: TCDcdbError {
        TCDcdbError(.unsupportedOperation_InvalidOperation)
    }
    
    /// Proxy软件版本太旧，请联系客服升级到新版本后再试。
    public static var unsupportedOperation_OldProxyVersion: TCDcdbError {
        TCDcdbError(.unsupportedOperation_OldProxyVersion)
    }
}

extension TCDcdbError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCDcdbError: Equatable {
    public static func == (lhs: TCDcdbError, rhs: TCDcdbError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCDcdbError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}