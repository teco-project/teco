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

extension Irp {
    /// ReportGoodsInfo请求参数结构体
    public struct ReportGoodsInfoRequest: TCRequestModel {
        /// 实例ID，在控制台获取
        public let instanceId: String

        /// 上报的商品数组，一次数量不超过50
        public let goodsList: [GoodsInfo]

        public init(instanceId: String, goodsList: [GoodsInfo]) {
            self.instanceId = instanceId
            self.goodsList = goodsList
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case goodsList = "GoodsList"
        }
    }

    /// ReportGoodsInfo返回参数结构体
    public struct ReportGoodsInfoResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 上报电商类商品信息
    @inlinable @discardableResult
    public func reportGoodsInfo(_ input: ReportGoodsInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportGoodsInfoResponse> {
        self.client.execute(action: "ReportGoodsInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上报电商类商品信息
    @inlinable @discardableResult
    public func reportGoodsInfo(_ input: ReportGoodsInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportGoodsInfoResponse {
        try await self.client.execute(action: "ReportGoodsInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上报电商类商品信息
    @inlinable @discardableResult
    public func reportGoodsInfo(instanceId: String, goodsList: [GoodsInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReportGoodsInfoResponse> {
        self.reportGoodsInfo(.init(instanceId: instanceId, goodsList: goodsList), region: region, logger: logger, on: eventLoop)
    }

    /// 上报电商类商品信息
    @inlinable @discardableResult
    public func reportGoodsInfo(instanceId: String, goodsList: [GoodsInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReportGoodsInfoResponse {
        try await self.reportGoodsInfo(.init(instanceId: instanceId, goodsList: goodsList), region: region, logger: logger, on: eventLoop)
    }
}