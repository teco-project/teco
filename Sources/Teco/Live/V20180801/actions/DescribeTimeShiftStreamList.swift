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

extension Live {
    /// DescribeTimeShiftStreamList请求参数结构体
    public struct DescribeTimeShiftStreamListRequest: TCPaginatedRequest {
        /// 查询范围起始时间，Unix 时间戳。
        public let startTime: Int64

        /// 查询范围结束时间，Unix 时间戳。
        public let endTime: Int64

        /// 流名称。
        public let streamName: String?

        /// 推流域名。
        public let domain: String?

        /// 推流域名所属域名组。
        public let domainGroup: String?

        /// 用户指定要返回的最大结果数，取值范围[0,100]，不指定或者指定为0时，API
        /// 默认值为100。指定超过100时，API 强制使用100。指定值为负数时，接口返回错误。
        public let pageSize: Int64?

        /// 指定拉取的页码，不传时默认为1。
        public let pageNum: Int64?

        public init(startTime: Int64, endTime: Int64, streamName: String? = nil, domain: String? = nil, domainGroup: String? = nil, pageSize: Int64? = nil, pageNum: Int64? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.streamName = streamName
            self.domain = domain
            self.domainGroup = domainGroup
            self.pageSize = pageSize
            self.pageNum = pageNum
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case streamName = "StreamName"
            case domain = "Domain"
            case domainGroup = "DomainGroup"
            case pageSize = "PageSize"
            case pageNum = "PageNum"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTimeShiftStreamListResponse) -> DescribeTimeShiftStreamListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTimeShiftStreamListRequest(startTime: self.startTime, endTime: self.endTime, streamName: self.streamName, domain: self.domain, domainGroup: self.domainGroup, pageSize: self.pageSize, pageNum: (self.pageNum ?? 0) + 1)
        }
    }

    /// DescribeTimeShiftStreamList返回参数结构体
    public struct DescribeTimeShiftStreamListResponse: TCPaginatedResponse {
        /// 时间段内所有的数据量。
        public let totalSize: Int64

        /// 流列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let streamList: [TimeShiftStreamInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalSize = "TotalSize"
            case streamList = "StreamList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TimeShiftStreamInfo] {
            self.streamList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalSize
        }
    }

    /// 查询时移流列表
    ///
    /// 查询某个时间范围内所有时移流列表。最大支持查询24小时内的数据。
    @inlinable
    public func describeTimeShiftStreamList(_ input: DescribeTimeShiftStreamListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimeShiftStreamListResponse> {
        self.client.execute(action: "DescribeTimeShiftStreamList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询时移流列表
    ///
    /// 查询某个时间范围内所有时移流列表。最大支持查询24小时内的数据。
    @inlinable
    public func describeTimeShiftStreamList(_ input: DescribeTimeShiftStreamListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimeShiftStreamListResponse {
        try await self.client.execute(action: "DescribeTimeShiftStreamList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询时移流列表
    ///
    /// 查询某个时间范围内所有时移流列表。最大支持查询24小时内的数据。
    @inlinable
    public func describeTimeShiftStreamList(startTime: Int64, endTime: Int64, streamName: String? = nil, domain: String? = nil, domainGroup: String? = nil, pageSize: Int64? = nil, pageNum: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTimeShiftStreamListResponse> {
        let input = DescribeTimeShiftStreamListRequest(startTime: startTime, endTime: endTime, streamName: streamName, domain: domain, domainGroup: domainGroup, pageSize: pageSize, pageNum: pageNum)
        return self.client.execute(action: "DescribeTimeShiftStreamList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询时移流列表
    ///
    /// 查询某个时间范围内所有时移流列表。最大支持查询24小时内的数据。
    @inlinable
    public func describeTimeShiftStreamList(startTime: Int64, endTime: Int64, streamName: String? = nil, domain: String? = nil, domainGroup: String? = nil, pageSize: Int64? = nil, pageNum: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTimeShiftStreamListResponse {
        let input = DescribeTimeShiftStreamListRequest(startTime: startTime, endTime: endTime, streamName: streamName, domain: domain, domainGroup: domainGroup, pageSize: pageSize, pageNum: pageNum)
        return try await self.client.execute(action: "DescribeTimeShiftStreamList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询时移流列表
    ///
    /// 查询某个时间范围内所有时移流列表。最大支持查询24小时内的数据。
    @inlinable
    public func describeTimeShiftStreamListPaginated(_ input: DescribeTimeShiftStreamListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TimeShiftStreamInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeTimeShiftStreamList, logger: logger, on: eventLoop)
    }

    /// 查询时移流列表
    ///
    /// 查询某个时间范围内所有时移流列表。最大支持查询24小时内的数据。
    @inlinable @discardableResult
    public func describeTimeShiftStreamListPaginated(_ input: DescribeTimeShiftStreamListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTimeShiftStreamListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTimeShiftStreamList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询时移流列表
    ///
    /// 查询某个时间范围内所有时移流列表。最大支持查询24小时内的数据。
    @inlinable
    public func describeTimeShiftStreamListPaginator(_ input: DescribeTimeShiftStreamListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeTimeShiftStreamListRequest, DescribeTimeShiftStreamListResponse>.ResultSequence, responses: TCClient.Paginator<DescribeTimeShiftStreamListRequest, DescribeTimeShiftStreamListResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTimeShiftStreamList, logger: logger, on: eventLoop)
    }
}
