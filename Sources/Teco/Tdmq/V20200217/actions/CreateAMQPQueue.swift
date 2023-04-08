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

extension Tdmq {
    /// CreateAMQPQueue请求参数结构体
    public struct CreateAMQPQueueRequest: TCRequestModel {
        /// 队列名称，3-64个字符，只能包含字母、数字、“-”及“_”
        public let queue: String

        /// 队列所在的vhost名称
        public let vHostId: String

        /// 是否自动清除
        public let autoDelete: Bool

        /// 集群ID
        public let clusterId: String

        /// 队列说明，最大128个字符
        public let remark: String?

        /// 死信exchange
        public let deadLetterExchange: String?

        /// 路由键
        public let deadLetterRoutingKey: String?

        public init(queue: String, vHostId: String, autoDelete: Bool, clusterId: String, remark: String? = nil, deadLetterExchange: String? = nil, deadLetterRoutingKey: String? = nil) {
            self.queue = queue
            self.vHostId = vHostId
            self.autoDelete = autoDelete
            self.clusterId = clusterId
            self.remark = remark
            self.deadLetterExchange = deadLetterExchange
            self.deadLetterRoutingKey = deadLetterRoutingKey
        }

        enum CodingKeys: String, CodingKey {
            case queue = "Queue"
            case vHostId = "VHostId"
            case autoDelete = "AutoDelete"
            case clusterId = "ClusterId"
            case remark = "Remark"
            case deadLetterExchange = "DeadLetterExchange"
            case deadLetterRoutingKey = "DeadLetterRoutingKey"
        }
    }

    /// CreateAMQPQueue返回参数结构体
    public struct CreateAMQPQueueResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建AMQP队列
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func createAMQPQueue(_ input: CreateAMQPQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAMQPQueueResponse> {
        fatalError("CreateAMQPQueue is no longer available.")
    }

    /// 创建AMQP队列
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func createAMQPQueue(_ input: CreateAMQPQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAMQPQueueResponse {
        fatalError("CreateAMQPQueue is no longer available.")
    }

    /// 创建AMQP队列
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func createAMQPQueue(queue: String, vHostId: String, autoDelete: Bool, clusterId: String, remark: String? = nil, deadLetterExchange: String? = nil, deadLetterRoutingKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAMQPQueueResponse> {
        fatalError("CreateAMQPQueue is no longer available.")
    }

    /// 创建AMQP队列
    @available(*, unavailable, message: "产品下线了，对应的接口也要下线。")
    @inlinable @discardableResult
    public func createAMQPQueue(queue: String, vHostId: String, autoDelete: Bool, clusterId: String, remark: String? = nil, deadLetterExchange: String? = nil, deadLetterRoutingKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAMQPQueueResponse {
        fatalError("CreateAMQPQueue is no longer available.")
    }
}
