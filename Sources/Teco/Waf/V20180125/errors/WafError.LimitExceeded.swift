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

extension TCWafError {
    public struct LimitExceeded: TCWafErrorType {
        enum Code: String {
            case specificationErr = "LimitExceeded.SpecificationErr"
            case other = "LimitExceeded"
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

        /// SpecificationErr
        public static var specificationErr: LimitExceeded {
            LimitExceeded(.specificationErr)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asWafError() -> TCWafError {
            let code: TCWafError.Code
            switch self.error {
            case .specificationErr:
                code = .limitExceeded_SpecificationErr
            case .other:
                code = .limitExceeded
            }
            return TCWafError(code, context: self.context)
        }
    }
}