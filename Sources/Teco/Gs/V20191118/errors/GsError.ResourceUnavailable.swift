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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCGsError {
    public struct ResourceUnavailable: TCGsErrorType {
        enum Code: String {
            case accessFailed = "ResourceUnavailable.AccessFailed"
            case initialization = "ResourceUnavailable.Initialization"
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

        /// 访问并发实例失败。
        public static var accessFailed: ResourceUnavailable {
            ResourceUnavailable(.accessFailed)
        }

        /// 机器还在初始化中。
        public static var initialization: ResourceUnavailable {
            ResourceUnavailable(.initialization)
        }

        public func asGsError() -> TCGsError {
            let code: TCGsError.Code
            switch self.error {
            case .accessFailed:
                code = .resourceUnavailable_AccessFailed
            case .initialization:
                code = .resourceUnavailable_Initialization
            }
            return TCGsError(code, context: self.context)
        }
    }
}
