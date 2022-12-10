public struct TCThpcError: TCErrorType {
    enum Code: String {
        case dryRunOperation = "DryRunOperation"
        case internalError_CallCvm = "InternalError.CallCvm"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_NotSupported = "InvalidParameterValue.NotSupported"
        case invalidParameterValue_ParametersNotSupported = "InvalidParameterValue.ParametersNotSupported"
        case invalidParameterValue_TooLarge = "InvalidParameterValue.TooLarge"
        case invalidParameterValue_TooLong = "InvalidParameterValue.TooLong"
        case invalidParameterValue_TooSmall = "InvalidParameterValue.TooSmall"
        case invalidParameter_Malformed = "InvalidParameter.Malformed"
        case missingParameter = "MissingParameter"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound_AutoScalingGroupId = "ResourceNotFound.AutoScalingGroupId"
        case resourceNotFound_ClusterId = "ResourceNotFound.ClusterId"
        case resourceNotFound_ImageId = "ResourceNotFound.ImageId"
        case resourceNotFound_LaunchConfigurationId = "ResourceNotFound.LaunchConfigurationId"
        case resourceNotFound_NodeId = "ResourceNotFound.NodeId"
        case unsupportedOperation_AutoScalingGroupAlreadyBinded = "UnsupportedOperation.AutoScalingGroupAlreadyBinded"
        case unsupportedOperation_AutoScalingType = "UnsupportedOperation.AutoScalingType"
        case unsupportedOperation_ClusterStatusNotSupport = "UnsupportedOperation.ClusterStatusNotSupport"
        case unsupportedOperation_InvalidNodeRole = "UnsupportedOperation.InvalidNodeRole"
        case unsupportedOperation_NodeStatusNotSupport = "UnsupportedOperation.NodeStatusNotSupport"
        case unsupportedOperation_VpcIdConflict = "UnsupportedOperation.VpcIdConflict"
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
    
    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCThpcError {
        TCThpcError(.dryRunOperation)
    }
    
    /// cvm调用失败。
    public static var internalError_CallCvm: TCThpcError {
        TCThpcError(.internalError_CallCvm)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCThpcError {
        TCThpcError(.invalidParameterValue)
    }
    
    /// 不支持该参数值。
    public static var invalidParameterValue_NotSupported: TCThpcError {
        TCThpcError(.invalidParameterValue_NotSupported)
    }
    
    public static var invalidParameterValue_ParametersNotSupported: TCThpcError {
        TCThpcError(.invalidParameterValue_ParametersNotSupported)
    }
    
    /// 参数值过大。
    public static var invalidParameterValue_TooLarge: TCThpcError {
        TCThpcError(.invalidParameterValue_TooLarge)
    }
    
    /// 参数长度过长。
    public static var invalidParameterValue_TooLong: TCThpcError {
        TCThpcError(.invalidParameterValue_TooLong)
    }
    
    /// 参数值过小。
    public static var invalidParameterValue_TooSmall: TCThpcError {
        TCThpcError(.invalidParameterValue_TooSmall)
    }
    
    /// 参数格式有误。
    public static var invalidParameter_Malformed: TCThpcError {
        TCThpcError(.invalidParameter_Malformed)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCThpcError {
        TCThpcError(.missingParameter)
    }
    
    /// 资源不足。
    public static var resourceInsufficient: TCThpcError {
        TCThpcError(.resourceInsufficient)
    }
    
    /// 无法找到弹性伸缩组ID。
    public static var resourceNotFound_AutoScalingGroupId: TCThpcError {
        TCThpcError(.resourceNotFound_AutoScalingGroupId)
    }
    
    /// 集群不存在。
    public static var resourceNotFound_ClusterId: TCThpcError {
        TCThpcError(.resourceNotFound_ClusterId)
    }
    
    public static var resourceNotFound_ImageId: TCThpcError {
        TCThpcError(.resourceNotFound_ImageId)
    }
    
    /// 无法找到ID对应的弹性伸缩启动配置。
    public static var resourceNotFound_LaunchConfigurationId: TCThpcError {
        TCThpcError(.resourceNotFound_LaunchConfigurationId)
    }
    
    /// 无法找到ID对应节点。
    public static var resourceNotFound_NodeId: TCThpcError {
        TCThpcError(.resourceNotFound_NodeId)
    }
    
    /// 该伸缩组已绑定集群，请更换伸缩组。
    public static var unsupportedOperation_AutoScalingGroupAlreadyBinded: TCThpcError {
        TCThpcError(.unsupportedOperation_AutoScalingGroupAlreadyBinded)
    }
    
    public static var unsupportedOperation_AutoScalingType: TCThpcError {
        TCThpcError(.unsupportedOperation_AutoScalingType)
    }
    
    /// 该集群当前状态不支持该操作。
    public static var unsupportedOperation_ClusterStatusNotSupport: TCThpcError {
        TCThpcError(.unsupportedOperation_ClusterStatusNotSupport)
    }
    
    /// 类型节点不支持当前操作。
    public static var unsupportedOperation_InvalidNodeRole: TCThpcError {
        TCThpcError(.unsupportedOperation_InvalidNodeRole)
    }
    
    public static var unsupportedOperation_NodeStatusNotSupport: TCThpcError {
        TCThpcError(.unsupportedOperation_NodeStatusNotSupport)
    }
    
    /// vpc冲突，不支持当前操作。
    public static var unsupportedOperation_VpcIdConflict: TCThpcError {
        TCThpcError(.unsupportedOperation_VpcIdConflict)
    }
}

extension TCThpcError {
    public static var domains: [TCErrorType.Type] {
        return [InternalError.self, InvalidParameter.self, InvalidParameterValue.self, ResourceNotFound.self, UnsupportedOperation.self]
    }
}

extension TCThpcError: Equatable {
    public static func == (lhs: TCThpcError, rhs: TCThpcError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCThpcError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}