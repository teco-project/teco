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

extension Tdmq {
    /// ModifyAMQPQueue请求参数结构体
    public struct ModifyAMQPQueueRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// Vhost名称
        public let vHostId: String

        /// 队列名称
        public let queue: String

        /// 是否自动清除
        public let autoDelete: Bool

        /// 说明信息，最大128个字符
        public let remark: String?

        /// 死信exchange
        public let deadLetterExchange: String?

        /// 路由键
        public let deadLetterRoutingKey: String?

        public init(clusterId: String, vHostId: String, queue: String, autoDelete: Bool, remark: String? = nil, deadLetterExchange: String? = nil, deadLetterRoutingKey: String? = nil) {
            self.clusterId = clusterId
            self.vHostId = vHostId
            self.queue = queue
            self.autoDelete = autoDelete
            self.remark = remark
            self.deadLetterExchange = deadLetterExchange
            self.deadLetterRoutingKey = deadLetterRoutingKey
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case vHostId = "VHostId"
            case queue = "Queue"
            case autoDelete = "AutoDelete"
            case remark = "Remark"
            case deadLetterExchange = "DeadLetterExchange"
            case deadLetterRoutingKey = "DeadLetterRoutingKey"
        }
    }

    /// ModifyAMQPQueue返回参数结构体
    public struct ModifyAMQPQueueResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新Amqp队列
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func modifyAMQPQueue(_ input: ModifyAMQPQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAMQPQueueResponse> {
        fatalError("ModifyAMQPQueue is no longer available.")
    }

    /// 更新Amqp队列
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func modifyAMQPQueue(_ input: ModifyAMQPQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAMQPQueueResponse {
        fatalError("ModifyAMQPQueue is no longer available.")
    }

    /// 更新Amqp队列
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func modifyAMQPQueue(clusterId: String, vHostId: String, queue: String, autoDelete: Bool, remark: String? = nil, deadLetterExchange: String? = nil, deadLetterRoutingKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAMQPQueueResponse> {
        fatalError("ModifyAMQPQueue is no longer available.")
    }

    /// 更新Amqp队列
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func modifyAMQPQueue(clusterId: String, vHostId: String, queue: String, autoDelete: Bool, remark: String? = nil, deadLetterExchange: String? = nil, deadLetterRoutingKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAMQPQueueResponse {
        fatalError("ModifyAMQPQueue is no longer available.")
    }
}
