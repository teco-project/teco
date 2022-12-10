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
    /// 删除RocketMQ消费组
    ///
    /// 删除RocketMQ消费组
    @inlinable
    public func deleteRocketMQGroup(_ input: DeleteRocketMQGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRocketMQGroupResponse > {
        self.client.execute(action: "DeleteRocketMQGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除RocketMQ消费组
    ///
    /// 删除RocketMQ消费组
    @inlinable
    public func deleteRocketMQGroup(_ input: DeleteRocketMQGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRocketMQGroupResponse {
        try await self.client.execute(action: "DeleteRocketMQGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteRocketMQGroup请求参数结构体
    public struct DeleteRocketMQGroupRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// 命名空间名称
        public let namespaceId: String
        
        /// 消费组名称
        public let groupId: String
        
        public init (clusterId: String, namespaceId: String, groupId: String) {
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
}