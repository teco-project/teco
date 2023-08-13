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

extension Thpc {
    /// AddQueue请求参数结构体
    public struct AddQueueRequest: TCRequestModel {
        /// 集群ID。
        public let clusterId: String

        /// 队列名称。
        /// - 最多支持32个字符。
        public let queueName: String

        public init(clusterId: String, queueName: String) {
            self.clusterId = clusterId
            self.queueName = queueName
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case queueName = "QueueName"
        }
    }

    /// AddQueue返回参数结构体
    public struct AddQueueResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加队列
    ///
    /// 本接口(AddQueue)用于添加队列到指定集群。
    /// * 本接口为目前只支持SchedulerType为SLURM的集群。
    /// * 单个集群中队列数量上限为10个。
    @inlinable @discardableResult
    public func addQueue(_ input: AddQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddQueueResponse> {
        self.client.execute(action: "AddQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加队列
    ///
    /// 本接口(AddQueue)用于添加队列到指定集群。
    /// * 本接口为目前只支持SchedulerType为SLURM的集群。
    /// * 单个集群中队列数量上限为10个。
    @inlinable @discardableResult
    public func addQueue(_ input: AddQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddQueueResponse {
        try await self.client.execute(action: "AddQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加队列
    ///
    /// 本接口(AddQueue)用于添加队列到指定集群。
    /// * 本接口为目前只支持SchedulerType为SLURM的集群。
    /// * 单个集群中队列数量上限为10个。
    @inlinable @discardableResult
    public func addQueue(clusterId: String, queueName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddQueueResponse> {
        self.addQueue(.init(clusterId: clusterId, queueName: queueName), region: region, logger: logger, on: eventLoop)
    }

    /// 添加队列
    ///
    /// 本接口(AddQueue)用于添加队列到指定集群。
    /// * 本接口为目前只支持SchedulerType为SLURM的集群。
    /// * 单个集群中队列数量上限为10个。
    @inlinable @discardableResult
    public func addQueue(clusterId: String, queueName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddQueueResponse {
        try await self.addQueue(.init(clusterId: clusterId, queueName: queueName), region: region, logger: logger, on: eventLoop)
    }
}
