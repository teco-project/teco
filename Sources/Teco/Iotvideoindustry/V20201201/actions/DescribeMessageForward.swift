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

extension Iotvideoindustry {
    /// 查看消息转发配置详情
    @inlinable
    public func describeMessageForward(_ input: DescribeMessageForwardRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMessageForwardResponse > {
        self.client.execute(action: "DescribeMessageForward", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看消息转发配置详情
    @inlinable
    public func describeMessageForward(_ input: DescribeMessageForwardRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMessageForwardResponse {
        try await self.client.execute(action: "DescribeMessageForward", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeMessageForward请求参数结构体
    public struct DescribeMessageForwardRequest: TCRequestModel {
        /// 配置ID
        public let intId: Int64
        
        public init (intId: Int64) {
            self.intId = intId
        }
        
        enum CodingKeys: String, CodingKey {
            case intId = "IntId"
        }
    }
    
    /// DescribeMessageForward返回参数结构体
    public struct DescribeMessageForwardResponse: TCResponseModel {
        /// 区域ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let regionId: String?
        
        /// 区域名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let regionName: String?
        
        /// 实例ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instance: String?
        
        /// 实例名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceName: String?
        
        /// 配置ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let intId: Int64?
        
        /// json数组， 转发类型 1: 告警 2:GPS
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let messageType: String?
        
        /// kafka topic id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topicId: String?
        
        /// 配置创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?
        
        /// 用户Uin信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uin: String?
        
        /// kafka topic 名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topicName: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case regionId = "RegionId"
            case regionName = "RegionName"
            case instance = "Instance"
            case instanceName = "InstanceName"
            case intId = "IntId"
            case messageType = "MessageType"
            case topicId = "TopicId"
            case createTime = "CreateTime"
            case uin = "Uin"
            case topicName = "TopicName"
            case requestId = "RequestId"
        }
    }
}
