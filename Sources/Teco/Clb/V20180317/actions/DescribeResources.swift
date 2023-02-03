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

extension Clb {
    /// DescribeResources请求参数结构体
    public struct DescribeResourcesRequest: TCRequestModel {
        /// 返回可用区资源列表数目，默认20，最大值100。
        public let limit: UInt64?

        /// 返回可用区资源列表起始偏移量，默认0。
        public let offset: UInt64?

        /// 查询可用区资源列表条件，详细的过滤条件如下：
        /// <li> zone - String - 是否必填：否 - （过滤条件）按照 可用区 过滤，如："ap-guangzhou-1"（广州一区）。</li>
        /// <li> isp -- String - 是否必填：否 - （过滤条件）按照 Isp 类型过滤，如："BGP","CMCC","CUCC","CTCC"。</li>
        public let filters: [Filter]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }

    /// DescribeResources返回参数结构体
    public struct DescribeResourcesResponse: TCResponseModel {
        /// 可用区支持的资源列表。
        public let zoneResourceSet: [ZoneResource]

        /// 可用区资源列表数目。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case zoneResourceSet = "ZoneResourceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询用户在当前地域支持可用区列表和资源列表
    ///
    /// 查询用户在当前地域支持可用区列表和资源列表。
    @inlinable
    public func describeResources(_ input: DescribeResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcesResponse> {
        self.client.execute(action: "DescribeResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户在当前地域支持可用区列表和资源列表
    ///
    /// 查询用户在当前地域支持可用区列表和资源列表。
    @inlinable
    public func describeResources(_ input: DescribeResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourcesResponse {
        try await self.client.execute(action: "DescribeResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户在当前地域支持可用区列表和资源列表
    ///
    /// 查询用户在当前地域支持可用区列表和资源列表。
    @inlinable
    public func describeResources(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourcesResponse> {
        let input = DescribeResourcesRequest(limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户在当前地域支持可用区列表和资源列表
    ///
    /// 查询用户在当前地域支持可用区列表和资源列表。
    @inlinable
    public func describeResources(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourcesResponse {
        let input = DescribeResourcesRequest(limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
