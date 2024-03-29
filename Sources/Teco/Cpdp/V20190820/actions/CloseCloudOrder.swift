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
    /// CloseCloudOrder请求参数结构体
    public struct CloseCloudOrderRequest: TCRequest {
        /// 米大师分配的支付主MidasAppId
        public let midasAppId: String

        /// 用户Id，长度不小于5位，仅支持字母和数字的组合
        public let userId: String

        /// 开发者订单号
        public let outTradeNo: String

        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let midasEnvironment: String?

        public init(midasAppId: String, userId: String, outTradeNo: String, midasEnvironment: String? = nil) {
            self.midasAppId = midasAppId
            self.userId = userId
            self.outTradeNo = outTradeNo
            self.midasEnvironment = midasEnvironment
        }

        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case userId = "UserId"
            case outTradeNo = "OutTradeNo"
            case midasEnvironment = "MidasEnvironment"
        }
    }

    /// CloseCloudOrder返回参数结构体
    public struct CloseCloudOrderResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 聚鑫V2-关闭订单
    ///
    /// 通过此接口关闭此前已创建的订单。关闭后，用户将无法继续付款，仅能关闭创建后未支付的订单。
    @inlinable @discardableResult
    public func closeCloudOrder(_ input: CloseCloudOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseCloudOrderResponse> {
        self.client.execute(action: "CloseCloudOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫V2-关闭订单
    ///
    /// 通过此接口关闭此前已创建的订单。关闭后，用户将无法继续付款，仅能关闭创建后未支付的订单。
    @inlinable @discardableResult
    public func closeCloudOrder(_ input: CloseCloudOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseCloudOrderResponse {
        try await self.client.execute(action: "CloseCloudOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 聚鑫V2-关闭订单
    ///
    /// 通过此接口关闭此前已创建的订单。关闭后，用户将无法继续付款，仅能关闭创建后未支付的订单。
    @inlinable @discardableResult
    public func closeCloudOrder(midasAppId: String, userId: String, outTradeNo: String, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseCloudOrderResponse> {
        self.closeCloudOrder(.init(midasAppId: midasAppId, userId: userId, outTradeNo: outTradeNo, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }

    /// 聚鑫V2-关闭订单
    ///
    /// 通过此接口关闭此前已创建的订单。关闭后，用户将无法继续付款，仅能关闭创建后未支付的订单。
    @inlinable @discardableResult
    public func closeCloudOrder(midasAppId: String, userId: String, outTradeNo: String, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseCloudOrderResponse {
        try await self.closeCloudOrder(.init(midasAppId: midasAppId, userId: userId, outTradeNo: outTradeNo, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }
}
