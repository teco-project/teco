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

extension TCPdsError {
    public struct InternalError: TCPdsErrorType {
        enum Code: String {
            case serviceTimeout = "InternalError.ServiceTimeout"
            case other = "InternalError"
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

        /// 服务超时。
        public static var serviceTimeout: InternalError {
            InternalError(.serviceTimeout)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asPdsError() -> TCPdsError {
            let code: TCPdsError.Code
            switch self.error {
            case .serviceTimeout:
                code = .internalError_ServiceTimeout
            case .other:
                code = .internalError
            }
            return TCPdsError(code, context: self.context)
        }
    }
}
