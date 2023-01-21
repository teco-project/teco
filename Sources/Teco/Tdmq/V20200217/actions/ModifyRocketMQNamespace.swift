//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// ModifyRocketMQNamespace请求参数结构体
    public struct ModifyRocketMQNamespaceRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 命名空间名称，3-64个字符，只能包含字母、数字、“-”及“_”
        public let namespaceId: String

        /// 未消费消息的保留时间，以毫秒为单位，60秒-15天
        public let ttl: UInt64

        /// 消息持久化后保留的时间，以毫秒为单位
        public let retentionTime: UInt64

        /// 说明，最大128个字符
        public let remark: String?

        public init(clusterId: String, namespaceId: String, ttl: UInt64, retentionTime: UInt64, remark: String? = nil) {
            self.clusterId = clusterId
            self.namespaceId = namespaceId
            self.ttl = ttl
            self.retentionTime = retentionTime
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case namespaceId = "NamespaceId"
            case ttl = "Ttl"
            case retentionTime = "RetentionTime"
            case remark = "Remark"
        }
    }

    /// ModifyRocketMQNamespace返回参数结构体
    public struct ModifyRocketMQNamespaceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新RocketMQ命名空间
    @inlinable @discardableResult
    public func modifyRocketMQNamespace(_ input: ModifyRocketMQNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRocketMQNamespaceResponse> {
        self.client.execute(action: "ModifyRocketMQNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新RocketMQ命名空间
    @inlinable @discardableResult
    public func modifyRocketMQNamespace(_ input: ModifyRocketMQNamespaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRocketMQNamespaceResponse {
        try await self.client.execute(action: "ModifyRocketMQNamespace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新RocketMQ命名空间
    @inlinable @discardableResult
    public func modifyRocketMQNamespace(clusterId: String, namespaceId: String, ttl: UInt64, retentionTime: UInt64, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRocketMQNamespaceResponse> {
        self.modifyRocketMQNamespace(ModifyRocketMQNamespaceRequest(clusterId: clusterId, namespaceId: namespaceId, ttl: ttl, retentionTime: retentionTime, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 更新RocketMQ命名空间
    @inlinable @discardableResult
    public func modifyRocketMQNamespace(clusterId: String, namespaceId: String, ttl: UInt64, retentionTime: UInt64, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRocketMQNamespaceResponse {
        try await self.modifyRocketMQNamespace(ModifyRocketMQNamespaceRequest(clusterId: clusterId, namespaceId: namespaceId, ttl: ttl, retentionTime: retentionTime, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
