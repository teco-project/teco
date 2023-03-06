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

import TecoPaginationHelpers

extension Yunjing {
    /// DescribeAgentVuls请求参数结构体
    public struct DescribeAgentVulsRequest: TCPaginatedRequest {
        /// 漏洞类型。
        /// <li>WEB: Web应用漏洞</li>
        /// <li>SYSTEM：系统组件漏洞</li>
        /// <li>BASELINE：安全基线</li>
        public let vulType: String

        /// 客户端UUID。
        public let uuid: String

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Status - String - 是否必填：否 - 状态筛选（UN_OPERATED: 待处理 | FIXED：已修复）
        public let filters: [Filter]?

        public init(vulType: String, uuid: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.vulType = vulType
            self.uuid = uuid
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case vulType = "VulType"
            case uuid = "Uuid"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAgentVulsResponse) -> DescribeAgentVulsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAgentVulsRequest(vulType: self.vulType, uuid: self.uuid, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeAgentVuls返回参数结构体
    public struct DescribeAgentVulsResponse: TCPaginatedResponse {
        /// 记录总数
        public let totalCount: UInt64

        /// 主机漏洞信息
        public let agentVuls: [AgentVul]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case agentVuls = "AgentVuls"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AgentVul] {
            self.agentVuls
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取单台主机的漏洞列表
    ///
    /// 本接口 (DescribeAgentVuls) 用于获取单台主机的漏洞列表。
    @inlinable
    public func describeAgentVuls(_ input: DescribeAgentVulsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentVulsResponse> {
        self.client.execute(action: "DescribeAgentVuls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取单台主机的漏洞列表
    ///
    /// 本接口 (DescribeAgentVuls) 用于获取单台主机的漏洞列表。
    @inlinable
    public func describeAgentVuls(_ input: DescribeAgentVulsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentVulsResponse {
        try await self.client.execute(action: "DescribeAgentVuls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取单台主机的漏洞列表
    ///
    /// 本接口 (DescribeAgentVuls) 用于获取单台主机的漏洞列表。
    @inlinable
    public func describeAgentVuls(vulType: String, uuid: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentVulsResponse> {
        let input = DescribeAgentVulsRequest(vulType: vulType, uuid: uuid, limit: limit, offset: offset, filters: filters)
        return self.client.execute(action: "DescribeAgentVuls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取单台主机的漏洞列表
    ///
    /// 本接口 (DescribeAgentVuls) 用于获取单台主机的漏洞列表。
    @inlinable
    public func describeAgentVuls(vulType: String, uuid: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentVulsResponse {
        let input = DescribeAgentVulsRequest(vulType: vulType, uuid: uuid, limit: limit, offset: offset, filters: filters)
        return try await self.client.execute(action: "DescribeAgentVuls", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取单台主机的漏洞列表
    ///
    /// 本接口 (DescribeAgentVuls) 用于获取单台主机的漏洞列表。
    @inlinable
    public func describeAgentVulsPaginated(_ input: DescribeAgentVulsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AgentVul])> {
        self.client.paginate(input: input, region: region, command: self.describeAgentVuls, logger: logger, on: eventLoop)
    }

    /// 获取单台主机的漏洞列表
    ///
    /// 本接口 (DescribeAgentVuls) 用于获取单台主机的漏洞列表。
    @inlinable @discardableResult
    public func describeAgentVulsPaginated(_ input: DescribeAgentVulsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAgentVulsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAgentVuls, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取单台主机的漏洞列表
    ///
    /// 本接口 (DescribeAgentVuls) 用于获取单台主机的漏洞列表。
    @inlinable
    public func describeAgentVulsPaginator(_ input: DescribeAgentVulsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAgentVulsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAgentVuls, logger: logger, on: eventLoop)
    }
}
