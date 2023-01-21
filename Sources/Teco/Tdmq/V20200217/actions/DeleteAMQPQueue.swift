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
    /// DeleteAMQPQueue请求参数结构体
    public struct DeleteAMQPQueueRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// Vhost名称
        public let vHostId: String

        /// 队列名称
        public let queue: String

        public init(clusterId: String, vHostId: String, queue: String) {
            self.clusterId = clusterId
            self.vHostId = vHostId
            self.queue = queue
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case vHostId = "VHostId"
            case queue = "Queue"
        }
    }

    /// DeleteAMQPQueue返回参数结构体
    public struct DeleteAMQPQueueResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除Amqp队列
    @inlinable @discardableResult
    public func deleteAMQPQueue(_ input: DeleteAMQPQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAMQPQueueResponse> {
        self.client.execute(action: "DeleteAMQPQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除Amqp队列
    @inlinable @discardableResult
    public func deleteAMQPQueue(_ input: DeleteAMQPQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAMQPQueueResponse {
        try await self.client.execute(action: "DeleteAMQPQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除Amqp队列
    @inlinable @discardableResult
    public func deleteAMQPQueue(clusterId: String, vHostId: String, queue: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAMQPQueueResponse> {
        self.deleteAMQPQueue(DeleteAMQPQueueRequest(clusterId: clusterId, vHostId: vHostId, queue: queue), region: region, logger: logger, on: eventLoop)
    }

    /// 删除Amqp队列
    @inlinable @discardableResult
    public func deleteAMQPQueue(clusterId: String, vHostId: String, queue: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAMQPQueueResponse {
        try await self.deleteAMQPQueue(DeleteAMQPQueueRequest(clusterId: clusterId, vHostId: vHostId, queue: queue), region: region, logger: logger, on: eventLoop)
    }
}
