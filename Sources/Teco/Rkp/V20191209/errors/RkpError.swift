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

/// Service error type returned by `Rkp`.
public protocol TCRkpErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCRkpError``.
    ///
    /// - Returns: ``TCRkpError`` that holds the same error code and context.
    func asRkpError() -> TCRkpError
}

public struct TCRkpError: TCRkpErrorType {
    enum Code: String {
        case authFailure_CapSigError = "AuthFailure.CapSigError"
        case authFailure_Expired = "AuthFailure.Expired"
        case internalError = "InternalError"
        case internalError_BackendLogicError = "InternalError.BackendLogicError"
        case internalError_ServerError = "InternalError.ServerError"
        case internalError_SignBackendError = "InternalError.SignBackendError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_BadBody = "InvalidParameterValue.BadBody"
        case invalidParameterValue_BodyTooLarge = "InvalidParameterValue.BodyTooLarge"
        case invalidParameterValue_CapMisMatch = "InvalidParameterValue.CapMisMatch"
        case invalidParameterValue_HttpMethodError = "InvalidParameterValue.HttpMethodError"
        case invalidParameter_DevTokenInvalid = "InvalidParameter.DevTokenInvalid"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case invalidParameter_ParameterError = "InvalidParameter.ParameterError"
        case invalidParameter_TokenInvalid = "InvalidParameter.TokenInvalid"
        case invalidParameter_UrlError = "InvalidParameter.UrlError"
        case invalidParameter_VersionError = "InvalidParameter.VersionError"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_FreqCnt = "LimitExceeded.FreqCnt"
        case limitExceeded_IpFreqCnt = "LimitExceeded.IpFreqCnt"
        case limitExceeded_KeyFreqCnt = "LimitExceeded.KeyFreqCnt"
        case limitExceeded_ReplayAttack = "LimitExceeded.ReplayAttack"
        case resourceNotFound_InterfaceNotFound = "ResourceNotFound.InterfaceNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourceUnavailable_NotAllready = "ResourceUnavailable.NotAllready"
        case resourceUnavailable_PermissionDenied = "ResourceUnavailable.PermissionDenied"
        case unauthorizedOperation_AuthFailed = "UnauthorizedOperation.AuthFailed"
        case unknownParameter_SecretIdNotExists = "UnknownParameter.SecretIdNotExists"
    }

    /// Error domains affliated to ``TCRkpError``.
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

    /// ????????????????????????
    public static var authFailure_CapSigError: TCRkpError {
        TCRkpError(.authFailure_CapSigError)
    }

    /// ???????????????
    public static var authFailure_Expired: TCRkpError {
        TCRkpError(.authFailure_Expired)
    }

    /// ???????????????
    public static var internalError: TCRkpError {
        TCRkpError(.internalError)
    }

    /// ???????????????????????????
    public static var internalError_BackendLogicError: TCRkpError {
        TCRkpError(.internalError_BackendLogicError)
    }

    /// ???????????????
    public static var internalError_ServerError: TCRkpError {
        TCRkpError(.internalError_ServerError)
    }

    /// ????????????????????????
    public static var internalError_SignBackendError: TCRkpError {
        TCRkpError(.internalError_SignBackendError)
    }

    /// ???????????????
    public static var invalidParameter: TCRkpError {
        TCRkpError(.invalidParameter)
    }

    /// ?????????????????????
    public static var invalidParameterValue: TCRkpError {
        TCRkpError(.invalidParameterValue)
    }

    /// ??????body?????????
    public static var invalidParameterValue_BadBody: TCRkpError {
        TCRkpError(.invalidParameterValue_BadBody)
    }

    /// ??????????????????
    public static var invalidParameterValue_BodyTooLarge: TCRkpError {
        TCRkpError(.invalidParameterValue_BodyTooLarge)
    }

    /// ?????????????????????
    public static var invalidParameterValue_CapMisMatch: TCRkpError {
        TCRkpError(.invalidParameterValue_CapMisMatch)
    }

    /// Http???????????????
    public static var invalidParameterValue_HttpMethodError: TCRkpError {
        TCRkpError(.invalidParameterValue_HttpMethodError)
    }

    /// DevToken????????????????????????????????????????????????
    public static var invalidParameter_DevTokenInvalid: TCRkpError {
        TCRkpError(.invalidParameter_DevTokenInvalid)
    }

    /// ???????????????
    public static var invalidParameter_ParamError: TCRkpError {
        TCRkpError(.invalidParameter_ParamError)
    }

    /// ?????????????????????
    public static var invalidParameter_ParameterError: TCRkpError {
        TCRkpError(.invalidParameter_ParameterError)
    }

    /// token?????????????????????
    public static var invalidParameter_TokenInvalid: TCRkpError {
        TCRkpError(.invalidParameter_TokenInvalid)
    }

    /// URL?????????
    public static var invalidParameter_UrlError: TCRkpError {
        TCRkpError(.invalidParameter_UrlError)
    }

    /// ???????????????
    public static var invalidParameter_VersionError: TCRkpError {
        TCRkpError(.invalidParameter_VersionError)
    }

    /// ?????????????????????
    public static var limitExceeded: TCRkpError {
        TCRkpError(.limitExceeded)
    }

    /// ???????????????
    public static var limitExceeded_FreqCnt: TCRkpError {
        TCRkpError(.limitExceeded_FreqCnt)
    }

    /// ???????????????IP??????
    public static var limitExceeded_IpFreqCnt: TCRkpError {
        TCRkpError(.limitExceeded_IpFreqCnt)
    }

    /// ??????????????????
    public static var limitExceeded_KeyFreqCnt: TCRkpError {
        TCRkpError(.limitExceeded_KeyFreqCnt)
    }

    /// ???????????????
    public static var limitExceeded_ReplayAttack: TCRkpError {
        TCRkpError(.limitExceeded_ReplayAttack)
    }

    /// ??????????????????
    public static var resourceNotFound_InterfaceNotFound: TCRkpError {
        TCRkpError(.resourceNotFound_InterfaceNotFound)
    }

    /// ??????????????????
    public static var resourceUnavailable: TCRkpError {
        TCRkpError(.resourceUnavailable)
    }

    /// devid ???????????????
    public static var resourceUnavailable_NotAllready: TCRkpError {
        TCRkpError(.resourceUnavailable_NotAllready)
    }

    /// ????????????????????????
    public static var resourceUnavailable_PermissionDenied: TCRkpError {
        TCRkpError(.resourceUnavailable_PermissionDenied)
    }

    /// ???????????????
    public static var unauthorizedOperation_AuthFailed: TCRkpError {
        TCRkpError(.unauthorizedOperation_AuthFailed)
    }

    /// ??????????????????
    public static var unknownParameter_SecretIdNotExists: TCRkpError {
        TCRkpError(.unknownParameter_SecretIdNotExists)
    }

    public func asRkpError() -> TCRkpError {
        return self
    }
}
