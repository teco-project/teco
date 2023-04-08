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

extension TCTcbError {
    public struct LimitExceeded: TCTcbErrorType {
        enum Code: String {
            case concurrent = "LimitExceeded.Concurrent"
            case errNamespaceMaxLimit = "LimitExceeded.ErrNamespaceMaxLimit"
            case errRepoMaxLimit = "LimitExceeded.ErrRepoMaxLimit"
            case request = "LimitExceeded.Request"
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

        /// 并发请求超过配额限制。
        public static var concurrent: LimitExceeded {
            LimitExceeded(.concurrent)
        }

        /// 命名空间超过配额。
        public static var errNamespaceMaxLimit: LimitExceeded {
            LimitExceeded(.errNamespaceMaxLimit)
        }

        /// 镜像容器超过配额。
        public static var errRepoMaxLimit: LimitExceeded {
            LimitExceeded(.errRepoMaxLimit)
        }

        /// 请求次数超过配额限制。
        public static var request: LimitExceeded {
            LimitExceeded(.request)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asTcbError() -> TCTcbError {
            let code: TCTcbError.Code
            switch self.error {
            case .concurrent:
                code = .limitExceeded_Concurrent
            case .errNamespaceMaxLimit:
                code = .limitExceeded_ErrNamespaceMaxLimit
            case .errRepoMaxLimit:
                code = .limitExceeded_ErrRepoMaxLimit
            case .request:
                code = .limitExceeded_Request
            case .other:
                code = .limitExceeded
            }
            return TCTcbError(code, context: self.context)
        }
    }
}
