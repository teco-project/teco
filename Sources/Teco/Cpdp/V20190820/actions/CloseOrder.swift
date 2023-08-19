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
    /// CloseOrder请求参数结构体
    public struct CloseOrderRequest: TCRequest {
        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String

        /// 用户ID，长度不小于5位， 仅支持字母和数字的组合
        public let userId: String

        /// 聚鑫分配的安全ID
        public let midasSecretId: String

        /// 按照聚鑫安全密钥计算的签名
        public let midasSignature: String

        /// 业务订单号，OutTradeNo ， TransactionId二选一，不能都为空,优先使用 OutTradeNo
        public let outTradeNo: String?

        /// 聚鑫订单号，OutTradeNo ， TransactionId二选一，不能都为空,优先使用 OutTradeNo
        public let transactionId: String?

        /// 环境名:
        /// release: 现网环境
        /// sandbox: 沙箱环境
        /// development: 开发环境
        /// 缺省: release
        public let midasEnvironment: String?

        public init(midasAppId: String, userId: String, midasSecretId: String, midasSignature: String, outTradeNo: String? = nil, transactionId: String? = nil, midasEnvironment: String? = nil) {
            self.midasAppId = midasAppId
            self.userId = userId
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.outTradeNo = outTradeNo
            self.transactionId = transactionId
            self.midasEnvironment = midasEnvironment
        }

        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case userId = "UserId"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case outTradeNo = "OutTradeNo"
            case transactionId = "TransactionId"
            case midasEnvironment = "MidasEnvironment"
        }
    }

    /// CloseOrder返回参数结构体
    public struct CloseOrderResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 聚鑫-关闭订单接口
    ///
    /// 通过此接口关闭此前已创建的订单，关闭后，用户将无法继续付款。仅能关闭创建后未支付的订单
    @inlinable @discardableResult
    public func closeOrder(_ input: CloseOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseOrderResponse> {
        self.client.execute(action: "CloseOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫-关闭订单接口
    ///
    /// 通过此接口关闭此前已创建的订单，关闭后，用户将无法继续付款。仅能关闭创建后未支付的订单
    @inlinable @discardableResult
    public func closeOrder(_ input: CloseOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseOrderResponse {
        try await self.client.execute(action: "CloseOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 聚鑫-关闭订单接口
    ///
    /// 通过此接口关闭此前已创建的订单，关闭后，用户将无法继续付款。仅能关闭创建后未支付的订单
    @inlinable @discardableResult
    public func closeOrder(midasAppId: String, userId: String, midasSecretId: String, midasSignature: String, outTradeNo: String? = nil, transactionId: String? = nil, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseOrderResponse> {
        self.closeOrder(.init(midasAppId: midasAppId, userId: userId, midasSecretId: midasSecretId, midasSignature: midasSignature, outTradeNo: outTradeNo, transactionId: transactionId, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }

    /// 聚鑫-关闭订单接口
    ///
    /// 通过此接口关闭此前已创建的订单，关闭后，用户将无法继续付款。仅能关闭创建后未支付的订单
    @inlinable @discardableResult
    public func closeOrder(midasAppId: String, userId: String, midasSecretId: String, midasSignature: String, outTradeNo: String? = nil, transactionId: String? = nil, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseOrderResponse {
        try await self.closeOrder(.init(midasAppId: midasAppId, userId: userId, midasSecretId: midasSecretId, midasSignature: midasSignature, outTradeNo: outTradeNo, transactionId: transactionId, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }
}
