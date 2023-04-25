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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Lighthouse {
    /// DescribeDiskConfigs请求参数结构体
    public struct DescribeDiskConfigsRequest: TCRequestModel {
        /// 过滤器列表。
        /// <li>zone</li>按照【可用区】进行过滤。
        /// 类型：String
        /// 必选：否
        public let filters: [Filter]?

        public init(filters: [Filter]? = nil) {
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
        }
    }

    /// DescribeDiskConfigs返回参数结构体
    public struct DescribeDiskConfigsResponse: TCResponseModel {
        /// 云硬盘配置列表。
        public let diskConfigSet: [DiskConfig]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case diskConfigSet = "DiskConfigSet"
            case requestId = "RequestId"
        }
    }

    /// 查看云硬盘配置
    ///
    /// 本接口（DescribeDiskConfigs）用于查询云硬盘配置。
    @inlinable
    public func describeDiskConfigs(_ input: DescribeDiskConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiskConfigsResponse> {
        self.client.execute(action: "DescribeDiskConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看云硬盘配置
    ///
    /// 本接口（DescribeDiskConfigs）用于查询云硬盘配置。
    @inlinable
    public func describeDiskConfigs(_ input: DescribeDiskConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiskConfigsResponse {
        try await self.client.execute(action: "DescribeDiskConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看云硬盘配置
    ///
    /// 本接口（DescribeDiskConfigs）用于查询云硬盘配置。
    @inlinable
    public func describeDiskConfigs(filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiskConfigsResponse> {
        self.describeDiskConfigs(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查看云硬盘配置
    ///
    /// 本接口（DescribeDiskConfigs）用于查询云硬盘配置。
    @inlinable
    public func describeDiskConfigs(filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiskConfigsResponse {
        try await self.describeDiskConfigs(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
