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

import Logging
import NIOCore
import TecoCore

extension Trp {
    /// DescribeScanLogs请求参数结构体
    public struct DescribeScanLogsRequest: TCPaginatedRequest {
        /// 企业ID
        public let corpId: UInt64?

        /// 分页数量
        public let pageSize: UInt64?

        /// 当前分页
        public let pageNumber: UInt64?

        /// 安心码
        public let code: String?

        /// 小程序用户ID
        public let openid: String?

        public init(corpId: UInt64? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, code: String? = nil, openid: String? = nil) {
            self.corpId = corpId
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.code = code
            self.openid = openid
        }

        enum CodingKeys: String, CodingKey {
            case corpId = "CorpId"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case code = "Code"
            case openid = "Openid"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeScanLogsResponse) -> DescribeScanLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(corpId: self.corpId, pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1, code: self.code, openid: self.openid)
        }
    }

    /// DescribeScanLogs返回参数结构体
    public struct DescribeScanLogsResponse: TCPaginatedResponse {
        /// 【弃用】
        @available(*, deprecated)
        public let products: [ScanLog]

        /// 条数
        public let totalCount: Int64

        /// 扫描记录
        public let scanLogs: [ScanLog]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case products = "Products"
            case totalCount = "TotalCount"
            case scanLogs = "ScanLogs"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ScanLog`` list from the paginated response.
        public func getItems() -> [ScanLog] {
            self.scanLogs
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询扫码日志明细
    @inlinable
    public func describeScanLogs(_ input: DescribeScanLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanLogsResponse> {
        self.client.execute(action: "DescribeScanLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询扫码日志明细
    @inlinable
    public func describeScanLogs(_ input: DescribeScanLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanLogsResponse {
        try await self.client.execute(action: "DescribeScanLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询扫码日志明细
    @inlinable
    public func describeScanLogs(corpId: UInt64? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, code: String? = nil, openid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScanLogsResponse> {
        self.describeScanLogs(.init(corpId: corpId, pageSize: pageSize, pageNumber: pageNumber, code: code, openid: openid), region: region, logger: logger, on: eventLoop)
    }

    /// 查询扫码日志明细
    @inlinable
    public func describeScanLogs(corpId: UInt64? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, code: String? = nil, openid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScanLogsResponse {
        try await self.describeScanLogs(.init(corpId: corpId, pageSize: pageSize, pageNumber: pageNumber, code: code, openid: openid), region: region, logger: logger, on: eventLoop)
    }

    /// 查询扫码日志明细
    @inlinable
    public func describeScanLogsPaginated(_ input: DescribeScanLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ScanLog])> {
        self.client.paginate(input: input, region: region, command: self.describeScanLogs, logger: logger, on: eventLoop)
    }

    /// 查询扫码日志明细
    @inlinable @discardableResult
    public func describeScanLogsPaginated(_ input: DescribeScanLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeScanLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeScanLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询扫码日志明细
    ///
    /// - Returns: `AsyncSequence`s of ``ScanLog`` and ``DescribeScanLogsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeScanLogsPaginator(_ input: DescribeScanLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeScanLogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeScanLogs, logger: logger, on: eventLoop)
    }
}
