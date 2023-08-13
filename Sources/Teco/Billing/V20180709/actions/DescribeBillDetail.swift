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
import TecoPaginationHelpers

extension Billing {
    /// DescribeBillDetail请求参数结构体
    public struct DescribeBillDetailRequest: TCPaginatedRequest {
        /// 分页偏移量，Offset=0表示第一页，如果Limit=100，则Offset=100表示第二页，Offset=200表示第三页，依次类推
        public let offset: UInt64

        /// 数量，最大值为100
        public let limit: UInt64

        /// 周期类型，byUsedTime按计费周期/byPayTime按扣费周期。需要与费用中心该月份账单的周期保持一致。您可前往[账单概览](https://console.cloud.tencent.com/expense/bill/overview)页面顶部查看确认您的账单统计周期类型。
        public let periodType: String?

        /// 月份，格式为yyyy-mm，Month和BeginTime&EndTime必传一个，如果有传BeginTime&EndTime则Month字段无效。不能早于开通账单2.0的月份，最多可拉取18个月内的数据。
        public let month: String?

        /// 周期开始时间，格式为yyyy-mm-dd hh:ii:ss，Month和BeginTime&EndTime必传一个，如果有该字段则Month字段无效。BeginTime和EndTime必须一起传。不能早于开通账单2.0的月份，最多可拉取18个月内的数据。(不支持跨月查询)
        public let beginTime: String?

        /// 周期结束时间，格式为yyyy-mm-dd hh:ii:ss，Month和BeginTime&EndTime必传一个，如果有该字段则Month字段无效。BeginTime和EndTime必须一起传。不能早于开通账单2.0的月份，最多可拉取18个月内的数据。（不支持跨月查询）
        public let endTime: String?

        /// 是否需要访问列表的总记录数，用于前端分页
        /// 1-表示需要， 0-表示不需要
        public let needRecordNum: Int64?

        /// 已废弃参数，未开放
        public let productCode: String?

        /// 付费模式 prePay/postPay
        public let payMode: String?

        /// 查询指定资源信息
        public let resourceId: String?

        /// 查询交易类型（请使用交易类型名称入参），入参示例枚举如下：
        /// 包年包月新购
        /// 包年包月续费
        /// 包年包月配置变更
        /// 包年包月退款
        /// 按量计费扣费
        /// 线下项目扣费
        /// 线下产品扣费
        /// 调账扣费
        /// 调账补偿
        /// 按量计费小时结
        /// 按量计费日结
        /// 按量计费月结
        /// 竞价实例小时结
        /// 线下项目调账补偿
        /// 线下产品调账补偿
        /// 优惠扣费
        /// 优惠补偿
        /// 按量计费迁入资源
        /// 按量计费迁出资源
        /// 包年包月迁入资源
        /// 包年包月迁出资源
        /// 预付费用
        /// 小时费用
        /// 预留实例退款
        /// 按量计费冲正
        /// 包年包月转按量
        /// 保底扣款
        /// 节省计划小时费用
        public let actionType: String?

        /// 项目ID:资源所属项目ID
        public let projectId: Int64?

        /// 产品名称代码
        /// 备注：如需获取当月使用过的BusinessCode，请调用API：[获取产品汇总费用分布](https://cloud.tencent.com/document/product/555/35761)
        public let businessCode: String?

        /// 上一次请求返回的上下文信息，翻页查询Month>=2023-05的月份的数据可加快查询速度，数据量10万级别以上的用户建议使用，查询速度可提升2~10倍
        public let context: String?

        /// 支付者的账号 ID（账号 ID 是用户在腾讯云的唯一账号标识），默认查询本账号账单，如集团管理账号需查询成员账号自付的账单，该字段需入参成员账号UIN
        public let payerUin: String?

        public init(offset: UInt64, limit: UInt64, periodType: String? = nil, month: String? = nil, beginTime: String? = nil, endTime: String? = nil, needRecordNum: Int64? = nil, productCode: String? = nil, payMode: String? = nil, resourceId: String? = nil, actionType: String? = nil, projectId: Int64? = nil, businessCode: String? = nil, context: String? = nil, payerUin: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.periodType = periodType
            self.month = month
            self.beginTime = beginTime
            self.endTime = endTime
            self.needRecordNum = needRecordNum
            self.productCode = productCode
            self.payMode = payMode
            self.resourceId = resourceId
            self.actionType = actionType
            self.projectId = projectId
            self.businessCode = businessCode
            self.context = context
            self.payerUin = payerUin
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case periodType = "PeriodType"
            case month = "Month"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case needRecordNum = "NeedRecordNum"
            case productCode = "ProductCode"
            case payMode = "PayMode"
            case resourceId = "ResourceId"
            case actionType = "ActionType"
            case projectId = "ProjectId"
            case businessCode = "BusinessCode"
            case context = "Context"
            case payerUin = "PayerUin"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBillDetailResponse) -> DescribeBillDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBillDetailRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, periodType: self.periodType, month: self.month, beginTime: self.beginTime, endTime: self.endTime, needRecordNum: self.needRecordNum, productCode: self.productCode, payMode: self.payMode, resourceId: self.resourceId, actionType: self.actionType, projectId: self.projectId, businessCode: self.businessCode, context: self.context, payerUin: self.payerUin)
        }
    }

    /// DescribeBillDetail返回参数结构体
    public struct DescribeBillDetailResponse: TCPaginatedResponse {
        /// 详情列表
        public let detailSet: [BillDetail]

        /// 总记录数，24小时缓存一次，可能比实际总记录数少
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 本次请求的上下文信息，可用于下一次请求的请求参数中，加快查询速度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let context: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case detailSet = "DetailSet"
            case total = "Total"
            case context = "Context"
            case requestId = "RequestId"
        }

        /// Extract the returned ``BillDetail`` list from the paginated response.
        public func getItems() -> [BillDetail] {
            self.detailSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询账单明细数据
    ///
    /// 查询账单明细数据。
    /// 注意事项：
    /// 1.在请求接口时，由于网络不稳定或其它异常，可能会导致请求失败。如果您遇到这种情况，我们建议您在接口请求失败时，手动发起重试操作，这样可以更好地确保您的接口请求能够成功执行。
    /// 2.对于账单明细数据量级很大（例如每月账单明细量级超过20w）的客户，通过 API 调用账单数据效率较低，建议您开通账单数据存储功能，通过存储桶中获取账单文件进行分析。[账单存储至COS桶](https://cloud.tencent.com/document/product/555/61275)
    @inlinable
    public func describeBillDetail(_ input: DescribeBillDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBillDetailResponse> {
        self.client.execute(action: "DescribeBillDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询账单明细数据
    ///
    /// 查询账单明细数据。
    /// 注意事项：
    /// 1.在请求接口时，由于网络不稳定或其它异常，可能会导致请求失败。如果您遇到这种情况，我们建议您在接口请求失败时，手动发起重试操作，这样可以更好地确保您的接口请求能够成功执行。
    /// 2.对于账单明细数据量级很大（例如每月账单明细量级超过20w）的客户，通过 API 调用账单数据效率较低，建议您开通账单数据存储功能，通过存储桶中获取账单文件进行分析。[账单存储至COS桶](https://cloud.tencent.com/document/product/555/61275)
    @inlinable
    public func describeBillDetail(_ input: DescribeBillDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillDetailResponse {
        try await self.client.execute(action: "DescribeBillDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询账单明细数据
    ///
    /// 查询账单明细数据。
    /// 注意事项：
    /// 1.在请求接口时，由于网络不稳定或其它异常，可能会导致请求失败。如果您遇到这种情况，我们建议您在接口请求失败时，手动发起重试操作，这样可以更好地确保您的接口请求能够成功执行。
    /// 2.对于账单明细数据量级很大（例如每月账单明细量级超过20w）的客户，通过 API 调用账单数据效率较低，建议您开通账单数据存储功能，通过存储桶中获取账单文件进行分析。[账单存储至COS桶](https://cloud.tencent.com/document/product/555/61275)
    @inlinable
    public func describeBillDetail(offset: UInt64, limit: UInt64, periodType: String? = nil, month: String? = nil, beginTime: String? = nil, endTime: String? = nil, needRecordNum: Int64? = nil, productCode: String? = nil, payMode: String? = nil, resourceId: String? = nil, actionType: String? = nil, projectId: Int64? = nil, businessCode: String? = nil, context: String? = nil, payerUin: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBillDetailResponse> {
        self.describeBillDetail(.init(offset: offset, limit: limit, periodType: periodType, month: month, beginTime: beginTime, endTime: endTime, needRecordNum: needRecordNum, productCode: productCode, payMode: payMode, resourceId: resourceId, actionType: actionType, projectId: projectId, businessCode: businessCode, context: context, payerUin: payerUin), region: region, logger: logger, on: eventLoop)
    }

    /// 查询账单明细数据
    ///
    /// 查询账单明细数据。
    /// 注意事项：
    /// 1.在请求接口时，由于网络不稳定或其它异常，可能会导致请求失败。如果您遇到这种情况，我们建议您在接口请求失败时，手动发起重试操作，这样可以更好地确保您的接口请求能够成功执行。
    /// 2.对于账单明细数据量级很大（例如每月账单明细量级超过20w）的客户，通过 API 调用账单数据效率较低，建议您开通账单数据存储功能，通过存储桶中获取账单文件进行分析。[账单存储至COS桶](https://cloud.tencent.com/document/product/555/61275)
    @inlinable
    public func describeBillDetail(offset: UInt64, limit: UInt64, periodType: String? = nil, month: String? = nil, beginTime: String? = nil, endTime: String? = nil, needRecordNum: Int64? = nil, productCode: String? = nil, payMode: String? = nil, resourceId: String? = nil, actionType: String? = nil, projectId: Int64? = nil, businessCode: String? = nil, context: String? = nil, payerUin: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillDetailResponse {
        try await self.describeBillDetail(.init(offset: offset, limit: limit, periodType: periodType, month: month, beginTime: beginTime, endTime: endTime, needRecordNum: needRecordNum, productCode: productCode, payMode: payMode, resourceId: resourceId, actionType: actionType, projectId: projectId, businessCode: businessCode, context: context, payerUin: payerUin), region: region, logger: logger, on: eventLoop)
    }

    /// 查询账单明细数据
    ///
    /// 查询账单明细数据。
    /// 注意事项：
    /// 1.在请求接口时，由于网络不稳定或其它异常，可能会导致请求失败。如果您遇到这种情况，我们建议您在接口请求失败时，手动发起重试操作，这样可以更好地确保您的接口请求能够成功执行。
    /// 2.对于账单明细数据量级很大（例如每月账单明细量级超过20w）的客户，通过 API 调用账单数据效率较低，建议您开通账单数据存储功能，通过存储桶中获取账单文件进行分析。[账单存储至COS桶](https://cloud.tencent.com/document/product/555/61275)
    @inlinable
    public func describeBillDetailPaginated(_ input: DescribeBillDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BillDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeBillDetail, logger: logger, on: eventLoop)
    }

    /// 查询账单明细数据
    ///
    /// 查询账单明细数据。
    /// 注意事项：
    /// 1.在请求接口时，由于网络不稳定或其它异常，可能会导致请求失败。如果您遇到这种情况，我们建议您在接口请求失败时，手动发起重试操作，这样可以更好地确保您的接口请求能够成功执行。
    /// 2.对于账单明细数据量级很大（例如每月账单明细量级超过20w）的客户，通过 API 调用账单数据效率较低，建议您开通账单数据存储功能，通过存储桶中获取账单文件进行分析。[账单存储至COS桶](https://cloud.tencent.com/document/product/555/61275)
    @inlinable @discardableResult
    public func describeBillDetailPaginated(_ input: DescribeBillDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBillDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBillDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询账单明细数据
    ///
    /// 查询账单明细数据。
    /// 注意事项：
    /// 1.在请求接口时，由于网络不稳定或其它异常，可能会导致请求失败。如果您遇到这种情况，我们建议您在接口请求失败时，手动发起重试操作，这样可以更好地确保您的接口请求能够成功执行。
    /// 2.对于账单明细数据量级很大（例如每月账单明细量级超过20w）的客户，通过 API 调用账单数据效率较低，建议您开通账单数据存储功能，通过存储桶中获取账单文件进行分析。[账单存储至COS桶](https://cloud.tencent.com/document/product/555/61275)
    ///
    /// - Returns: `AsyncSequence`s of ``BillDetail`` and ``DescribeBillDetailResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBillDetailPaginator(_ input: DescribeBillDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBillDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBillDetail, logger: logger, on: eventLoop)
    }
}
