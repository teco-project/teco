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

/// Service error type returned by `Lcic`.
public protocol TCLcicErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCLcicError``.
    ///
    /// - Returns: ``TCLcicError`` that holds the same error code and context.
    func asLcicError() -> TCLcicError
}

public struct TCLcicError: TCLcicErrorType {
    enum Code: String {
        case failedOperation_ClassTooLong = "FailedOperation.ClassTooLong"
        case failedOperation_OriginIdExists = "FailedOperation.OriginIdExists"
        case failedOperation_RoomNotEnd = "FailedOperation.RoomNotEnd"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case invalidParameter_EndTime = "InvalidParameter.EndTime"
        case invalidParameter_SdkAppId = "InvalidParameter.SdkAppId"
        case invalidParameter_StartTime = "InvalidParameter.StartTime"
        case resourceInsufficient = "ResourceInsufficient"
        case resourceInsufficient_Record = "ResourceInsufficient.Record"
        case resourceInsufficient_Room = "ResourceInsufficient.Room"
        case resourceNotFound_Document = "ResourceNotFound.Document"
        case resourceNotFound_Room = "ResourceNotFound.Room"
        case resourceNotFound_User = "ResourceNotFound.User"
        case resourceUnavailable_RoomStatistics = "ResourceUnavailable.RoomStatistics"
    }

    /// Error domains affliated to ``TCLcicError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, InvalidParameter.self, ResourceInsufficient.self, ResourceNotFound.self, ResourceUnavailable.self]
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

    public static var failedOperation_ClassTooLong: TCLcicError {
        TCLcicError(.failedOperation_ClassTooLong)
    }

    public static var failedOperation_OriginIdExists: TCLcicError {
        TCLcicError(.failedOperation_OriginIdExists)
    }

    public static var failedOperation_RoomNotEnd: TCLcicError {
        TCLcicError(.failedOperation_RoomNotEnd)
    }

    public static var internalError: TCLcicError {
        TCLcicError(.internalError)
    }

    public static var invalidParameter: TCLcicError {
        TCLcicError(.invalidParameter)
    }

    public static var invalidParameter_EndTime: TCLcicError {
        TCLcicError(.invalidParameter_EndTime)
    }

    public static var invalidParameter_SdkAppId: TCLcicError {
        TCLcicError(.invalidParameter_SdkAppId)
    }

    public static var invalidParameter_StartTime: TCLcicError {
        TCLcicError(.invalidParameter_StartTime)
    }

    public static var resourceInsufficient: TCLcicError {
        TCLcicError(.resourceInsufficient)
    }

    public static var resourceInsufficient_Record: TCLcicError {
        TCLcicError(.resourceInsufficient_Record)
    }

    public static var resourceInsufficient_Room: TCLcicError {
        TCLcicError(.resourceInsufficient_Room)
    }

    public static var resourceNotFound_Document: TCLcicError {
        TCLcicError(.resourceNotFound_Document)
    }

    public static var resourceNotFound_Room: TCLcicError {
        TCLcicError(.resourceNotFound_Room)
    }

    public static var resourceNotFound_User: TCLcicError {
        TCLcicError(.resourceNotFound_User)
    }

    public static var resourceUnavailable_RoomStatistics: TCLcicError {
        TCLcicError(.resourceUnavailable_RoomStatistics)
    }

    public func asLcicError() -> TCLcicError {
        return self
    }
}
