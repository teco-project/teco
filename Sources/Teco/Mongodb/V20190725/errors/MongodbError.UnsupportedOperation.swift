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

extension TCMongodbError {
    public struct UnsupportedOperation: TCMongodbErrorType {
        enum Code: String {
            case versionNotSupport = "UnsupportedOperation.VersionNotSupport"
            case other = "UnsupportedOperation"
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

        /// 当前版本不支持该操作。
        ///
        /// 请升级实例版本。
        public static var versionNotSupport: UnsupportedOperation {
            UnsupportedOperation(.versionNotSupport)
        }

        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asMongodbError() -> TCMongodbError {
            let code: TCMongodbError.Code
            switch self.error {
            case .versionNotSupport:
                code = .unsupportedOperation_VersionNotSupport
            case .other:
                code = .unsupportedOperation
            }
            return TCMongodbError(code, context: self.context)
        }
    }
}
