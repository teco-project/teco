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

extension Redis {
    /// DescribeInstanceParamRecords请求参数结构体
    public struct DescribeInstanceParamRecordsRequest: TCPaginatedRequest {
        /// 实例Id
        public let instanceId: String

        /// 分页大小
        public let limit: UInt64?

        /// 偏移量，取Limit整数倍
        public let offset: UInt64?

        public init(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeInstanceParamRecordsResponse) -> DescribeInstanceParamRecordsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstanceParamRecordsRequest(instanceId: self.instanceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeInstanceParamRecords返回参数结构体
    public struct DescribeInstanceParamRecordsResponse: TCPaginatedResponse {
        /// 总的修改历史记录数。
        public let totalCount: Int64

        /// 修改历史记录信息。
        public let instanceParamHistory: [InstanceParamHistory]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceParamHistory = "InstanceParamHistory"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InstanceParamHistory] {
            self.instanceParamHistory
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询参数修改历史列表
    @inlinable
    public func describeInstanceParamRecords(_ input: DescribeInstanceParamRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceParamRecordsResponse> {
        self.client.execute(action: "DescribeInstanceParamRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询参数修改历史列表
    @inlinable
    public func describeInstanceParamRecords(_ input: DescribeInstanceParamRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceParamRecordsResponse {
        try await self.client.execute(action: "DescribeInstanceParamRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询参数修改历史列表
    @inlinable
    public func describeInstanceParamRecords(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceParamRecordsResponse> {
        let input = DescribeInstanceParamRecordsRequest(instanceId: instanceId, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeInstanceParamRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询参数修改历史列表
    @inlinable
    public func describeInstanceParamRecords(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceParamRecordsResponse {
        let input = DescribeInstanceParamRecordsRequest(instanceId: instanceId, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeInstanceParamRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询参数修改历史列表
    @inlinable
    public func describeInstanceParamRecordsPaginated(_ input: DescribeInstanceParamRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceParamHistory])> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceParamRecords, logger: logger, on: eventLoop)
    }

    /// 查询参数修改历史列表
    @inlinable @discardableResult
    public func describeInstanceParamRecordsPaginated(_ input: DescribeInstanceParamRecordsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstanceParamRecordsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceParamRecords, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询参数修改历史列表
    @inlinable
    public func describeInstanceParamRecordsPaginator(_ input: DescribeInstanceParamRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstanceParamRecordsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstanceParamRecords, logger: logger, on: eventLoop)
    }
}
