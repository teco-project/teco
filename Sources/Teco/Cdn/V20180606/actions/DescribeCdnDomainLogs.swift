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

extension Cdn {
    /// DescribeCdnDomainLogs请求参数结构体
    public struct DescribeCdnDomainLogsRequest: TCPaginatedRequest {
        /// 指定域名查询
        public let domain: String

        /// 开始时间，如 2019-09-04 00:00:00
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 结束时间，如 2019-09-04 12:00:00
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 分页查询偏移量，默认为 0
        public let offset: Int64?

        /// 分页查询限制数目，默认为 100，最大为 1000
        public let limit: Int64?

        /// 指定区域下载日志
        /// mainland：获取境内加速日志包下载链接
        /// overseas：获取境外加速日志包下载链接
        /// global：同时获取境内、境外加速日志包下载链接（分开打包）
        /// 不指定时默认为 mainland
        public let area: String?

        /// 指定下载日志的类型，目前仅支持访问日志（access）。
        /// access：访问日志
        public let logType: String?

        public init(domain: String, startTime: Date, endTime: Date, offset: Int64? = nil, limit: Int64? = nil, area: String? = nil, logType: String? = nil) {
            self.domain = domain
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.offset = offset
            self.limit = limit
            self.area = area
            self.logType = logType
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case offset = "Offset"
            case limit = "Limit"
            case area = "Area"
            case logType = "LogType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeCdnDomainLogsResponse) -> DescribeCdnDomainLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCdnDomainLogsRequest(domain: self.domain, startTime: self.startTime, endTime: self.endTime, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, area: self.area, logType: self.logType)
        }
    }

    /// DescribeCdnDomainLogs返回参数结构体
    public struct DescribeCdnDomainLogsResponse: TCPaginatedResponse {
        /// 日志包下载链接。
        /// 下载内容是gz后缀的压缩包，解压后是无扩展名的文本文件。
        public let domainLogs: [DomainLog]

        /// 查询到的总条数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domainLogs = "DomainLogs"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DomainLog] {
            self.domainLogs
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 日志下载链接查询
    ///
    /// DescribeCdnDomainLogs 用于查询访问日志下载地址，仅支持 30 天以内的境内、境外访问日志下载链接查询。
    @inlinable
    public func describeCdnDomainLogs(_ input: DescribeCdnDomainLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCdnDomainLogsResponse> {
        self.client.execute(action: "DescribeCdnDomainLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 日志下载链接查询
    ///
    /// DescribeCdnDomainLogs 用于查询访问日志下载地址，仅支持 30 天以内的境内、境外访问日志下载链接查询。
    @inlinable
    public func describeCdnDomainLogs(_ input: DescribeCdnDomainLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCdnDomainLogsResponse {
        try await self.client.execute(action: "DescribeCdnDomainLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 日志下载链接查询
    ///
    /// DescribeCdnDomainLogs 用于查询访问日志下载地址，仅支持 30 天以内的境内、境外访问日志下载链接查询。
    @inlinable
    public func describeCdnDomainLogs(domain: String, startTime: Date, endTime: Date, offset: Int64? = nil, limit: Int64? = nil, area: String? = nil, logType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCdnDomainLogsResponse> {
        let input = DescribeCdnDomainLogsRequest(domain: domain, startTime: startTime, endTime: endTime, offset: offset, limit: limit, area: area, logType: logType)
        return self.client.execute(action: "DescribeCdnDomainLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 日志下载链接查询
    ///
    /// DescribeCdnDomainLogs 用于查询访问日志下载地址，仅支持 30 天以内的境内、境外访问日志下载链接查询。
    @inlinable
    public func describeCdnDomainLogs(domain: String, startTime: Date, endTime: Date, offset: Int64? = nil, limit: Int64? = nil, area: String? = nil, logType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCdnDomainLogsResponse {
        let input = DescribeCdnDomainLogsRequest(domain: domain, startTime: startTime, endTime: endTime, offset: offset, limit: limit, area: area, logType: logType)
        return try await self.client.execute(action: "DescribeCdnDomainLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 日志下载链接查询
    ///
    /// DescribeCdnDomainLogs 用于查询访问日志下载地址，仅支持 30 天以内的境内、境外访问日志下载链接查询。
    @inlinable
    public func describeCdnDomainLogsPaginated(_ input: DescribeCdnDomainLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DomainLog])> {
        self.client.paginate(input: input, region: region, command: self.describeCdnDomainLogs, logger: logger, on: eventLoop)
    }

    /// 日志下载链接查询
    ///
    /// DescribeCdnDomainLogs 用于查询访问日志下载地址，仅支持 30 天以内的境内、境外访问日志下载链接查询。
    @inlinable
    public func describeCdnDomainLogsPaginated(_ input: DescribeCdnDomainLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCdnDomainLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCdnDomainLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 日志下载链接查询
    ///
    /// DescribeCdnDomainLogs 用于查询访问日志下载地址，仅支持 30 天以内的境内、境外访问日志下载链接查询。
    @inlinable
    public func describeCdnDomainLogsPaginator(_ input: DescribeCdnDomainLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeCdnDomainLogsRequest, DescribeCdnDomainLogsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeCdnDomainLogsRequest, DescribeCdnDomainLogsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeCdnDomainLogsRequest, DescribeCdnDomainLogsResponse>.ResultSequence(input: input, region: region, command: self.describeCdnDomainLogs, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeCdnDomainLogsRequest, DescribeCdnDomainLogsResponse>.ResponseSequence(input: input, region: region, command: self.describeCdnDomainLogs, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
