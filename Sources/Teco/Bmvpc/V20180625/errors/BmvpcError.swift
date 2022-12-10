public struct TCBmvpcError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_SpdAclLimit = "LimitExceeded.SpdAclLimit"
        case limitExceeded_SpdDnetLimit = "LimitExceeded.SpdDnetLimit"
        case limitExceeded_SpdSnetLimit = "LimitExceeded.SpdSnetLimit"
        case resourceInUse = "ResourceInUse"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_CustomerGatewayNotExist = "ResourceNotFound.CustomerGatewayNotExist"
        case resourceNotFound_NotAvaible = "ResourceNotFound.NotAvaible"
        case resourceNotFound_VpcNotExist = "ResourceNotFound.VpcNotExist"
        case resourceNotFound_VpcPeerNotExist = "ResourceNotFound.VpcPeerNotExist"
        case resourceNotFound_VpnConnNotExist = "ResourceNotFound.VpnConnNotExist"
        case resourceNotFound_VpnGwNotExist = "ResourceNotFound.VpnGwNotExist"
        case resourceUnavailable = "ResourceUnavailable"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_CustomerGatewayAddrExist = "UnsupportedOperation.CustomerGatewayAddrExist"
        case unsupportedOperation_CustomerGatewayAddrInvalid = "UnsupportedOperation.CustomerGatewayAddrInvalid"
        case unsupportedOperation_InvalidVpcPeerState = "UnsupportedOperation.InvalidVpcPeerState"
        case unsupportedOperation_InvalidVpnConnState = "UnsupportedOperation.InvalidVpnConnState"
        case unsupportedOperation_SpdAclCidrInvalid = "UnsupportedOperation.SpdAclCidrInvalid"
        case unsupportedOperation_SpdSnetNotInCidr = "UnsupportedOperation.SpdSnetNotInCidr"
        case unsupportedOperation_VpcCidrConfict = "UnsupportedOperation.VpcCidrConfict"
        case unsupportedOperation_VpcPeerExist = "UnsupportedOperation.VpcPeerExist"
        case unsupportedOperation_VpnConnExist = "UnsupportedOperation.VpnConnExist"
        case unsupportedOperation_VpnConnInUse = "UnsupportedOperation.VpnConnInUse"
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
    public static var failedOperation: TCBmvpcError {
        TCBmvpcError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCBmvpcError {
        TCBmvpcError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCBmvpcError {
        TCBmvpcError(.invalidParameter)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCBmvpcError {
        TCBmvpcError(.limitExceeded)
    }
    
    /// 可创建的VPN通道SPD ACL数达到上限。
    public static var limitExceeded_SpdAclLimit: TCBmvpcError {
        TCBmvpcError(.limitExceeded_SpdAclLimit)
    }
    
    /// 可创建的VPN通道SPD ACL目的地址数达到上限。
    public static var limitExceeded_SpdDnetLimit: TCBmvpcError {
        TCBmvpcError(.limitExceeded_SpdDnetLimit)
    }
    
    /// 可创建的VPN通道SPD ACL源地址数达到上限。
    public static var limitExceeded_SpdSnetLimit: TCBmvpcError {
        TCBmvpcError(.limitExceeded_SpdSnetLimit)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCBmvpcError {
        TCBmvpcError(.resourceInUse)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCBmvpcError {
        TCBmvpcError(.resourceNotFound)
    }
    
    /// 对端网关不存在。
    public static var resourceNotFound_CustomerGatewayNotExist: TCBmvpcError {
        TCBmvpcError(.resourceNotFound_CustomerGatewayNotExist)
    }
    
    /// 联通状态的通道才可以重置。
    public static var resourceNotFound_NotAvaible: TCBmvpcError {
        TCBmvpcError(.resourceNotFound_NotAvaible)
    }
    
    /// VPC不存在。
    public static var resourceNotFound_VpcNotExist: TCBmvpcError {
        TCBmvpcError(.resourceNotFound_VpcNotExist)
    }
    
    /// 对等连接不存在。
    public static var resourceNotFound_VpcPeerNotExist: TCBmvpcError {
        TCBmvpcError(.resourceNotFound_VpcPeerNotExist)
    }
    
    /// VPN通道不存在。
    public static var resourceNotFound_VpnConnNotExist: TCBmvpcError {
        TCBmvpcError(.resourceNotFound_VpnConnNotExist)
    }
    
    /// VPN网关不存在。
    public static var resourceNotFound_VpnGwNotExist: TCBmvpcError {
        TCBmvpcError(.resourceNotFound_VpnGwNotExist)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCBmvpcError {
        TCBmvpcError(.resourceUnavailable)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCBmvpcError {
        TCBmvpcError(.unauthorizedOperation)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCBmvpcError {
        TCBmvpcError(.unsupportedOperation)
    }
    
    /// 对端网关地址已存在。
    public static var unsupportedOperation_CustomerGatewayAddrExist: TCBmvpcError {
        TCBmvpcError(.unsupportedOperation_CustomerGatewayAddrExist)
    }
    
    /// 对端网关地址不合法。
    public static var unsupportedOperation_CustomerGatewayAddrInvalid: TCBmvpcError {
        TCBmvpcError(.unsupportedOperation_CustomerGatewayAddrInvalid)
    }
    
    /// 对等连接状态不正确。
    public static var unsupportedOperation_InvalidVpcPeerState: TCBmvpcError {
        TCBmvpcError(.unsupportedOperation_InvalidVpcPeerState)
    }
    
    /// VPN通道状态不正确。
    public static var unsupportedOperation_InvalidVpnConnState: TCBmvpcError {
        TCBmvpcError(.unsupportedOperation_InvalidVpnConnState)
    }
    
    /// SPD策略源目的地址冲突。
    public static var unsupportedOperation_SpdAclCidrInvalid: TCBmvpcError {
        TCBmvpcError(.unsupportedOperation_SpdAclCidrInvalid)
    }
    
    /// SPD策略源地址不在VPC网段内。
    public static var unsupportedOperation_SpdSnetNotInCidr: TCBmvpcError {
        TCBmvpcError(.unsupportedOperation_SpdSnetNotInCidr)
    }
    
    /// 对等连接CIDR冲突。
    public static var unsupportedOperation_VpcCidrConfict: TCBmvpcError {
        TCBmvpcError(.unsupportedOperation_VpcCidrConfict)
    }
    
    /// 对等连接已存在。
    public static var unsupportedOperation_VpcPeerExist: TCBmvpcError {
        TCBmvpcError(.unsupportedOperation_VpcPeerExist)
    }
    
    /// VPN通道已存在。
    public static var unsupportedOperation_VpnConnExist: TCBmvpcError {
        TCBmvpcError(.unsupportedOperation_VpnConnExist)
    }
    
    /// 存在VPN通道引用。
    public static var unsupportedOperation_VpnConnInUse: TCBmvpcError {
        TCBmvpcError(.unsupportedOperation_VpnConnInUse)
    }
}

extension TCBmvpcError {
    public static var domains: [TCErrorType.Type] {
        return [LimitExceeded.self, ResourceNotFound.self, UnsupportedOperation.self]
    }
}

extension TCBmvpcError: Equatable {
    public static func == (lhs: TCBmvpcError, rhs: TCBmvpcError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBmvpcError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCBmvpcError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
