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

extension Iotvideo {
    /// DeleteForwardRule请求参数结构体
    public struct DeleteForwardRuleRequest: TCRequest {
        /// 产品ID
        public let productID: String

        /// 控制台Skey
        public let skey: String

        /// 队列类型
        public let queueType: UInt64

        /// 队列名称
        public let queueName: String

        public init(productID: String, skey: String, queueType: UInt64, queueName: String) {
            self.productID = productID
            self.skey = skey
            self.queueType = queueType
            self.queueName = queueName
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case skey = "Skey"
            case queueType = "QueueType"
            case queueName = "QueueName"
        }
    }

    /// DeleteForwardRule返回参数结构体
    public struct DeleteForwardRuleResponse: TCResponse {
        /// 腾讯云账号
        public let endpoint: String

        /// 队列名称
        public let queueName: String

        /// 产品ID
        public let productID: String

        /// 删除结果 0成功 其他不成功
        public let result: UInt64

        /// 错误消息
        public let errMsg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case endpoint = "Endpoint"
            case queueName = "QueueName"
            case productID = "ProductID"
            case result = "Result"
            case errMsg = "ErrMsg"
            case requestId = "RequestId"
        }
    }

    /// 删除转发规则
    @inlinable
    public func deleteForwardRule(_ input: DeleteForwardRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteForwardRuleResponse> {
        self.client.execute(action: "DeleteForwardRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除转发规则
    @inlinable
    public func deleteForwardRule(_ input: DeleteForwardRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteForwardRuleResponse {
        try await self.client.execute(action: "DeleteForwardRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除转发规则
    @inlinable
    public func deleteForwardRule(productID: String, skey: String, queueType: UInt64, queueName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteForwardRuleResponse> {
        self.deleteForwardRule(.init(productID: productID, skey: skey, queueType: queueType, queueName: queueName), region: region, logger: logger, on: eventLoop)
    }

    /// 删除转发规则
    @inlinable
    public func deleteForwardRule(productID: String, skey: String, queueType: UInt64, queueName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteForwardRuleResponse {
        try await self.deleteForwardRule(.init(productID: productID, skey: skey, queueType: queueType, queueName: queueName), region: region, logger: logger, on: eventLoop)
    }
}
