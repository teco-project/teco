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

extension TCTiaError {
    public struct ResourceInUse: TCTiaErrorType {
        enum Code: String {
            case functionName = "ResourceInUse.FunctionName"
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

        /// FunctionName已存在。
        public static var functionName: ResourceInUse {
            ResourceInUse(.functionName)
        }

        public func asTiaError() -> TCTiaError {
            let code: TCTiaError.Code
            switch self.error {
            case .functionName:
                code = .resourceInUse_FunctionName
            }
            return TCTiaError(code, context: self.context)
        }
    }
}
