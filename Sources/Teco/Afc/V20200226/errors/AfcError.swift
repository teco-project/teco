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

/// Service error type returned by `Afc`.
public protocol TCAfcErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCAfcError``.
    ///
    /// - Returns: ``TCAfcError`` that holds the same error code and context.
    func asAfcError() -> TCAfcError
}

public struct TCAfcError: TCAfcErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case authFailure_CapSigError = "AuthFailure.CapSigError"
        case authFailure_Expired = "AuthFailure.Expired"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case internalError = "InternalError"
        case internalError_BackendLogicError = "InternalError.BackendLogicError"
        case internalError_SignBackendError = "InternalError.SignBackendError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_BadBody = "InvalidParameterValue.BadBody"
        case invalidParameterValue_BodyTooLarge = "InvalidParameterValue.BodyTooLarge"
        case invalidParameterValue_CapMisMatch = "InvalidParameterValue.CapMisMatch"
        case invalidParameterValue_HttpMethodError = "InvalidParameterValue.HttpMethodError"
        case invalidParameterValue_InvalidDate = "InvalidParameterValue.InvalidDate"
        case invalidParameterValue_InvalidLimit = "InvalidParameterValue.InvalidLimit"
        case invalidParameterValue_InvalidSrvName = "InvalidParameterValue.InvalidSrvName"
        case invalidParameterValue_InvalidStride = "InvalidParameterValue.InvalidStride"
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

    /// Error domains affliated to ``TCAfcError``.
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
    public static var authFailure: TCAfcError {
        TCAfcError(.authFailure)
    }

    /// ????????????????????????
    public static var authFailure_CapSigError: TCAfcError {
        TCAfcError(.authFailure_CapSigError)
    }

    /// ???????????????
    public static var authFailure_Expired: TCAfcError {
        TCAfcError(.authFailure_Expired)
    }

    /// DryRun ????????????????????????????????????????????????????????? DryRun ?????????
    public static var dryRunOperation: TCAfcError {
        TCAfcError(.dryRunOperation)
    }

    /// ???????????????
    public static var failedOperation: TCAfcError {
        TCAfcError(.failedOperation)
    }

    /// ???????????????
    public static var internalError: TCAfcError {
        TCAfcError(.internalError)
    }

    /// ???????????????????????????
    public static var internalError_BackendLogicError: TCAfcError {
        TCAfcError(.internalError_BackendLogicError)
    }

    /// Sign???????????????
    public static var internalError_SignBackendError: TCAfcError {
        TCAfcError(.internalError_SignBackendError)
    }

    /// ???????????????
    public static var invalidParameter: TCAfcError {
        TCAfcError(.invalidParameter)
    }

    /// ?????????????????????
    public static var invalidParameterValue: TCAfcError {
        TCAfcError(.invalidParameterValue)
    }

    /// BadBody???
    public static var invalidParameterValue_BadBody: TCAfcError {
        TCAfcError(.invalidParameterValue_BadBody)
    }

    /// ??????????????????
    public static var invalidParameterValue_BodyTooLarge: TCAfcError {
        TCAfcError(.invalidParameterValue_BodyTooLarge)
    }

    /// ?????????????????????
    public static var invalidParameterValue_CapMisMatch: TCAfcError {
        TCAfcError(.invalidParameterValue_CapMisMatch)
    }

    /// HTTP???????????????
    public static var invalidParameterValue_HttpMethodError: TCAfcError {
        TCAfcError(.invalidParameterValue_HttpMethodError)
    }

    /// ?????????????????????
    public static var invalidParameterValue_InvalidDate: TCAfcError {
        TCAfcError(.invalidParameterValue_InvalidDate)
    }

    /// PageLimit???????????????
    public static var invalidParameterValue_InvalidLimit: TCAfcError {
        TCAfcError(.invalidParameterValue_InvalidLimit)
    }

    /// SrvName???????????????
    public static var invalidParameterValue_InvalidSrvName: TCAfcError {
        TCAfcError(.invalidParameterValue_InvalidSrvName)
    }

    /// Stride???????????????
    public static var invalidParameterValue_InvalidStride: TCAfcError {
        TCAfcError(.invalidParameterValue_InvalidStride)
    }

    /// ???????????????
    public static var invalidParameter_ParamError: TCAfcError {
        TCAfcError(.invalidParameter_ParamError)
    }

    /// URL?????????
    public static var invalidParameter_UrlError: TCAfcError {
        TCAfcError(.invalidParameter_UrlError)
    }

    /// ???????????????
    public static var invalidParameter_VersionError: TCAfcError {
        TCAfcError(.invalidParameter_VersionError)
    }

    /// ?????????????????????
    public static var limitExceeded: TCAfcError {
        TCAfcError(.limitExceeded)
    }

    /// ???????????????
    public static var limitExceeded_FreqCnt: TCAfcError {
        TCAfcError(.limitExceeded_FreqCnt)
    }

    /// ???????????????
    public static var limitExceeded_IpFreqCnt: TCAfcError {
        TCAfcError(.limitExceeded_IpFreqCnt)
    }

    /// ????????????????????????
    public static var limitExceeded_KeyFreqCnt: TCAfcError {
        TCAfcError(.limitExceeded_KeyFreqCnt)
    }

    /// ???????????????
    public static var limitExceeded_ReplayAttack: TCAfcError {
        TCAfcError(.limitExceeded_ReplayAttack)
    }

    /// ?????????????????????
    public static var missingParameter: TCAfcError {
        TCAfcError(.missingParameter)
    }

    /// ??????????????????
    public static var operationDenied: TCAfcError {
        TCAfcError(.operationDenied)
    }

    /// ???????????????????????????????????????
    public static var requestLimitExceeded: TCAfcError {
        TCAfcError(.requestLimitExceeded)
    }

    /// ??????????????????
    public static var resourceInUse: TCAfcError {
        TCAfcError(.resourceInUse)
    }

    /// ???????????????
    public static var resourceInsufficient: TCAfcError {
        TCAfcError(.resourceInsufficient)
    }

    /// ??????????????????
    public static var resourceNotFound: TCAfcError {
        TCAfcError(.resourceNotFound)
    }

    /// ??????????????????
    public static var resourceNotFound_InterfaceNotFound: TCAfcError {
        TCAfcError(.resourceNotFound_InterfaceNotFound)
    }

    /// ??????????????????
    public static var resourceUnavailable: TCAfcError {
        TCAfcError(.resourceUnavailable)
    }

    /// ????????????????????????
    public static var resourceUnavailable_PermissionDenied: TCAfcError {
        TCAfcError(.resourceUnavailable_PermissionDenied)
    }

    /// ???????????????
    public static var resourcesSoldOut: TCAfcError {
        TCAfcError(.resourcesSoldOut)
    }

    /// ??????????????????
    public static var unauthorizedOperation: TCAfcError {
        TCAfcError(.unauthorizedOperation)
    }

    /// ???????????????
    public static var unauthorizedOperation_AuthFailed: TCAfcError {
        TCAfcError(.unauthorizedOperation_AuthFailed)
    }

    /// ?????????????????????
    public static var unknownParameter: TCAfcError {
        TCAfcError(.unknownParameter)
    }

    /// ??????????????????
    public static var unknownParameter_SecretIdNotExists: TCAfcError {
        TCAfcError(.unknownParameter_SecretIdNotExists)
    }

    /// ??????????????????
    public static var unsupportedOperation: TCAfcError {
        TCAfcError(.unsupportedOperation)
    }

    public func asAfcError() -> TCAfcError {
        return self
    }
}
