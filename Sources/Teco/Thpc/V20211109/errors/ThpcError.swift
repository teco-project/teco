//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import TecoCore

/// Service error type returned by `Thpc`.
public protocol TCThpcErrorType: TCServiceErrorType {
    /// Get the service error as ``TCThpcError``.
    ///
    /// - Returns: ``TCThpcError`` that holds the same error code and context.
    func asThpcError() -> TCThpcError
}

public struct TCThpcError: TCThpcErrorType {
    enum Code: String {
        case internalError_CallCvm = "InternalError.CallCvm"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_NotSupported = "InvalidParameterValue.NotSupported"
        case invalidParameterValue_TooLarge = "InvalidParameterValue.TooLarge"
        case invalidParameterValue_TooLong = "InvalidParameterValue.TooLong"
        case invalidParameterValue_TooSmall = "InvalidParameterValue.TooSmall"
        case invalidParameter_Malformed = "InvalidParameter.Malformed"
        case resourceNotFound_AutoScalingGroupId = "ResourceNotFound.AutoScalingGroupId"
        case resourceNotFound_ClusterId = "ResourceNotFound.ClusterId"
        case resourceNotFound_LaunchConfigurationId = "ResourceNotFound.LaunchConfigurationId"
        case unsupportedOperation_AutoScalingGroupAlreadyBinded = "UnsupportedOperation.AutoScalingGroupAlreadyBinded"
        case unsupportedOperation_BindAutoScalingGroup = "UnsupportedOperation.BindAutoScalingGroup"
        case unsupportedOperation_ClusterStatusNotSupport = "UnsupportedOperation.ClusterStatusNotSupport"
    }

    /// Error domains affliated to ``TCThpcError``.
    public static var domains: [TCErrorType.Type] {
        [InternalError.self, InvalidParameter.self, InvalidParameterValue.self, ResourceNotFound.self, UnsupportedOperation.self]
    }

    private let error: Code

    public let context: TCErrorContext?

    public var errorCode: String {
        self.error.rawValue
    }

    /// Initializer used by ``TCClient`` to match an error of this type.
    public init?(errorCode: String, context: TCErrorContext) {
        guard let error = Code(rawValue: errorCode) else {
            return nil
        }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code, context: TCErrorContext? = nil) {
        self.error = error
        self.context = context
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

    /// 无法找到弹性伸缩组ID。
    public static var resourceNotFound_AutoScalingGroupId: TCThpcError {
        TCThpcError(.resourceNotFound_AutoScalingGroupId)
    }

    /// 集群不存在。
    public static var resourceNotFound_ClusterId: TCThpcError {
        TCThpcError(.resourceNotFound_ClusterId)
    }

    /// 无法找到ID对应的弹性伸缩启动配置。
    public static var resourceNotFound_LaunchConfigurationId: TCThpcError {
        TCThpcError(.resourceNotFound_LaunchConfigurationId)
    }

    /// 该伸缩组已绑定集群，请更换伸缩组。
    public static var unsupportedOperation_AutoScalingGroupAlreadyBinded: TCThpcError {
        TCThpcError(.unsupportedOperation_AutoScalingGroupAlreadyBinded)
    }

    /// 指定的集群或集群队列当前不支持绑定弹性伸缩组。
    public static var unsupportedOperation_BindAutoScalingGroup: TCThpcError {
        TCThpcError(.unsupportedOperation_BindAutoScalingGroup)
    }

    /// 该集群当前状态不支持该操作。
    public static var unsupportedOperation_ClusterStatusNotSupport: TCThpcError {
        TCThpcError(.unsupportedOperation_ClusterStatusNotSupport)
    }

    public func asThpcError() -> TCThpcError {
        return self
    }
}
