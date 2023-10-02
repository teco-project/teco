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

extension TCOmicsError {
    public struct FailedOperation: TCOmicsErrorType {
        enum Code: String {
            case duplicateTableHeader = "FailedOperation.DuplicateTableHeader"
            case emptyTableHeader = "FailedOperation.EmptyTableHeader"
            case invalidTableHeader = "FailedOperation.InvalidTableHeader"
            case invalidTableLength = "FailedOperation.InvalidTableLength"
            case retryLimitExceeded = "FailedOperation.RetryLimitExceeded"
            case statusNotSupported = "FailedOperation.StatusNotSupported"
            case tableDataTypeMismatch = "FailedOperation.TableDataTypeMismatch"
            case versionNotReleased = "FailedOperation.VersionNotReleased"
            case other = "FailedOperation"
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

        public static var duplicateTableHeader: FailedOperation {
            FailedOperation(.duplicateTableHeader)
        }

        public static var emptyTableHeader: FailedOperation {
            FailedOperation(.emptyTableHeader)
        }

        public static var invalidTableHeader: FailedOperation {
            FailedOperation(.invalidTableHeader)
        }

        public static var invalidTableLength: FailedOperation {
            FailedOperation(.invalidTableLength)
        }

        public static var retryLimitExceeded: FailedOperation {
            FailedOperation(.retryLimitExceeded)
        }

        public static var statusNotSupported: FailedOperation {
            FailedOperation(.statusNotSupported)
        }

        public static var tableDataTypeMismatch: FailedOperation {
            FailedOperation(.tableDataTypeMismatch)
        }

        public static var versionNotReleased: FailedOperation {
            FailedOperation(.versionNotReleased)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asOmicsError() -> TCOmicsError {
            let code: TCOmicsError.Code
            switch self.error {
            case .duplicateTableHeader:
                code = .failedOperation_DuplicateTableHeader
            case .emptyTableHeader:
                code = .failedOperation_EmptyTableHeader
            case .invalidTableHeader:
                code = .failedOperation_InvalidTableHeader
            case .invalidTableLength:
                code = .failedOperation_InvalidTableLength
            case .retryLimitExceeded:
                code = .failedOperation_RetryLimitExceeded
            case .statusNotSupported:
                code = .failedOperation_StatusNotSupported
            case .tableDataTypeMismatch:
                code = .failedOperation_TableDataTypeMismatch
            case .versionNotReleased:
                code = .failedOperation_VersionNotReleased
            case .other:
                code = .failedOperation
            }
            return TCOmicsError(code, context: self.context)
        }
    }
}
