//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tdmq {
    /// 更新RocketMQ消费组信息
    ///
    /// 更新RocketMQ消费组信息
    @inlinable
    public func modifyRocketMQGroup(_ input: ModifyRocketMQGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyRocketMQGroupResponse > {
        self.client.execute(action: "ModifyRocketMQGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新RocketMQ消费组信息
    ///
    /// 更新RocketMQ消费组信息
    @inlinable
    public func modifyRocketMQGroup(_ input: ModifyRocketMQGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRocketMQGroupResponse {
        try await self.client.execute(action: "ModifyRocketMQGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyRocketMQGroup请求参数结构体
    public struct ModifyRocketMQGroupRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// 命名空间
        public let namespaceId: String
        
        /// 消费组名称
        public let groupId: String
        
        /// 说明信息，最长128个字符
        public let remark: String?
        
        /// 是否开启消费
        public let readEnable: Bool?
        
        /// 是否开启广播消费
        public let broadcastEnable: Bool?
        
        public init (clusterId: String, namespaceId: String, groupId: String, remark: String?, readEnable: Bool?, broadcastEnable: Bool?) {
            self.clusterId = clusterId
            self.namespaceId = namespaceId
            self.groupId = groupId
            self.remark = remark
            self.readEnable = readEnable
            self.broadcastEnable = broadcastEnable
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case namespaceId = "NamespaceId"
            case groupId = "GroupId"
            case remark = "Remark"
            case readEnable = "ReadEnable"
            case broadcastEnable = "BroadcastEnable"
        }
    }
    
    /// ModifyRocketMQGroup返回参数结构体
    public struct ModifyRocketMQGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}