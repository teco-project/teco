//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Yunjing {
    /// DescribeImpactedHosts请求参数结构体
    public struct DescribeImpactedHostsRequest: TCRequestModel {
        /// 漏洞种类ID。
        public let vulId: UInt64

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Status - String - 是否必填：否 - 状态筛选（UN_OPERATED：待处理 | FIXED：已修复）</li>
        public let filters: [Filter]?

        public init(vulId: UInt64, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.vulId = vulId
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case vulId = "VulId"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }

    /// DescribeImpactedHosts返回参数结构体
    public struct DescribeImpactedHostsResponse: TCResponseModel {
        /// 记录总数
        public let totalCount: UInt64

        /// 漏洞影响机器列表数组
        public let impactedHosts: [ImpactedHost]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case impactedHosts = "ImpactedHosts"
            case requestId = "RequestId"
        }
    }

    /// 获取漏洞受影响机器列表
    ///
    /// 本接口 (DescribeImpactedHosts) 用于获取漏洞受影响机器列表。
    @inlinable
    public func describeImpactedHosts(_ input: DescribeImpactedHostsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImpactedHostsResponse > {
        self.client.execute(action: "DescribeImpactedHosts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取漏洞受影响机器列表
    ///
    /// 本接口 (DescribeImpactedHosts) 用于获取漏洞受影响机器列表。
    @inlinable
    public func describeImpactedHosts(_ input: DescribeImpactedHostsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImpactedHostsResponse {
        try await self.client.execute(action: "DescribeImpactedHosts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取漏洞受影响机器列表
    ///
    /// 本接口 (DescribeImpactedHosts) 用于获取漏洞受影响机器列表。
    @inlinable
    public func describeImpactedHosts(vulId: UInt64, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImpactedHostsResponse > {
        self.describeImpactedHosts(DescribeImpactedHostsRequest(vulId: vulId, limit: limit, offset: offset, filters: filters), logger: logger, on: eventLoop)
    }

    /// 获取漏洞受影响机器列表
    ///
    /// 本接口 (DescribeImpactedHosts) 用于获取漏洞受影响机器列表。
    @inlinable
    public func describeImpactedHosts(vulId: UInt64, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImpactedHostsResponse {
        try await self.describeImpactedHosts(DescribeImpactedHostsRequest(vulId: vulId, limit: limit, offset: offset, filters: filters), logger: logger, on: eventLoop)
    }
}
