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

/// Service error type returned by `Sts`.
public protocol TCStsErrorType: TCServiceErrorType {
    /// Get the service error as ``TCStsError``.
    ///
    /// - Returns: ``TCStsError`` that holds the same error code and context.
    func asStsError() -> TCStsError
}

public struct TCStsError: TCStsErrorType {
    enum Code: String {
        case authFailure_AccessKeyIllegal = "AuthFailure.AccessKeyIllegal"
        case internalError_DbError = "InternalError.DbError"
        case internalError_EncryptError = "InternalError.EncryptError"
        case internalError_GetAppIdError = "InternalError.GetAppIdError"
        case internalError_GetRoleError = "InternalError.GetRoleError"
        case internalError_GetSeedTokenError = "InternalError.GetSeedTokenError"
        case internalError_IllegalRole = "InternalError.IllegalRole"
        case internalError_PbSerializeError = "InternalError.PbSerializeError"
        case internalError_SystemError = "InternalError.SystemError"
        case internalError_UnknownError = "InternalError.UnknownError"
        case invalidParameter_AccessKeyNotSupport = "InvalidParameter.AccessKeyNotSupport"
        case invalidParameter_AccountNotAvaliable = "InvalidParameter.AccountNotAvaliable"
        case invalidParameter_ExtendStrategyOverSize = "InvalidParameter.ExtendStrategyOverSize"
        case invalidParameter_GrantOtherResource = "InvalidParameter.GrantOtherResource"
        case invalidParameter_OverLimit = "InvalidParameter.OverLimit"
        case invalidParameter_OverTimeError = "InvalidParameter.OverTimeError"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case invalidParameter_PolicyTooLong = "InvalidParameter.PolicyTooLong"
        case invalidParameter_ResouceError = "InvalidParameter.ResouceError"
        case invalidParameter_StrategyFormatError = "InvalidParameter.StrategyFormatError"
        case invalidParameter_StrategyInvalid = "InvalidParameter.StrategyInvalid"
        case invalidParameter_TempCodeNotAvaliable = "InvalidParameter.TempCodeNotAvaliable"
        case invalidParameter_WebIdentityTokenError = "InvalidParameter.WebIdentityTokenError"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceNotFound_RoleNotFound = "ResourceNotFound.RoleNotFound"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unsupportedOperation = "UnsupportedOperation"
    }

    /// Error domains affliated to ``TCStsError``.
    public static var domains: [TCErrorType.Type] {
        [AuthFailure.self, InternalError.self, InvalidParameter.self, ResourceNotFound.self]
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

    /// 密钥不合法。
    public static var authFailure_AccessKeyIllegal: TCStsError {
        TCStsError(.authFailure_AccessKeyIllegal)
    }

    /// DB错误。
    public static var internalError_DbError: TCStsError {
        TCStsError(.internalError_DbError)
    }

    /// 加密失败。
    public static var internalError_EncryptError: TCStsError {
        TCStsError(.internalError_EncryptError)
    }

    /// 获取appid错误。
    public static var internalError_GetAppIdError: TCStsError {
        TCStsError(.internalError_GetAppIdError)
    }

    /// 获取角色失败。
    public static var internalError_GetRoleError: TCStsError {
        TCStsError(.internalError_GetRoleError)
    }

    /// 获取token失败。
    public static var internalError_GetSeedTokenError: TCStsError {
        TCStsError(.internalError_GetSeedTokenError)
    }

    /// 角色非法。
    public static var internalError_IllegalRole: TCStsError {
        TCStsError(.internalError_IllegalRole)
    }

    /// pb打包失败。
    public static var internalError_PbSerializeError: TCStsError {
        TCStsError(.internalError_PbSerializeError)
    }

    /// 系统内部错误，如网络错误。
    public static var internalError_SystemError: TCStsError {
        TCStsError(.internalError_SystemError)
    }

    /// 未知错误。
    public static var internalError_UnknownError: TCStsError {
        TCStsError(.internalError_UnknownError)
    }

    /// 不支持该类型密钥。
    public static var invalidParameter_AccessKeyNotSupport: TCStsError {
        TCStsError(.invalidParameter_AccessKeyNotSupport)
    }

    /// 账号不存在或不可用。
    public static var invalidParameter_AccountNotAvaliable: TCStsError {
        TCStsError(.invalidParameter_AccountNotAvaliable)
    }

    /// 扩展策略过大。
    public static var invalidParameter_ExtendStrategyOverSize: TCStsError {
        TCStsError(.invalidParameter_ExtendStrategyOverSize)
    }

    /// 越权访问资源。
    public static var invalidParameter_GrantOtherResource: TCStsError {
        TCStsError(.invalidParameter_GrantOtherResource)
    }

    /// 超过频率限制。
    public static var invalidParameter_OverLimit: TCStsError {
        TCStsError(.invalidParameter_OverLimit)
    }

    /// 过期时间超过阈值。
    public static var invalidParameter_OverTimeError: TCStsError {
        TCStsError(.invalidParameter_OverTimeError)
    }

    /// 参数错误。
    public static var invalidParameter_ParamError: TCStsError {
        TCStsError(.invalidParameter_ParamError)
    }

    /// 策略过长。
    public static var invalidParameter_PolicyTooLong: TCStsError {
        TCStsError(.invalidParameter_PolicyTooLong)
    }

    /// 策略资源六段式错误。
    public static var invalidParameter_ResouceError: TCStsError {
        TCStsError(.invalidParameter_ResouceError)
    }

    /// 策略语法错误。
    public static var invalidParameter_StrategyFormatError: TCStsError {
        TCStsError(.invalidParameter_StrategyFormatError)
    }

    /// 非法策略。
    public static var invalidParameter_StrategyInvalid: TCStsError {
        TCStsError(.invalidParameter_StrategyInvalid)
    }

    /// 临时Code无效。
    public static var invalidParameter_TempCodeNotAvaliable: TCStsError {
        TCStsError(.invalidParameter_TempCodeNotAvaliable)
    }

    /// WebIdentityToken参数错误。
    public static var invalidParameter_WebIdentityTokenError: TCStsError {
        TCStsError(.invalidParameter_WebIdentityTokenError)
    }

    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCStsError {
        TCStsError(.requestLimitExceeded)
    }

    /// 账号对应的角色不存在。
    public static var resourceNotFound_RoleNotFound: TCStsError {
        TCStsError(.resourceNotFound_RoleNotFound)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCStsError {
        TCStsError(.unauthorizedOperation)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCStsError {
        TCStsError(.unsupportedOperation)
    }

    public func asStsError() -> TCStsError {
        return self
    }
}
