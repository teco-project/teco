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

extension TCCwpError {
    public struct ResourceNotFound: TCCwpErrorType {
        enum Code: String {
            case machineNotFound = "ResourceNotFound.MachineNotFound"
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

        /// 扫描机器不存在。
        public static var machineNotFound: ResourceNotFound {
            ResourceNotFound(.machineNotFound)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asCwpError() -> TCCwpError {
            let code: TCCwpError.Code
            switch self.error {
            case .machineNotFound:
                code = .resourceNotFound_MachineNotFound
            case .other:
                code = .resourceNotFound
            }
            return TCCwpError(code, context: self.context)
        }
    }
}
