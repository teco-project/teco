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

extension Cwp {
    /// DescribeVulEffectHostList请求参数结构体
    public struct DescribeVulEffectHostListRequest: TCPaginatedRequest {
        /// 分页limit 最大100
        public let limit: UInt64

        /// 分页Offset
        public let offset: UInt64

        /// 漏洞id
        public let vulId: UInt64

        /// 过滤条件：
        /// <li>AliasName - String - 主机名筛选</li>
        /// <li>TagIds - String - 主机标签id串，多个用英文用逗号分隔</li>
        /// <li>Status - String - 状态：0-待处理 1-忽略  3-已修复  5-检测中  6-修复中  8-修复失败</li>
        /// <li>Uuid - String数组 - Uuid串数组</li>
        /// <li>Version - String数组 - 付费版本数组："Flagship"-旗舰版 "PRO_VERSION"-专业版 "BASIC_VERSION"-基础版</li>
        /// <li>InstanceState - String数组 - 实例状态数组："PENDING"-创建中 "LAUNCH_FAILED"-创建失败 "RUNNING"-运行中 "STOPPED"-关机 "STARTING"-开机中 "STOPPING"-关机中 "REBOOTING"-重启中 "SHUTDOWN"-待销毁 "TERMINATING"-销毁中 "UNKNOWN"-未知（针对非腾讯云机器，且客户端离线的场景） </li>
        public let filters: [Filter]?

        public init(limit: UInt64, offset: UInt64, vulId: UInt64, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.vulId = vulId
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case vulId = "VulId"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeVulEffectHostListResponse) -> DescribeVulEffectHostListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVulEffectHostListRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), vulId: self.vulId, filters: self.filters)
        }
    }

    /// DescribeVulEffectHostList返回参数结构体
    public struct DescribeVulEffectHostListResponse: TCPaginatedResponse {
        /// 列表总数量
        public let totalCount: UInt64

        /// 影响主机列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulEffectHostList: [VulEffectHostList]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case vulEffectHostList = "VulEffectHostList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VulEffectHostList] {
            self.vulEffectHostList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 漏洞影响主机列表
    @inlinable
    public func describeVulEffectHostList(_ input: DescribeVulEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulEffectHostListResponse> {
        self.client.execute(action: "DescribeVulEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 漏洞影响主机列表
    @inlinable
    public func describeVulEffectHostList(_ input: DescribeVulEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulEffectHostListResponse {
        try await self.client.execute(action: "DescribeVulEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 漏洞影响主机列表
    @inlinable
    public func describeVulEffectHostList(limit: UInt64, offset: UInt64, vulId: UInt64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulEffectHostListResponse> {
        let input = DescribeVulEffectHostListRequest(limit: limit, offset: offset, vulId: vulId, filters: filters)
        return self.client.execute(action: "DescribeVulEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 漏洞影响主机列表
    @inlinable
    public func describeVulEffectHostList(limit: UInt64, offset: UInt64, vulId: UInt64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulEffectHostListResponse {
        let input = DescribeVulEffectHostListRequest(limit: limit, offset: offset, vulId: vulId, filters: filters)
        return try await self.client.execute(action: "DescribeVulEffectHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 漏洞影响主机列表
    @inlinable
    public func describeVulEffectHostListPaginated(_ input: DescribeVulEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [VulEffectHostList])> {
        self.client.paginate(input: input, region: region, command: self.describeVulEffectHostList, logger: logger, on: eventLoop)
    }

    /// 漏洞影响主机列表
    @inlinable @discardableResult
    public func describeVulEffectHostListPaginated(_ input: DescribeVulEffectHostListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVulEffectHostListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVulEffectHostList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 漏洞影响主机列表
    @inlinable
    public func describeVulEffectHostListPaginator(_ input: DescribeVulEffectHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeVulEffectHostListRequest, DescribeVulEffectHostListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeVulEffectHostListRequest, DescribeVulEffectHostListResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVulEffectHostList, logger: logger, on: eventLoop)
    }
}
