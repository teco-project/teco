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
    /// CreateRocketMQGroup请求参数结构体
    public struct CreateRocketMQGroupRequest: TCRequestModel {
        /// Group名称，8~64个字符
        public let groupId: String

        /// 命名空间，目前只支持单个命名空间
        public let namespaces: [String]

        /// 是否开启消费
        public let readEnable: Bool

        /// 是否开启广播消费
        public let broadcastEnable: Bool

        /// 集群ID
        public let clusterId: String

        /// 说明信息，最长128个字符
        public let remark: String?

        public init(groupId: String, namespaces: [String], readEnable: Bool, broadcastEnable: Bool, clusterId: String, remark: String? = nil) {
            self.groupId = groupId
            self.namespaces = namespaces
            self.readEnable = readEnable
            self.broadcastEnable = broadcastEnable
            self.clusterId = clusterId
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case namespaces = "Namespaces"
            case readEnable = "ReadEnable"
            case broadcastEnable = "BroadcastEnable"
            case clusterId = "ClusterId"
            case remark = "Remark"
        }
    }

    /// CreateRocketMQGroup返回参数结构体
    public struct CreateRocketMQGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建RocketMQ消费组
    @inlinable
    public func createRocketMQGroup(_ input: CreateRocketMQGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateRocketMQGroupResponse > {
        self.client.execute(action: "CreateRocketMQGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建RocketMQ消费组
    @inlinable
    public func createRocketMQGroup(_ input: CreateRocketMQGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRocketMQGroupResponse {
        try await self.client.execute(action: "CreateRocketMQGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建RocketMQ消费组
    @inlinable
    public func createRocketMQGroup(groupId: String, namespaces: [String], readEnable: Bool, broadcastEnable: Bool, clusterId: String, remark: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateRocketMQGroupResponse > {
        self.createRocketMQGroup(CreateRocketMQGroupRequest(groupId: groupId, namespaces: namespaces, readEnable: readEnable, broadcastEnable: broadcastEnable, clusterId: clusterId, remark: remark), logger: logger, on: eventLoop)
    }

    /// 创建RocketMQ消费组
    @inlinable
    public func createRocketMQGroup(groupId: String, namespaces: [String], readEnable: Bool, broadcastEnable: Bool, clusterId: String, remark: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRocketMQGroupResponse {
        try await self.createRocketMQGroup(CreateRocketMQGroupRequest(groupId: groupId, namespaces: namespaces, readEnable: readEnable, broadcastEnable: broadcastEnable, clusterId: clusterId, remark: remark), logger: logger, on: eventLoop)
    }
}
