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

extension TCDtsError {
    public struct ResourceInUse: TCDtsErrorType {
        enum Code: String {
            case resourceInUseError = "ResourceInUse.ResourceInUseError"
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

        /// 资源在使用中。
        public static var resourceInUseError: ResourceInUse {
            ResourceInUse(.resourceInUseError)
        }

        public func asDtsError() -> TCDtsError {
            let code: TCDtsError.Code
            switch self.error {
            case .resourceInUseError:
                code = .resourceInUse_ResourceInUseError
            }
            return TCDtsError(code, context: self.context)
        }
    }
}
