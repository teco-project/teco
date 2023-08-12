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

extension Youmall {
    /// DescribeHistoryNetworkInfo请求参数结构体
    public struct DescribeHistoryNetworkInfoRequest: TCPaginatedRequest {
        /// 请求时间戳
        public let time: Int64

        /// 优mall集团id，通过"指定身份标识获取客户门店列表"接口获取
        public let companyId: String

        /// 优mall店铺id，通过"指定身份标识获取客户门店列表"接口获取，为0则拉取集团全部店铺当前
        public let shopId: Int64

        /// 拉取开始日期，格式：2018-09-05
        public let startDay: String

        /// 拉取结束日期，格式L:2018-09-05，超过StartDay 90天，按StartDay+90天算
        public let endDay: String

        /// 拉取条数，默认10
        public let limit: Int64?

        /// 拉取偏移，返回offset之后的数据
        public let offset: Int64?

        public init(time: Int64, companyId: String, shopId: Int64, startDay: String, endDay: String, limit: Int64? = nil, offset: Int64? = nil) {
            self.time = time
            self.companyId = companyId
            self.shopId = shopId
            self.startDay = startDay
            self.endDay = endDay
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case companyId = "CompanyId"
            case shopId = "ShopId"
            case startDay = "StartDay"
            case endDay = "EndDay"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeHistoryNetworkInfoResponse) -> DescribeHistoryNetworkInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeHistoryNetworkInfoRequest(time: self.time, companyId: self.companyId, shopId: self.shopId, startDay: self.startDay, endDay: self.endDay, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeHistoryNetworkInfo返回参数结构体
    public struct DescribeHistoryNetworkInfoResponse: TCPaginatedResponse {
        /// 网络状态数据
        public let instanceSet: NetworkHistoryInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceSet = "InstanceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``NetworkInfo`` list from the paginated response.
        public func getItems() -> [NetworkInfo] {
            self.instanceSet.infos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.instanceSet.count
        }
    }

    /// 查询设备历史网络状态
    ///
    /// 返回当前门店历史网络状态数据
    @inlinable
    public func describeHistoryNetworkInfo(_ input: DescribeHistoryNetworkInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHistoryNetworkInfoResponse> {
        self.client.execute(action: "DescribeHistoryNetworkInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备历史网络状态
    ///
    /// 返回当前门店历史网络状态数据
    @inlinable
    public func describeHistoryNetworkInfo(_ input: DescribeHistoryNetworkInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHistoryNetworkInfoResponse {
        try await self.client.execute(action: "DescribeHistoryNetworkInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备历史网络状态
    ///
    /// 返回当前门店历史网络状态数据
    @inlinable
    public func describeHistoryNetworkInfo(time: Int64, companyId: String, shopId: Int64, startDay: String, endDay: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHistoryNetworkInfoResponse> {
        self.describeHistoryNetworkInfo(.init(time: time, companyId: companyId, shopId: shopId, startDay: startDay, endDay: endDay, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备历史网络状态
    ///
    /// 返回当前门店历史网络状态数据
    @inlinable
    public func describeHistoryNetworkInfo(time: Int64, companyId: String, shopId: Int64, startDay: String, endDay: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHistoryNetworkInfoResponse {
        try await self.describeHistoryNetworkInfo(.init(time: time, companyId: companyId, shopId: shopId, startDay: startDay, endDay: endDay, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备历史网络状态
    ///
    /// 返回当前门店历史网络状态数据
    @inlinable
    public func describeHistoryNetworkInfoPaginated(_ input: DescribeHistoryNetworkInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [NetworkInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeHistoryNetworkInfo, logger: logger, on: eventLoop)
    }

    /// 查询设备历史网络状态
    ///
    /// 返回当前门店历史网络状态数据
    @inlinable @discardableResult
    public func describeHistoryNetworkInfoPaginated(_ input: DescribeHistoryNetworkInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeHistoryNetworkInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeHistoryNetworkInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询设备历史网络状态
    ///
    /// 返回当前门店历史网络状态数据
    ///
    /// - Returns: `AsyncSequence`s of ``NetworkInfo`` and ``DescribeHistoryNetworkInfoResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeHistoryNetworkInfoPaginator(_ input: DescribeHistoryNetworkInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeHistoryNetworkInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeHistoryNetworkInfo, logger: logger, on: eventLoop)
    }
}
