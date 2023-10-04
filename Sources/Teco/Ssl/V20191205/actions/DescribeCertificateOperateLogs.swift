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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Ssl {
    /// DescribeCertificateOperateLogs请求参数结构体
    public struct DescribeCertificateOperateLogsRequest: TCPaginatedRequest {
        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 请求日志数量，默认为20。
        public let limit: UInt64?

        /// 开始时间，默认15天前。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date?

        /// 结束时间，默认现在时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, startTime: Date? = nil, endTime: Date? = nil) {
            self.offset = offset
            self.limit = limit
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCertificateOperateLogsResponse) -> DescribeCertificateOperateLogsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, startTime: self.startTime, endTime: self.endTime)
        }
    }

    /// DescribeCertificateOperateLogs返回参数结构体
    public struct DescribeCertificateOperateLogsResponse: TCPaginatedResponse {
        /// 当前查询条件日志总数。
        public let allTotal: UInt64

        /// 本次请求返回的日志数量。
        public let totalCount: UInt64

        /// 证书操作日志列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let operateLogs: [OperationLog]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case allTotal = "AllTotal"
            case totalCount = "TotalCount"
            case operateLogs = "OperateLogs"
            case requestId = "RequestId"
        }

        /// Extract the returned ``OperationLog`` list from the paginated response.
        public func getItems() -> [OperationLog] {
            self.operateLogs ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取证书操作日志
    ///
    /// 获取用户账号下有关证书的操作日志。
    @inlinable
    public func describeCertificateOperateLogs(_ input: DescribeCertificateOperateLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertificateOperateLogsResponse> {
        self.client.execute(action: "DescribeCertificateOperateLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取证书操作日志
    ///
    /// 获取用户账号下有关证书的操作日志。
    @inlinable
    public func describeCertificateOperateLogs(_ input: DescribeCertificateOperateLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertificateOperateLogsResponse {
        try await self.client.execute(action: "DescribeCertificateOperateLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取证书操作日志
    ///
    /// 获取用户账号下有关证书的操作日志。
    @inlinable
    public func describeCertificateOperateLogs(offset: UInt64? = nil, limit: UInt64? = nil, startTime: Date? = nil, endTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertificateOperateLogsResponse> {
        self.describeCertificateOperateLogs(.init(offset: offset, limit: limit, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取证书操作日志
    ///
    /// 获取用户账号下有关证书的操作日志。
    @inlinable
    public func describeCertificateOperateLogs(offset: UInt64? = nil, limit: UInt64? = nil, startTime: Date? = nil, endTime: Date? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertificateOperateLogsResponse {
        try await self.describeCertificateOperateLogs(.init(offset: offset, limit: limit, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 获取证书操作日志
    ///
    /// 获取用户账号下有关证书的操作日志。
    @inlinable
    public func describeCertificateOperateLogsPaginated(_ input: DescribeCertificateOperateLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [OperationLog])> {
        self.client.paginate(input: input, region: region, command: self.describeCertificateOperateLogs, logger: logger, on: eventLoop)
    }

    /// 获取证书操作日志
    ///
    /// 获取用户账号下有关证书的操作日志。
    @inlinable @discardableResult
    public func describeCertificateOperateLogsPaginated(_ input: DescribeCertificateOperateLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCertificateOperateLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCertificateOperateLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取证书操作日志
    ///
    /// 获取用户账号下有关证书的操作日志。
    ///
    /// - Returns: `AsyncSequence`s of ``OperationLog`` and ``DescribeCertificateOperateLogsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCertificateOperateLogsPaginator(_ input: DescribeCertificateOperateLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCertificateOperateLogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCertificateOperateLogs, logger: logger, on: eventLoop)
    }
}
