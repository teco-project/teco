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

/// Service error type returned by `Gme`.
public protocol TCGmeErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCGmeError``.
    ///
    /// - Returns: ``TCGmeError`` that holds the same error code and context.
    func asGmeError() -> TCGmeError
}

public struct TCGmeError: TCGmeErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_LoginFailed = "FailedOperation.LoginFailed"
        case failedOperation_UserFeeNegative = "FailedOperation.UserFeeNegative"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameter_CallbackAddress = "InvalidParameter.CallbackAddress"
        case invalidParameter_DateInvalid = "InvalidParameter.DateInvalid"
        case invalidParameter_TagKey = "InvalidParameter.TagKey"
        case invalidParameter_TimeRangeError = "InvalidParameter.TimeRangeError"
        case limitExceeded = "LimitExceeded"
        case limitExceeded_Application = "LimitExceeded.Application"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_BizidIsNotFound = "ResourceNotFound.BizidIsNotFound"
        case resourceNotFound_TaskNotFound = "ResourceNotFound.TaskNotFound"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_CreateAppDenied = "UnauthorizedOperation.CreateAppDenied"
        case unauthorizedOperation_UnRealNameAuth = "UnauthorizedOperation.UnRealNameAuth"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_PTTSwitchOff = "UnsupportedOperation.PTTSwitchOff"
    }

    /// Error domains affliated to ``TCGmeError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InvalidParameter.self, LimitExceeded.self, ResourceNotFound.self, UnauthorizedOperation.self, UnsupportedOperation.self]
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
    public static var authFailure: TCGmeError {
        TCGmeError(.authFailure)
    }

    /// DryRun ????????????????????????????????????????????????????????? DryRun ?????????
    public static var dryRunOperation: TCGmeError {
        TCGmeError(.dryRunOperation)
    }

    /// ???????????????
    public static var failedOperation: TCGmeError {
        TCGmeError(.failedOperation)
    }

    /// ??????????????????
    public static var failedOperation_LoginFailed: TCGmeError {
        TCGmeError(.failedOperation_LoginFailed)
    }

    /// ?????????????????????
    public static var failedOperation_UserFeeNegative: TCGmeError {
        TCGmeError(.failedOperation_UserFeeNegative)
    }

    /// ???????????????
    public static var internalError: TCGmeError {
        TCGmeError(.internalError)
    }

    /// ???????????????
    public static var invalidParameter: TCGmeError {
        TCGmeError(.invalidParameter)
    }

    /// ?????????????????????
    public static var invalidParameter_CallbackAddress: TCGmeError {
        TCGmeError(.invalidParameter_CallbackAddress)
    }

    /// ???????????????
    public static var invalidParameter_DateInvalid: TCGmeError {
        TCGmeError(.invalidParameter_DateInvalid)
    }

    /// ???????????????
    public static var invalidParameter_TagKey: TCGmeError {
        TCGmeError(.invalidParameter_TagKey)
    }

    /// ???????????????????????????
    public static var invalidParameter_TimeRangeError: TCGmeError {
        TCGmeError(.invalidParameter_TimeRangeError)
    }

    /// ?????????????????????
    public static var limitExceeded: TCGmeError {
        TCGmeError(.limitExceeded)
    }

    /// ??????????????????????????????
    public static var limitExceeded_Application: TCGmeError {
        TCGmeError(.limitExceeded_Application)
    }

    /// ???????????????
    public static var missingParameter: TCGmeError {
        TCGmeError(.missingParameter)
    }

    /// ??????????????????
    public static var operationDenied: TCGmeError {
        TCGmeError(.operationDenied)
    }

    /// ???????????????
    public static var resourceInsufficient: TCGmeError {
        TCGmeError(.resourceInsufficient)
    }

    /// ??????????????????
    public static var resourceNotFound: TCGmeError {
        TCGmeError(.resourceNotFound)
    }

    /// ??????ID?????????
    public static var resourceNotFound_BizidIsNotFound: TCGmeError {
        TCGmeError(.resourceNotFound_BizidIsNotFound)
    }

    /// ??????ID?????????
    public static var resourceNotFound_TaskNotFound: TCGmeError {
        TCGmeError(.resourceNotFound_TaskNotFound)
    }

    /// ??????????????????
    public static var resourceUnavailable: TCGmeError {
        TCGmeError(.resourceUnavailable)
    }

    /// ???????????????
    public static var resourcesSoldOut: TCGmeError {
        TCGmeError(.resourcesSoldOut)
    }

    /// ??????????????????
    public static var unauthorizedOperation: TCGmeError {
        TCGmeError(.unauthorizedOperation)
    }

    /// ???????????????????????????
    public static var unauthorizedOperation_CreateAppDenied: TCGmeError {
        TCGmeError(.unauthorizedOperation_CreateAppDenied)
    }

    /// ?????????????????????????????????
    public static var unauthorizedOperation_UnRealNameAuth: TCGmeError {
        TCGmeError(.unauthorizedOperation_UnRealNameAuth)
    }

    /// ?????????????????????
    public static var unknownParameter: TCGmeError {
        TCGmeError(.unknownParameter)
    }

    /// ??????????????????
    public static var unsupportedOperation: TCGmeError {
        TCGmeError(.unsupportedOperation)
    }

    public static var unsupportedOperation_PTTSwitchOff: TCGmeError {
        TCGmeError(.unsupportedOperation_PTTSwitchOff)
    }

    public func asGmeError() -> TCGmeError {
        return self
    }
}
