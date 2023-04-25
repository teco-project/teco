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

extension TCAaError {
    public struct ResourceUnavailable: TCAaErrorType {
        enum Code: String {
            case permissionDenied = "ResourceUnavailable.PermissionDenied"
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

        /// 未开通服务权限。
        public static var permissionDenied: ResourceUnavailable {
            ResourceUnavailable(.permissionDenied)
        }

        public func asAaError() -> TCAaError {
            let code: TCAaError.Code
            switch self.error {
            case .permissionDenied:
                code = .resourceUnavailable_PermissionDenied
            }
            return TCAaError(code, context: self.context)
        }
    }
}
