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

extension Monitor {
    /// DescribeAlarmEvents请求参数结构体
    public struct DescribeAlarmEventsRequest: TCRequestModel {
        /// 模块名，固定值 monitor
        public let module: String

        /// 告警策略类型，由 DescribeAllNamespaces 获得，例如 cvm_device
        public let namespace: String

        /// 监控类型，如 MT_QCE。如果不填默认为 MT_QCE。
        public let monitorType: String?

        public init(module: String, namespace: String, monitorType: String? = nil) {
            self.module = module
            self.namespace = namespace
            self.monitorType = monitorType
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case namespace = "Namespace"
            case monitorType = "MonitorType"
        }
    }

    /// DescribeAlarmEvents返回参数结构体
    public struct DescribeAlarmEventsResponse: TCResponseModel {
        /// 告警事件列表
        public let events: [AlarmEvent]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case events = "Events"
            case requestId = "RequestId"
        }
    }

    /// 查询告警事件列表
    @inlinable
    public func describeAlarmEvents(_ input: DescribeAlarmEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmEventsResponse> {
        self.client.execute(action: "DescribeAlarmEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询告警事件列表
    @inlinable
    public func describeAlarmEvents(_ input: DescribeAlarmEventsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmEventsResponse {
        try await self.client.execute(action: "DescribeAlarmEvents", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询告警事件列表
    @inlinable
    public func describeAlarmEvents(module: String, namespace: String, monitorType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmEventsResponse> {
        self.describeAlarmEvents(.init(module: module, namespace: namespace, monitorType: monitorType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询告警事件列表
    @inlinable
    public func describeAlarmEvents(module: String, namespace: String, monitorType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmEventsResponse {
        try await self.describeAlarmEvents(.init(module: module, namespace: namespace, monitorType: monitorType), region: region, logger: logger, on: eventLoop)
    }
}
