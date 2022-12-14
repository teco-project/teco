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

/// Service error type returned by `Tcb`.
public protocol TCTcbErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCTcbError``.
    ///
    /// - Returns: ``TCTcbError`` that holds the same error code and context.
    func asTcbError() -> TCTcbError
}

public struct TCTcbError: TCTcbErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_PartialFailure = "FailedOperation.PartialFailure"
        case internalError = "InternalError"
        case internalError_Database = "InternalError.Database"
        case internalError_SystemFail = "InternalError.SystemFail"
        case internalError_Timeout = "InternalError.Timeout"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameter_APICreated = "InvalidParameter.APICreated"
        case invalidParameter_Action = "InvalidParameter.Action"
        case invalidParameter_EnvId = "InvalidParameter.EnvId"
        case invalidParameter_PathExist = "InvalidParameter.PathExist"
        case invalidParameter_ResourceNotExists = "InvalidParameter.ResourceNotExists"
        case invalidParameter_ServiceEvil = "InvalidParameter.ServiceEvil"
        case invalidParameter_ServiceNotExist = "InvalidParameter.ServiceNotExist"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_Concurrent = "LimitExceeded.Concurrent"
        case limitExceeded_ErrNamespaceMaxLimit = "LimitExceeded.ErrNamespaceMaxLimit"
        case limitExceeded_ErrRepoMaxLimit = "LimitExceeded.ErrRepoMaxLimit"
        case limitExceeded_Request = "LimitExceeded.Request"
        case missingParameter = "MissingParameter"
        case missingParameter_Param = "MissingParameter.Param"
        case operationDenied = "OperationDenied"
        case operationDenied_ResourceFrozen = "OperationDenied.ResourceFrozen"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_UserNotExists = "ResourceNotFound.UserNotExists"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_BalanceNotEnough = "ResourceUnavailable.BalanceNotEnough"
        case resourceUnavailable_CDNFreezed = "ResourceUnavailable.CDNFreezed"
        case resourceUnavailable_InvoiceAmountLack = "ResourceUnavailable.InvoiceAmountLack"
        case resourceUnavailable_RefreshTokenExpired = "ResourceUnavailable.RefreshTokenExpired"
        case resourceUnavailable_ResourceOverdue = "ResourceUnavailable.ResourceOverdue"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_CodeOAuthUnauthorized = "UnauthorizedOperation.CodeOAuthUnauthorized"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_TaskExisted = "UnsupportedOperation.TaskExisted"
    }

    /// Error domains affliated to ``TCTcbError``.
    public static var domains: [TCErrorType.Type] {
        [AuthFailure.self, FailedOperation.self, InternalError.self, InvalidParameter.self, LimitExceeded.self, MissingParameter.self, OperationDenied.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnsupportedOperation.self]
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

    /// CAM??????/???????????????
    public static var authFailure: TCTcbError {
        TCTcbError(.authFailure)
    }

    /// ????????????????????????????????????
    public static var authFailure_UnauthorizedOperation: TCTcbError {
        TCTcbError(.authFailure_UnauthorizedOperation)
    }

    /// ???????????????
    public static var failedOperation: TCTcbError {
        TCTcbError(.failedOperation)
    }

    /// ?????????????????????????????????????????????
    ///
    /// ???????????????????????????????????????????????????????????????????????????????????????????????????Message???
    public static var failedOperation_PartialFailure: TCTcbError {
        TCTcbError(.failedOperation_PartialFailure)
    }

    /// ???????????????
    public static var internalError: TCTcbError {
        TCTcbError(.internalError)
    }

    /// ??????????????????
    public static var internalError_Database: TCTcbError {
        TCTcbError(.internalError_Database)
    }

    /// ???????????????
    public static var internalError_SystemFail: TCTcbError {
        TCTcbError(.internalError_SystemFail)
    }

    /// ???????????????
    public static var internalError_Timeout: TCTcbError {
        TCTcbError(.internalError_Timeout)
    }

    /// ???????????????
    public static var invalidParameter: TCTcbError {
        TCTcbError(.invalidParameter)
    }

    /// ?????????????????????
    public static var invalidParameterValue: TCTcbError {
        TCTcbError(.invalidParameterValue)
    }

    /// API???????????????
    public static var invalidParameter_APICreated: TCTcbError {
        TCTcbError(.invalidParameter_APICreated)
    }

    /// ??????????????????
    public static var invalidParameter_Action: TCTcbError {
        TCTcbError(.invalidParameter_Action)
    }

    /// ??????ID?????????
    public static var invalidParameter_EnvId: TCTcbError {
        TCTcbError(.invalidParameter_EnvId)
    }

    /// ??????????????????
    public static var invalidParameter_PathExist: TCTcbError {
        TCTcbError(.invalidParameter_PathExist)
    }

    /// ????????????????????????
    public static var invalidParameter_ResourceNotExists: TCTcbError {
        TCTcbError(.invalidParameter_ResourceNotExists)
    }

    /// ?????????????????????
    public static var invalidParameter_ServiceEvil: TCTcbError {
        TCTcbError(.invalidParameter_ServiceEvil)
    }

    /// ??????????????????
    public static var invalidParameter_ServiceNotExist: TCTcbError {
        TCTcbError(.invalidParameter_ServiceNotExist)
    }

    /// ?????????????????????
    public static var limitExceeded: TCTcbError {
        TCTcbError(.limitExceeded)
    }

    /// ?????????????????????????????????
    public static var limitExceeded_Concurrent: TCTcbError {
        TCTcbError(.limitExceeded_Concurrent)
    }

    /// ???????????????????????????
    public static var limitExceeded_ErrNamespaceMaxLimit: TCTcbError {
        TCTcbError(.limitExceeded_ErrNamespaceMaxLimit)
    }

    /// ???????????????????????????
    public static var limitExceeded_ErrRepoMaxLimit: TCTcbError {
        TCTcbError(.limitExceeded_ErrRepoMaxLimit)
    }

    /// ?????????????????????????????????
    public static var limitExceeded_Request: TCTcbError {
        TCTcbError(.limitExceeded_Request)
    }

    /// ?????????????????????
    public static var missingParameter: TCTcbError {
        TCTcbError(.missingParameter)
    }

    /// ?????????????????????
    public static var missingParameter_Param: TCTcbError {
        TCTcbError(.missingParameter_Param)
    }

    /// ??????????????????
    public static var operationDenied: TCTcbError {
        TCTcbError(.operationDenied)
    }

    /// ?????????????????????????????????
    ///
    /// ????????????????????????????????? ???????????? ????????????https://console.cloud.tencent.com/tcb/env/safety?tabId=quota??????????????????
    public static var operationDenied_ResourceFrozen: TCTcbError {
        TCTcbError(.operationDenied_ResourceFrozen)
    }

    /// ??????????????????
    public static var resourceInUse: TCTcbError {
        TCTcbError(.resourceInUse)
    }

    /// ???????????????
    public static var resourceInsufficient: TCTcbError {
        TCTcbError(.resourceInsufficient)
    }

    /// ??????????????????
    public static var resourceNotFound: TCTcbError {
        TCTcbError(.resourceNotFound)
    }

    /// ??????????????????
    public static var resourceNotFound_UserNotExists: TCTcbError {
        TCTcbError(.resourceNotFound_UserNotExists)
    }

    /// ??????????????????
    public static var resourceUnavailable: TCTcbError {
        TCTcbError(.resourceUnavailable)
    }

    /// ???????????????-???????????????
    public static var resourceUnavailable_BalanceNotEnough: TCTcbError {
        TCTcbError(.resourceUnavailable_BalanceNotEnough)
    }

    /// ??????????????????CDN?????????
    public static var resourceUnavailable_CDNFreezed: TCTcbError {
        TCTcbError(.resourceUnavailable_CDNFreezed)
    }

    /// ??????????????????????????????????????????
    public static var resourceUnavailable_InvoiceAmountLack: TCTcbError {
        TCTcbError(.resourceUnavailable_InvoiceAmountLack)
    }

    /// ?????????OAuth???refreshToken?????????????????????????????????
    public static var resourceUnavailable_RefreshTokenExpired: TCTcbError {
        TCTcbError(.resourceUnavailable_RefreshTokenExpired)
    }

    /// ???????????????
    public static var resourceUnavailable_ResourceOverdue: TCTcbError {
        TCTcbError(.resourceUnavailable_ResourceOverdue)
    }

    /// ??????????????????
    public static var unauthorizedOperation: TCTcbError {
        TCTcbError(.unauthorizedOperation)
    }

    /// ??????????????????????????????
    public static var unauthorizedOperation_CodeOAuthUnauthorized: TCTcbError {
        TCTcbError(.unauthorizedOperation_CodeOAuthUnauthorized)
    }

    /// ?????????????????????
    public static var unknownParameter: TCTcbError {
        TCTcbError(.unknownParameter)
    }

    /// ??????????????????
    public static var unsupportedOperation: TCTcbError {
        TCTcbError(.unsupportedOperation)
    }

    /// ??????????????????????????????
    public static var unsupportedOperation_TaskExisted: TCTcbError {
        TCTcbError(.unsupportedOperation_TaskExisted)
    }

    public func asTcbError() -> TCTcbError {
        return self
    }
}
