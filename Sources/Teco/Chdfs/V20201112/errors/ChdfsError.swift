public struct TCChdfsError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_AccessGroupBound = "FailedOperation.AccessGroupBound"
        case failedOperation_FileSystemNotEmpty = "FailedOperation.FileSystemNotEmpty"
        case failedOperation_QuotaLessThanCurrentUsed = "FailedOperation.QuotaLessThanCurrentUsed"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_InvalidAccessGroupId = "InvalidParameterValue.InvalidAccessGroupId"
        case invalidParameterValue_InvalidAccessGroupName = "InvalidParameterValue.InvalidAccessGroupName"
        case invalidParameterValue_InvalidAccessRuleAddress = "InvalidParameterValue.InvalidAccessRuleAddress"
        case invalidParameterValue_InvalidCapacityQuota = "InvalidParameterValue.InvalidCapacityQuota"
        case invalidParameterValue_InvalidDescription = "InvalidParameterValue.InvalidDescription"
        case invalidParameterValue_InvalidFileSystemId = "InvalidParameterValue.InvalidFileSystemId"
        case invalidParameterValue_InvalidFileSystemName = "InvalidParameterValue.InvalidFileSystemName"
        case invalidParameterValue_InvalidMountPointId = "InvalidParameterValue.InvalidMountPointId"
        case invalidParameterValue_InvalidMountPointName = "InvalidParameterValue.InvalidMountPointName"
        case invalidParameterValue_InvalidVpcId = "InvalidParameterValue.InvalidVpcId"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case resourceInUse = "ResourceInUse"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_AccessGroupNotExists = "ResourceNotFound.AccessGroupNotExists"
        case resourceNotFound_AccessRuleNotExists = "ResourceNotFound.AccessRuleNotExists"
        case resourceNotFound_FileSystemNotExists = "ResourceNotFound.FileSystemNotExists"
        case resourceNotFound_MountPointNotExists = "ResourceNotFound.MountPointNotExists"
        case resourceNotFound_VpcNotExists = "ResourceNotFound.VpcNotExists"
        case resourceUnavailable = "ResourceUnavailable"
        case unauthorizedOperation = "UnauthorizedOperation"
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
    
    /// 操作失败。
    public static var failedOperation: TCChdfsError {
        TCChdfsError(.failedOperation)
    }
    
    /// 权限组被绑定。
    ///
    /// 当前权限组先解绑关联的挂载点。
    public static var failedOperation_AccessGroupBound: TCChdfsError {
        TCChdfsError(.failedOperation_AccessGroupBound)
    }
    
    /// 文件系统非空。
    ///
    /// 先清空当前文件系统。
    public static var failedOperation_FileSystemNotEmpty: TCChdfsError {
        TCChdfsError(.failedOperation_FileSystemNotEmpty)
    }
    
    /// 修改的文件系统容量小于当前使用量。
    public static var failedOperation_QuotaLessThanCurrentUsed: TCChdfsError {
        TCChdfsError(.failedOperation_QuotaLessThanCurrentUsed)
    }
    
    /// 内部错误。
    public static var internalError: TCChdfsError {
        TCChdfsError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCChdfsError {
        TCChdfsError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCChdfsError {
        TCChdfsError(.invalidParameterValue)
    }
    
    /// AccessGroupId参数取值错误。
    public static var invalidParameterValue_InvalidAccessGroupId: TCChdfsError {
        TCChdfsError(.invalidParameterValue_InvalidAccessGroupId)
    }
    
    /// AccessGroupName参数取值错误。
    public static var invalidParameterValue_InvalidAccessGroupName: TCChdfsError {
        TCChdfsError(.invalidParameterValue_InvalidAccessGroupName)
    }
    
    /// 权限规则的Address参数取值错误。
    public static var invalidParameterValue_InvalidAccessRuleAddress: TCChdfsError {
        TCChdfsError(.invalidParameterValue_InvalidAccessRuleAddress)
    }
    
    /// CapacityQuota参数取值错误。
    public static var invalidParameterValue_InvalidCapacityQuota: TCChdfsError {
        TCChdfsError(.invalidParameterValue_InvalidCapacityQuota)
    }
    
    /// Description参数取值错误。
    public static var invalidParameterValue_InvalidDescription: TCChdfsError {
        TCChdfsError(.invalidParameterValue_InvalidDescription)
    }
    
    /// FileSystemId参数取值错误。
    public static var invalidParameterValue_InvalidFileSystemId: TCChdfsError {
        TCChdfsError(.invalidParameterValue_InvalidFileSystemId)
    }
    
    /// FileSystemName参数取值错误。
    public static var invalidParameterValue_InvalidFileSystemName: TCChdfsError {
        TCChdfsError(.invalidParameterValue_InvalidFileSystemName)
    }
    
    /// MountPointId参数取值错误。
    public static var invalidParameterValue_InvalidMountPointId: TCChdfsError {
        TCChdfsError(.invalidParameterValue_InvalidMountPointId)
    }
    
    /// MountPointName参数取值错误。
    public static var invalidParameterValue_InvalidMountPointName: TCChdfsError {
        TCChdfsError(.invalidParameterValue_InvalidMountPointName)
    }
    
    /// VpcId参数取值错误。
    public static var invalidParameterValue_InvalidVpcId: TCChdfsError {
        TCChdfsError(.invalidParameterValue_InvalidVpcId)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCChdfsError {
        TCChdfsError(.limitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCChdfsError {
        TCChdfsError(.missingParameter)
    }
    
    /// 操作被拒绝。
    public static var operationDenied: TCChdfsError {
        TCChdfsError(.operationDenied)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCChdfsError {
        TCChdfsError(.resourceInUse)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCChdfsError {
        TCChdfsError(.resourceNotFound)
    }
    
    /// 权限组不存在。
    public static var resourceNotFound_AccessGroupNotExists: TCChdfsError {
        TCChdfsError(.resourceNotFound_AccessGroupNotExists)
    }
    
    /// 权限规则不存在。
    public static var resourceNotFound_AccessRuleNotExists: TCChdfsError {
        TCChdfsError(.resourceNotFound_AccessRuleNotExists)
    }
    
    /// 文件系统不存在。
    public static var resourceNotFound_FileSystemNotExists: TCChdfsError {
        TCChdfsError(.resourceNotFound_FileSystemNotExists)
    }
    
    /// 挂载点不存在。
    public static var resourceNotFound_MountPointNotExists: TCChdfsError {
        TCChdfsError(.resourceNotFound_MountPointNotExists)
    }
    
    /// VPC网络不存在。
    public static var resourceNotFound_VpcNotExists: TCChdfsError {
        TCChdfsError(.resourceNotFound_VpcNotExists)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCChdfsError {
        TCChdfsError(.resourceUnavailable)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCChdfsError {
        TCChdfsError(.unauthorizedOperation)
    }
}

extension TCChdfsError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameterValue.self, ResourceNotFound.self]
    }
}

extension TCChdfsError: Equatable {
    public static func == (lhs: TCChdfsError, rhs: TCChdfsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCChdfsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCChdfsError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
