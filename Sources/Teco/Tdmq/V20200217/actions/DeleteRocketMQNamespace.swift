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
    /// DeleteRocketMQNamespace请求参数结构体
    public struct DeleteRocketMQNamespaceRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 命名空间名称
        public let namespaceId: String

        public init(clusterId: String, namespaceId: String) {
            self.clusterId = clusterId
            self.namespaceId = namespaceId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case namespaceId = "NamespaceId"
        }
    }

    /// DeleteRocketMQNamespace返回参数结构体
    public struct DeleteRocketMQNamespaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除RocketMQ命名空间
    @inlinable
    public func deleteRocketMQNamespace(_ input: DeleteRocketMQNamespaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRocketMQNamespaceResponse > {
        self.client.execute(action: "DeleteRocketMQNamespace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除RocketMQ命名空间
    @inlinable
    public func deleteRocketMQNamespace(_ input: DeleteRocketMQNamespaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRocketMQNamespaceResponse {
        try await self.client.execute(action: "DeleteRocketMQNamespace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除RocketMQ命名空间
    @inlinable
    public func deleteRocketMQNamespace(clusterId: String, namespaceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRocketMQNamespaceResponse > {
        self.deleteRocketMQNamespace(DeleteRocketMQNamespaceRequest(clusterId: clusterId, namespaceId: namespaceId), logger: logger, on: eventLoop)
    }

    /// 删除RocketMQ命名空间
    @inlinable
    public func deleteRocketMQNamespace(clusterId: String, namespaceId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRocketMQNamespaceResponse {
        try await self.deleteRocketMQNamespace(DeleteRocketMQNamespaceRequest(clusterId: clusterId, namespaceId: namespaceId), logger: logger, on: eventLoop)
    }
}
