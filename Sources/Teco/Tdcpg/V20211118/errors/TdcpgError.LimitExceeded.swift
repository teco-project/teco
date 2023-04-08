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

extension TCTdcpgError {
    public struct LimitExceeded: TCTdcpgErrorType {
        enum Code: String {
            case clusterInstanceLimit = "LimitExceeded.ClusterInstanceLimit"
            case userClusterLimit = "LimitExceeded.UserClusterLimit"
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

        /// 当前集群下实例数量超过限制。
        public static var clusterInstanceLimit: LimitExceeded {
            LimitExceeded(.clusterInstanceLimit)
        }

        /// 用户集群数量超过限制。
        public static var userClusterLimit: LimitExceeded {
            LimitExceeded(.userClusterLimit)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asTdcpgError() -> TCTdcpgError {
            let code: TCTdcpgError.Code
            switch self.error {
            case .clusterInstanceLimit:
                code = .limitExceeded_ClusterInstanceLimit
            case .userClusterLimit:
                code = .limitExceeded_UserClusterLimit
            case .other:
                code = .limitExceeded
            }
            return TCTdcpgError(code, context: self.context)
        }
    }
}
