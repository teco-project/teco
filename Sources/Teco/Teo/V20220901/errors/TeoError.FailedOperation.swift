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

extension TCTeoError {
    public struct FailedOperation: TCTeoErrorType {
        enum Code: String {
            case certificateNotFound = "FailedOperation.CertificateNotFound"
            case invalidZoneStatus = "FailedOperation.InvalidZoneStatus"
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

        /// 证书不存在。
        public static var certificateNotFound: FailedOperation {
            FailedOperation(.certificateNotFound)
        }

        /// 站点状态不正确。
        public static var invalidZoneStatus: FailedOperation {
            FailedOperation(.invalidZoneStatus)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asTeoError() -> TCTeoError {
            let code: TCTeoError.Code
            switch self.error {
            case .certificateNotFound:
                code = .failedOperation_CertificateNotFound
            case .invalidZoneStatus:
                code = .failedOperation_InvalidZoneStatus
            case .other:
                code = .failedOperation
            }
            return TCTeoError(code, context: self.context)
        }
    }
}
