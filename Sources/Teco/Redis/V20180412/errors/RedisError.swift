public struct TCRedisError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_InvalidAuthorization = "AuthFailure.InvalidAuthorization"
        case failedOperation_AddInstanceInfoFailed = "FailedOperation.AddInstanceInfoFailed"
        case failedOperation_AssociateSecurityGroupsFailed = "FailedOperation.AssociateSecurityGroupsFailed"
        case failedOperation_ClearInstanceInfoFailed = "FailedOperation.ClearInstanceInfoFailed"
        case failedOperation_CommitFlowError = "FailedOperation.CommitFlowError"
        case failedOperation_DisassociateSecurityGroupsFailed = "FailedOperation.DisassociateSecurityGroupsFailed"
        case failedOperation_DtsStatusAbnormal = "FailedOperation.DtsStatusAbnormal"
        case failedOperation_FlowNotExists = "FailedOperation.FlowNotExists"
        case failedOperation_GetSecurityGroupDetailFailed = "FailedOperation.GetSecurityGroupDetailFailed"
        case failedOperation_PayFailed = "FailedOperation.PayFailed"
        case failedOperation_RedoFlowFailed = "FailedOperation.RedoFlowFailed"
        case failedOperation_SetRuleLocationFailed = "FailedOperation.SetRuleLocationFailed"
        case failedOperation_SystemError = "FailedOperation.SystemError"
        case failedOperation_UnSupportError = "FailedOperation.UnSupportError"
        case failedOperation_Unknown = "FailedOperation.Unknown"
        case failedOperation_UpdateInstanceInfoFailed = "FailedOperation.UpdateInstanceInfoFailed"
        case failedOperation_UpdateSecurityGroupsFailed = "FailedOperation.UpdateSecurityGroupsFailed"
        case internalError = "InternalError"
        case internalError_CamAuthOssResponseReturnCodeError = "InternalError.CamAuthOssResponseReturnCodeError"
        case internalError_DbOperationFailed = "InternalError.DbOperationFailed"
        case internalError_ExecHttpRequestError = "InternalError.ExecHttpRequestError"
        case internalError_InstanceOperatePermissionError = "InternalError.InstanceOperatePermissionError"
        case internalError_InternalError = "InternalError.InternalError"
        case internalError_ListInstancesError = "InternalError.ListInstancesError"
        case internalError_NetWorkErr = "InternalError.NetWorkErr"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_BackupNotExists = "InvalidParameterValue.BackupNotExists"
        case invalidParameterValue_BaseNetWorkAccessDeny = "InvalidParameterValue.BaseNetWorkAccessDeny"
        case invalidParameterValue_CheckNotPass = "InvalidParameterValue.CheckNotPass"
        case invalidParameterValue_InstanceNameRuleError = "InvalidParameterValue.InstanceNameRuleError"
        case invalidParameterValue_InvalidInstanceTypeId = "InvalidParameterValue.InvalidInstanceTypeId"
        case invalidParameterValue_InvalidSubnetId = "InvalidParameterValue.InvalidSubnetId"
        case invalidParameterValue_MemSizeNotInRange = "InvalidParameterValue.MemSizeNotInRange"
        case invalidParameterValue_NotRepeatBind = "InvalidParameterValue.NotRepeatBind"
        case invalidParameterValue_PasswordEmpty = "InvalidParameterValue.PasswordEmpty"
        case invalidParameterValue_PasswordError = "InvalidParameterValue.PasswordError"
        case invalidParameterValue_PasswordFreeDenied = "InvalidParameterValue.PasswordFreeDenied"
        case invalidParameterValue_PasswordRuleError = "InvalidParameterValue.PasswordRuleError"
        case invalidParameterValue_ReduceCapacityNotAllowed = "InvalidParameterValue.ReduceCapacityNotAllowed"
        case invalidParameterValue_ReplicationGroupNotExists = "InvalidParameterValue.ReplicationGroupNotExists"
        case invalidParameterValue_SecurityGroupIdsNotExists = "InvalidParameterValue.SecurityGroupIdsNotExists"
        case invalidParameterValue_SpecNotExist = "InvalidParameterValue.SpecNotExist"
        case invalidParameterValue_UnSupportedType = "InvalidParameterValue.UnSupportedType"
        case invalidParameterValue_UnVpcIdNotExists = "InvalidParameterValue.UnVpcIdNotExists"
        case invalidParameterValue_WeekDaysIsInvalid = "InvalidParameterValue.WeekDaysIsInvalid"
        case invalidParameter_ActionNotFound = "InvalidParameter.ActionNotFound"
        case invalidParameter_EmptyParam = "InvalidParameter.EmptyParam"
        case invalidParameter_IllegalParameterError = "InvalidParameter.IllegalParameterError"
        case invalidParameter_InstanceSGOverLimitError = "InvalidParameter.InstanceSGOverLimitError"
        case invalidParameter_InvalidParameter = "InvalidParameter.InvalidParameter"
        case invalidParameter_NotSupported = "InvalidParameter.NotSupported"
        case invalidParameter_OnlyVPCOnSpecZoneId = "InvalidParameter.OnlyVPCOnSpecZoneId"
        case invalidParameter_Period = "InvalidParameter.Period"
        case invalidParameter_PermissionDenied = "InvalidParameter.PermissionDenied"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_ExceedUpperLimit = "LimitExceeded.ExceedUpperLimit"
        case limitExceeded_InstanceNotEmpty = "LimitExceeded.InstanceNotEmpty"
        case limitExceeded_InvalidMemSize = "LimitExceeded.InvalidMemSize"
        case limitExceeded_InvalidParameterGoodsNumNotInRange = "LimitExceeded.InvalidParameterGoodsNumNotInRange"
        case limitExceeded_MemSizeNotInRange = "LimitExceeded.MemSizeNotInRange"
        case limitExceeded_PeriodExceedMaxLimit = "LimitExceeded.PeriodExceedMaxLimit"
        case limitExceeded_PeriodLessThanMinLimit = "LimitExceeded.PeriodLessThanMinLimit"
        case limitExceeded_ReplicationGroupLocked = "LimitExceeded.ReplicationGroupLocked"
        case resourceInUse_InstanceBeenLocked = "ResourceInUse.InstanceBeenLocked"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_AccountDoesNotExists = "ResourceNotFound.AccountDoesNotExists"
        case resourceNotFound_InstanceNotExists = "ResourceNotFound.InstanceNotExists"
        case resourceNotFound_InstanceNotFound = "ResourceNotFound.InstanceNotFound"
        case resourceUnavailable_AccountBalanceNotEnough = "ResourceUnavailable.AccountBalanceNotEnough"
        case resourceUnavailable_BackupLockedError = "ResourceUnavailable.BackupLockedError"
        case resourceUnavailable_BackupStatusAbnormal = "ResourceUnavailable.BackupStatusAbnormal"
        case resourceUnavailable_BackupStatusInvalid = "ResourceUnavailable.BackupStatusInvalid"
        case resourceUnavailable_CallOssError = "ResourceUnavailable.CallOssError"
        case resourceUnavailable_GetSecurityError = "ResourceUnavailable.GetSecurityError"
        case resourceUnavailable_InstanceConfError = "ResourceUnavailable.InstanceConfError"
        case resourceUnavailable_InstanceDeleted = "ResourceUnavailable.InstanceDeleted"
        case resourceUnavailable_InstanceIsolated = "ResourceUnavailable.InstanceIsolated"
        case resourceUnavailable_InstanceLockedError = "ResourceUnavailable.InstanceLockedError"
        case resourceUnavailable_InstanceNoDeal = "ResourceUnavailable.InstanceNoDeal"
        case resourceUnavailable_InstanceNotSupportOperation = "ResourceUnavailable.InstanceNotSupportOperation"
        case resourceUnavailable_InstanceStateError = "ResourceUnavailable.InstanceStateError"
        case resourceUnavailable_InstanceStatusAbnormal = "ResourceUnavailable.InstanceStatusAbnormal"
        case resourceUnavailable_InstanceStatusError = "ResourceUnavailable.InstanceStatusError"
        case resourceUnavailable_InstanceUnLockedError = "ResourceUnavailable.InstanceUnLockedError"
        case resourceUnavailable_NoEnoughVipInVPC = "ResourceUnavailable.NoEnoughVipInVPC"
        case resourceUnavailable_NoRedisService = "ResourceUnavailable.NoRedisService"
        case resourceUnavailable_NoTypeIdRedisService = "ResourceUnavailable.NoTypeIdRedisService"
        case resourceUnavailable_SaleOut = "ResourceUnavailable.SaleOut"
        case resourceUnavailable_SecurityGroupNotSupported = "ResourceUnavailable.SecurityGroupNotSupported"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_NoCAMAuthed = "UnauthorizedOperation.NoCAMAuthed"
        case unauthorizedOperation_UserNotInWhiteList = "UnauthorizedOperation.UserNotInWhiteList"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_ClusterInstanceAccessedDeny = "UnsupportedOperation.ClusterInstanceAccessedDeny"
        case unsupportedOperation_Inspection = "UnsupportedOperation.Inspection"
        case unsupportedOperation_InstanceNotOperation = "UnsupportedOperation.InstanceNotOperation"
        case unsupportedOperation_IsAutoRenewError = "UnsupportedOperation.IsAutoRenewError"
        case unsupportedOperation_LimitProxyVersion = "UnsupportedOperation.LimitProxyVersion"
        case unsupportedOperation_OnlyClusterInstanceCanExportBackup = "UnsupportedOperation.OnlyClusterInstanceCanExportBackup"
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
    public static var authFailure: TCRedisError {
        TCRedisError(.authFailure)
    }
    
    /// 认证无效。
    public static var authFailure_InvalidAuthorization: TCRedisError {
        TCRedisError(.authFailure_InvalidAuthorization)
    }
    
    /// 实例安全组信息添加失败。
    public static var failedOperation_AddInstanceInfoFailed: TCRedisError {
        TCRedisError(.failedOperation_AddInstanceInfoFailed)
    }
    
    /// 绑定安全组失败。
    public static var failedOperation_AssociateSecurityGroupsFailed: TCRedisError {
        TCRedisError(.failedOperation_AssociateSecurityGroupsFailed)
    }
    
    /// 实例安全组信息清除失败。
    public static var failedOperation_ClearInstanceInfoFailed: TCRedisError {
        TCRedisError(.failedOperation_ClearInstanceInfoFailed)
    }
    
    /// 提交工作流失败。
    public static var failedOperation_CommitFlowError: TCRedisError {
        TCRedisError(.failedOperation_CommitFlowError)
    }
    
    /// 解绑安全组失败。
    public static var failedOperation_DisassociateSecurityGroupsFailed: TCRedisError {
        TCRedisError(.failedOperation_DisassociateSecurityGroupsFailed)
    }
    
    /// 当前DTS状态下不允许该操作。
    public static var failedOperation_DtsStatusAbnormal: TCRedisError {
        TCRedisError(.failedOperation_DtsStatusAbnormal)
    }
    
    /// 流表不存在。
    public static var failedOperation_FlowNotExists: TCRedisError {
        TCRedisError(.failedOperation_FlowNotExists)
    }
    
    /// 获取安全组详情失败。
    public static var failedOperation_GetSecurityGroupDetailFailed: TCRedisError {
        TCRedisError(.failedOperation_GetSecurityGroupDetailFailed)
    }
    
    /// 支付失败。
    public static var failedOperation_PayFailed: TCRedisError {
        TCRedisError(.failedOperation_PayFailed)
    }
    
    /// 暂时笼统的定义这个错误码。
    public static var failedOperation_RedoFlowFailed: TCRedisError {
        TCRedisError(.failedOperation_RedoFlowFailed)
    }
    
    /// 设置规则失败。
    public static var failedOperation_SetRuleLocationFailed: TCRedisError {
        TCRedisError(.failedOperation_SetRuleLocationFailed)
    }
    
    /// 内部系统错误，和业务无关。
    public static var failedOperation_SystemError: TCRedisError {
        TCRedisError(.failedOperation_SystemError)
    }
    
    /// 实例不支持该接口。
    public static var failedOperation_UnSupportError: TCRedisError {
        TCRedisError(.failedOperation_UnSupportError)
    }
    
    /// weekday输入无效数据。
    public static var failedOperation_Unknown: TCRedisError {
        TCRedisError(.failedOperation_Unknown)
    }
    
    /// 实例安全组信息更新失败。
    public static var failedOperation_UpdateInstanceInfoFailed: TCRedisError {
        TCRedisError(.failedOperation_UpdateInstanceInfoFailed)
    }
    
    /// 更新安全组失败。
    public static var failedOperation_UpdateSecurityGroupsFailed: TCRedisError {
        TCRedisError(.failedOperation_UpdateSecurityGroupsFailed)
    }
    
    /// 内部错误。
    public static var internalError: TCRedisError {
        TCRedisError(.internalError)
    }
    
    /// cam鉴权错误。
    public static var internalError_CamAuthOssResponseReturnCodeError: TCRedisError {
        TCRedisError(.internalError_CamAuthOssResponseReturnCodeError)
    }
    
    /// 统一的 DB 操作错误，可以是 update insert select..。
    public static var internalError_DbOperationFailed: TCRedisError {
        TCRedisError(.internalError_DbOperationFailed)
    }
    
    /// 执行Http请求失败。
    public static var internalError_ExecHttpRequestError: TCRedisError {
        TCRedisError(.internalError_ExecHttpRequestError)
    }
    
    /// 无操作权限。
    public static var internalError_InstanceOperatePermissionError: TCRedisError {
        TCRedisError(.internalError_InstanceOperatePermissionError)
    }
    
    /// 内部错误。
    public static var internalError_InternalError: TCRedisError {
        TCRedisError(.internalError_InternalError)
    }
    
    /// 获取实例列表出错。
    public static var internalError_ListInstancesError: TCRedisError {
        TCRedisError(.internalError_ListInstancesError)
    }
    
    /// 网络错误。
    public static var internalError_NetWorkErr: TCRedisError {
        TCRedisError(.internalError_NetWorkErr)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCRedisError {
        TCRedisError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCRedisError {
        TCRedisError(.invalidParameterValue)
    }
    
    /// 备份不存在。
    public static var invalidParameterValue_BackupNotExists: TCRedisError {
        TCRedisError(.invalidParameterValue_BackupNotExists)
    }
    
    /// 不是vpc网络下实例。
    public static var invalidParameterValue_BaseNetWorkAccessDeny: TCRedisError {
        TCRedisError(.invalidParameterValue_BaseNetWorkAccessDeny)
    }
    
    /// 业务校验不通过。
    public static var invalidParameterValue_CheckNotPass: TCRedisError {
        TCRedisError(.invalidParameterValue_CheckNotPass)
    }
    
    /// 重命名，命名规则错误。
    public static var invalidParameterValue_InstanceNameRuleError: TCRedisError {
        TCRedisError(.invalidParameterValue_InstanceNameRuleError)
    }
    
    /// 请求购买的实例类型错误（TypeId 1:集群版；2:主从版,即原主从版)。
    public static var invalidParameterValue_InvalidInstanceTypeId: TCRedisError {
        TCRedisError(.invalidParameterValue_InvalidInstanceTypeId)
    }
    
    /// vpc网络下，vpcid 子网id 非法。
    public static var invalidParameterValue_InvalidSubnetId: TCRedisError {
        TCRedisError(.invalidParameterValue_InvalidSubnetId)
    }
    
    /// 请求的容量不在售卖容量范围内。
    public static var invalidParameterValue_MemSizeNotInRange: TCRedisError {
        TCRedisError(.invalidParameterValue_MemSizeNotInRange)
    }
    
    /// 实例不能重复绑定。
    public static var invalidParameterValue_NotRepeatBind: TCRedisError {
        TCRedisError(.invalidParameterValue_NotRepeatBind)
    }
    
    /// 密码为空。
    public static var invalidParameterValue_PasswordEmpty: TCRedisError {
        TCRedisError(.invalidParameterValue_PasswordEmpty)
    }
    
    /// 密码校验出错，密码错误。
    public static var invalidParameterValue_PasswordError: TCRedisError {
        TCRedisError(.invalidParameterValue_PasswordError)
    }
    
    /// 腾讯集团内部账号禁止使用免密实例。
    public static var invalidParameterValue_PasswordFreeDenied: TCRedisError {
        TCRedisError(.invalidParameterValue_PasswordFreeDenied)
    }
    
    /// 设置密码时，MC 传入的 old password 与先前设定密码不同。
    public static var invalidParameterValue_PasswordRuleError: TCRedisError {
        TCRedisError(.invalidParameterValue_PasswordRuleError)
    }
    
    /// 请求容量偏小，不支持缩容。
    public static var invalidParameterValue_ReduceCapacityNotAllowed: TCRedisError {
        TCRedisError(.invalidParameterValue_ReduceCapacityNotAllowed)
    }
    
    /// 复制组不存在。
    public static var invalidParameterValue_ReplicationGroupNotExists: TCRedisError {
        TCRedisError(.invalidParameterValue_ReplicationGroupNotExists)
    }
    
    /// 请求参数错误，安全组id错误。
    public static var invalidParameterValue_SecurityGroupIdsNotExists: TCRedisError {
        TCRedisError(.invalidParameterValue_SecurityGroupIdsNotExists)
    }
    
    /// 实例规格不存在。
    public static var invalidParameterValue_SpecNotExist: TCRedisError {
        TCRedisError(.invalidParameterValue_SpecNotExist)
    }
    
    /// 实例类型不支持。
    public static var invalidParameterValue_UnSupportedType: TCRedisError {
        TCRedisError(.invalidParameterValue_UnSupportedType)
    }
    
    /// vpc网络下，uniqVpcId 子网id 非法。
    public static var invalidParameterValue_UnVpcIdNotExists: TCRedisError {
        TCRedisError(.invalidParameterValue_UnVpcIdNotExists)
    }
    
    /// weekday输入无效数据。
    public static var invalidParameterValue_WeekDaysIsInvalid: TCRedisError {
        TCRedisError(.invalidParameterValue_WeekDaysIsInvalid)
    }
    
    /// 没有找到对应接口。
    public static var invalidParameter_ActionNotFound: TCRedisError {
        TCRedisError(.invalidParameter_ActionNotFound)
    }
    
    /// 参数为空。
    public static var invalidParameter_EmptyParam: TCRedisError {
        TCRedisError(.invalidParameter_EmptyParam)
    }
    
    /// 非法参数错误。
    public static var invalidParameter_IllegalParameterError: TCRedisError {
        TCRedisError(.invalidParameter_IllegalParameterError)
    }
    
    /// 实例安全组超过限制。
    public static var invalidParameter_InstanceSGOverLimitError: TCRedisError {
        TCRedisError(.invalidParameter_InstanceSGOverLimitError)
    }
    
    /// 业务参数错误。
    public static var invalidParameter_InvalidParameter: TCRedisError {
        TCRedisError(.invalidParameter_InvalidParameter)
    }
    
    /// 参数错误，不支持操作。
    public static var invalidParameter_NotSupported: TCRedisError {
        TCRedisError(.invalidParameter_NotSupported)
    }
    
    /// 上海金融只提供vpc网络。
    public static var invalidParameter_OnlyVPCOnSpecZoneId: TCRedisError {
        TCRedisError(.invalidParameter_OnlyVPCOnSpecZoneId)
    }
    
    /// 时间格式或者范围不符合要求。
    public static var invalidParameter_Period: TCRedisError {
        TCRedisError(.invalidParameter_Period)
    }
    
    /// 接口没有cam权限。
    public static var invalidParameter_PermissionDenied: TCRedisError {
        TCRedisError(.invalidParameter_PermissionDenied)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCRedisError {
        TCRedisError(.limitExceeded)
    }
    
    /// 绑定超过上限。
    public static var limitExceeded_ExceedUpperLimit: TCRedisError {
        TCRedisError(.limitExceeded_ExceedUpperLimit)
    }
    
    /// 绑定实例必须为空。
    public static var limitExceeded_InstanceNotEmpty: TCRedisError {
        TCRedisError(.limitExceeded_InstanceNotEmpty)
    }
    
    /// 请求的容量不在售卖规格中（memSize应为1024的整数倍，单位：MB）。
    public static var limitExceeded_InvalidMemSize: TCRedisError {
        TCRedisError(.limitExceeded_InvalidMemSize)
    }
    
    /// 一次请求购买的实例数不在售卖数量限制范围内。
    public static var limitExceeded_InvalidParameterGoodsNumNotInRange: TCRedisError {
        TCRedisError(.limitExceeded_InvalidParameterGoodsNumNotInRange)
    }
    
    /// 请求的容量不在售卖容量范围内。
    public static var limitExceeded_MemSizeNotInRange: TCRedisError {
        TCRedisError(.limitExceeded_MemSizeNotInRange)
    }
    
    /// 购买时长超过3年,请求时长超过最大时长。
    public static var limitExceeded_PeriodExceedMaxLimit: TCRedisError {
        TCRedisError(.limitExceeded_PeriodExceedMaxLimit)
    }
    
    /// 购买时长非法，时长最少1个月。
    public static var limitExceeded_PeriodLessThanMinLimit: TCRedisError {
        TCRedisError(.limitExceeded_PeriodLessThanMinLimit)
    }
    
    /// 复制组已锁定。
    public static var limitExceeded_ReplicationGroupLocked: TCRedisError {
        TCRedisError(.limitExceeded_ReplicationGroupLocked)
    }
    
    /// 实例被其它流程锁住。
    public static var resourceInUse_InstanceBeenLocked: TCRedisError {
        TCRedisError(.resourceInUse_InstanceBeenLocked)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCRedisError {
        TCRedisError(.resourceInsufficient)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCRedisError {
        TCRedisError(.resourceNotFound)
    }
    
    /// uin 值为空。
    public static var resourceNotFound_AccountDoesNotExists: TCRedisError {
        TCRedisError(.resourceNotFound_AccountDoesNotExists)
    }
    
    /// 根据 serialId 没有找到对应 redis。
    public static var resourceNotFound_InstanceNotExists: TCRedisError {
        TCRedisError(.resourceNotFound_InstanceNotExists)
    }
    
    /// 找不到该实例。
    public static var resourceNotFound_InstanceNotFound: TCRedisError {
        TCRedisError(.resourceNotFound_InstanceNotFound)
    }
    
    /// 请求订单号不存在。
    public static var resourceUnavailable_AccountBalanceNotEnough: TCRedisError {
        TCRedisError(.resourceUnavailable_AccountBalanceNotEnough)
    }
    
    /// 备份已被其它任务锁住，暂时不能执行该操作。
    public static var resourceUnavailable_BackupLockedError: TCRedisError {
        TCRedisError(.resourceUnavailable_BackupLockedError)
    }
    
    /// 备份状态异常，暂不能执行该操作。备份可能已过期或已被删除。
    public static var resourceUnavailable_BackupStatusAbnormal: TCRedisError {
        TCRedisError(.resourceUnavailable_BackupStatusAbnormal)
    }
    
    /// 备份状态无效，可能在其他流程中，也可能被删除。
    public static var resourceUnavailable_BackupStatusInvalid: TCRedisError {
        TCRedisError(.resourceUnavailable_BackupStatusInvalid)
    }
    
    /// 调用后端接口失败。
    public static var resourceUnavailable_CallOssError: TCRedisError {
        TCRedisError(.resourceUnavailable_CallOssError)
    }
    
    /// 获取安全组信息失败。
    public static var resourceUnavailable_GetSecurityError: TCRedisError {
        TCRedisError(.resourceUnavailable_GetSecurityError)
    }
    
    /// 实例配置错误。
    public static var resourceUnavailable_InstanceConfError: TCRedisError {
        TCRedisError(.resourceUnavailable_InstanceConfError)
    }
    
    /// 实例已经被回收了。
    public static var resourceUnavailable_InstanceDeleted: TCRedisError {
        TCRedisError(.resourceUnavailable_InstanceDeleted)
    }
    
    /// 实例已过期。
    public static var resourceUnavailable_InstanceIsolated: TCRedisError {
        TCRedisError(.resourceUnavailable_InstanceIsolated)
    }
    
    /// redis 已经被其它流程锁定。
    public static var resourceUnavailable_InstanceLockedError: TCRedisError {
        TCRedisError(.resourceUnavailable_InstanceLockedError)
    }
    
    /// 订单不存在。
    public static var resourceUnavailable_InstanceNoDeal: TCRedisError {
        TCRedisError(.resourceUnavailable_InstanceNoDeal)
    }
    
    /// 实例状态不支持操作。
    public static var resourceUnavailable_InstanceNotSupportOperation: TCRedisError {
        TCRedisError(.resourceUnavailable_InstanceNotSupportOperation)
    }
    
    /// 实例状态错误。
    public static var resourceUnavailable_InstanceStateError: TCRedisError {
        TCRedisError(.resourceUnavailable_InstanceStateError)
    }
    
    /// redis 状态异常，不能执行对应流程。
    public static var resourceUnavailable_InstanceStatusAbnormal: TCRedisError {
        TCRedisError(.resourceUnavailable_InstanceStatusAbnormal)
    }
    
    /// 实例状态异常，不能执行对应操作。
    public static var resourceUnavailable_InstanceStatusError: TCRedisError {
        TCRedisError(.resourceUnavailable_InstanceStatusError)
    }
    
    public static var resourceUnavailable_InstanceUnLockedError: TCRedisError {
        TCRedisError(.resourceUnavailable_InstanceUnLockedError)
    }
    
    /// vpc网络IP资源不足。
    public static var resourceUnavailable_NoEnoughVipInVPC: TCRedisError {
        TCRedisError(.resourceUnavailable_NoEnoughVipInVPC)
    }
    
    /// 请求的区域暂时不提供redis服务。
    public static var resourceUnavailable_NoRedisService: TCRedisError {
        TCRedisError(.resourceUnavailable_NoRedisService)
    }
    
    /// 请求的区域暂时不提供请求类型的redis服务。
    public static var resourceUnavailable_NoTypeIdRedisService: TCRedisError {
        TCRedisError(.resourceUnavailable_NoTypeIdRedisService)
    }
    
    /// 地域对应类型已售罄。
    public static var resourceUnavailable_SaleOut: TCRedisError {
        TCRedisError(.resourceUnavailable_SaleOut)
    }
    
    /// 产品还没有接入安全组。
    public static var resourceUnavailable_SecurityGroupNotSupported: TCRedisError {
        TCRedisError(.resourceUnavailable_SecurityGroupNotSupported)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCRedisError {
        TCRedisError(.unauthorizedOperation)
    }
    
    /// 无cam 权限。
    public static var unauthorizedOperation_NoCAMAuthed: TCRedisError {
        TCRedisError(.unauthorizedOperation_NoCAMAuthed)
    }
    
    /// 用户不在白名单中。
    public static var unauthorizedOperation_UserNotInWhiteList: TCRedisError {
        TCRedisError(.unauthorizedOperation_UserNotInWhiteList)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCRedisError {
        TCRedisError(.unsupportedOperation)
    }
    
    /// redis 集群版不允许接入安全组。
    public static var unsupportedOperation_ClusterInstanceAccessedDeny: TCRedisError {
        TCRedisError(.unsupportedOperation_ClusterInstanceAccessedDeny)
    }
    
    /// 复制组巡检中。
    public static var unsupportedOperation_Inspection: TCRedisError {
        TCRedisError(.unsupportedOperation_Inspection)
    }
    
    /// 不支持当前操作。
    public static var unsupportedOperation_InstanceNotOperation: TCRedisError {
        TCRedisError(.unsupportedOperation_InstanceNotOperation)
    }
    
    /// 自动续费标识错误。
    public static var unsupportedOperation_IsAutoRenewError: TCRedisError {
        TCRedisError(.unsupportedOperation_IsAutoRenewError)
    }
    
    public static var unsupportedOperation_LimitProxyVersion: TCRedisError {
        TCRedisError(.unsupportedOperation_LimitProxyVersion)
    }
    
    /// 只有集群版实例支持导出备份。
    public static var unsupportedOperation_OnlyClusterInstanceCanExportBackup: TCRedisError {
        TCRedisError(.unsupportedOperation_OnlyClusterInstanceCanExportBackup)
    }
}

extension TCRedisError {
    public static var domains: [TCErrorType.Type] {
        return [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceInUse.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCRedisError: Equatable {
    public static func == (lhs: TCRedisError, rhs: TCRedisError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCRedisError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}