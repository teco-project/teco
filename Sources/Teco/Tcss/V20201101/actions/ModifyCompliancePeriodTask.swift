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

extension Tcss {
    /// ModifyCompliancePeriodTask请求参数结构体
    public struct ModifyCompliancePeriodTaskRequest: TCRequest {
        /// 要修改的定时任务的ID，由DescribeCompliancePeriodTaskList接口返回。
        public let periodTaskId: UInt64

        /// 定时任务的周期规则。不填时，不修改。
        public let periodRule: CompliancePeriodTaskRule?

        /// 设置合规标准。不填时，不修改。
        public let standardSettings: [ComplianceBenchmarkStandardEnable]?

        public init(periodTaskId: UInt64, periodRule: CompliancePeriodTaskRule? = nil, standardSettings: [ComplianceBenchmarkStandardEnable]? = nil) {
            self.periodTaskId = periodTaskId
            self.periodRule = periodRule
            self.standardSettings = standardSettings
        }

        enum CodingKeys: String, CodingKey {
            case periodTaskId = "PeriodTaskId"
            case periodRule = "PeriodRule"
            case standardSettings = "StandardSettings"
        }
    }

    /// ModifyCompliancePeriodTask返回参数结构体
    public struct ModifyCompliancePeriodTaskResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 安全合规编辑定时任务
    ///
    /// 修改定时任务的设置，包括检测周期、开启/禁用合规基准。
    @inlinable @discardableResult
    public func modifyCompliancePeriodTask(_ input: ModifyCompliancePeriodTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCompliancePeriodTaskResponse> {
        self.client.execute(action: "ModifyCompliancePeriodTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规编辑定时任务
    ///
    /// 修改定时任务的设置，包括检测周期、开启/禁用合规基准。
    @inlinable @discardableResult
    public func modifyCompliancePeriodTask(_ input: ModifyCompliancePeriodTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCompliancePeriodTaskResponse {
        try await self.client.execute(action: "ModifyCompliancePeriodTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规编辑定时任务
    ///
    /// 修改定时任务的设置，包括检测周期、开启/禁用合规基准。
    @inlinable @discardableResult
    public func modifyCompliancePeriodTask(periodTaskId: UInt64, periodRule: CompliancePeriodTaskRule? = nil, standardSettings: [ComplianceBenchmarkStandardEnable]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCompliancePeriodTaskResponse> {
        self.modifyCompliancePeriodTask(.init(periodTaskId: periodTaskId, periodRule: periodRule, standardSettings: standardSettings), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规编辑定时任务
    ///
    /// 修改定时任务的设置，包括检测周期、开启/禁用合规基准。
    @inlinable @discardableResult
    public func modifyCompliancePeriodTask(periodTaskId: UInt64, periodRule: CompliancePeriodTaskRule? = nil, standardSettings: [ComplianceBenchmarkStandardEnable]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCompliancePeriodTaskResponse {
        try await self.modifyCompliancePeriodTask(.init(periodTaskId: periodTaskId, periodRule: periodRule, standardSettings: standardSettings), region: region, logger: logger, on: eventLoop)
    }
}
