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
import TecoPaginationHelpers

extension Billing {
    /// DescribeCostDetail请求参数结构体
    public struct DescribeCostDetailRequest: TCPaginatedRequest {
        /// 数量，最大值为100
        public let limit: Int64

        /// 偏移量
        public let offset: UInt64

        /// 周期开始时间，格式为yyyy-mm-dd hh:ii:ss，Month和BeginTime&EndTime必传一个，如果有该字段则Month字段无效。BeginTime和EndTime必须一起传，且为同一月份，暂不支持跨月拉取。可拉取的数据是开通成本分析后，且距今 24 个月内的数据。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var beginTime: Date?

        /// 周期结束时间，格式为yyyy-mm-dd hh:ii:ss，Month和BeginTime&EndTime必传一个，如果有该字段则Month字段无效。BeginTime和EndTime必须一起传，且为同一月份，暂不支持跨月拉取。可拉取的数据是开通成本分析后，且距今 24 个月内的数据。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date?

        /// 是否需要访问列表的总记录数，用于前端分页
        /// 1-表示需要， 0-表示不需要
        public let needRecordNum: UInt64?

        /// 月份，格式为yyyy-mm，Month和BeginTime&EndTime必传一个，如果有传BeginTime&EndTime则Month字段无效。不能早于开通成本分析的月份，最多可拉取24个月内的数据。
        public let month: String?

        /// 查询指定产品信息（暂时未开放获取）
        public let productCode: String?

        /// 付费模式 prePay/postPay
        public let payMode: String?

        /// 查询指定资源信息
        public let resourceId: String?

        public init(limit: Int64, offset: UInt64, beginTime: Date? = nil, endTime: Date? = nil, needRecordNum: UInt64? = nil, month: String? = nil, productCode: String? = nil, payMode: String? = nil, resourceId: String? = nil) {
            self.limit = limit
            self.offset = offset
            self._beginTime = .init(wrappedValue: beginTime)
            self._endTime = .init(wrappedValue: endTime)
            self.needRecordNum = needRecordNum
            self.month = month
            self.productCode = productCode
            self.payMode = payMode
            self.resourceId = resourceId
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case needRecordNum = "NeedRecordNum"
            case month = "Month"
            case productCode = "ProductCode"
            case payMode = "PayMode"
            case resourceId = "ResourceId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCostDetailResponse) -> DescribeCostDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCostDetailRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), beginTime: self.beginTime, endTime: self.endTime, needRecordNum: self.needRecordNum, month: self.month, productCode: self.productCode, payMode: self.payMode, resourceId: self.resourceId)
        }
    }

    /// DescribeCostDetail返回参数结构体
    public struct DescribeCostDetailResponse: TCPaginatedResponse {
        /// 消耗明细
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detailSet: [CostDetail]?

        /// 记录数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case detailSet = "DetailSet"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CostDetail`` list from the paginated response.
        public func getItems() -> [CostDetail] {
            self.detailSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询消耗明细
    @inlinable
    public func describeCostDetail(_ input: DescribeCostDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCostDetailResponse> {
        self.client.execute(action: "DescribeCostDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询消耗明细
    @inlinable
    public func describeCostDetail(_ input: DescribeCostDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCostDetailResponse {
        try await self.client.execute(action: "DescribeCostDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询消耗明细
    @inlinable
    public func describeCostDetail(limit: Int64, offset: UInt64, beginTime: Date? = nil, endTime: Date? = nil, needRecordNum: UInt64? = nil, month: String? = nil, productCode: String? = nil, payMode: String? = nil, resourceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCostDetailResponse> {
        self.describeCostDetail(.init(limit: limit, offset: offset, beginTime: beginTime, endTime: endTime, needRecordNum: needRecordNum, month: month, productCode: productCode, payMode: payMode, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询消耗明细
    @inlinable
    public func describeCostDetail(limit: Int64, offset: UInt64, beginTime: Date? = nil, endTime: Date? = nil, needRecordNum: UInt64? = nil, month: String? = nil, productCode: String? = nil, payMode: String? = nil, resourceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCostDetailResponse {
        try await self.describeCostDetail(.init(limit: limit, offset: offset, beginTime: beginTime, endTime: endTime, needRecordNum: needRecordNum, month: month, productCode: productCode, payMode: payMode, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询消耗明细
    @inlinable
    public func describeCostDetailPaginated(_ input: DescribeCostDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CostDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeCostDetail, logger: logger, on: eventLoop)
    }

    /// 查询消耗明细
    @inlinable @discardableResult
    public func describeCostDetailPaginated(_ input: DescribeCostDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCostDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCostDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询消耗明细
    ///
    /// - Returns: `AsyncSequence`s of `CostDetail` and `DescribeCostDetailResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCostDetailPaginator(_ input: DescribeCostDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCostDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCostDetail, logger: logger, on: eventLoop)
    }
}
