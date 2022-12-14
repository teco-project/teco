//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// ModifyRocketMQCluster请求参数结构体
    public struct ModifyRocketMQClusterRequest: TCRequestModel {
        /// RocketMQ集群ID
        public let clusterId: String

        /// 3-64个字符，只能包含字母、数字、“-”及“_”
        public let clusterName: String?

        /// 说明信息，不超过128个字符
        public let remark: String?

        public init(clusterId: String, clusterName: String? = nil, remark: String? = nil) {
            self.clusterId = clusterId
            self.clusterName = clusterName
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case clusterName = "ClusterName"
            case remark = "Remark"
        }
    }

    /// ModifyRocketMQCluster返回参数结构体
    public struct ModifyRocketMQClusterResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新RocketMQ集群信息
    @inlinable
    public func modifyRocketMQCluster(_ input: ModifyRocketMQClusterRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyRocketMQClusterResponse > {
        self.client.execute(action: "ModifyRocketMQCluster", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新RocketMQ集群信息
    @inlinable
    public func modifyRocketMQCluster(_ input: ModifyRocketMQClusterRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRocketMQClusterResponse {
        try await self.client.execute(action: "ModifyRocketMQCluster", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新RocketMQ集群信息
    @inlinable
    public func modifyRocketMQCluster(clusterId: String, clusterName: String? = nil, remark: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyRocketMQClusterResponse > {
        self.modifyRocketMQCluster(ModifyRocketMQClusterRequest(clusterId: clusterId, clusterName: clusterName, remark: remark), logger: logger, on: eventLoop)
    }

    /// 更新RocketMQ集群信息
    @inlinable
    public func modifyRocketMQCluster(clusterId: String, clusterName: String? = nil, remark: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRocketMQClusterResponse {
        try await self.modifyRocketMQCluster(ModifyRocketMQClusterRequest(clusterId: clusterId, clusterName: clusterName, remark: remark), logger: logger, on: eventLoop)
    }
}
