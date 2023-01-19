//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Teo {
    /// DescribeApplicationProxies请求参数结构体
    public struct DescribeApplicationProxiesRequest: TCRequestModel {
        /// 分页查询偏移量。默认为0。
        public let offset: Int64?

        /// 分页查询限制数目。默认值：20，最大值：1000。
        public let limit: Int64?

        /// 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：<li>proxy-id<br>   按照【<strong>代理ID</strong>】进行过滤。代理ID形如：proxy-ev2sawbwfd。<br>   类型：String<br>   必选：否</li><li>zone-id<br>   按照【<strong>站点ID</strong>】进行过滤。站点ID形如：zone-vawer2vadg。<br>   类型：String<br>   必选：否</li>
        public let filters: [Filter]?

        public init(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }

    /// DescribeApplicationProxies返回参数结构体
    public struct DescribeApplicationProxiesResponse: TCResponseModel {
        /// 应用代理列表。
        public let applicationProxies: [ApplicationProxy]

        /// 记录总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case applicationProxies = "ApplicationProxies"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询应用代理列表
    ///
    /// 查询应用代理列表。
    @inlinable
    public func describeApplicationProxies(_ input: DescribeApplicationProxiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationProxiesResponse> {
        self.client.execute(action: "DescribeApplicationProxies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应用代理列表
    ///
    /// 查询应用代理列表。
    @inlinable
    public func describeApplicationProxies(_ input: DescribeApplicationProxiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationProxiesResponse {
        try await self.client.execute(action: "DescribeApplicationProxies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应用代理列表
    ///
    /// 查询应用代理列表。
    @inlinable
    public func describeApplicationProxies(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationProxiesResponse> {
        self.describeApplicationProxies(DescribeApplicationProxiesRequest(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询应用代理列表
    ///
    /// 查询应用代理列表。
    @inlinable
    public func describeApplicationProxies(offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationProxiesResponse {
        try await self.describeApplicationProxies(DescribeApplicationProxiesRequest(offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
