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

extension TCKeewidbError {
    public struct ResourceNotFound: TCKeewidbErrorType {
        enum Code: String {
            case instanceNotExists = "ResourceNotFound.InstanceNotExists"
            case instanceNotFound = "ResourceNotFound.InstanceNotFound"
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

        /// 找不到对应实例
        public static var instanceNotExists: ResourceNotFound {
            ResourceNotFound(.instanceNotExists)
        }

        /// 找不到该实例。
        public static var instanceNotFound: ResourceNotFound {
            ResourceNotFound(.instanceNotFound)
        }

        public func asKeewidbError() -> TCKeewidbError {
            let code: TCKeewidbError.Code
            switch self.error {
            case .instanceNotExists:
                code = .resourceNotFound_InstanceNotExists
            case .instanceNotFound:
                code = .resourceNotFound_InstanceNotFound
            }
            return TCKeewidbError(code, context: self.context)
        }
    }
}
