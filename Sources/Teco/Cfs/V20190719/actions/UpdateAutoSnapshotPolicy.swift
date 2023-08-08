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

import Logging
import NIOCore
import TecoCore

extension Cfs {
    /// UpdateAutoSnapshotPolicy请求参数结构体
    public struct UpdateAutoSnapshotPolicyRequest: TCRequestModel {
        /// 快照策略ID
        public let autoSnapshotPolicyId: String

        /// 快照策略名称
        public let policyName: String?

        /// 快照定期备份，按照星期一到星期日。 1代表星期一，7代表星期日
        public let dayOfWeek: String?

        /// 快照定期备份在一天的哪一小时
        public let hour: String?

        /// 快照保留日期
        public let aliveDays: UInt64?

        /// 是否激活定期快照功能；1代表激活，0代表未激活
        public let isActivated: UInt64?

        /// 定期快照在每月的第几天创建快照，该参数与DayOfWeek互斥
        public let dayOfMonth: String?

        /// 间隔天数定期执行快照，该参数与DayOfWeek,DayOfMonth 互斥
        public let intervalDays: UInt64?

        public init(autoSnapshotPolicyId: String, policyName: String? = nil, dayOfWeek: String? = nil, hour: String? = nil, aliveDays: UInt64? = nil, isActivated: UInt64? = nil, dayOfMonth: String? = nil, intervalDays: UInt64? = nil) {
            self.autoSnapshotPolicyId = autoSnapshotPolicyId
            self.policyName = policyName
            self.dayOfWeek = dayOfWeek
            self.hour = hour
            self.aliveDays = aliveDays
            self.isActivated = isActivated
            self.dayOfMonth = dayOfMonth
            self.intervalDays = intervalDays
        }

        enum CodingKeys: String, CodingKey {
            case autoSnapshotPolicyId = "AutoSnapshotPolicyId"
            case policyName = "PolicyName"
            case dayOfWeek = "DayOfWeek"
            case hour = "Hour"
            case aliveDays = "AliveDays"
            case isActivated = "IsActivated"
            case dayOfMonth = "DayOfMonth"
            case intervalDays = "IntervalDays"
        }
    }

    /// UpdateAutoSnapshotPolicy返回参数结构体
    public struct UpdateAutoSnapshotPolicyResponse: TCResponseModel {
        /// 快照策略ID
        public let autoSnapshotPolicyId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case autoSnapshotPolicyId = "AutoSnapshotPolicyId"
            case requestId = "RequestId"
        }
    }

    /// 更新定期快照策略
    ///
    /// 更新定期自动快照策略
    @inlinable
    public func updateAutoSnapshotPolicy(_ input: UpdateAutoSnapshotPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAutoSnapshotPolicyResponse> {
        self.client.execute(action: "UpdateAutoSnapshotPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新定期快照策略
    ///
    /// 更新定期自动快照策略
    @inlinable
    public func updateAutoSnapshotPolicy(_ input: UpdateAutoSnapshotPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAutoSnapshotPolicyResponse {
        try await self.client.execute(action: "UpdateAutoSnapshotPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新定期快照策略
    ///
    /// 更新定期自动快照策略
    @inlinable
    public func updateAutoSnapshotPolicy(autoSnapshotPolicyId: String, policyName: String? = nil, dayOfWeek: String? = nil, hour: String? = nil, aliveDays: UInt64? = nil, isActivated: UInt64? = nil, dayOfMonth: String? = nil, intervalDays: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAutoSnapshotPolicyResponse> {
        self.updateAutoSnapshotPolicy(.init(autoSnapshotPolicyId: autoSnapshotPolicyId, policyName: policyName, dayOfWeek: dayOfWeek, hour: hour, aliveDays: aliveDays, isActivated: isActivated, dayOfMonth: dayOfMonth, intervalDays: intervalDays), region: region, logger: logger, on: eventLoop)
    }

    /// 更新定期快照策略
    ///
    /// 更新定期自动快照策略
    @inlinable
    public func updateAutoSnapshotPolicy(autoSnapshotPolicyId: String, policyName: String? = nil, dayOfWeek: String? = nil, hour: String? = nil, aliveDays: UInt64? = nil, isActivated: UInt64? = nil, dayOfMonth: String? = nil, intervalDays: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAutoSnapshotPolicyResponse {
        try await self.updateAutoSnapshotPolicy(.init(autoSnapshotPolicyId: autoSnapshotPolicyId, policyName: policyName, dayOfWeek: dayOfWeek, hour: hour, aliveDays: aliveDays, isActivated: isActivated, dayOfMonth: dayOfMonth, intervalDays: intervalDays), region: region, logger: logger, on: eventLoop)
    }
}
