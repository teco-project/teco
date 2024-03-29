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

/// Service error type returned by `Bm`.
public protocol TCBmErrorType: TCServiceErrorType {
    /// Get the service error as ``TCBmError``.
    ///
    /// - Returns: ``TCBmError`` that holds the same error code and context.
    func asBmError() -> TCBmError
}

public struct TCBmError: TCBmErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_ExistRepairTask = "FailedOperation.ExistRepairTask"
        case failedOperation_TscAgentOffline = "FailedOperation.TscAgentOffline"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_InvalidParameter = "InvalidParameterValue.InvalidParameter"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_UserCmdCount = "LimitExceeded.UserCmdCount"
        case resourceInUse_FlowBusy = "ResourceInUse.FlowBusy"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceInsufficient_DeviceInsufficient = "ResourceInsufficient.DeviceInsufficient"
        case resourceUnavailable = "ResourceUnavailable"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_FundInsufficient = "UnsupportedOperation.FundInsufficient"
        case unsupportedOperation_InvalidOperation = "UnsupportedOperation.InvalidOperation"
    }

    /// Error domains affliated to ``TCBmError``.
    public static var domains: [TCErrorType.Type] {
        [
            FailedOperation.self,
            InvalidParameterValue.self,
            LimitExceeded.self,
            ResourceInUse.self,
            ResourceInsufficient.self,
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

    /// 操作失败。
    public static var failedOperation: TCBmError {
        TCBmError(.failedOperation)
    }

    /// 存在未结束故障单，操作失败。
    ///
    /// 设备仍处于故障状态中，请前往 维护平台-维修任务 进行故障处理，处理完毕稍后再试。
    public static var failedOperation_ExistRepairTask: TCBmError {
        TCBmError(.failedOperation_ExistRepairTask)
    }

    /// Tsc Agent不在线。
    public static var failedOperation_TscAgentOffline: TCBmError {
        TCBmError(.failedOperation_TscAgentOffline)
    }

    /// 参数错误。
    public static var invalidParameter: TCBmError {
        TCBmError(.invalidParameter)
    }

    /// 参数值错误。
    public static var invalidParameterValue_InvalidParameter: TCBmError {
        TCBmError(.invalidParameterValue_InvalidParameter)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCBmError {
        TCBmError(.limitExceeded)
    }

    /// 脚本数量超过上限。
    public static var limitExceeded_UserCmdCount: TCBmError {
        TCBmError(.limitExceeded_UserCmdCount)
    }

    /// 流程操作繁忙，请稍后重试。
    public static var resourceInUse_FlowBusy: TCBmError {
        TCBmError(.resourceInUse_FlowBusy)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCBmError {
        TCBmError(.resourceInsufficient)
    }

    /// 设备不足。
    public static var resourceInsufficient_DeviceInsufficient: TCBmError {
        TCBmError(.resourceInsufficient_DeviceInsufficient)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCBmError {
        TCBmError(.resourceUnavailable)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCBmError {
        TCBmError(.unauthorizedOperation)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCBmError {
        TCBmError(.unsupportedOperation)
    }

    /// 余额不足。
    public static var unsupportedOperation_FundInsufficient: TCBmError {
        TCBmError(.unsupportedOperation_FundInsufficient)
    }

    /// 设备不支持此操作。
    public static var unsupportedOperation_InvalidOperation: TCBmError {
        TCBmError(.unsupportedOperation_InvalidOperation)
    }

    public func asBmError() -> TCBmError {
        return self
    }
}
