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
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_CallCAM = "InternalError.CallCAM"
        case internalError_CallCvm = "InternalError.CallCvm"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_InvalidFilterNotSupportedName = "InvalidParameterValue.InvalidFilterNotSupportedName"
        case invalidParameterValue_LimitExceeded = "InvalidParameterValue.LimitExceeded"
        case invalidParameterValue_NotSupported = "InvalidParameterValue.NotSupported"
        case invalidParameterValue_ParametersNotSupported = "InvalidParameterValue.ParametersNotSupported"
        case invalidParameterValue_TooLarge = "InvalidParameterValue.TooLarge"
        case invalidParameterValue_TooLong = "InvalidParameterValue.TooLong"
        case invalidParameterValue_TooShort = "InvalidParameterValue.TooShort"
        case invalidParameterValue_TooSmall = "InvalidParameterValue.TooSmall"
        case invalidParameterValue_ValueDuplicated = "InvalidParameterValue.ValueDuplicated"
        case invalidParameter_Malformed = "InvalidParameter.Malformed"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_QueueNumLimit = "LimitExceeded.QueueNumLimit"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_AutoScalingGroupId = "ResourceNotFound.AutoScalingGroupId"
        case resourceNotFound_ClusterId = "ResourceNotFound.ClusterId"
        case resourceNotFound_ImageId = "ResourceNotFound.ImageId"
        case resourceNotFound_LaunchConfigurationId = "ResourceNotFound.LaunchConfigurationId"
        case resourceNotFound_NodeId = "ResourceNotFound.NodeId"
        case resourceNotFound_Queue = "ResourceNotFound.Queue"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_AutoScalingGroupAlreadyBinded = "UnsupportedOperation.AutoScalingGroupAlreadyBinded"
        case unsupportedOperation_AutoScalingType = "UnsupportedOperation.AutoScalingType"
        case unsupportedOperation_ClusterStatusNotSupport = "UnsupportedOperation.ClusterStatusNotSupport"
        case unsupportedOperation_InvalidNodeRole = "UnsupportedOperation.InvalidNodeRole"
        case unsupportedOperation_NodeStatusNotSupport = "UnsupportedOperation.NodeStatusNotSupport"
        case unsupportedOperation_ParameterTooLarge = "UnsupportedOperation.ParameterTooLarge"
        case unsupportedOperation_ParameterTooSmall = "UnsupportedOperation.ParameterTooSmall"
        case unsupportedOperation_QueueNotEmpty = "UnsupportedOperation.QueueNotEmpty"
        case unsupportedOperation_VpcIdConflict = "UnsupportedOperation.VpcIdConflict"
    }

    /// Error domains affliated to ``TCThpcError``.
    public static var domains: [TCErrorType.Type] {
        [
            InternalError.self,
            InvalidParameter.self,
            InvalidParameterValue.self,
            LimitExceeded.self,
            ResourceNotFound.self,
            UnsupportedOperation.self
        ]
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

    /// CAM签名/鉴权错误。
    public static var authFailure: TCThpcError {
        TCThpcError(.authFailure)
    }

    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCThpcError {
        TCThpcError(.dryRunOperation)
    }

    /// 操作失败。
    public static var failedOperation: TCThpcError {
        TCThpcError(.failedOperation)
    }

    /// 内部错误。
    public static var internalError: TCThpcError {
        TCThpcError(.internalError)
    }

    /// CAM服务调用失败。
    public static var internalError_CallCAM: TCThpcError {
        TCThpcError(.internalError_CallCAM)
    }

    /// cvm调用失败。
    public static var internalError_CallCvm: TCThpcError {
        TCThpcError(.internalError_CallCvm)
    }

    /// 参数错误。
    public static var invalidParameter: TCThpcError {
        TCThpcError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCThpcError {
        TCThpcError(.invalidParameterValue)
    }

    /// 不支持指定过滤器的键。
    public static var invalidParameterValue_InvalidFilterNotSupportedName: TCThpcError {
        TCThpcError(.invalidParameterValue_InvalidFilterNotSupportedName)
    }

    /// 参数值数量超过限制。
    public static var invalidParameterValue_LimitExceeded: TCThpcError {
        TCThpcError(.invalidParameterValue_LimitExceeded)
    }

    /// 不支持该参数值。
    public static var invalidParameterValue_NotSupported: TCThpcError {
        TCThpcError(.invalidParameterValue_NotSupported)
    }

    /// 字段不支持此值。
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

    /// 无效参数值。参数值太短。
    public static var invalidParameterValue_TooShort: TCThpcError {
        TCThpcError(.invalidParameterValue_TooShort)
    }

    /// 参数值过小。
    public static var invalidParameterValue_TooSmall: TCThpcError {
        TCThpcError(.invalidParameterValue_TooSmall)
    }

    /// 参数值重复。不支持此操作。
    public static var invalidParameterValue_ValueDuplicated: TCThpcError {
        TCThpcError(.invalidParameterValue_ValueDuplicated)
    }

    /// 参数格式有误。
    public static var invalidParameter_Malformed: TCThpcError {
        TCThpcError(.invalidParameter_Malformed)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCThpcError {
        TCThpcError(.limitExceeded)
    }

    /// 队列数量达到上限。
    public static var limitExceeded_QueueNumLimit: TCThpcError {
        TCThpcError(.limitExceeded_QueueNumLimit)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCThpcError {
        TCThpcError(.missingParameter)
    }

    /// 操作被拒绝。
    public static var operationDenied: TCThpcError {
        TCThpcError(.operationDenied)
    }

    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCThpcError {
        TCThpcError(.requestLimitExceeded)
    }

    /// 资源被占用。
    public static var resourceInUse: TCThpcError {
        TCThpcError(.resourceInUse)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCThpcError {
        TCThpcError(.resourceInsufficient)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCThpcError {
        TCThpcError(.resourceNotFound)
    }

    /// 无法找到弹性伸缩组ID。
    public static var resourceNotFound_AutoScalingGroupId: TCThpcError {
        TCThpcError(.resourceNotFound_AutoScalingGroupId)
    }

    /// 集群不存在。
    public static var resourceNotFound_ClusterId: TCThpcError {
        TCThpcError(.resourceNotFound_ClusterId)
    }

    /// 无法找到镜像ID。
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

    /// 无法找到指定队列。
    public static var resourceNotFound_Queue: TCThpcError {
        TCThpcError(.resourceNotFound_Queue)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCThpcError {
        TCThpcError(.unauthorizedOperation)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCThpcError {
        TCThpcError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCThpcError {
        TCThpcError(.unsupportedOperation)
    }

    /// 该伸缩组已绑定集群，请更换伸缩组。
    public static var unsupportedOperation_AutoScalingGroupAlreadyBinded: TCThpcError {
        TCThpcError(.unsupportedOperation_AutoScalingGroupAlreadyBinded)
    }

    /// 弹性伸缩类型不支持此操作。
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

    /// 节点状态不支持此操作。
    public static var unsupportedOperation_NodeStatusNotSupport: TCThpcError {
        TCThpcError(.unsupportedOperation_NodeStatusNotSupport)
    }

    /// 参数值过大，不支持此操作。
    public static var unsupportedOperation_ParameterTooLarge: TCThpcError {
        TCThpcError(.unsupportedOperation_ParameterTooLarge)
    }

    /// 参数值过小，不支持此操作。
    public static var unsupportedOperation_ParameterTooSmall: TCThpcError {
        TCThpcError(.unsupportedOperation_ParameterTooSmall)
    }

    /// 队列内存在节点，不支持此操作。
    public static var unsupportedOperation_QueueNotEmpty: TCThpcError {
        TCThpcError(.unsupportedOperation_QueueNotEmpty)
    }

    /// vpc冲突，不支持当前操作。
    public static var unsupportedOperation_VpcIdConflict: TCThpcError {
        TCThpcError(.unsupportedOperation_VpcIdConflict)
    }

    public func asThpcError() -> TCThpcError {
        return self
    }
}
