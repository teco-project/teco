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

/// Service error type returned by `Taf`.
public protocol TCTafErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCTafError``.
    ///
    /// - Returns: ``TCTafError`` that holds the same error code and context.
    func asTafError() -> TCTafError
}

public struct TCTafError: TCTafErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_CapSigError = "AuthFailure.CapSigError"
        case authFailure_Expired = "AuthFailure.Expired"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_AddTaskFail = "InternalError.AddTaskFail"
        case internalError_BackendLogicError = "InternalError.BackendLogicError"
        case internalError_ConnectDBTimeout = "InternalError.ConnectDBTimeout"
        case internalError_DetectFail = "InternalError.DetectFail"
        case internalError_DownloadFail = "InternalError.DownloadFail"
        case internalError_ParamError = "InternalError.ParamError"
        case internalError_QueryTaskFail = "InternalError.QueryTaskFail"
        case internalError_SignBackendError = "InternalError.SignBackendError"
        case internalError_SignatureFail = "InternalError.SignatureFail"
        case internalError_TaskIdNotFound = "InternalError.TaskIdNotFound"
        case internalError_UpdateTaskFail = "InternalError.UpdateTaskFail"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_BadBody = "InvalidParameterValue.BadBody"
        case invalidParameterValue_BodyTooLarge = "InvalidParameterValue.BodyTooLarge"
        case invalidParameterValue_CapMisMatch = "InvalidParameterValue.CapMisMatch"
        case invalidParameterValue_HttpMethodError = "InvalidParameterValue.HttpMethodError"
        case invalidParameterValue_InvalidDate = "InvalidParameterValue.InvalidDate"
        case invalidParameterValue_InvalidLimit = "InvalidParameterValue.InvalidLimit"
        case invalidParameterValue_InvalidNum = "InvalidParameterValue.InvalidNum"
        case invalidParameterValue_InvalidSrvId = "InvalidParameterValue.InvalidSrvId"
        case invalidParameterValue_InvalidStride = "InvalidParameterValue.InvalidStride"
        case invalidParameter_CapSigError = "InvalidParameter.CapSigError"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case invalidParameter_UrlError = "InvalidParameter.UrlError"
        case invalidParameter_VersionError = "InvalidParameter.VersionError"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_FreqCnt = "LimitExceeded.FreqCnt"
        case limitExceeded_IpFreqCnt = "LimitExceeded.IpFreqCnt"
        case limitExceeded_KeyFreqCnt = "LimitExceeded.KeyFreqCnt"
        case limitExceeded_ReplayAttack = "LimitExceeded.ReplayAttack"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_InterfaceNotFound = "ResourceNotFound.InterfaceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_PermissionDenied = "ResourceUnavailable.PermissionDenied"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_AuthFailed = "UnauthorizedOperation.AuthFailed"
        case unknownParameter = "UnknownParameter"
        case unknownParameter_SecretIdNotExists = "UnknownParameter.SecretIdNotExists"
        case unsupportedOperation = "UnsupportedOperation"
    }

    /// Error domains affliated to ``TCTafError``.
    public static var domains: [TCErrorType.Type] {
        [AuthFailure.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self, ResourceUnavailable.self, UnauthorizedOperation.self, UnknownParameter.self]
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
    public static var authFailure: TCTafError {
        TCTafError(.authFailure)
    }

    /// ????????????????????????
    public static var authFailure_CapSigError: TCTafError {
        TCTafError(.authFailure_CapSigError)
    }

    /// ???????????????
    public static var authFailure_Expired: TCTafError {
        TCTafError(.authFailure_Expired)
    }

    /// DryRun ????????????????????????????????????????????????????????? DryRun ?????????
    public static var dryRunOperation: TCTafError {
        TCTafError(.dryRunOperation)
    }

    /// ???????????????
    public static var failedOperation: TCTafError {
        TCTafError(.failedOperation)
    }

    /// ???????????????
    public static var internalError: TCTafError {
        TCTafError(.internalError)
    }

    /// ?????????????????????
    public static var internalError_AddTaskFail: TCTafError {
        TCTafError(.internalError_AddTaskFail)
    }

    /// ???????????????????????????
    public static var internalError_BackendLogicError: TCTafError {
        TCTafError(.internalError_BackendLogicError)
    }

    /// ????????????????????????
    public static var internalError_ConnectDBTimeout: TCTafError {
        TCTafError(.internalError_ConnectDBTimeout)
    }

    /// ?????????????????????
    public static var internalError_DetectFail: TCTafError {
        TCTafError(.internalError_DetectFail)
    }

    /// ???????????????????????????
    public static var internalError_DownloadFail: TCTafError {
        TCTafError(.internalError_DownloadFail)
    }

    /// ?????????????????????
    public static var internalError_ParamError: TCTafError {
        TCTafError(.internalError_ParamError)
    }

    /// ???????????????
    public static var internalError_QueryTaskFail: TCTafError {
        TCTafError(.internalError_QueryTaskFail)
    }

    /// Sign???????????????
    public static var internalError_SignBackendError: TCTafError {
        TCTafError(.internalError_SignBackendError)
    }

    /// ???????????????
    public static var internalError_SignatureFail: TCTafError {
        TCTafError(.internalError_SignatureFail)
    }

    /// TaskId????????????
    public static var internalError_TaskIdNotFound: TCTafError {
        TCTafError(.internalError_TaskIdNotFound)
    }

    /// ?????????????????????
    public static var internalError_UpdateTaskFail: TCTafError {
        TCTafError(.internalError_UpdateTaskFail)
    }

    /// ???????????????
    public static var invalidParameter: TCTafError {
        TCTafError(.invalidParameter)
    }

    /// ?????????????????????
    public static var invalidParameterValue: TCTafError {
        TCTafError(.invalidParameterValue)
    }

    /// BadBody???
    public static var invalidParameterValue_BadBody: TCTafError {
        TCTafError(.invalidParameterValue_BadBody)
    }

    /// ??????????????????
    public static var invalidParameterValue_BodyTooLarge: TCTafError {
        TCTafError(.invalidParameterValue_BodyTooLarge)
    }

    /// ?????????????????????
    public static var invalidParameterValue_CapMisMatch: TCTafError {
        TCTafError(.invalidParameterValue_CapMisMatch)
    }

    /// HTTP???????????????
    public static var invalidParameterValue_HttpMethodError: TCTafError {
        TCTafError(.invalidParameterValue_HttpMethodError)
    }

    /// ?????????????????????
    public static var invalidParameterValue_InvalidDate: TCTafError {
        TCTafError(.invalidParameterValue_InvalidDate)
    }

    /// PageLimit???????????????
    public static var invalidParameterValue_InvalidLimit: TCTafError {
        TCTafError(.invalidParameterValue_InvalidLimit)
    }

    /// PageNum???????????????
    public static var invalidParameterValue_InvalidNum: TCTafError {
        TCTafError(.invalidParameterValue_InvalidNum)
    }

    /// SrvId???????????????
    public static var invalidParameterValue_InvalidSrvId: TCTafError {
        TCTafError(.invalidParameterValue_InvalidSrvId)
    }

    /// Stride???????????????
    public static var invalidParameterValue_InvalidStride: TCTafError {
        TCTafError(.invalidParameterValue_InvalidStride)
    }

    /// ????????????????????????
    public static var invalidParameter_CapSigError: TCTafError {
        TCTafError(.invalidParameter_CapSigError)
    }

    /// ???????????????
    public static var invalidParameter_ParamError: TCTafError {
        TCTafError(.invalidParameter_ParamError)
    }

    /// URL?????????
    public static var invalidParameter_UrlError: TCTafError {
        TCTafError(.invalidParameter_UrlError)
    }

    /// ???????????????
    public static var invalidParameter_VersionError: TCTafError {
        TCTafError(.invalidParameter_VersionError)
    }

    /// ?????????????????????
    public static var limitExceeded: TCTafError {
        TCTafError(.limitExceeded)
    }

    /// ???????????????
    public static var limitExceeded_FreqCnt: TCTafError {
        TCTafError(.limitExceeded_FreqCnt)
    }

    /// ?????????????????????IP??????
    public static var limitExceeded_IpFreqCnt: TCTafError {
        TCTafError(.limitExceeded_IpFreqCnt)
    }

    /// ????????????????????????
    public static var limitExceeded_KeyFreqCnt: TCTafError {
        TCTafError(.limitExceeded_KeyFreqCnt)
    }

    /// ???????????????
    public static var limitExceeded_ReplayAttack: TCTafError {
        TCTafError(.limitExceeded_ReplayAttack)
    }

    /// ?????????????????????
    public static var missingParameter: TCTafError {
        TCTafError(.missingParameter)
    }

    /// ??????????????????
    public static var operationDenied: TCTafError {
        TCTafError(.operationDenied)
    }

    /// ???????????????????????????????????????
    public static var requestLimitExceeded: TCTafError {
        TCTafError(.requestLimitExceeded)
    }

    /// ??????????????????
    public static var resourceInUse: TCTafError {
        TCTafError(.resourceInUse)
    }

    /// ???????????????
    public static var resourceInsufficient: TCTafError {
        TCTafError(.resourceInsufficient)
    }

    /// ??????????????????
    public static var resourceNotFound: TCTafError {
        TCTafError(.resourceNotFound)
    }

    /// ??????????????????
    public static var resourceNotFound_InterfaceNotFound: TCTafError {
        TCTafError(.resourceNotFound_InterfaceNotFound)
    }

    /// ??????????????????
    public static var resourceUnavailable: TCTafError {
        TCTafError(.resourceUnavailable)
    }

    /// ????????????????????????
    public static var resourceUnavailable_PermissionDenied: TCTafError {
        TCTafError(.resourceUnavailable_PermissionDenied)
    }

    /// ???????????????
    public static var resourcesSoldOut: TCTafError {
        TCTafError(.resourcesSoldOut)
    }

    /// ??????????????????
    public static var unauthorizedOperation: TCTafError {
        TCTafError(.unauthorizedOperation)
    }

    /// ???????????????
    public static var unauthorizedOperation_AuthFailed: TCTafError {
        TCTafError(.unauthorizedOperation_AuthFailed)
    }

    /// ?????????????????????
    public static var unknownParameter: TCTafError {
        TCTafError(.unknownParameter)
    }

    /// ??????????????????
    public static var unknownParameter_SecretIdNotExists: TCTafError {
        TCTafError(.unknownParameter_SecretIdNotExists)
    }

    /// ??????????????????
    public static var unsupportedOperation: TCTafError {
        TCTafError(.unsupportedOperation)
    }

    public func asTafError() -> TCTafError {
        return self
    }
}
