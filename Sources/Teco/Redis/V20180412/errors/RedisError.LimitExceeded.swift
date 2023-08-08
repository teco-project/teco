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

extension TCRedisError {
    public struct LimitExceeded: TCRedisErrorType {
        enum Code: String {
            case exceedUpperLimit = "LimitExceeded.ExceedUpperLimit"
            case instanceNotEmpty = "LimitExceeded.InstanceNotEmpty"
            case invalidMemSize = "LimitExceeded.InvalidMemSize"
            case invalidParameterGoodsNumNotInRange = "LimitExceeded.InvalidParameterGoodsNumNotInRange"
            case memSizeNotInRange = "LimitExceeded.MemSizeNotInRange"
            case periodExceedMaxLimit = "LimitExceeded.PeriodExceedMaxLimit"
            case periodLessThanMinLimit = "LimitExceeded.PeriodLessThanMinLimit"
            case reachTheAmountLimit = "LimitExceeded.ReachTheAmountLimit"
            case replicationGroupLocked = "LimitExceeded.ReplicationGroupLocked"
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

        /// 绑定超过上限。
        public static var exceedUpperLimit: LimitExceeded {
            LimitExceeded(.exceedUpperLimit)
        }

        /// 绑定实例必须为空。
        public static var instanceNotEmpty: LimitExceeded {
            LimitExceeded(.instanceNotEmpty)
        }

        /// 请求的容量不在售卖规格中（memSize应为1024的整数倍，单位：MB）。
        public static var invalidMemSize: LimitExceeded {
            LimitExceeded(.invalidMemSize)
        }

        /// 一次请求购买的实例数不在售卖数量限制范围内。
        public static var invalidParameterGoodsNumNotInRange: LimitExceeded {
            LimitExceeded(.invalidParameterGoodsNumNotInRange)
        }

        /// 请求的容量不在售卖容量范围内。
        public static var memSizeNotInRange: LimitExceeded {
            LimitExceeded(.memSizeNotInRange)
        }

        /// 购买时长超过3年,请求时长超过最大时长。
        public static var periodExceedMaxLimit: LimitExceeded {
            LimitExceeded(.periodExceedMaxLimit)
        }

        /// 购买时长非法，时长最少1个月。
        public static var periodLessThanMinLimit: LimitExceeded {
            LimitExceeded(.periodLessThanMinLimit)
        }

        /// 请求的 redis 数量超过最大/最小购买数限制。
        ///
        /// None
        public static var reachTheAmountLimit: LimitExceeded {
            LimitExceeded(.reachTheAmountLimit)
        }

        /// 复制组已锁定。
        public static var replicationGroupLocked: LimitExceeded {
            LimitExceeded(.replicationGroupLocked)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asRedisError() -> TCRedisError {
            let code: TCRedisError.Code
            switch self.error {
            case .exceedUpperLimit:
                code = .limitExceeded_ExceedUpperLimit
            case .instanceNotEmpty:
                code = .limitExceeded_InstanceNotEmpty
            case .invalidMemSize:
                code = .limitExceeded_InvalidMemSize
            case .invalidParameterGoodsNumNotInRange:
                code = .limitExceeded_InvalidParameterGoodsNumNotInRange
            case .memSizeNotInRange:
                code = .limitExceeded_MemSizeNotInRange
            case .periodExceedMaxLimit:
                code = .limitExceeded_PeriodExceedMaxLimit
            case .periodLessThanMinLimit:
                code = .limitExceeded_PeriodLessThanMinLimit
            case .reachTheAmountLimit:
                code = .limitExceeded_ReachTheAmountLimit
            case .replicationGroupLocked:
                code = .limitExceeded_ReplicationGroupLocked
            case .other:
                code = .limitExceeded
            }
            return TCRedisError(code, context: self.context)
        }
    }
}
