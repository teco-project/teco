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

extension TCAsError {
    public struct LimitExceeded: TCAsErrorType {
        enum Code: String {
            case afterAttachLbLimitExceeded = "LimitExceeded.AfterAttachLbLimitExceeded"
            case autoScalingGroupLimitExceeded = "LimitExceeded.AutoScalingGroupLimitExceeded"
            case desiredCapacityLimitExceeded = "LimitExceeded.DesiredCapacityLimitExceeded"
            case filterValuesTooLong = "LimitExceeded.FilterValuesTooLong"
            case launchConfigurationQuotaNotEnough = "LimitExceeded.LaunchConfigurationQuotaNotEnough"
            case maxSizeLimitExceeded = "LimitExceeded.MaxSizeLimitExceeded"
            case minSizeLimitExceeded = "LimitExceeded.MinSizeLimitExceeded"
            case quotaNotEnough = "LimitExceeded.QuotaNotEnough"
            case scheduledActionLimitExceeded = "LimitExceeded.ScheduledActionLimitExceeded"
            case targetTrackingScalingPolicy = "LimitExceeded.TargetTrackingScalingPolicy"
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

        /// 绑定指定的负载均衡器后，伸缩组绑定的负载均衡器总数超过了最大值。
        public static var afterAttachLbLimitExceeded: LimitExceeded {
            LimitExceeded(.afterAttachLbLimitExceeded)
        }

        /// 伸缩组数量超过限制。
        public static var autoScalingGroupLimitExceeded: LimitExceeded {
            LimitExceeded(.autoScalingGroupLimitExceeded)
        }

        /// 期望实例数超出限制。
        public static var desiredCapacityLimitExceeded: LimitExceeded {
            LimitExceeded(.desiredCapacityLimitExceeded)
        }

        /// 特定过滤器的值过多。
        public static var filterValuesTooLong: LimitExceeded {
            LimitExceeded(.filterValuesTooLong)
        }

        /// 启动配置配额不足。
        ///
        /// 如需提升配额，请提工单。
        public static var launchConfigurationQuotaNotEnough: LimitExceeded {
            LimitExceeded(.launchConfigurationQuotaNotEnough)
        }

        /// 最大实例数大于限制。
        public static var maxSizeLimitExceeded: LimitExceeded {
            LimitExceeded(.maxSizeLimitExceeded)
        }

        /// 最小实例数低于限制。
        public static var minSizeLimitExceeded: LimitExceeded {
            LimitExceeded(.minSizeLimitExceeded)
        }

        /// 当前剩余配额不足。
        public static var quotaNotEnough: LimitExceeded {
            LimitExceeded(.quotaNotEnough)
        }

        /// 定时任务数量超过限制。
        public static var scheduledActionLimitExceeded: LimitExceeded {
            LimitExceeded(.scheduledActionLimitExceeded)
        }

        /// 每个伸缩组限制创建一个目标追踪策略。
        public static var targetTrackingScalingPolicy: LimitExceeded {
            LimitExceeded(.targetTrackingScalingPolicy)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asAsError() -> TCAsError {
            let code: TCAsError.Code
            switch self.error {
            case .afterAttachLbLimitExceeded:
                code = .limitExceeded_AfterAttachLbLimitExceeded
            case .autoScalingGroupLimitExceeded:
                code = .limitExceeded_AutoScalingGroupLimitExceeded
            case .desiredCapacityLimitExceeded:
                code = .limitExceeded_DesiredCapacityLimitExceeded
            case .filterValuesTooLong:
                code = .limitExceeded_FilterValuesTooLong
            case .launchConfigurationQuotaNotEnough:
                code = .limitExceeded_LaunchConfigurationQuotaNotEnough
            case .maxSizeLimitExceeded:
                code = .limitExceeded_MaxSizeLimitExceeded
            case .minSizeLimitExceeded:
                code = .limitExceeded_MinSizeLimitExceeded
            case .quotaNotEnough:
                code = .limitExceeded_QuotaNotEnough
            case .scheduledActionLimitExceeded:
                code = .limitExceeded_ScheduledActionLimitExceeded
            case .targetTrackingScalingPolicy:
                code = .limitExceeded_TargetTrackingScalingPolicy
            case .other:
                code = .limitExceeded
            }
            return TCAsError(code, context: self.context)
        }
    }
}
