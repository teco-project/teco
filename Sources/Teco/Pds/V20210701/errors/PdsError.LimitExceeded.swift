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

extension TCPdsError {
    public struct LimitExceeded: TCPdsErrorType {
        enum Code: String {
            case replayAttack = "LimitExceeded.ReplayAttack"
            case other = "LimitExceeded"
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

        /// 重放攻击。
        public static var replayAttack: LimitExceeded {
            LimitExceeded(.replayAttack)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asPdsError() -> TCPdsError {
            let code: TCPdsError.Code
            switch self.error {
            case .replayAttack:
                code = .limitExceeded_ReplayAttack
            case .other:
                code = .limitExceeded
            }
            return TCPdsError(code, context: self.context)
        }
    }
}
