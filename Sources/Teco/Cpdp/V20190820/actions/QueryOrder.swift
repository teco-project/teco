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

extension Cpdp {
    /// QueryOrder请求参数结构体
    public struct QueryOrderRequest: TCPaginatedRequest {
        /// 聚鑫分配的支付主 MidasAppId
        public let midasAppId: String

        /// 用户ID，长度不小于5位， 仅支持字母和数字的组合
        public let userId: String

        /// type=by_order根据订单号 查订单；
        /// type=by_user根据用户id 查订单 。
        public let type: String

        /// 聚鑫分配的安全ID
        public let midasSecretId: String

        /// 按照聚鑫安全密钥计算的签名
        public let midasSignature: String

        /// 每页返回的记录数。根据用户 号码查询订单列表时需要传。 用于分页展示。Type=by_order时必填
        public let count: Int64?

        /// 记录数偏移量，默认从0开 始。根据用户号码查询订单列 表时需要传。用于分页展示。Type=by_order时必填
        public let offset: Int64?

        /// 查询开始时间，Unix时间戳。Type=by_order时必填
        public let startTime: String?

        /// 查询结束时间，Unix时间戳。Type=by_order时必填
        public let endTime: String?

        /// 业务订单号，OutTradeNo与 TransactionId不能同时为 空，都传优先使用 OutTradeNo
        public let outTradeNo: String?

        /// 聚鑫订单号，OutTradeNo与 TransactionId不能同时为 空，都传优先使用 OutTradeNo
        public let transactionId: String?

        /// 环境名:
        /// release: 现网环境
        /// sandbox: 沙箱环境
        /// development: 开发环境
        /// 缺省: release
        public let midasEnvironment: String?

        public init(midasAppId: String, userId: String, type: String, midasSecretId: String, midasSignature: String, count: Int64? = nil, offset: Int64? = nil, startTime: String? = nil, endTime: String? = nil, outTradeNo: String? = nil, transactionId: String? = nil, midasEnvironment: String? = nil) {
            self.midasAppId = midasAppId
            self.userId = userId
            self.type = type
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.count = count
            self.offset = offset
            self.startTime = startTime
            self.endTime = endTime
            self.outTradeNo = outTradeNo
            self.transactionId = transactionId
            self.midasEnvironment = midasEnvironment
        }

        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case userId = "UserId"
            case type = "Type"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case count = "Count"
            case offset = "Offset"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case outTradeNo = "OutTradeNo"
            case transactionId = "TransactionId"
            case midasEnvironment = "MidasEnvironment"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: QueryOrderResponse) -> QueryOrderRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(midasAppId: self.midasAppId, userId: self.userId, type: self.type, midasSecretId: self.midasSecretId, midasSignature: self.midasSignature, count: self.count, offset: (self.offset ?? 0) + .init(response.getItems().count), startTime: self.startTime, endTime: self.endTime, outTradeNo: self.outTradeNo, transactionId: self.transactionId, midasEnvironment: self.midasEnvironment)
        }
    }

    /// QueryOrder返回参数结构体
    public struct QueryOrderResponse: TCPaginatedResponse {
        /// 返回订单数
        public let totalNum: Int64

        /// 查询结果的订单列表
        public let orderList: [QueryOrderOutOrderList]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalNum = "TotalNum"
            case orderList = "OrderList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``QueryOrderOutOrderList`` list from the paginated response.
        public func getItems() -> [QueryOrderOutOrderList] {
            self.orderList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalNum
        }
    }

    /// 聚鑫-查询订单接口
    ///
    /// 根据订单号，或者用户Id，查询支付订单状态
    @inlinable
    public func queryOrder(_ input: QueryOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOrderResponse> {
        self.client.execute(action: "QueryOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫-查询订单接口
    ///
    /// 根据订单号，或者用户Id，查询支付订单状态
    @inlinable
    public func queryOrder(_ input: QueryOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOrderResponse {
        try await self.client.execute(action: "QueryOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 聚鑫-查询订单接口
    ///
    /// 根据订单号，或者用户Id，查询支付订单状态
    @inlinable
    public func queryOrder(midasAppId: String, userId: String, type: String, midasSecretId: String, midasSignature: String, count: Int64? = nil, offset: Int64? = nil, startTime: String? = nil, endTime: String? = nil, outTradeNo: String? = nil, transactionId: String? = nil, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOrderResponse> {
        self.queryOrder(.init(midasAppId: midasAppId, userId: userId, type: type, midasSecretId: midasSecretId, midasSignature: midasSignature, count: count, offset: offset, startTime: startTime, endTime: endTime, outTradeNo: outTradeNo, transactionId: transactionId, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }

    /// 聚鑫-查询订单接口
    ///
    /// 根据订单号，或者用户Id，查询支付订单状态
    @inlinable
    public func queryOrder(midasAppId: String, userId: String, type: String, midasSecretId: String, midasSignature: String, count: Int64? = nil, offset: Int64? = nil, startTime: String? = nil, endTime: String? = nil, outTradeNo: String? = nil, transactionId: String? = nil, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOrderResponse {
        try await self.queryOrder(.init(midasAppId: midasAppId, userId: userId, type: type, midasSecretId: midasSecretId, midasSignature: midasSignature, count: count, offset: offset, startTime: startTime, endTime: endTime, outTradeNo: outTradeNo, transactionId: transactionId, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }

    /// 聚鑫-查询订单接口
    ///
    /// 根据订单号，或者用户Id，查询支付订单状态
    @inlinable
    public func queryOrderPaginated(_ input: QueryOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [QueryOrderOutOrderList])> {
        self.client.paginate(input: input, region: region, command: self.queryOrder, logger: logger, on: eventLoop)
    }

    /// 聚鑫-查询订单接口
    ///
    /// 根据订单号，或者用户Id，查询支付订单状态
    @inlinable @discardableResult
    public func queryOrderPaginated(_ input: QueryOrderRequest, region: TCRegion? = nil, onResponse: @escaping (QueryOrderResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryOrder, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 聚鑫-查询订单接口
    ///
    /// 根据订单号，或者用户Id，查询支付订单状态
    ///
    /// - Returns: `AsyncSequence`s of ``QueryOrderOutOrderList`` and ``QueryOrderResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryOrderPaginator(_ input: QueryOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryOrderRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryOrder, logger: logger, on: eventLoop)
    }
}
