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

extension Cdb {
    /// DescribeDBSwitchRecords请求参数结构体
    public struct DescribeDBSwitchRecordsRequest: TCPaginatedRequest {
        /// 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 分页偏移量。
        public let offset: Int64?

        /// 分页大小，默认值为 50，最小值为 1，最大值为 2000。
        public let limit: Int64?

        public init(instanceId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeDBSwitchRecordsResponse) -> DescribeDBSwitchRecordsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDBSwitchRecordsRequest(instanceId: self.instanceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDBSwitchRecords返回参数结构体
    public struct DescribeDBSwitchRecordsResponse: TCPaginatedResponse {
        /// 实例切换记录的总数。
        public let totalCount: Int64

        /// 实例切换记录详情。
        public let items: [DBSwitchInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DBSwitchInfo] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询云数据库切换记录
    ///
    /// 本接口(DescribeDBSwitchRecords)用于查询云数据库实例切换记录。
    @inlinable
    public func describeDBSwitchRecords(_ input: DescribeDBSwitchRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBSwitchRecordsResponse> {
        self.client.execute(action: "DescribeDBSwitchRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云数据库切换记录
    ///
    /// 本接口(DescribeDBSwitchRecords)用于查询云数据库实例切换记录。
    @inlinable
    public func describeDBSwitchRecords(_ input: DescribeDBSwitchRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSwitchRecordsResponse {
        try await self.client.execute(action: "DescribeDBSwitchRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云数据库切换记录
    ///
    /// 本接口(DescribeDBSwitchRecords)用于查询云数据库实例切换记录。
    @inlinable
    public func describeDBSwitchRecords(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBSwitchRecordsResponse> {
        let input = DescribeDBSwitchRecordsRequest(instanceId: instanceId, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeDBSwitchRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云数据库切换记录
    ///
    /// 本接口(DescribeDBSwitchRecords)用于查询云数据库实例切换记录。
    @inlinable
    public func describeDBSwitchRecords(instanceId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSwitchRecordsResponse {
        let input = DescribeDBSwitchRecordsRequest(instanceId: instanceId, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeDBSwitchRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云数据库切换记录
    ///
    /// 本接口(DescribeDBSwitchRecords)用于查询云数据库实例切换记录。
    @inlinable
    public func describeDBSwitchRecordsPaginated(_ input: DescribeDBSwitchRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DBSwitchInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDBSwitchRecords, logger: logger, on: eventLoop)
    }

    /// 查询云数据库切换记录
    ///
    /// 本接口(DescribeDBSwitchRecords)用于查询云数据库实例切换记录。
    @inlinable
    public func describeDBSwitchRecordsPaginated(_ input: DescribeDBSwitchRecordsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDBSwitchRecordsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDBSwitchRecords, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询云数据库切换记录
    ///
    /// 本接口(DescribeDBSwitchRecords)用于查询云数据库实例切换记录。
    @inlinable
    public func describeDBSwitchRecordsPaginator(_ input: DescribeDBSwitchRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeDBSwitchRecordsRequest, DescribeDBSwitchRecordsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeDBSwitchRecordsRequest, DescribeDBSwitchRecordsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeDBSwitchRecordsRequest, DescribeDBSwitchRecordsResponse>.ResultSequence(input: input, region: region, command: self.describeDBSwitchRecords, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeDBSwitchRecordsRequest, DescribeDBSwitchRecordsResponse>.ResponseSequence(input: input, region: region, command: self.describeDBSwitchRecords, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
