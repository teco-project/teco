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

extension TCCkafkaError {
    public struct InvalidParameter: TCCkafkaErrorType {
        enum Code: String {
            case topicExist = "InvalidParameter.TopicExist"
            case other = "InvalidParameter"
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

        /// 已存在同名Topic。
        public static var topicExist: InvalidParameter {
            InvalidParameter(.topicExist)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asCkafkaError() -> TCCkafkaError {
            let code: TCCkafkaError.Code
            switch self.error {
            case .topicExist:
                code = .invalidParameter_TopicExist
            case .other:
                code = .invalidParameter
            }
            return TCCkafkaError(code, context: self.context)
        }
    }
}
