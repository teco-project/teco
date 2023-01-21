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

extension TCTdmqError {
    public struct LimitExceeded: TCTdmqErrorType {
        enum Code: String {
            case clusters = "LimitExceeded.Clusters"
            case environments = "LimitExceeded.Environments"
            case namespaces = "LimitExceeded.Namespaces"
            case retentionSize = "LimitExceeded.RetentionSize"
            case retentionTime = "LimitExceeded.RetentionTime"
            case subscriptions = "LimitExceeded.Subscriptions"
            case topics = "LimitExceeded.Topics"
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

        /// 实例下集群数量超过限制。
        public static var clusters: LimitExceeded {
            LimitExceeded(.clusters)
        }

        /// 实例下环境数量超过限制。
        public static var environments: LimitExceeded {
            LimitExceeded(.environments)
        }

        /// 实例下命名空间数量超过限额。
        public static var namespaces: LimitExceeded {
            LimitExceeded(.namespaces)
        }

        /// 超过剩余额度，请重新调整。
        public static var retentionSize: LimitExceeded {
            LimitExceeded(.retentionSize)
        }

        /// 超过保留时间限制，请重新调整。
        public static var retentionTime: LimitExceeded {
            LimitExceeded(.retentionTime)
        }

        /// 实例下订阅者数量超过限制。
        public static var subscriptions: LimitExceeded {
            LimitExceeded(.subscriptions)
        }

        /// 实例下主题数量超过限制。
        public static var topics: LimitExceeded {
            LimitExceeded(.topics)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asTdmqError() -> TCTdmqError {
            let code: TCTdmqError.Code
            switch self.error {
            case .clusters:
                code = .limitExceeded_Clusters
            case .environments:
                code = .limitExceeded_Environments
            case .namespaces:
                code = .limitExceeded_Namespaces
            case .retentionSize:
                code = .limitExceeded_RetentionSize
            case .retentionTime:
                code = .limitExceeded_RetentionTime
            case .subscriptions:
                code = .limitExceeded_Subscriptions
            case .topics:
                code = .limitExceeded_Topics
            case .other:
                code = .limitExceeded
            }
            return TCTdmqError(code, context: self.context)
        }
    }
}
