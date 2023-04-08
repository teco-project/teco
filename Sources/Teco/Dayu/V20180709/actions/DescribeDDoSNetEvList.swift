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

@_exported import struct Foundation.Date
import TecoCore
import TecoDateHelpers
import TecoPaginationHelpers

extension Dayu {
    /// DescribeDDoSNetEvList请求参数结构体
    public struct DescribeDDoSNetEvListRequest: TCPaginatedRequest {
        /// 大禹子产品代号（net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 一页条数，填0表示不分页
        public let limit: UInt64?

        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64?

        public init(business: String, id: String, startTime: Date, endTime: Date, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.business = business
            self.id = id
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDDoSNetEvListResponse) -> DescribeDDoSNetEvListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDDoSNetEvListRequest(business: self.business, id: self.id, startTime: self.startTime, endTime: self.endTime, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeDDoSNetEvList返回参数结构体
    public struct DescribeDDoSNetEvListResponse: TCPaginatedResponse {
        /// 大禹子产品代号（net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// DDoS攻击事件列表
        public let data: [DDoSEventRecord]

        /// 总记录数
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case data = "Data"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DDoSEventRecord] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取高防IP专业版资源的DDoS攻击事件列表
    @inlinable
    public func describeDDoSNetEvList(_ input: DescribeDDoSNetEvListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSNetEvListResponse> {
        self.client.execute(action: "DescribeDDoSNetEvList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取高防IP专业版资源的DDoS攻击事件列表
    @inlinable
    public func describeDDoSNetEvList(_ input: DescribeDDoSNetEvListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSNetEvListResponse {
        try await self.client.execute(action: "DescribeDDoSNetEvList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取高防IP专业版资源的DDoS攻击事件列表
    @inlinable
    public func describeDDoSNetEvList(business: String, id: String, startTime: Date, endTime: Date, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSNetEvListResponse> {
        self.describeDDoSNetEvList(.init(business: business, id: id, startTime: startTime, endTime: endTime, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取高防IP专业版资源的DDoS攻击事件列表
    @inlinable
    public func describeDDoSNetEvList(business: String, id: String, startTime: Date, endTime: Date, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSNetEvListResponse {
        try await self.describeDDoSNetEvList(.init(business: business, id: id, startTime: startTime, endTime: endTime, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取高防IP专业版资源的DDoS攻击事件列表
    @inlinable
    public func describeDDoSNetEvListPaginated(_ input: DescribeDDoSNetEvListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DDoSEventRecord])> {
        self.client.paginate(input: input, region: region, command: self.describeDDoSNetEvList, logger: logger, on: eventLoop)
    }

    /// 获取高防IP专业版资源的DDoS攻击事件列表
    @inlinable @discardableResult
    public func describeDDoSNetEvListPaginated(_ input: DescribeDDoSNetEvListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDDoSNetEvListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDDoSNetEvList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取高防IP专业版资源的DDoS攻击事件列表
    ///
    /// - Returns: `AsyncSequence`s of `DDoSEventRecord` and `DescribeDDoSNetEvListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDDoSNetEvListPaginator(_ input: DescribeDDoSNetEvListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDDoSNetEvListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDDoSNetEvList, logger: logger, on: eventLoop)
    }
}
