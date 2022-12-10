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

extension Ckafka {
    /// 获取消费分组信息
    ///
    /// 获取消费分组信息
    @inlinable
    public func describeGroupInfo(_ input: DescribeGroupInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGroupInfoResponse > {
        self.client.execute(action: "DescribeGroupInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取消费分组信息
    ///
    /// 获取消费分组信息
    @inlinable
    public func describeGroupInfo(_ input: DescribeGroupInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupInfoResponse {
        try await self.client.execute(action: "DescribeGroupInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeGroupInfo请求参数结构体
    public struct DescribeGroupInfoRequest: TCRequestModel {
        /// （过滤条件）按照实例 ID 过滤。
        public let instanceId: String
        
        /// Kafka 消费分组，Consumer-group，这里是数组形式，格式：GroupList.0=xxx&GroupList.1=yyy。
        public let groupList: [String]
        
        public init (instanceId: String, groupList: [String]) {
            self.instanceId = instanceId
            self.groupList = groupList
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case groupList = "GroupList"
        }
    }
    
    /// DescribeGroupInfo返回参数结构体
    public struct DescribeGroupInfoResponse: TCResponseModel {
        /// 返回的结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [GroupInfoResponse]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}