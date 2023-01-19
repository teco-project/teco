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

extension TCCloudauditError {
    public struct ResourceNotFound: TCCloudauditErrorType {
        enum Code: String {
            case auditNotExist = "ResourceNotFound.AuditNotExist"
            case roleNotExist = "ResourceNotFound.RoleNotExist"
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

        /// 跟踪集不存在
        public static var auditNotExist: ResourceNotFound {
            ResourceNotFound(.auditNotExist)
        }

        public static var roleNotExist: ResourceNotFound {
            ResourceNotFound(.roleNotExist)
        }

        public func asCloudauditError() -> TCCloudauditError {
            let code: TCCloudauditError.Code
            switch self.error {
            case .auditNotExist:
                code = .resourceNotFound_AuditNotExist
            case .roleNotExist:
                code = .resourceNotFound_RoleNotExist
            }
            return TCCloudauditError(code, context: self.context)
        }
    }
}
