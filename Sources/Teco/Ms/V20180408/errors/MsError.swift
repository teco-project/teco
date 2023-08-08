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

/// Service error type returned by `Ms`.
public protocol TCMsErrorType: TCServiceErrorType {
    /// Get the service error as ``TCMsError``.
    ///
    /// - Returns: ``TCMsError`` that holds the same error code and context.
    func asMsError() -> TCMsError
}

public struct TCMsError: TCMsErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_InvalidAuthorization = "AuthFailure.InvalidAuthorization"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_ApkServerError = "InternalError.ApkServerError"
        case internalError_ServerError = "InternalError.ServerError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_AndroidAppMd5Error = "InvalidParameterValue.AndroidAppMd5Error"
        case invalidParameterValue_AndroidAppPkgNameError = "InvalidParameterValue.AndroidAppPkgNameError"
        case invalidParameterValue_AndroidAppPkgNameListError = "InvalidParameterValue.AndroidAppPkgNameListError"
        case invalidParameterValue_AndroidAppTypeError = "InvalidParameterValue.AndroidAppTypeError"
        case invalidParameterValue_AndroidAppUrlError = "InvalidParameterValue.AndroidAppUrlError"
        case invalidParameterValue_AndroidAssetsError = "InvalidParameterValue.AndroidAssetsError"
        case invalidParameterValue_AndroidEncryptParamError = "InvalidParameterValue.AndroidEncryptParamError"
        case invalidParameterValue_AndroidResError = "InvalidParameterValue.AndroidResError"
        case invalidParameterValue_AndroidSoError = "InvalidParameterValue.AndroidSoError"
        case invalidParameterValue_AndroidVMPError = "InvalidParameterValue.AndroidVMPError"
        case invalidParameterValue_AppletEncryptParamError = "InvalidParameterValue.AppletEncryptParamError"
        case invalidParameterValue_CheckUrlError = "InvalidParameterValue.CheckUrlError"
        case invalidParameterValue_EncryptParamAppTypeError = "InvalidParameterValue.EncryptParamAppTypeError"
        case invalidParameterValue_InvalidCoexistItemIdsFilters = "InvalidParameterValue.InvalidCoexistItemIdsFilters"
        case invalidParameterValue_InvalidFilter = "InvalidParameterValue.InvalidFilter"
        case invalidParameterValue_InvalidItemIds = "InvalidParameterValue.InvalidItemIds"
        case invalidParameterValue_InvalidLimit = "InvalidParameterValue.InvalidLimit"
        case invalidParameterValue_InvalidOffset = "InvalidParameterValue.InvalidOffset"
        case invalidParameterValue_InvalidOrderDirection = "InvalidParameterValue.InvalidOrderDirection"
        case invalidParameterValue_InvalidOrderField = "InvalidParameterValue.InvalidOrderField"
        case invalidParameter_MissingServiceInfo = "InvalidParameter.MissingServiceInfo"
        case invalidParameter_ParameterError = "InvalidParameter.ParameterError"
        case invalidParameter_PlanIdNotFound = "InvalidParameter.PlanIdNotFound"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_EncryptTaskLimitExceeded = "LimitExceeded.EncryptTaskLimitExceeded"
        case missingParameter = "MissingParameter"
        case missingParameter_MissingAppInfo = "MissingParameter.MissingAppInfo"
        case missingParameter_MissingItemId = "MissingParameter.MissingItemId"
        case missingParameter_MissingItemIds = "MissingParameter.MissingItemIds"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_ItemIdNotFound = "ResourceNotFound.ItemIdNotFound"
        case resourceNotFound_PlanIdNotFound = "ResourceNotFound.PlanIdNotFound"
        case resourceNotFound_ResultIdNotFound = "ResourceNotFound.ResultIdNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_NotBind = "ResourceUnavailable.NotBind"
        case resourceUnavailable_NotFound = "ResourceUnavailable.NotFound"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_AuthFailed = "UnauthorizedOperation.AuthFailed"
        case unauthorizedOperation_NotWhiteUser = "UnauthorizedOperation.NotWhiteUser"
        case unsupportedOperation = "UnsupportedOperation"
    }

    /// Error domains affliated to ``TCMsError``.
    public static var domains: [TCErrorType.Type] {
        [
            AuthFailure.self,
            InternalError.self,
            InvalidParameter.self,
            InvalidParameterValue.self,
            LimitExceeded.self,
            MissingParameter.self,
            ResourceNotFound.self,
            ResourceUnavailable.self,
            UnauthorizedOperation.self
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
    public static var authFailure: TCMsError {
        TCMsError(.authFailure)
    }

    /// CAM签名/鉴权错误。
    public static var authFailure_InvalidAuthorization: TCMsError {
        TCMsError(.authFailure_InvalidAuthorization)
    }

    /// 操作失败。
    public static var failedOperation: TCMsError {
        TCMsError(.failedOperation)
    }

    /// 内部错误。
    public static var internalError: TCMsError {
        TCMsError(.internalError)
    }

    /// Apk检测服务端无法响应。
    ///
    /// 请联系客服或稍后重试。
    public static var internalError_ApkServerError: TCMsError {
        TCMsError(.internalError_ApkServerError)
    }

    /// 服务端无法响应。
    public static var internalError_ServerError: TCMsError {
        TCMsError(.internalError_ServerError)
    }

    /// 参数错误。
    public static var invalidParameter: TCMsError {
        TCMsError(.invalidParameter)
    }

    /// 参数取值错误。
    public static var invalidParameterValue: TCMsError {
        TCMsError(.invalidParameterValue)
    }

    public static var invalidParameterValue_AndroidAppMd5Error: TCMsError {
        TCMsError(.invalidParameterValue_AndroidAppMd5Error)
    }

    public static var invalidParameterValue_AndroidAppPkgNameError: TCMsError {
        TCMsError(.invalidParameterValue_AndroidAppPkgNameError)
    }

    public static var invalidParameterValue_AndroidAppPkgNameListError: TCMsError {
        TCMsError(.invalidParameterValue_AndroidAppPkgNameListError)
    }

    public static var invalidParameterValue_AndroidAppTypeError: TCMsError {
        TCMsError(.invalidParameterValue_AndroidAppTypeError)
    }

    public static var invalidParameterValue_AndroidAppUrlError: TCMsError {
        TCMsError(.invalidParameterValue_AndroidAppUrlError)
    }

    public static var invalidParameterValue_AndroidAssetsError: TCMsError {
        TCMsError(.invalidParameterValue_AndroidAssetsError)
    }

    /// 请检查配置。
    public static var invalidParameterValue_AndroidEncryptParamError: TCMsError {
        TCMsError(.invalidParameterValue_AndroidEncryptParamError)
    }

    public static var invalidParameterValue_AndroidResError: TCMsError {
        TCMsError(.invalidParameterValue_AndroidResError)
    }

    public static var invalidParameterValue_AndroidSoError: TCMsError {
        TCMsError(.invalidParameterValue_AndroidSoError)
    }

    public static var invalidParameterValue_AndroidVMPError: TCMsError {
        TCMsError(.invalidParameterValue_AndroidVMPError)
    }

    public static var invalidParameterValue_AppletEncryptParamError: TCMsError {
        TCMsError(.invalidParameterValue_AppletEncryptParamError)
    }

    /// 请检查资源是否能下载。
    public static var invalidParameterValue_CheckUrlError: TCMsError {
        TCMsError(.invalidParameterValue_CheckUrlError)
    }

    public static var invalidParameterValue_EncryptParamAppTypeError: TCMsError {
        TCMsError(.invalidParameterValue_EncryptParamAppTypeError)
    }

    /// 不能同时指定ItemIds和Filters。
    public static var invalidParameterValue_InvalidCoexistItemIdsFilters: TCMsError {
        TCMsError(.invalidParameterValue_InvalidCoexistItemIdsFilters)
    }

    /// 无效的过滤器。
    public static var invalidParameterValue_InvalidFilter: TCMsError {
        TCMsError(.invalidParameterValue_InvalidFilter)
    }

    /// ItemIds不合法。
    public static var invalidParameterValue_InvalidItemIds: TCMsError {
        TCMsError(.invalidParameterValue_InvalidItemIds)
    }

    /// Limit不是有效的数字。
    public static var invalidParameterValue_InvalidLimit: TCMsError {
        TCMsError(.invalidParameterValue_InvalidLimit)
    }

    /// Offset不是有效的数字。
    public static var invalidParameterValue_InvalidOffset: TCMsError {
        TCMsError(.invalidParameterValue_InvalidOffset)
    }

    /// OrderDirection参数。
    public static var invalidParameterValue_InvalidOrderDirection: TCMsError {
        TCMsError(.invalidParameterValue_InvalidOrderDirection)
    }

    /// OrderField取值不合法。
    public static var invalidParameterValue_InvalidOrderField: TCMsError {
        TCMsError(.invalidParameterValue_InvalidOrderField)
    }

    /// ServiceInfo结构体参数缺失。
    public static var invalidParameter_MissingServiceInfo: TCMsError {
        TCMsError(.invalidParameter_MissingServiceInfo)
    }

    /// 参数格式错误。
    public static var invalidParameter_ParameterError: TCMsError {
        TCMsError(.invalidParameter_ParameterError)
    }

    /// 不能找到指定的加固策略。
    public static var invalidParameter_PlanIdNotFound: TCMsError {
        TCMsError(.invalidParameter_PlanIdNotFound)
    }

    /// 超过配额限制。
    public static var limitExceeded: TCMsError {
        TCMsError(.limitExceeded)
    }

    public static var limitExceeded_EncryptTaskLimitExceeded: TCMsError {
        TCMsError(.limitExceeded_EncryptTaskLimitExceeded)
    }

    /// 缺少参数错误。
    public static var missingParameter: TCMsError {
        TCMsError(.missingParameter)
    }

    /// AppInfo结构体参数缺失。
    public static var missingParameter_MissingAppInfo: TCMsError {
        TCMsError(.missingParameter_MissingAppInfo)
    }

    /// 缺少ItemId字段。
    public static var missingParameter_MissingItemId: TCMsError {
        TCMsError(.missingParameter_MissingItemId)
    }

    /// 缺少ItemIds字段。
    public static var missingParameter_MissingItemIds: TCMsError {
        TCMsError(.missingParameter_MissingItemIds)
    }

    /// 资源不存在。
    public static var resourceNotFound: TCMsError {
        TCMsError(.resourceNotFound)
    }

    /// ItemId不存在。
    public static var resourceNotFound_ItemIdNotFound: TCMsError {
        TCMsError(.resourceNotFound_ItemIdNotFound)
    }

    /// 无法找到指定的加固策略。
    public static var resourceNotFound_PlanIdNotFound: TCMsError {
        TCMsError(.resourceNotFound_PlanIdNotFound)
    }

    /// ResultId不存在。
    ///
    /// 请稍后重试。
    public static var resourceNotFound_ResultIdNotFound: TCMsError {
        TCMsError(.resourceNotFound_ResultIdNotFound)
    }

    /// 资源不可用。
    public static var resourceUnavailable: TCMsError {
        TCMsError(.resourceUnavailable)
    }

    /// 资源未绑定应用包名。
    public static var resourceUnavailable_NotBind: TCMsError {
        TCMsError(.resourceUnavailable_NotBind)
    }

    /// 找不到该资源。
    public static var resourceUnavailable_NotFound: TCMsError {
        TCMsError(.resourceUnavailable_NotFound)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCMsError {
        TCMsError(.unauthorizedOperation)
    }

    /// 鉴权失败。
    public static var unauthorizedOperation_AuthFailed: TCMsError {
        TCMsError(.unauthorizedOperation_AuthFailed)
    }

    /// 不是白名单用户。
    public static var unauthorizedOperation_NotWhiteUser: TCMsError {
        TCMsError(.unauthorizedOperation_NotWhiteUser)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCMsError {
        TCMsError(.unsupportedOperation)
    }

    public func asMsError() -> TCMsError {
        return self
    }
}
