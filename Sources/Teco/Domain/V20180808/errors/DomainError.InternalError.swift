//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension TCDomainError {
    public struct InternalError: TCDomainErrorType {
        enum Code: String {
            case domainInternalError = "InternalError.DomainInternalError"
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

        /// 网络错误，请稍后重试。
        public static var domainInternalError: InternalError {
            InternalError(.domainInternalError)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asDomainError() -> TCDomainError {
            let code: TCDomainError.Code
            switch self.error {
            case .domainInternalError:
                code = .internalError_DomainInternalError
            case .other:
                code = .internalError
            }
            return TCDomainError(code, context: self.context)
        }
    }
}
