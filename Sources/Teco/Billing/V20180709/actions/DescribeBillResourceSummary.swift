//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeBillResourceSummary请求参数结构体
    public struct DescribeBillResourceSummaryRequest: TCRequestModel {
        /// 偏移量
        public let offset: UInt64

        /// 数量，最大值为1000
        public let limit: UInt64

        /// 月份，格式为yyyy-mm。不能早于开通账单2.0的月份，最多可拉取24个月内的数据。
        public let month: String

        /// 周期类型，byUsedTime按计费周期/byPayTime按扣费周期。需要与费用中心该月份账单的周期保持一致。您可前往[账单概览](https://console.cloud.tencent.com/expense/bill/overview)页面顶部查看确认您的账单统计周期类型。
        public let periodType: String?

        /// 是否需要访问列表的总记录数，用于前端分页
        /// 1-表示需要， 0-表示不需要
        public let needRecordNum: Int64?

        /// 查询交易类型，如下：
        /// 包年包月新购
        /// 包年包月续费
        /// 包年包月配置变更
        /// 包年包月退款
        /// 按量计费扣费
        /// 按量计费小时结
        /// 按量计费日结
        /// 按量计费月结
        /// 线下项目扣费
        /// 线下产品扣费
        /// 调账扣费
        /// 调账补偿
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
        public let actionType: String?

        /// 查询指定资源信息
        public let resourceId: String?

        /// 付费模式 prePay/postPay
        public let payMode: String?

        /// 产品名称代码
        /// 备注：如需获取当月使用过的BusinessCode，请调用API：<a href="https://cloud.tencent.com/document/product/555/35761">获取产品汇总费用分布</a>
        public let businessCode: String?

        public init(offset: UInt64, limit: UInt64, month: String, periodType: String? = nil, needRecordNum: Int64? = nil, actionType: String? = nil, resourceId: String? = nil, payMode: String? = nil, businessCode: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.month = month
            self.periodType = periodType
            self.needRecordNum = needRecordNum
            self.actionType = actionType
            self.resourceId = resourceId
            self.payMode = payMode
            self.businessCode = businessCode
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case month = "Month"
            case periodType = "PeriodType"
            case needRecordNum = "NeedRecordNum"
            case actionType = "ActionType"
            case resourceId = "ResourceId"
            case payMode = "PayMode"
            case businessCode = "BusinessCode"
        }
    }

    /// DescribeBillResourceSummary返回参数结构体
    public struct DescribeBillResourceSummaryResponse: TCResponseModel {
        /// 资源汇总列表
        public let resourceSummarySet: [BillResourceSummary]

        /// 资源汇总列表总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resourceSummarySet = "ResourceSummarySet"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询账单资源汇总数据
    ///
    /// 查询账单资源汇总数据 
    @inlinable
    public func describeBillResourceSummary(_ input: DescribeBillResourceSummaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBillResourceSummaryResponse > {
        self.client.execute(action: "DescribeBillResourceSummary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询账单资源汇总数据
    ///
    /// 查询账单资源汇总数据 
    @inlinable
    public func describeBillResourceSummary(_ input: DescribeBillResourceSummaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillResourceSummaryResponse {
        try await self.client.execute(action: "DescribeBillResourceSummary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询账单资源汇总数据
    ///
    /// 查询账单资源汇总数据 
    @inlinable
    public func describeBillResourceSummary(offset: UInt64, limit: UInt64, month: String, periodType: String? = nil, needRecordNum: Int64? = nil, actionType: String? = nil, resourceId: String? = nil, payMode: String? = nil, businessCode: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBillResourceSummaryResponse > {
        self.describeBillResourceSummary(DescribeBillResourceSummaryRequest(offset: offset, limit: limit, month: month, periodType: periodType, needRecordNum: needRecordNum, actionType: actionType, resourceId: resourceId, payMode: payMode, businessCode: businessCode), logger: logger, on: eventLoop)
    }

    /// 查询账单资源汇总数据
    ///
    /// 查询账单资源汇总数据 
    @inlinable
    public func describeBillResourceSummary(offset: UInt64, limit: UInt64, month: String, periodType: String? = nil, needRecordNum: Int64? = nil, actionType: String? = nil, resourceId: String? = nil, payMode: String? = nil, businessCode: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillResourceSummaryResponse {
        try await self.describeBillResourceSummary(DescribeBillResourceSummaryRequest(offset: offset, limit: limit, month: month, periodType: periodType, needRecordNum: needRecordNum, actionType: actionType, resourceId: resourceId, payMode: payMode, businessCode: businessCode), logger: logger, on: eventLoop)
    }
}
