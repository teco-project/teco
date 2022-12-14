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

/// Service error type returned by `Rum`.
public protocol TCRumErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCRumError``.
    ///
    /// - Returns: ``TCRumError`` that holds the same error code and context.
    func asRumError() -> TCRumError
}

public struct TCRumError: TCRumErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case dryRunOperation = "DryRunOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_ChargeNoBalance = "FailedOperation.ChargeNoBalance"
        case failedOperation_ChargeNoPayRight = "FailedOperation.ChargeNoPayRight"
        case failedOperation_ChargeParamInvalid = "FailedOperation.ChargeParamInvalid"
        case failedOperation_ClsCallFail = "FailedOperation.ClsCallFail"
        case failedOperation_DataBaseException = "FailedOperation.DataBaseException"
        case failedOperation_InfrastructureError = "FailedOperation.InfrastructureError"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case limitExceeded = "LimitExceeded"
        case missingParameter = "MissingParameter"
        case operationDenied = "OperationDenied"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceInUse = "ResourceInUse"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceNotFound = "ResourceNotFound"
        case resourceNotFound_NoInstance = "ResourceNotFound.NoInstance"
        case resourceUnavailable = "ResourceUnavailable"
        case resourcesSoldOut = "ResourcesSoldOut"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unknownParameter = "UnknownParameter"
        case unsupportedOperation = "UnsupportedOperation"
    }

    /// Error domains affliated to ``TCRumError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, ResourceNotFound.self]
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
    public static var authFailure: TCRumError {
        TCRumError(.authFailure)
    }

    /// DryRun ????????????????????????????????????????????????????????? DryRun ?????????
    public static var dryRunOperation: TCRumError {
        TCRumError(.dryRunOperation)
    }

    /// ???????????????
    public static var failedOperation: TCRumError {
        TCRumError(.failedOperation)
    }

    /// ??????????????????????????????????????????????????????????????????
    public static var failedOperation_ChargeNoBalance: TCRumError {
        TCRumError(.failedOperation_ChargeNoBalance)
    }

    /// ???????????????????????????????????????????????????????????????
    public static var failedOperation_ChargeNoPayRight: TCRumError {
        TCRumError(.failedOperation_ChargeNoPayRight)
    }

    /// ???????????????????????????????????????
    public static var failedOperation_ChargeParamInvalid: TCRumError {
        TCRumError(.failedOperation_ChargeParamInvalid)
    }

    /// CLS????????????
    public static var failedOperation_ClsCallFail: TCRumError {
        TCRumError(.failedOperation_ClsCallFail)
    }

    /// ??????????????????
    public static var failedOperation_DataBaseException: TCRumError {
        TCRumError(.failedOperation_DataBaseException)
    }

    /// ????????????????????????
    public static var failedOperation_InfrastructureError: TCRumError {
        TCRumError(.failedOperation_InfrastructureError)
    }

    /// ???????????????
    public static var internalError: TCRumError {
        TCRumError(.internalError)
    }

    /// ???????????????
    public static var invalidParameter: TCRumError {
        TCRumError(.invalidParameter)
    }

    /// ?????????????????????
    public static var invalidParameterValue: TCRumError {
        TCRumError(.invalidParameterValue)
    }

    /// ?????????????????????
    public static var limitExceeded: TCRumError {
        TCRumError(.limitExceeded)
    }

    /// ?????????????????????
    public static var missingParameter: TCRumError {
        TCRumError(.missingParameter)
    }

    /// ??????????????????
    public static var operationDenied: TCRumError {
        TCRumError(.operationDenied)
    }

    /// ???????????????????????????????????????
    public static var requestLimitExceeded: TCRumError {
        TCRumError(.requestLimitExceeded)
    }

    /// ??????????????????
    public static var resourceInUse: TCRumError {
        TCRumError(.resourceInUse)
    }

    /// ???????????????
    public static var resourceInsufficient: TCRumError {
        TCRumError(.resourceInsufficient)
    }

    /// ??????????????????
    public static var resourceNotFound: TCRumError {
        TCRumError(.resourceNotFound)
    }

    /// ???????????????
    public static var resourceNotFound_NoInstance: TCRumError {
        TCRumError(.resourceNotFound_NoInstance)
    }

    /// ??????????????????
    public static var resourceUnavailable: TCRumError {
        TCRumError(.resourceUnavailable)
    }

    /// ???????????????
    public static var resourcesSoldOut: TCRumError {
        TCRumError(.resourcesSoldOut)
    }

    /// ??????????????????
    public static var unauthorizedOperation: TCRumError {
        TCRumError(.unauthorizedOperation)
    }

    /// ?????????????????????
    public static var unknownParameter: TCRumError {
        TCRumError(.unknownParameter)
    }

    /// ??????????????????
    public static var unsupportedOperation: TCRumError {
        TCRumError(.unsupportedOperation)
    }

    public func asRumError() -> TCRumError {
        return self
    }
}
