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

extension TCCynosdbError {
    public struct LimitExceeded: TCCynosdbErrorType {
        enum Code: String {
            case clusterInstanceLimit = "LimitExceeded.ClusterInstanceLimit"
            case userInstanceLimit = "LimitExceeded.UserInstanceLimit"
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

        /// 集群中节点数超过最大限制。
        public static var clusterInstanceLimit: LimitExceeded {
            LimitExceeded(.clusterInstanceLimit)
        }

        /// 用户实例个数超出限制。
        public static var userInstanceLimit: LimitExceeded {
            LimitExceeded(.userInstanceLimit)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asCynosdbError() -> TCCynosdbError {
            let code: TCCynosdbError.Code
            switch self.error {
            case .clusterInstanceLimit:
                code = .limitExceeded_ClusterInstanceLimit
            case .userInstanceLimit:
                code = .limitExceeded_UserInstanceLimit
            case .other:
                code = .limitExceeded
            }
            return TCCynosdbError(code, context: self.context)
        }
    }
}
