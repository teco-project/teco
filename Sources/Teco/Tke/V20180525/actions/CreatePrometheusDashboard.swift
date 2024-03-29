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

extension Tke {
    /// CreatePrometheusDashboard请求参数结构体
    public struct CreatePrometheusDashboardRequest: TCRequest {
        /// 实例id
        public let instanceId: String

        /// 面板组名称
        public let dashboardName: String

        /// 面板列表
        /// 每一项是一个grafana dashboard的json定义
        public let contents: [String]

        public init(instanceId: String, dashboardName: String, contents: [String]) {
            self.instanceId = instanceId
            self.dashboardName = dashboardName
            self.contents = contents
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dashboardName = "DashboardName"
            case contents = "Contents"
        }
    }

    /// CreatePrometheusDashboard返回参数结构体
    public struct CreatePrometheusDashboardResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建grafana监控面板
    @inlinable @discardableResult
    public func createPrometheusDashboard(_ input: CreatePrometheusDashboardRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrometheusDashboardResponse> {
        self.client.execute(action: "CreatePrometheusDashboard", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建grafana监控面板
    @inlinable @discardableResult
    public func createPrometheusDashboard(_ input: CreatePrometheusDashboardRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusDashboardResponse {
        try await self.client.execute(action: "CreatePrometheusDashboard", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建grafana监控面板
    @inlinable @discardableResult
    public func createPrometheusDashboard(instanceId: String, dashboardName: String, contents: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePrometheusDashboardResponse> {
        self.createPrometheusDashboard(.init(instanceId: instanceId, dashboardName: dashboardName, contents: contents), region: region, logger: logger, on: eventLoop)
    }

    /// 创建grafana监控面板
    @inlinable @discardableResult
    public func createPrometheusDashboard(instanceId: String, dashboardName: String, contents: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusDashboardResponse {
        try await self.createPrometheusDashboard(.init(instanceId: instanceId, dashboardName: dashboardName, contents: contents), region: region, logger: logger, on: eventLoop)
    }
}
