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

/// Service error type returned by `Rce`.
public protocol TCRceErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCRceError``.
    ///
    /// - Returns: ``TCRceError`` that holds the same error code and context.
    func asRceError() -> TCRceError
}

public struct TCRceError: TCRceErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_CapSigError = "AuthFailure.CapSigError"
        case authFailure_Expired = "AuthFailure.Expired"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_BackendLogicError = "InternalError.BackendLogicError"
        case internalError_ConnectDBTimeout = "InternalError.ConnectDBTimeout"
        case internalError_SignBackendError = "InternalError.SignBackendError"
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

    /// Error domains affliated to ``TCRceError``.
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
    public static var authFailure: TCRceError {
        TCRceError(.authFailure)
    }

    /// ????????????????????????
    public static var authFailure_CapSigError: TCRceError {
        TCRceError(.authFailure_CapSigError)
    }

    /// ???????????????
    public static var authFailure_Expired: TCRceError {
        TCRceError(.authFailure_Expired)
    }

    /// DryRun ????????????????????????????????????????????????????????? DryRun ?????????
    public static var dryRunOperation: TCRceError {
        TCRceError(.dryRunOperation)
    }

    /// ???????????????
    public static var failedOperation: TCRceError {
        TCRceError(.failedOperation)
    }

    /// ???????????????
    public static var internalError: TCRceError {
        TCRceError(.internalError)
    }

    /// ???????????????????????????
    public static var internalError_BackendLogicError: TCRceError {
        TCRceError(.internalError_BackendLogicError)
    }

    /// ????????????????????????
    public static var internalError_ConnectDBTimeout: TCRceError {
        TCRceError(.internalError_ConnectDBTimeout)
    }

    /// Sign???????????????
    public static var internalError_SignBackendError: TCRceError {
        TCRceError(.internalError_SignBackendError)
    }

    /// ???????????????
    public static var invalidParameter: TCRceError {
        TCRceError(.invalidParameter)
    }

    /// ?????????????????????
    public static var invalidParameterValue: TCRceError {
        TCRceError(.invalidParameterValue)
    }

    /// BadBody???
    public static var invalidParameterValue_BadBody: TCRceError {
        TCRceError(.invalidParameterValue_BadBody)
    }

    /// ??????????????????
    public static var invalidParameterValue_BodyTooLarge: TCRceError {
        TCRceError(.invalidParameterValue_BodyTooLarge)
    }

    /// ?????????????????????
    public static var invalidParameterValue_CapMisMatch: TCRceError {
        TCRceError(.invalidParameterValue_CapMisMatch)
    }

    /// HTTP???????????????
    public static var invalidParameterValue_HttpMethodError: TCRceError {
        TCRceError(.invalidParameterValue_HttpMethodError)
    }

    /// ?????????????????????
    public static var invalidParameterValue_InvalidDate: TCRceError {
        TCRceError(.invalidParameterValue_InvalidDate)
    }

    /// PageLimit???????????????
    public static var invalidParameterValue_InvalidLimit: TCRceError {
        TCRceError(.invalidParameterValue_InvalidLimit)
    }

    /// PageNum???????????????
    public static var invalidParameterValue_InvalidNum: TCRceError {
        TCRceError(.invalidParameterValue_InvalidNum)
    }

    /// SrvId???????????????
    public static var invalidParameterValue_InvalidSrvId: TCRceError {
        TCRceError(.invalidParameterValue_InvalidSrvId)
    }

    /// Stride???????????????
    public static var invalidParameterValue_InvalidStride: TCRceError {
        TCRceError(.invalidParameterValue_InvalidStride)
    }

    /// ????????????????????????
    public static var invalidParameter_CapSigError: TCRceError {
        TCRceError(.invalidParameter_CapSigError)
    }

    /// ???????????????
    public static var invalidParameter_ParamError: TCRceError {
        TCRceError(.invalidParameter_ParamError)
    }

    /// URL?????????
    public static var invalidParameter_UrlError: TCRceError {
        TCRceError(.invalidParameter_UrlError)
    }

    /// ???????????????
    public static var invalidParameter_VersionError: TCRceError {
        TCRceError(.invalidParameter_VersionError)
    }

    /// ?????????????????????
    public static var limitExceeded: TCRceError {
        TCRceError(.limitExceeded)
    }

    /// ???????????????
    public static var limitExceeded_FreqCnt: TCRceError {
        TCRceError(.limitExceeded_FreqCnt)
    }

    /// ?????????????????????IP??????
    public static var limitExceeded_IpFreqCnt: TCRceError {
        TCRceError(.limitExceeded_IpFreqCnt)
    }

    /// ????????????????????????
    public static var limitExceeded_KeyFreqCnt: TCRceError {
        TCRceError(.limitExceeded_KeyFreqCnt)
    }

    /// ???????????????
    public static var limitExceeded_ReplayAttack: TCRceError {
        TCRceError(.limitExceeded_ReplayAttack)
    }

    /// ?????????????????????
    public static var missingParameter: TCRceError {
        TCRceError(.missingParameter)
    }

    /// ??????????????????
    public static var operationDenied: TCRceError {
        TCRceError(.operationDenied)
    }

    /// ???????????????????????????????????????
    public static var requestLimitExceeded: TCRceError {
        TCRceError(.requestLimitExceeded)
    }

    /// ??????????????????
    public static var resourceInUse: TCRceError {
        TCRceError(.resourceInUse)
    }

    /// ???????????????
    public static var resourceInsufficient: TCRceError {
        TCRceError(.resourceInsufficient)
    }

    /// ??????????????????
    public static var resourceNotFound: TCRceError {
        TCRceError(.resourceNotFound)
    }

    /// ??????????????????
    public static var resourceNotFound_InterfaceNotFound: TCRceError {
        TCRceError(.resourceNotFound_InterfaceNotFound)
    }

    /// ??????????????????
    public static var resourceUnavailable: TCRceError {
        TCRceError(.resourceUnavailable)
    }

    /// ????????????????????????
    public static var resourceUnavailable_PermissionDenied: TCRceError {
        TCRceError(.resourceUnavailable_PermissionDenied)
    }

    /// ???????????????
    public static var resourcesSoldOut: TCRceError {
        TCRceError(.resourcesSoldOut)
    }

    /// ??????????????????
    public static var unauthorizedOperation: TCRceError {
        TCRceError(.unauthorizedOperation)
    }

    /// ???????????????
    public static var unauthorizedOperation_AuthFailed: TCRceError {
        TCRceError(.unauthorizedOperation_AuthFailed)
    }

    /// ?????????????????????
    public static var unknownParameter: TCRceError {
        TCRceError(.unknownParameter)
    }

    /// ??????????????????
    public static var unknownParameter_SecretIdNotExists: TCRceError {
        TCRceError(.unknownParameter_SecretIdNotExists)
    }

    /// ??????????????????
    public static var unsupportedOperation: TCRceError {
        TCRceError(.unsupportedOperation)
    }

    public func asRceError() -> TCRceError {
        return self
    }
}
