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

extension TCCarError {
    public struct ResourceUnavailable: TCCarErrorType {
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

        /// 初始化中。
        public static var initialization: ResourceUnavailable {
            ResourceUnavailable(.initialization)
        }

        public func asCarError() -> TCCarError {
            let code: TCCarError.Code
            switch self.error {
            case .accessFailed:
                code = .resourceUnavailable_AccessFailed
            case .initialization:
                code = .resourceUnavailable_Initialization
            }
            return TCCarError(code, context: self.context)
        }
    }
}
