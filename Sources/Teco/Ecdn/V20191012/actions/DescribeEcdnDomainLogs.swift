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
import TecoDateHelpers
import TecoPaginationHelpers

extension Ecdn {
    /// DescribeEcdnDomainLogs请求参数结构体
    public struct DescribeEcdnDomainLogsRequest: TCPaginatedRequest {
        /// 待查询域名。
        public let domain: String

        /// 日志起始时间。如：2019-10-01 00:00:00
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 日志结束时间，只支持最近30天内日志查询。2019-10-02 00:00:00
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 日志链接列表分页起始地址，默认0。
        public let offset: Int64?

        /// 日志链接列表分页记录条数，默认100，最大1000。
        public let limit: Int64?

        public init(domain: String, startTime: Date, endTime: Date, offset: Int64? = nil, limit: Int64? = nil) {
            self.domain = domain
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeEcdnDomainLogsResponse) -> DescribeEcdnDomainLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeEcdnDomainLogsRequest(domain: self.domain, startTime: self.startTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeEcdnDomainLogs返回参数结构体
    public struct DescribeEcdnDomainLogsResponse: TCPaginatedResponse {
        /// 日志链接列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainLogs: [DomainLogs]?

        /// 日志链接总条数。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domainLogs = "DomainLogs"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DomainLogs] {
            self.domainLogs ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询域名日志下载链接
    ///
    /// 本接口（DescribeEcdnDomainLogs）用于查询域名的访问日志下载地址。
    @inlinable
    public func describeEcdnDomainLogs(_ input: DescribeEcdnDomainLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEcdnDomainLogsResponse> {
        self.client.execute(action: "DescribeEcdnDomainLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名日志下载链接
    ///
    /// 本接口（DescribeEcdnDomainLogs）用于查询域名的访问日志下载地址。
    @inlinable
    public func describeEcdnDomainLogs(_ input: DescribeEcdnDomainLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEcdnDomainLogsResponse {
        try await self.client.execute(action: "DescribeEcdnDomainLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名日志下载链接
    ///
    /// 本接口（DescribeEcdnDomainLogs）用于查询域名的访问日志下载地址。
    @inlinable
    public func describeEcdnDomainLogs(domain: String, startTime: Date, endTime: Date, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEcdnDomainLogsResponse> {
        let input = DescribeEcdnDomainLogsRequest(domain: domain, startTime: startTime, endTime: endTime, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeEcdnDomainLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名日志下载链接
    ///
    /// 本接口（DescribeEcdnDomainLogs）用于查询域名的访问日志下载地址。
    @inlinable
    public func describeEcdnDomainLogs(domain: String, startTime: Date, endTime: Date, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEcdnDomainLogsResponse {
        let input = DescribeEcdnDomainLogsRequest(domain: domain, startTime: startTime, endTime: endTime, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeEcdnDomainLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名日志下载链接
    ///
    /// 本接口（DescribeEcdnDomainLogs）用于查询域名的访问日志下载地址。
    @inlinable
    public func describeEcdnDomainLogsPaginated(_ input: DescribeEcdnDomainLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DomainLogs])> {
        self.client.paginate(input: input, region: region, command: self.describeEcdnDomainLogs, logger: logger, on: eventLoop)
    }

    /// 查询域名日志下载链接
    ///
    /// 本接口（DescribeEcdnDomainLogs）用于查询域名的访问日志下载地址。
    @inlinable
    public func describeEcdnDomainLogsPaginated(_ input: DescribeEcdnDomainLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEcdnDomainLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEcdnDomainLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询域名日志下载链接
    ///
    /// 本接口（DescribeEcdnDomainLogs）用于查询域名的访问日志下载地址。
    @inlinable
    public func describeEcdnDomainLogsPaginator(_ input: DescribeEcdnDomainLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeEcdnDomainLogsRequest, DescribeEcdnDomainLogsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeEcdnDomainLogsRequest, DescribeEcdnDomainLogsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeEcdnDomainLogsRequest, DescribeEcdnDomainLogsResponse>.ResultSequence(input: input, region: region, command: self.describeEcdnDomainLogs, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeEcdnDomainLogsRequest, DescribeEcdnDomainLogsResponse>.ResponseSequence(input: input, region: region, command: self.describeEcdnDomainLogs, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
