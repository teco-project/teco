public struct TCSqlserverError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation_CosError = "FailedOperation.CosError"
        case failedOperation_CosPropertiesError = "FailedOperation.CosPropertiesError"
        case failedOperation_CreateOrderFailed = "FailedOperation.CreateOrderFailed"
        case failedOperation_DBError = "FailedOperation.DBError"
        case failedOperation_GcsError = "FailedOperation.GcsError"
        case failedOperation_GetVpcFailed = "FailedOperation.GetVpcFailed"
        case failedOperation_MigrationLockError = "FailedOperation.MigrationLockError"
        case failedOperation_QueryOrderFailed = "FailedOperation.QueryOrderFailed"
        case failedOperation_QueryPriceFailed = "FailedOperation.QueryPriceFailed"
        case failedOperation_SecurityGroupOperationError = "FailedOperation.SecurityGroupOperationError"
        case failedOperation_VPCError = "FailedOperation.VPCError"
        case internalError = "InternalError"
        case internalError_CamAuthFailed = "InternalError.CamAuthFailed"
        case internalError_CosError = "InternalError.CosError"
        case internalError_CreateFlowFailed = "InternalError.CreateFlowFailed"
        case internalError_DBConnectError = "InternalError.DBConnectError"
        case internalError_DBError = "InternalError.DBError"
        case internalError_GcsError = "InternalError.GcsError"
        case internalError_StsError = "InternalError.StsError"
        case internalError_SystemError = "InternalError.SystemError"
        case internalError_UnknownError = "InternalError.UnknownError"
        case internalError_VPCError = "InternalError.VPCError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AccountExist = "InvalidParameterValue.AccountExist"
        case invalidParameterValue_AccountNameIsIllegal = "InvalidParameterValue.AccountNameIsIllegal"
        case invalidParameterValue_AccountNameIsKeyWords = "InvalidParameterValue.AccountNameIsKeyWords"
        case invalidParameterValue_AccountRemarkIsIllegal = "InvalidParameterValue.AccountRemarkIsIllegal"
        case invalidParameterValue_AdminAccountNotUnique = "InvalidParameterValue.AdminAccountNotUnique"
        case invalidParameterValue_BackupNameIsIllegal = "InvalidParameterValue.BackupNameIsIllegal"
        case invalidParameterValue_BadGoodsNum = "InvalidParameterValue.BadGoodsNum"
        case invalidParameterValue_CharsetIsIllegal = "InvalidParameterValue.CharsetIsIllegal"
        case invalidParameterValue_CosPathError = "InvalidParameterValue.CosPathError"
        case invalidParameterValue_CostTypeNotSupported = "InvalidParameterValue.CostTypeNotSupported"
        case invalidParameterValue_DBCharIllegal = "InvalidParameterValue.DBCharIllegal"
        case invalidParameterValue_DBExist = "InvalidParameterValue.DBExist"
        case invalidParameterValue_DBNameIsKeyWrods = "InvalidParameterValue.DBNameIsKeyWrods"
        case invalidParameterValue_DBNameNotNull = "InvalidParameterValue.DBNameNotNull"
        case invalidParameterValue_DBNameSame = "InvalidParameterValue.DBNameSame"
        case invalidParameterValue_DataBaseRemarkIsIllegal = "InvalidParameterValue.DataBaseRemarkIsIllegal"
        case invalidParameterValue_GrantIsIllegal = "InvalidParameterValue.GrantIsIllegal"
        case invalidParameterValue_IllegalRegion = "InvalidParameterValue.IllegalRegion"
        case invalidParameterValue_IllegalSpec = "InvalidParameterValue.IllegalSpec"
        case invalidParameterValue_IllegalZone = "InvalidParameterValue.IllegalZone"
        case invalidParameterValue_InstanceExpandVolumeLow = "InvalidParameterValue.InstanceExpandVolumeLow"
        case invalidParameterValue_InstanceNameIsIllegal = "InvalidParameterValue.InstanceNameIsIllegal"
        case invalidParameterValue_MigrationNameIsIllegal = "InvalidParameterValue.MigrationNameIsIllegal"
        case invalidParameterValue_ModifyTypeValueInvalid = "InvalidParameterValue.ModifyTypeValueInvalid"
        case invalidParameterValue_OnCvmTypeNotSupported = "InvalidParameterValue.OnCvmTypeNotSupported"
        case invalidParameterValue_ParameterTypeError = "InvalidParameterValue.ParameterTypeError"
        case invalidParameterValue_PasswordIsIllegal = "InvalidParameterValue.PasswordIsIllegal"
        case invalidParameterValue_PrivilegeIsIllegal = "InvalidParameterValue.PrivilegeIsIllegal"
        case invalidParameterValue_PubSubNameIsIllegal = "InvalidParameterValue.PubSubNameIsIllegal"
        case invalidParameterValue_RoGroupNameIsIllegal = "InvalidParameterValue.RoGroupNameIsIllegal"
        case invalidParameterValue_RoGroupStatusIsIllegal = "InvalidParameterValue.RoGroupStatusIsIllegal"
        case invalidParameterValue_SecurityGroupIdIsIllegal = "InvalidParameterValue.SecurityGroupIdIsIllegal"
        case invalidParameter_InputIllegal = "InvalidParameter.InputIllegal"
        case invalidParameter_InterfaceNameNotFound = "InvalidParameter.InterfaceNameNotFound"
        case invalidParameter_ParamsAssertFailed = "InvalidParameter.ParamsAssertFailed"
        case invalidParameter_PayOrderFailed = "InvalidParameter.PayOrderFailed"
        case limitExceeded_TooManyDB = "LimitExceeded.TooManyDB"
        case resourceInUse_IncrementalMigrationExist = "ResourceInUse.IncrementalMigrationExist"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_AccountNotExist = "ResourceNotFound.AccountNotExist"
        case resourceNotFound_BackupNotFound = "ResourceNotFound.BackupNotFound"
        case resourceNotFound_DBNotExit = "ResourceNotFound.DBNotExit"
        case resourceNotFound_DBNotFound = "ResourceNotFound.DBNotFound"
        case resourceNotFound_FullBackupMigrationNotExist = "ResourceNotFound.FullBackupMigrationNotExist"
        case resourceNotFound_IncreBackupMigrationNotExist = "ResourceNotFound.IncreBackupMigrationNotExist"
        case resourceNotFound_InstanceNotFound = "ResourceNotFound.InstanceNotFound"
        case resourceNotFound_ParamsNotFound = "ResourceNotFound.ParamsNotFound"
        case resourceNotFound_VpcNotExist = "ResourceNotFound.VpcNotExist"
        case resourceUnavailable_AccountInvalidStatus = "ResourceUnavailable.AccountInvalidStatus"
        case resourceUnavailable_BackupMigrationRecoveryTypeErr = "ResourceUnavailable.BackupMigrationRecoveryTypeErr"
        case resourceUnavailable_CosStatusErr = "ResourceUnavailable.CosStatusErr"
        case resourceUnavailable_DBInvalidStatus = "ResourceUnavailable.DBInvalidStatus"
        case resourceUnavailable_InstanceMigrateRegionIllegal = "ResourceUnavailable.InstanceMigrateRegionIllegal"
        case resourceUnavailable_InstanceMigrateStatusInvalid = "ResourceUnavailable.InstanceMigrateStatusInvalid"
        case resourceUnavailable_InstanceStatusInvalid = "ResourceUnavailable.InstanceStatusInvalid"
        case resourceUnavailable_NotSupportRoInstance = "ResourceUnavailable.NotSupportRoInstance"
        case resourceUnavailable_VpcNotExist = "ResourceUnavailable.VpcNotExist"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_PermissionDenied = "UnauthorizedOperation.PermissionDenied"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation_NotSupportRepeat = "UnsupportedOperation.NotSupportRepeat"
        case unsupportedOperation_UploadTypeError = "UnsupportedOperation.UploadTypeError"
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
    public static var authFailure: TCSqlserverError {
        TCSqlserverError(.authFailure)
    }
    
    /// 查询对象存储失败。
    public static var failedOperation_CosError: TCSqlserverError {
        TCSqlserverError(.failedOperation_CosError)
    }
    
    /// 获取上传配置信息错误。
    public static var failedOperation_CosPropertiesError: TCSqlserverError {
        TCSqlserverError(.failedOperation_CosPropertiesError)
    }
    
    /// 创建订单失败。
    public static var failedOperation_CreateOrderFailed: TCSqlserverError {
        TCSqlserverError(.failedOperation_CreateOrderFailed)
    }
    
    /// 数据库错误。
    public static var failedOperation_DBError: TCSqlserverError {
        TCSqlserverError(.failedOperation_DBError)
    }
    
    /// 操作失败或者网络超时。
    public static var failedOperation_GcsError: TCSqlserverError {
        TCSqlserverError(.failedOperation_GcsError)
    }
    
    /// 获取VPC网络信息失败。
    public static var failedOperation_GetVpcFailed: TCSqlserverError {
        TCSqlserverError(.failedOperation_GetVpcFailed)
    }
    
    /// 备份导入任务锁定失败。
    public static var failedOperation_MigrationLockError: TCSqlserverError {
        TCSqlserverError(.failedOperation_MigrationLockError)
    }
    
    /// 查询订单失败。
    public static var failedOperation_QueryOrderFailed: TCSqlserverError {
        TCSqlserverError(.failedOperation_QueryOrderFailed)
    }
    
    /// 计费相关错误，查询价格失败。
    public static var failedOperation_QueryPriceFailed: TCSqlserverError {
        TCSqlserverError(.failedOperation_QueryPriceFailed)
    }
    
    /// 安全组操作失败。
    public static var failedOperation_SecurityGroupOperationError: TCSqlserverError {
        TCSqlserverError(.failedOperation_SecurityGroupOperationError)
    }
    
    /// 操作网络失败或者超时。
    public static var failedOperation_VPCError: TCSqlserverError {
        TCSqlserverError(.failedOperation_VPCError)
    }
    
    /// 内部错误。
    public static var internalError: TCSqlserverError {
        TCSqlserverError(.internalError)
    }
    
    /// CAM鉴权请求失败。
    public static var internalError_CamAuthFailed: TCSqlserverError {
        TCSqlserverError(.internalError_CamAuthFailed)
    }
    
    /// COS接口错误。
    public static var internalError_CosError: TCSqlserverError {
        TCSqlserverError(.internalError_CosError)
    }
    
    /// 流程创建失败。
    public static var internalError_CreateFlowFailed: TCSqlserverError {
        TCSqlserverError(.internalError_CreateFlowFailed)
    }
    
    /// 数据库连接错误。
    public static var internalError_DBConnectError: TCSqlserverError {
        TCSqlserverError(.internalError_DBConnectError)
    }
    
    /// 数据库错误。
    public static var internalError_DBError: TCSqlserverError {
        TCSqlserverError(.internalError_DBError)
    }
    
    /// GCS接口错误。
    public static var internalError_GcsError: TCSqlserverError {
        TCSqlserverError(.internalError_GcsError)
    }
    
    /// 获取临时密钥错误。
    public static var internalError_StsError: TCSqlserverError {
        TCSqlserverError(.internalError_StsError)
    }
    
    /// 系统错误。
    public static var internalError_SystemError: TCSqlserverError {
        TCSqlserverError(.internalError_SystemError)
    }
    
    /// 未知错误。
    public static var internalError_UnknownError: TCSqlserverError {
        TCSqlserverError(.internalError_UnknownError)
    }
    
    /// VPC错误。
    public static var internalError_VPCError: TCSqlserverError {
        TCSqlserverError(.internalError_VPCError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCSqlserverError {
        TCSqlserverError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue)
    }
    
    /// 账号已经存在。
    public static var invalidParameterValue_AccountExist: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_AccountExist)
    }
    
    /// 账户名称不合法。
    public static var invalidParameterValue_AccountNameIsIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_AccountNameIsIllegal)
    }
    
    /// 账号名称不允许是保留字。
    public static var invalidParameterValue_AccountNameIsKeyWords: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_AccountNameIsKeyWords)
    }
    
    /// 账户备注内容不合法。
    public static var invalidParameterValue_AccountRemarkIsIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_AccountRemarkIsIllegal)
    }
    
    /// 管理员账号只能申请一个。
    ///
    /// 管理员账号只能申请一个，删除已有的管理员账户后，重新创建。
    public static var invalidParameterValue_AdminAccountNotUnique: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_AdminAccountNotUnique)
    }
    
    /// 备份名称存在非法字符。
    public static var invalidParameterValue_BackupNameIsIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_BackupNameIsIllegal)
    }
    
    /// 购买实例数量错误。
    public static var invalidParameterValue_BadGoodsNum: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_BadGoodsNum)
    }
    
    /// 数据库字符集设置错误。
    public static var invalidParameterValue_CharsetIsIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_CharsetIsIllegal)
    }
    
    /// 上传路径错误。
    public static var invalidParameterValue_CosPathError: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_CosPathError)
    }
    
    /// 计费类型错误。
    public static var invalidParameterValue_CostTypeNotSupported: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_CostTypeNotSupported)
    }
    
    /// 数据库名称包含非法字符。
    public static var invalidParameterValue_DBCharIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_DBCharIllegal)
    }
    
    /// 数据库已经存在。
    public static var invalidParameterValue_DBExist: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_DBExist)
    }
    
    /// 数据库名称不允许是保留字。
    public static var invalidParameterValue_DBNameIsKeyWrods: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_DBNameIsKeyWrods)
    }
    
    /// 数据库名称不能为空。
    public static var invalidParameterValue_DBNameNotNull: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_DBNameNotNull)
    }
    
    /// 数据库重命名名称一样。
    public static var invalidParameterValue_DBNameSame: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_DBNameSame)
    }
    
    /// 数据库备注内容不合法。
    public static var invalidParameterValue_DataBaseRemarkIsIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_DataBaseRemarkIsIllegal)
    }
    
    /// 参数错误，GRANT 值非法。
    public static var invalidParameterValue_GrantIsIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_GrantIsIllegal)
    }
    
    /// 地域错误。
    public static var invalidParameterValue_IllegalRegion: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_IllegalRegion)
    }
    
    /// 实例规格信息错误。
    public static var invalidParameterValue_IllegalSpec: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_IllegalSpec)
    }
    
    /// 可用区ID错误。
    public static var invalidParameterValue_IllegalZone: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_IllegalZone)
    }
    
    /// 实例扩容容量低于当前容量。
    public static var invalidParameterValue_InstanceExpandVolumeLow: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_InstanceExpandVolumeLow)
    }
    
    /// 实例名称存在非法字符。
    public static var invalidParameterValue_InstanceNameIsIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_InstanceNameIsIllegal)
    }
    
    /// 迁移名称包含非法字符。
    public static var invalidParameterValue_MigrationNameIsIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_MigrationNameIsIllegal)
    }
    
    /// 可选参数[enable, disable]。
    public static var invalidParameterValue_ModifyTypeValueInvalid: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_ModifyTypeValueInvalid)
    }
    
    /// 是CVM类型。
    public static var invalidParameterValue_OnCvmTypeNotSupported: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_OnCvmTypeNotSupported)
    }
    
    /// 参数类型错误。
    public static var invalidParameterValue_ParameterTypeError: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_ParameterTypeError)
    }
    
    /// 账号密码非法。
    public static var invalidParameterValue_PasswordIsIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_PasswordIsIllegal)
    }
    
    /// 数据库权限设置错误。
    public static var invalidParameterValue_PrivilegeIsIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_PrivilegeIsIllegal)
    }
    
    /// 发布订阅名称不符合规范。
    public static var invalidParameterValue_PubSubNameIsIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_PubSubNameIsIllegal)
    }
    
    /// 只读组名称包含非法字符。
    public static var invalidParameterValue_RoGroupNameIsIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_RoGroupNameIsIllegal)
    }
    
    /// 只读组状态不正确。
    public static var invalidParameterValue_RoGroupStatusIsIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_RoGroupStatusIsIllegal)
    }
    
    /// 安全组ID非法。
    public static var invalidParameterValue_SecurityGroupIdIsIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameterValue_SecurityGroupIdIsIllegal)
    }
    
    /// 输入错误。
    public static var invalidParameter_InputIllegal: TCSqlserverError {
        TCSqlserverError(.invalidParameter_InputIllegal)
    }
    
    /// 接口不存在。
    public static var invalidParameter_InterfaceNameNotFound: TCSqlserverError {
        TCSqlserverError(.invalidParameter_InterfaceNameNotFound)
    }
    
    /// 参数断言转换错误。
    public static var invalidParameter_ParamsAssertFailed: TCSqlserverError {
        TCSqlserverError(.invalidParameter_ParamsAssertFailed)
    }
    
    /// 支付订单失败。
    public static var invalidParameter_PayOrderFailed: TCSqlserverError {
        TCSqlserverError(.invalidParameter_PayOrderFailed)
    }
    
    /// 数据库超过限制。
    public static var limitExceeded_TooManyDB: TCSqlserverError {
        TCSqlserverError(.limitExceeded_TooManyDB)
    }
    
    /// 已经存在一个准备启动的增量导入任务。
    public static var resourceInUse_IncrementalMigrationExist: TCSqlserverError {
        TCSqlserverError(.resourceInUse_IncrementalMigrationExist)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCSqlserverError {
        TCSqlserverError(.resourceNotFound)
    }
    
    /// 账号不存在。
    public static var resourceNotFound_AccountNotExist: TCSqlserverError {
        TCSqlserverError(.resourceNotFound_AccountNotExist)
    }
    
    /// 备份不存在。
    public static var resourceNotFound_BackupNotFound: TCSqlserverError {
        TCSqlserverError(.resourceNotFound_BackupNotFound)
    }
    
    /// 数据库不存在。
    public static var resourceNotFound_DBNotExit: TCSqlserverError {
        TCSqlserverError(.resourceNotFound_DBNotExit)
    }
    
    /// 数据库不存在。
    public static var resourceNotFound_DBNotFound: TCSqlserverError {
        TCSqlserverError(.resourceNotFound_DBNotFound)
    }
    
    /// 全量备份导入任务不存在。
    public static var resourceNotFound_FullBackupMigrationNotExist: TCSqlserverError {
        TCSqlserverError(.resourceNotFound_FullBackupMigrationNotExist)
    }
    
    /// 增量备份导入任务不存在。
    public static var resourceNotFound_IncreBackupMigrationNotExist: TCSqlserverError {
        TCSqlserverError(.resourceNotFound_IncreBackupMigrationNotExist)
    }
    
    /// 实例不存在。
    public static var resourceNotFound_InstanceNotFound: TCSqlserverError {
        TCSqlserverError(.resourceNotFound_InstanceNotFound)
    }
    
    /// 参数未找到。
    public static var resourceNotFound_ParamsNotFound: TCSqlserverError {
        TCSqlserverError(.resourceNotFound_ParamsNotFound)
    }
    
    /// VPC网络不存在。
    public static var resourceNotFound_VpcNotExist: TCSqlserverError {
        TCSqlserverError(.resourceNotFound_VpcNotExist)
    }
    
    /// 账号状态无效。
    public static var resourceUnavailable_AccountInvalidStatus: TCSqlserverError {
        TCSqlserverError(.resourceUnavailable_AccountInvalidStatus)
    }
    
    /// 恢复类型不支持增量备份导入。
    public static var resourceUnavailable_BackupMigrationRecoveryTypeErr: TCSqlserverError {
        TCSqlserverError(.resourceUnavailable_BackupMigrationRecoveryTypeErr)
    }
    
    /// 离线恢复任务状态错误。
    public static var resourceUnavailable_CosStatusErr: TCSqlserverError {
        TCSqlserverError(.resourceUnavailable_CosStatusErr)
    }
    
    /// 数据库状态无效。
    public static var resourceUnavailable_DBInvalidStatus: TCSqlserverError {
        TCSqlserverError(.resourceUnavailable_DBInvalidStatus)
    }
    
    /// 实例迁移地域非法。
    public static var resourceUnavailable_InstanceMigrateRegionIllegal: TCSqlserverError {
        TCSqlserverError(.resourceUnavailable_InstanceMigrateRegionIllegal)
    }
    
    /// 实例迁移状态无效。
    public static var resourceUnavailable_InstanceMigrateStatusInvalid: TCSqlserverError {
        TCSqlserverError(.resourceUnavailable_InstanceMigrateStatusInvalid)
    }
    
    /// 实例状态无效。
    public static var resourceUnavailable_InstanceStatusInvalid: TCSqlserverError {
        TCSqlserverError(.resourceUnavailable_InstanceStatusInvalid)
    }
    
    /// 不支持只读实例。
    public static var resourceUnavailable_NotSupportRoInstance: TCSqlserverError {
        TCSqlserverError(.resourceUnavailable_NotSupportRoInstance)
    }
    
    /// VPC不存在。
    public static var resourceUnavailable_VpcNotExist: TCSqlserverError {
        TCSqlserverError(.resourceUnavailable_VpcNotExist)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCSqlserverError {
        TCSqlserverError(.unauthorizedOperation)
    }
    
    /// cam鉴权错误。
    public static var unauthorizedOperation_PermissionDenied: TCSqlserverError {
        TCSqlserverError(.unauthorizedOperation_PermissionDenied)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCSqlserverError {
        TCSqlserverError(.unknownParameter)
    }
    
    /// 不支持重复操作。
    public static var unsupportedOperation_NotSupportRepeat: TCSqlserverError {
        TCSqlserverError(.unsupportedOperation_NotSupportRepeat)
    }
    
    /// 上传类型错误。
    public static var unsupportedOperation_UploadTypeError: TCSqlserverError {
        TCSqlserverError(.unsupportedOperation_UploadTypeError)
    }
}

extension TCSqlserverError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceInUse.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCSqlserverError: Equatable {
    public static func == (lhs: TCSqlserverError, rhs: TCSqlserverError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSqlserverError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCSqlserverError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
