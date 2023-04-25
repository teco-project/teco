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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

/// Service error type returned by `Iotvideo`.
public protocol TCIotvideoErrorType: TCServiceErrorType {
    /// Get the service error as ``TCIotvideoError``.
    ///
    /// - Returns: ``TCIotvideoError`` that holds the same error code and context.
    func asIotvideoError() -> TCIotvideoError
}

public struct TCIotvideoError: TCIotvideoErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_SignatureFailure = "AuthFailure.SignatureFailure"
        case authFailure_TokenFailure = "AuthFailure.TokenFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_DeviceFirmwareTaskAlreadDone = "FailedOperation.DeviceFirmwareTaskAlreadDone"
        case failedOperation_DeviceIsUpdating = "FailedOperation.DeviceIsUpdating"
        case failedOperation_DeviceRunningOtherOtaTask = "FailedOperation.DeviceRunningOtherOtaTask"
        case failedOperation_PermissionDenied = "FailedOperation.PermissionDenied"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_FirmwareAlreadyExist = "InvalidParameterValue.FirmwareAlreadyExist"
        case invalidParameterValue_Tid = "InvalidParameterValue.Tid"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_DeviceFirmwareTaskNotExist = "ResourceNotFound.DeviceFirmwareTaskNotExist"
        case resourceNotFound_DeviceHasNoFirmware = "ResourceNotFound.DeviceHasNoFirmware"
        case resourceNotFound_FirmwareNotExist = "ResourceNotFound.FirmwareNotExist"
        case resourceNotFound_FirmwareTaskNotExist = "ResourceNotFound.FirmwareTaskNotExist"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
    }

    /// Error domains affliated to ``TCIotvideoError``.
    public static var domains: [TCErrorType.Type] {
        [AuthFailure.self, FailedOperation.self, InvalidParameterValue.self, ResourceNotFound.self]
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
    public static var authFailure: TCIotvideoError {
        TCIotvideoError(.authFailure)
    }

    /// 签名校验失败。
    public static var authFailure_SignatureFailure: TCIotvideoError {
        TCIotvideoError(.authFailure_SignatureFailure)
    }

    /// 获取token为空。
    public static var authFailure_TokenFailure: TCIotvideoError {
        TCIotvideoError(.authFailure_TokenFailure)
    }

    /// DryRun 操作，代表请求将会是成功的，只是多传了 DryRun 参数。
    public static var dryRunOperation: TCIotvideoError {
        TCIotvideoError(.dryRunOperation)
    }

    /// 操作失败。
    public static var failedOperation: TCIotvideoError {
        TCIotvideoError(.failedOperation)
    }

    /// 设备固件升级任务已经完成。
    public static var failedOperation_DeviceFirmwareTaskAlreadDone: TCIotvideoError {
        TCIotvideoError(.failedOperation_DeviceFirmwareTaskAlreadDone)
    }

    /// 设备正在升级中。
    public static var failedOperation_DeviceIsUpdating: TCIotvideoError {
        TCIotvideoError(.failedOperation_DeviceIsUpdating)
    }

    /// 设备已经运行其他ota升级任务。
    public static var failedOperation_DeviceRunningOtherOtaTask: TCIotvideoError {
        TCIotvideoError(.failedOperation_DeviceRunningOtherOtaTask)
    }

    /// 无相关操作权限。
    public static var failedOperation_PermissionDenied: TCIotvideoError {
        TCIotvideoError(.failedOperation_PermissionDenied)
    }

    /// 内部错误。
    public static var internalError: TCIotvideoError {
        TCIotvideoError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCIotvideoError {
        TCIotvideoError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCIotvideoError {
        TCIotvideoError(.invalidParameterValue)
    }

    /// 固件已存在。
    public static var invalidParameterValue_FirmwareAlreadyExist: TCIotvideoError {
        TCIotvideoError(.invalidParameterValue_FirmwareAlreadyExist)
    }

    /// tid非法。
    public static var invalidParameterValue_Tid: TCIotvideoError {
        TCIotvideoError(.invalidParameterValue_Tid)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCIotvideoError {
        TCIotvideoError(.limitExceeded)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCIotvideoError {
        TCIotvideoError(.missingParameter)
    }

    /// 操作被拒绝。
    public static var operationDenied: TCIotvideoError {
        TCIotvideoError(.operationDenied)
    }

    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCIotvideoError {
        TCIotvideoError(.requestLimitExceeded)
    }

    /// 资源被占用。
    public static var resourceInUse: TCIotvideoError {
        TCIotvideoError(.resourceInUse)
    }

    /// 资源不足。
    public static var resourceInsufficient: TCIotvideoError {
        TCIotvideoError(.resourceInsufficient)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCIotvideoError {
        TCIotvideoError(.resourceNotFound)
    }

    /// 设备固件升级任务不存在。
    public static var resourceNotFound_DeviceFirmwareTaskNotExist: TCIotvideoError {
        TCIotvideoError(.resourceNotFound_DeviceFirmwareTaskNotExist)
    }

    /// 设备无固件版本。
    public static var resourceNotFound_DeviceHasNoFirmware: TCIotvideoError {
        TCIotvideoError(.resourceNotFound_DeviceHasNoFirmware)
    }

    /// 固件不存在。
    public static var resourceNotFound_FirmwareNotExist: TCIotvideoError {
        TCIotvideoError(.resourceNotFound_FirmwareNotExist)
    }

    /// 固件升级任务不存在。
    public static var resourceNotFound_FirmwareTaskNotExist: TCIotvideoError {
        TCIotvideoError(.resourceNotFound_FirmwareTaskNotExist)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCIotvideoError {
        TCIotvideoError(.resourceUnavailable)
    }

    /// 资源售罄。
    public static var resourcesSoldOut: TCIotvideoError {
        TCIotvideoError(.resourcesSoldOut)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCIotvideoError {
        TCIotvideoError(.unauthorizedOperation)
    }

    /// 未知参数错误。
    public static var unknownParameter: TCIotvideoError {
        TCIotvideoError(.unknownParameter)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCIotvideoError {
        TCIotvideoError(.unsupportedOperation)
    }

    public func asIotvideoError() -> TCIotvideoError {
        return self
    }
}
