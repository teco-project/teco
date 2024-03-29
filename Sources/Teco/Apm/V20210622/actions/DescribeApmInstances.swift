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

extension Apm {
    /// DescribeApmInstances请求参数结构体
    public struct DescribeApmInstancesRequest: TCRequest {
        /// Tag列表
        public let tags: [ApmTag]?

        /// 搜索实例名
        public let instanceName: String?

        /// 过滤实例ID
        public let instanceIds: [String]?

        /// 是否查询官方demo实例
        public let demoInstanceFlag: Int64?

        /// 是否查询全地域实例
        public let allRegionsFlag: Int64?

        public init(tags: [ApmTag]? = nil, instanceName: String? = nil, instanceIds: [String]? = nil, demoInstanceFlag: Int64? = nil, allRegionsFlag: Int64? = nil) {
            self.tags = tags
            self.instanceName = instanceName
            self.instanceIds = instanceIds
            self.demoInstanceFlag = demoInstanceFlag
            self.allRegionsFlag = allRegionsFlag
        }

        enum CodingKeys: String, CodingKey {
            case tags = "Tags"
            case instanceName = "InstanceName"
            case instanceIds = "InstanceIds"
            case demoInstanceFlag = "DemoInstanceFlag"
            case allRegionsFlag = "AllRegionsFlag"
        }
    }

    /// DescribeApmInstances返回参数结构体
    public struct DescribeApmInstancesResponse: TCResponse {
        /// apm实例列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instances: [ApmInstanceDetail]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instances = "Instances"
            case requestId = "RequestId"
        }
    }

    /// 拉取APM实例列表
    ///
    /// APM实例列表拉取
    @inlinable
    public func describeApmInstances(_ input: DescribeApmInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApmInstancesResponse> {
        self.client.execute(action: "DescribeApmInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取APM实例列表
    ///
    /// APM实例列表拉取
    @inlinable
    public func describeApmInstances(_ input: DescribeApmInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApmInstancesResponse {
        try await self.client.execute(action: "DescribeApmInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取APM实例列表
    ///
    /// APM实例列表拉取
    @inlinable
    public func describeApmInstances(tags: [ApmTag]? = nil, instanceName: String? = nil, instanceIds: [String]? = nil, demoInstanceFlag: Int64? = nil, allRegionsFlag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApmInstancesResponse> {
        self.describeApmInstances(.init(tags: tags, instanceName: instanceName, instanceIds: instanceIds, demoInstanceFlag: demoInstanceFlag, allRegionsFlag: allRegionsFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取APM实例列表
    ///
    /// APM实例列表拉取
    @inlinable
    public func describeApmInstances(tags: [ApmTag]? = nil, instanceName: String? = nil, instanceIds: [String]? = nil, demoInstanceFlag: Int64? = nil, allRegionsFlag: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApmInstancesResponse {
        try await self.describeApmInstances(.init(tags: tags, instanceName: instanceName, instanceIds: instanceIds, demoInstanceFlag: demoInstanceFlag, allRegionsFlag: allRegionsFlag), region: region, logger: logger, on: eventLoop)
    }
}
