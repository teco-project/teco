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

extension Billing {
    /// DescribeCostSummaryByRegion请求参数结构体
    public struct DescribeCostSummaryByRegionRequest: TCPaginatedRequest {
        /// 目前必须和EndTime相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        public let beginTime: String

        /// 目前必须和BeginTime为相同月份，不支持跨月查询，且查询结果是整月数据，例如 BeginTime为2018-09，EndTime 为 2018-09，查询结果是 2018 年 9 月数据。
        public let endTime: String

        /// 每次获取数据量
        public let limit: UInt64

        /// 偏移量
        public let offset: UInt64

        /// 查询账单数据的用户UIN
        public let payerUin: String?

        /// 是否需要返回记录数量，0不需要，1需要，默认不需要
        public let needRecordNum: UInt64?

        public init(beginTime: String, endTime: String, limit: UInt64, offset: UInt64, payerUin: String? = nil, needRecordNum: UInt64? = nil) {
            self.beginTime = beginTime
            self.endTime = endTime
            self.limit = limit
            self.offset = offset
            self.payerUin = payerUin
            self.needRecordNum = needRecordNum
        }

        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
            case payerUin = "PayerUin"
            case needRecordNum = "NeedRecordNum"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCostSummaryByRegionResponse) -> DescribeCostSummaryByRegionRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCostSummaryByRegionRequest(beginTime: self.beginTime, endTime: self.endTime, limit: self.limit, offset: self.offset + .init(response.getItems().count), payerUin: self.payerUin, needRecordNum: self.needRecordNum)
        }
    }

    /// DescribeCostSummaryByRegion返回参数结构体
    public struct DescribeCostSummaryByRegionResponse: TCPaginatedResponse {
        /// 数据是否准备好，0未准备好，1准备好
        public let ready: UInt64

        /// 消耗详情
        public let total: ConsumptionSummaryTotal

        /// 消耗按地域汇总详情
        public let data: [ConsumptionRegionSummaryDataItem]

        /// 记录数量，NeedRecordNum为0是返回null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recordNum: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ready = "Ready"
            case total = "Total"
            case data = "Data"
            case recordNum = "RecordNum"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ConsumptionRegionSummaryDataItem] {
            self.data
        }
    }

    /// 获取按地域汇总消耗详情
    @inlinable
    public func describeCostSummaryByRegion(_ input: DescribeCostSummaryByRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCostSummaryByRegionResponse> {
        self.client.execute(action: "DescribeCostSummaryByRegion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取按地域汇总消耗详情
    @inlinable
    public func describeCostSummaryByRegion(_ input: DescribeCostSummaryByRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCostSummaryByRegionResponse {
        try await self.client.execute(action: "DescribeCostSummaryByRegion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取按地域汇总消耗详情
    @inlinable
    public func describeCostSummaryByRegion(beginTime: String, endTime: String, limit: UInt64, offset: UInt64, payerUin: String? = nil, needRecordNum: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCostSummaryByRegionResponse> {
        self.describeCostSummaryByRegion(.init(beginTime: beginTime, endTime: endTime, limit: limit, offset: offset, payerUin: payerUin, needRecordNum: needRecordNum), region: region, logger: logger, on: eventLoop)
    }

    /// 获取按地域汇总消耗详情
    @inlinable
    public func describeCostSummaryByRegion(beginTime: String, endTime: String, limit: UInt64, offset: UInt64, payerUin: String? = nil, needRecordNum: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCostSummaryByRegionResponse {
        try await self.describeCostSummaryByRegion(.init(beginTime: beginTime, endTime: endTime, limit: limit, offset: offset, payerUin: payerUin, needRecordNum: needRecordNum), region: region, logger: logger, on: eventLoop)
    }

    /// 获取按地域汇总消耗详情
    @inlinable
    public func describeCostSummaryByRegionPaginated(_ input: DescribeCostSummaryByRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ConsumptionRegionSummaryDataItem])> {
        self.client.paginate(input: input, region: region, command: self.describeCostSummaryByRegion, logger: logger, on: eventLoop)
    }

    /// 获取按地域汇总消耗详情
    @inlinable @discardableResult
    public func describeCostSummaryByRegionPaginated(_ input: DescribeCostSummaryByRegionRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCostSummaryByRegionResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCostSummaryByRegion, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取按地域汇总消耗详情
    ///
    /// - Returns: `AsyncSequence`s of `ConsumptionRegionSummaryDataItem` and `DescribeCostSummaryByRegionResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCostSummaryByRegionPaginator(_ input: DescribeCostSummaryByRegionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCostSummaryByRegionRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCostSummaryByRegion, logger: logger, on: eventLoop)
    }
}
