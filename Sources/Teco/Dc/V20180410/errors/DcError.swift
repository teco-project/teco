//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

/// Service error type returned by `Dc`.
public protocol TCDcErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCDcError``.
    ///
    /// - Returns: ``TCDcError`` that holds the same error code and context.
    func asDcError() -> TCDcError
}

public struct TCDcError: TCDcErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_VlanConfLict = "InvalidParameterValue.VlanConfLict"
        case invalidParameter_AddressError = "InvalidParameter.AddressError"
        case invalidParameter_DirectConnectIdIsNotUin = "InvalidParameter.DirectConnectIdIsNotUin"
        case invalidParameter_UinIsNotExist = "InvalidParameter.UinIsNotExist"
        case invalidParameter_VlanConflict = "InvalidParameter.VlanConflict"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_DirectConnectLimitExceeded = "LimitExceeded.DirectConnectLimitExceeded"
        case limitExceeded_DirectConnectTunnelLimitExceeded = "LimitExceeded.DirectConnectTunnelLimitExceeded"
        case missingParameter = "MissingParameter"
        case resourceInUse = "ResourceInUse"
        case resourceInUse_DcVpcIsExist = "ResourceInUse.DcVpcIsExist"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_DirectConnectTunnelIdIsNotExist = "ResourceNotFound.DirectConnectTunnelIdIsNotExist"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_InsufficientBalance = "ResourceUnavailable.InsufficientBalance"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_CrossBorderDirectConnectTunnel = "UnsupportedOperation.CrossBorderDirectConnectTunnel"
        case unsupportedOperation_StateConfLict = "UnsupportedOperation.StateConfLict"
    }
    
    /// Error domains affliated to ``TCDcError``.
    public static var domains: [TCErrorType.Type] {
        [AuthFailure.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceInUse.self, ResourceNotFound.self, ResourceUnavailable.self, UnsupportedOperation.self]
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
    /// Initializer used by ``TCClient`` to match an error of this type.
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
    public static var authFailure: TCDcError {
        TCDcError(.authFailure)
    }
    
    /// CAM签名/鉴权错误，未授权的操作。
    public static var authFailure_UnauthorizedOperation: TCDcError {
        TCDcError(.authFailure_UnauthorizedOperation)
    }
    
    /// 操作失败。
    public static var failedOperation: TCDcError {
        TCDcError(.failedOperation)
    }
    
    /// 内部错误。
    public static var internalError: TCDcError {
        TCDcError(.internalError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCDcError {
        TCDcError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCDcError {
        TCDcError(.invalidParameterValue)
    }
    
    /// vlan冲突。
    public static var invalidParameterValue_VlanConfLict: TCDcError {
        TCDcError(.invalidParameterValue_VlanConfLict)
    }
    
    /// 互联IP错误。
    public static var invalidParameter_AddressError: TCDcError {
        TCDcError(.invalidParameter_AddressError)
    }
    
    /// 物理专线不属于该账号。
    public static var invalidParameter_DirectConnectIdIsNotUin: TCDcError {
        TCDcError(.invalidParameter_DirectConnectIdIsNotUin)
    }
    
    /// 该账号ID不存在。
    public static var invalidParameter_UinIsNotExist: TCDcError {
        TCDcError(.invalidParameter_UinIsNotExist)
    }
    
    /// vlan冲突。
    public static var invalidParameter_VlanConflict: TCDcError {
        TCDcError(.invalidParameter_VlanConflict)
    }
    
    /// 超过配额限制。
    public static var limitExceeded: TCDcError {
        TCDcError(.limitExceeded)
    }
    
    /// 物理专线数已达上限。
    public static var limitExceeded_DirectConnectLimitExceeded: TCDcError {
        TCDcError(.limitExceeded_DirectConnectLimitExceeded)
    }
    
    /// 物理专线的专用通道数已达上限。
    public static var limitExceeded_DirectConnectTunnelLimitExceeded: TCDcError {
        TCDcError(.limitExceeded_DirectConnectTunnelLimitExceeded)
    }
    
    /// 缺少参数错误。
    public static var missingParameter: TCDcError {
        TCDcError(.missingParameter)
    }
    
    /// 资源被占用。
    public static var resourceInUse: TCDcError {
        TCDcError(.resourceInUse)
    }
    
    /// 物理专线的vpc已经存在。
    public static var resourceInUse_DcVpcIsExist: TCDcError {
        TCDcError(.resourceInUse_DcVpcIsExist)
    }
    
    /// 资源不存在。
    public static var resourceNotFound: TCDcError {
        TCDcError(.resourceNotFound)
    }
    
    /// 专用通道不存在。
    public static var resourceNotFound_DirectConnectTunnelIdIsNotExist: TCDcError {
        TCDcError(.resourceNotFound_DirectConnectTunnelIdIsNotExist)
    }
    
    /// 资源不可用。
    public static var resourceUnavailable: TCDcError {
        TCDcError(.resourceUnavailable)
    }
    
    /// 对不起您的帐号已欠费，欠费状态下无法开通产品，请您先行充值。
    public static var resourceUnavailable_InsufficientBalance: TCDcError {
        TCDcError(.resourceUnavailable_InsufficientBalance)
    }
    
    /// 未授权操作。
    public static var unauthorizedOperation: TCDcError {
        TCDcError(.unauthorizedOperation)
    }
    
    /// 未知参数错误。
    public static var unknownParameter: TCDcError {
        TCDcError(.unknownParameter)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCDcError {
        TCDcError(.unsupportedOperation)
    }
    
    /// 不允许创建跨境专用通道，请您联系我们。
    public static var unsupportedOperation_CrossBorderDirectConnectTunnel: TCDcError {
        TCDcError(.unsupportedOperation_CrossBorderDirectConnectTunnel)
    }
    
    /// 状态冲突。
    public static var unsupportedOperation_StateConfLict: TCDcError {
        TCDcError(.unsupportedOperation_StateConfLict)
    }
    
    public func asDcError() -> TCDcError {
        return self
    }
}
