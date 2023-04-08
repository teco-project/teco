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

import TecoPaginationHelpers

extension Billing {
    /// DescribeVoucherInfo请求参数结构体
    public struct DescribeVoucherInfoRequest: TCPaginatedRequest {
        /// 一页多少条数据，默认是20条，最大不超过1000
        public let limit: Int64

        /// 第多少页，默认是1
        public let offset: Int64

        /// 券状态：待使用：unUsed，已使用： used，已发货：delivered，已作废： cancel，已过期：overdue
        public let status: String?

        /// 代金券id
        public let voucherId: String?

        /// 代金券订单id
        public let codeId: String?

        /// 商品码
        public let productCode: String?

        /// 活动id
        public let activityId: String?

        /// 代金券名称
        public let voucherName: String?

        /// 发放开始时间,例：2021-01-01
        public let timeFrom: String?

        /// 发放结束时间，例：2021-01-01
        public let timeTo: String?

        /// 指定排序字段：BeginTime开始时间、EndTime到期时间、CreateTime创建时间
        public let sortField: String?

        /// 指定升序降序：desc、asc
        public let sortOrder: String?

        /// 付费模式，postPay后付费/prePay预付费/riPay预留实例/""或者"*"表示全部模式，如果payMode为""或"*"，那么productCode与subProductCode必须传空
        public let payMode: String?

        /// 付费场景PayMode=postPay时：spotpay-竞价实例,"settle account"-普通后付费PayMode=prePay时：purchase-包年包月新购，renew-包年包月续费（自动续费），modify-包年包月配置变更(变配）PayMode=riPay时：oneOffFee-预留实例预付，hourlyFee-预留实例每小时扣费，*-支持全部付费场景
        public let payScene: String?

        /// 操作人，默认就是用户uin
        public let `operator`: String?

        public init(limit: Int64, offset: Int64, status: String? = nil, voucherId: String? = nil, codeId: String? = nil, productCode: String? = nil, activityId: String? = nil, voucherName: String? = nil, timeFrom: String? = nil, timeTo: String? = nil, sortField: String? = nil, sortOrder: String? = nil, payMode: String? = nil, payScene: String? = nil, operator: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.status = status
            self.voucherId = voucherId
            self.codeId = codeId
            self.productCode = productCode
            self.activityId = activityId
            self.voucherName = voucherName
            self.timeFrom = timeFrom
            self.timeTo = timeTo
            self.sortField = sortField
            self.sortOrder = sortOrder
            self.payMode = payMode
            self.payScene = payScene
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case status = "Status"
            case voucherId = "VoucherId"
            case codeId = "CodeId"
            case productCode = "ProductCode"
            case activityId = "ActivityId"
            case voucherName = "VoucherName"
            case timeFrom = "TimeFrom"
            case timeTo = "TimeTo"
            case sortField = "SortField"
            case sortOrder = "SortOrder"
            case payMode = "PayMode"
            case payScene = "PayScene"
            case `operator` = "Operator"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVoucherInfoResponse) -> DescribeVoucherInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVoucherInfoRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), status: self.status, voucherId: self.voucherId, codeId: self.codeId, productCode: self.productCode, activityId: self.activityId, voucherName: self.voucherName, timeFrom: self.timeFrom, timeTo: self.timeTo, sortField: self.sortField, sortOrder: self.sortOrder, payMode: self.payMode, payScene: self.payScene, operator: self.operator)
        }
    }

    /// DescribeVoucherInfo返回参数结构体
    public struct DescribeVoucherInfoResponse: TCPaginatedResponse {
        /// 券总数
        public let totalCount: Int64

        /// 总余额（微分）
        public let totalBalance: Int64

        /// 代金券相关信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let voucherInfos: [VoucherInfos]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case totalBalance = "TotalBalance"
            case voucherInfos = "VoucherInfos"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VoucherInfos] {
            self.voucherInfos ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取代金券相关信息
    @inlinable
    public func describeVoucherInfo(_ input: DescribeVoucherInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVoucherInfoResponse> {
        self.client.execute(action: "DescribeVoucherInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取代金券相关信息
    @inlinable
    public func describeVoucherInfo(_ input: DescribeVoucherInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVoucherInfoResponse {
        try await self.client.execute(action: "DescribeVoucherInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取代金券相关信息
    @inlinable
    public func describeVoucherInfo(limit: Int64, offset: Int64, status: String? = nil, voucherId: String? = nil, codeId: String? = nil, productCode: String? = nil, activityId: String? = nil, voucherName: String? = nil, timeFrom: String? = nil, timeTo: String? = nil, sortField: String? = nil, sortOrder: String? = nil, payMode: String? = nil, payScene: String? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVoucherInfoResponse> {
        self.describeVoucherInfo(.init(limit: limit, offset: offset, status: status, voucherId: voucherId, codeId: codeId, productCode: productCode, activityId: activityId, voucherName: voucherName, timeFrom: timeFrom, timeTo: timeTo, sortField: sortField, sortOrder: sortOrder, payMode: payMode, payScene: payScene, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取代金券相关信息
    @inlinable
    public func describeVoucherInfo(limit: Int64, offset: Int64, status: String? = nil, voucherId: String? = nil, codeId: String? = nil, productCode: String? = nil, activityId: String? = nil, voucherName: String? = nil, timeFrom: String? = nil, timeTo: String? = nil, sortField: String? = nil, sortOrder: String? = nil, payMode: String? = nil, payScene: String? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVoucherInfoResponse {
        try await self.describeVoucherInfo(.init(limit: limit, offset: offset, status: status, voucherId: voucherId, codeId: codeId, productCode: productCode, activityId: activityId, voucherName: voucherName, timeFrom: timeFrom, timeTo: timeTo, sortField: sortField, sortOrder: sortOrder, payMode: payMode, payScene: payScene, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取代金券相关信息
    @inlinable
    public func describeVoucherInfoPaginated(_ input: DescribeVoucherInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [VoucherInfos])> {
        self.client.paginate(input: input, region: region, command: self.describeVoucherInfo, logger: logger, on: eventLoop)
    }

    /// 获取代金券相关信息
    @inlinable @discardableResult
    public func describeVoucherInfoPaginated(_ input: DescribeVoucherInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVoucherInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVoucherInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取代金券相关信息
    ///
    /// - Returns: `AsyncSequence`s of `VoucherInfos` and `DescribeVoucherInfoResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVoucherInfoPaginator(_ input: DescribeVoucherInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVoucherInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVoucherInfo, logger: logger, on: eventLoop)
    }
}
