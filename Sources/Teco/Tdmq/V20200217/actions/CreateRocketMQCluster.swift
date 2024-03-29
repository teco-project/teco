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

extension Tdmq {
    /// CreateRocketMQCluster请求参数结构体
    public struct CreateRocketMQClusterRequest: TCRequest {
        /// 集群名称，3-64个字符，只能包含字母、数字、“-”及“_”
        public let name: String

        /// 集群描述，128个字符以内
        public let remark: String?

        public init(name: String, remark: String? = nil) {
            self.name = name
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case remark = "Remark"
        }
    }

    /// CreateRocketMQCluster返回参数结构体
    public struct CreateRocketMQClusterResponse: TCResponse {
        /// 集群ID
        public let clusterId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case requestId = "RequestId"
        }
    }

    /// 创建RocketMQ集群
    ///
    /// 此接口用于创建一个RocketMQ集群
    @inlinable
    public func createRocketMQCluster(_ input: CreateRocketMQClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRocketMQClusterResponse> {
        self.client.execute(action: "CreateRocketMQCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建RocketMQ集群
    ///
    /// 此接口用于创建一个RocketMQ集群
    @inlinable
    public func createRocketMQCluster(_ input: CreateRocketMQClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRocketMQClusterResponse {
        try await self.client.execute(action: "CreateRocketMQCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建RocketMQ集群
    ///
    /// 此接口用于创建一个RocketMQ集群
    @inlinable
    public func createRocketMQCluster(name: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRocketMQClusterResponse> {
        self.createRocketMQCluster(.init(name: name, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 创建RocketMQ集群
    ///
    /// 此接口用于创建一个RocketMQ集群
    @inlinable
    public func createRocketMQCluster(name: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRocketMQClusterResponse {
        try await self.createRocketMQCluster(.init(name: name, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
