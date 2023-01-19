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

extension Cdn {
    /// DescribeTrafficPackages请求参数结构体
    public struct DescribeTrafficPackagesRequest: TCRequestModel {
        /// 分页查询起始地址，默认 0
        public let offset: Int64?

        /// 分页查询记录个数，默认100，最大1000
        public let limit: Int64?

        /// 流量包排序方式，支持以下值：
        /// expireTimeDesc：默认值，按过期时间倒序
        /// expireTimeAsc：按过期时间正序
        /// createTimeDesc：按创建时间倒序
        /// createTimeAsc：按创建时间正序
        /// status：按状态排序，正常抵扣>未生效>已用尽>已过期
        /// channel：按来源排序，主动购买>自动续订>CDN赠送
        public let sortBy: String?

        public init(offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.sortBy = sortBy
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case sortBy = "SortBy"
        }
    }

    /// DescribeTrafficPackages返回参数结构体
    public struct DescribeTrafficPackagesResponse: TCResponseModel {
        /// 流量包总个数
        public let totalCount: Int64

        /// 流量包详情
        public let trafficPackages: [TrafficPackage]

        /// 即将过期的流量包个数（7天内）
        public let expiringCount: Int64

        /// 有效流量包个数
        public let enabledCount: Int64

        /// 付费流量包个数
        public let paidCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case trafficPackages = "TrafficPackages"
            case expiringCount = "ExpiringCount"
            case enabledCount = "EnabledCount"
            case paidCount = "PaidCount"
            case requestId = "RequestId"
        }
    }

    /// 流量包查询
    ///
    /// DescribeTrafficPackages 用于查询 CDN 流量包详情。
    @inlinable
    public func describeTrafficPackages(_ input: DescribeTrafficPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrafficPackagesResponse> {
        self.client.execute(action: "DescribeTrafficPackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 流量包查询
    ///
    /// DescribeTrafficPackages 用于查询 CDN 流量包详情。
    @inlinable
    public func describeTrafficPackages(_ input: DescribeTrafficPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrafficPackagesResponse {
        try await self.client.execute(action: "DescribeTrafficPackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 流量包查询
    ///
    /// DescribeTrafficPackages 用于查询 CDN 流量包详情。
    @inlinable
    public func describeTrafficPackages(offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrafficPackagesResponse> {
        self.describeTrafficPackages(DescribeTrafficPackagesRequest(offset: offset, limit: limit, sortBy: sortBy), region: region, logger: logger, on: eventLoop)
    }

    /// 流量包查询
    ///
    /// DescribeTrafficPackages 用于查询 CDN 流量包详情。
    @inlinable
    public func describeTrafficPackages(offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrafficPackagesResponse {
        try await self.describeTrafficPackages(DescribeTrafficPackagesRequest(offset: offset, limit: limit, sortBy: sortBy), region: region, logger: logger, on: eventLoop)
    }
}
