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

extension TCSsmError {
    public struct ResourceNotFound: TCSsmErrorType {
        enum Code: String {
            case secretNotExist = "ResourceNotFound.SecretNotExist"
            case other = "ResourceNotFound"
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

        /// 凭据不存在。
        public static var secretNotExist: ResourceNotFound {
            ResourceNotFound(.secretNotExist)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asSsmError() -> TCSsmError {
            let code: TCSsmError.Code
            switch self.error {
            case .secretNotExist:
                code = .resourceNotFound_SecretNotExist
            case .other:
                code = .resourceNotFound
            }
            return TCSsmError(code, context: self.context)
        }
    }
}
