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
import TecoPaginationHelpers

extension Yunjing {
    /// DescribeAttackLogs请求参数结构体
    public struct DescribeAttackLogsRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>HttpMethod - String - 是否必填：否 - 攻击方法(POST|GET)</li>
        /// <li>MachineIp - String - 是否必填：否 - 主机内网IP</li>
        /// <li>DateRange - String - 是否必填：否 - 时间范围(存储最近3个月的数据)，如最近一个月["2019-11-17", "2019-12-17"]</li>
        public let filters: [Filter]?

        /// 主机安全客户端ID
        public let uuid: String?

        /// 云主机机器ID
        public let quuid: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, uuid: String? = nil, quuid: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.uuid = uuid
            self.quuid = quuid
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case uuid = "Uuid"
            case quuid = "Quuid"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAttackLogsResponse) -> DescribeAttackLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAttackLogsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, uuid: self.uuid, quuid: self.quuid)
        }
    }

    /// DescribeAttackLogs返回参数结构体
    public struct DescribeAttackLogsResponse: TCPaginatedResponse {
        /// 日志列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let attackLogs: [DefendAttackLog]?

        /// 总条数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case attackLogs = "AttackLogs"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DefendAttackLog] {
            self.attackLogs ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 网络攻击日志列表
    ///
    /// 按分页形式展示网络攻击日志列表
    @inlinable
    public func describeAttackLogs(_ input: DescribeAttackLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAttackLogsResponse> {
        self.client.execute(action: "DescribeAttackLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 网络攻击日志列表
    ///
    /// 按分页形式展示网络攻击日志列表
    @inlinable
    public func describeAttackLogs(_ input: DescribeAttackLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAttackLogsResponse {
        try await self.client.execute(action: "DescribeAttackLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 网络攻击日志列表
    ///
    /// 按分页形式展示网络攻击日志列表
    @inlinable
    public func describeAttackLogs(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, uuid: String? = nil, quuid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAttackLogsResponse> {
        self.describeAttackLogs(.init(limit: limit, offset: offset, filters: filters, uuid: uuid, quuid: quuid), region: region, logger: logger, on: eventLoop)
    }

    /// 网络攻击日志列表
    ///
    /// 按分页形式展示网络攻击日志列表
    @inlinable
    public func describeAttackLogs(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, uuid: String? = nil, quuid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAttackLogsResponse {
        try await self.describeAttackLogs(.init(limit: limit, offset: offset, filters: filters, uuid: uuid, quuid: quuid), region: region, logger: logger, on: eventLoop)
    }

    /// 网络攻击日志列表
    ///
    /// 按分页形式展示网络攻击日志列表
    @inlinable
    public func describeAttackLogsPaginated(_ input: DescribeAttackLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DefendAttackLog])> {
        self.client.paginate(input: input, region: region, command: self.describeAttackLogs, logger: logger, on: eventLoop)
    }

    /// 网络攻击日志列表
    ///
    /// 按分页形式展示网络攻击日志列表
    @inlinable @discardableResult
    public func describeAttackLogsPaginated(_ input: DescribeAttackLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAttackLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAttackLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 网络攻击日志列表
    ///
    /// 按分页形式展示网络攻击日志列表
    ///
    /// - Returns: `AsyncSequence`s of `DefendAttackLog` and `DescribeAttackLogsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAttackLogsPaginator(_ input: DescribeAttackLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAttackLogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAttackLogs, logger: logger, on: eventLoop)
    }
}
