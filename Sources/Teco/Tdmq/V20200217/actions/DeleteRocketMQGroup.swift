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
    /// DeleteRocketMQGroup请求参数结构体
    public struct DeleteRocketMQGroupRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 命名空间名称
        public let namespaceId: String

        /// 消费组名称
        public let groupId: String

        public init(clusterId: String, namespaceId: String, groupId: String) {
            self.clusterId = clusterId
            self.namespaceId = namespaceId
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case namespaceId = "NamespaceId"
            case groupId = "GroupId"
        }
    }

    /// DeleteRocketMQGroup返回参数结构体
    public struct DeleteRocketMQGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除RocketMQ消费组
    @inlinable @discardableResult
    public func deleteRocketMQGroup(_ input: DeleteRocketMQGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRocketMQGroupResponse> {
        self.client.execute(action: "DeleteRocketMQGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除RocketMQ消费组
    @inlinable @discardableResult
    public func deleteRocketMQGroup(_ input: DeleteRocketMQGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRocketMQGroupResponse {
        try await self.client.execute(action: "DeleteRocketMQGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除RocketMQ消费组
    @inlinable @discardableResult
    public func deleteRocketMQGroup(clusterId: String, namespaceId: String, groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteRocketMQGroupResponse> {
        self.deleteRocketMQGroup(.init(clusterId: clusterId, namespaceId: namespaceId, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除RocketMQ消费组
    @inlinable @discardableResult
    public func deleteRocketMQGroup(clusterId: String, namespaceId: String, groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRocketMQGroupResponse {
        try await self.deleteRocketMQGroup(.init(clusterId: clusterId, namespaceId: namespaceId, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
