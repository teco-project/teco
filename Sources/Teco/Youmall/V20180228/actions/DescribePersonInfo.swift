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

extension Youmall {
    /// DescribePersonInfo请求参数结构体
    public struct DescribePersonInfoRequest: TCPaginatedRequest {
        /// 公司ID
        public let companyId: String

        /// 门店ID
        public let shopId: UInt64

        /// 起始ID，第一次拉取时StartPersonId传0，后续送入的值为上一页最后一条数据项的PersonId
        public let startPersonId: UInt64

        /// 偏移量：分页控制参数，第一页传0，第n页Offset=(n-1)*Limit
        public let offset: UInt64

        /// Limit:每页的数据项，最大100，超过100会被强制指定为100
        public let limit: UInt64

        /// 图片url过期时间：在当前时间+PictureExpires秒后，图片url无法继续正常访问；单位s；默认值1*24*60*60（1天）
        public let pictureExpires: UInt64?

        /// 身份类型(0表示普通顾客，1 白名单，2 表示黑名单）
        public let personType: UInt64?

        public init(companyId: String, shopId: UInt64, startPersonId: UInt64, offset: UInt64, limit: UInt64, pictureExpires: UInt64? = nil, personType: UInt64? = nil) {
            self.companyId = companyId
            self.shopId = shopId
            self.startPersonId = startPersonId
            self.offset = offset
            self.limit = limit
            self.pictureExpires = pictureExpires
            self.personType = personType
        }

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case startPersonId = "StartPersonId"
            case offset = "Offset"
            case limit = "Limit"
            case pictureExpires = "PictureExpires"
            case personType = "PersonType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePersonInfoResponse) -> DescribePersonInfoRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(companyId: self.companyId, shopId: self.shopId, startPersonId: self.startPersonId, offset: self.offset + .init(response.getItems().count), limit: self.limit, pictureExpires: self.pictureExpires, personType: self.personType)
        }
    }

    /// DescribePersonInfo返回参数结构体
    public struct DescribePersonInfoResponse: TCPaginatedResponse {
        /// 公司ID
        public let companyId: String

        /// 门店ID
        public let shopId: UInt64

        /// 总数
        public let totalCount: UInt64

        /// 用户信息
        public let personInfoSet: [PersonInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case totalCount = "TotalCount"
            case personInfoSet = "PersonInfoSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``PersonInfo`` list from the paginated response.
        public func getItems() -> [PersonInfo] {
            self.personInfoSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取顾客详情列表
    ///
    /// 指定门店获取所有顾客详情列表，包含客户ID、图片、年龄、性别
    @inlinable
    public func describePersonInfo(_ input: DescribePersonInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonInfoResponse> {
        self.client.execute(action: "DescribePersonInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取顾客详情列表
    ///
    /// 指定门店获取所有顾客详情列表，包含客户ID、图片、年龄、性别
    @inlinable
    public func describePersonInfo(_ input: DescribePersonInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonInfoResponse {
        try await self.client.execute(action: "DescribePersonInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取顾客详情列表
    ///
    /// 指定门店获取所有顾客详情列表，包含客户ID、图片、年龄、性别
    @inlinable
    public func describePersonInfo(companyId: String, shopId: UInt64, startPersonId: UInt64, offset: UInt64, limit: UInt64, pictureExpires: UInt64? = nil, personType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonInfoResponse> {
        self.describePersonInfo(.init(companyId: companyId, shopId: shopId, startPersonId: startPersonId, offset: offset, limit: limit, pictureExpires: pictureExpires, personType: personType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取顾客详情列表
    ///
    /// 指定门店获取所有顾客详情列表，包含客户ID、图片、年龄、性别
    @inlinable
    public func describePersonInfo(companyId: String, shopId: UInt64, startPersonId: UInt64, offset: UInt64, limit: UInt64, pictureExpires: UInt64? = nil, personType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonInfoResponse {
        try await self.describePersonInfo(.init(companyId: companyId, shopId: shopId, startPersonId: startPersonId, offset: offset, limit: limit, pictureExpires: pictureExpires, personType: personType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取顾客详情列表
    ///
    /// 指定门店获取所有顾客详情列表，包含客户ID、图片、年龄、性别
    @inlinable
    public func describePersonInfoPaginated(_ input: DescribePersonInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [PersonInfo])> {
        self.client.paginate(input: input, region: region, command: self.describePersonInfo, logger: logger, on: eventLoop)
    }

    /// 获取顾客详情列表
    ///
    /// 指定门店获取所有顾客详情列表，包含客户ID、图片、年龄、性别
    @inlinable @discardableResult
    public func describePersonInfoPaginated(_ input: DescribePersonInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePersonInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePersonInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取顾客详情列表
    ///
    /// 指定门店获取所有顾客详情列表，包含客户ID、图片、年龄、性别
    ///
    /// - Returns: `AsyncSequence`s of ``PersonInfo`` and ``DescribePersonInfoResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePersonInfoPaginator(_ input: DescribePersonInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePersonInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePersonInfo, logger: logger, on: eventLoop)
    }
}
