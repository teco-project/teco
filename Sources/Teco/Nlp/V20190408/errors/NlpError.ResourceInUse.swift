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

extension TCNlpError {
    public struct ResourceInUse: TCNlpErrorType {
        enum Code: String {
            case nameExists = "ResourceInUse.NameExists"
            case resourceOperating = "ResourceInUse.ResourceOperating"
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

        /// 名称已存在
        public static var nameExists: ResourceInUse {
            ResourceInUse(.nameExists)
        }

        /// 资源正在操作中
        public static var resourceOperating: ResourceInUse {
            ResourceInUse(.resourceOperating)
        }

        public func asNlpError() -> TCNlpError {
            let code: TCNlpError.Code
            switch self.error {
            case .nameExists:
                code = .resourceInUse_NameExists
            case .resourceOperating:
                code = .resourceInUse_ResourceOperating
            }
            return TCNlpError(code, context: self.context)
        }
    }
}
