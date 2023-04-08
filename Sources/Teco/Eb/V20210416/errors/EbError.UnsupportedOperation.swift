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

extension TCEbError {
    public struct UnsupportedOperation: TCEbErrorType {
        enum Code: String {
            case invalidAction = "UnsupportedOperation.InvalidAction"
            case invalidEndpointType = "UnsupportedOperation.InvalidEndpointType"
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

        /// 连接器操作失败，接口不支持当前操作。
        public static var invalidAction: UnsupportedOperation {
            UnsupportedOperation(.invalidAction)
        }

        /// 连接器创建失败，不支持当前后端服务类型。
        public static var invalidEndpointType: UnsupportedOperation {
            UnsupportedOperation(.invalidEndpointType)
        }

        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asEbError() -> TCEbError {
            let code: TCEbError.Code
            switch self.error {
            case .invalidAction:
                code = .unsupportedOperation_InvalidAction
            case .invalidEndpointType:
                code = .unsupportedOperation_InvalidEndpointType
            case .other:
                code = .unsupportedOperation
            }
            return TCEbError(code, context: self.context)
        }
    }
}
