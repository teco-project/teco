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

extension Billing {
    /// DescribeCostSummaryByProject请求参数结构体
    public struct DescribeCostSummaryByProjectRequest: TCRequestModel {
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
    }

    /// DescribeCostSummaryByProject返回参数结构体
    public struct DescribeCostSummaryByProjectResponse: TCResponseModel {
        /// 数据是否准备好，0未准备好，1准备好
        public let ready: UInt64

        /// 消耗详情
        public let total: ConsumptionSummaryTotal

        /// 消耗按业务汇总详情
        public let data: [ConsumptionProjectSummaryDataItem]

        /// 记录数量，NeedRecordNum为0是返回null
        public let recordNum: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ready = "Ready"
            case total = "Total"
            case data = "Data"
            case recordNum = "RecordNum"
            case requestId = "RequestId"
        }
    }

    /// 获取按项目汇总消耗详情
    @inlinable
    public func describeCostSummaryByProject(_ input: DescribeCostSummaryByProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCostSummaryByProjectResponse> {
        self.client.execute(action: "DescribeCostSummaryByProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取按项目汇总消耗详情
    @inlinable
    public func describeCostSummaryByProject(_ input: DescribeCostSummaryByProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCostSummaryByProjectResponse {
        try await self.client.execute(action: "DescribeCostSummaryByProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取按项目汇总消耗详情
    @inlinable
    public func describeCostSummaryByProject(beginTime: String, endTime: String, limit: UInt64, offset: UInt64, payerUin: String? = nil, needRecordNum: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCostSummaryByProjectResponse> {
        self.describeCostSummaryByProject(DescribeCostSummaryByProjectRequest(beginTime: beginTime, endTime: endTime, limit: limit, offset: offset, payerUin: payerUin, needRecordNum: needRecordNum), region: region, logger: logger, on: eventLoop)
    }

    /// 获取按项目汇总消耗详情
    @inlinable
    public func describeCostSummaryByProject(beginTime: String, endTime: String, limit: UInt64, offset: UInt64, payerUin: String? = nil, needRecordNum: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCostSummaryByProjectResponse {
        try await self.describeCostSummaryByProject(DescribeCostSummaryByProjectRequest(beginTime: beginTime, endTime: endTime, limit: limit, offset: offset, payerUin: payerUin, needRecordNum: needRecordNum), region: region, logger: logger, on: eventLoop)
    }
}
