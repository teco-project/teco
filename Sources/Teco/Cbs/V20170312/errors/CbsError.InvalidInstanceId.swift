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

extension TCCbsError {
    public struct InvalidInstanceId: TCCbsErrorType {
        enum Code: String {
            case notFound = "InvalidInstanceId.NotFound"
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

        /// 输入实例的`InstanceId`不存在。
        public static var notFound: InvalidInstanceId {
            InvalidInstanceId(.notFound)
        }

        public func asCbsError() -> TCCbsError {
            let code: TCCbsError.Code
            switch self.error {
            case .notFound:
                code = .invalidInstanceId_NotFound
            }
            return TCCbsError(code, context: self.context)
        }
    }
}
