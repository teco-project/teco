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

extension Iotcloud {
    /// 更新Topic
    ///
    /// 本接口（UpdateTopicPolicy）用于更新Topic信息
    @inlinable
    public func updateTopicPolicy(_ input: UpdateTopicPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateTopicPolicyResponse > {
        self.client.execute(action: "UpdateTopicPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新Topic
    ///
    /// 本接口（UpdateTopicPolicy）用于更新Topic信息
    @inlinable
    public func updateTopicPolicy(_ input: UpdateTopicPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTopicPolicyResponse {
        try await self.client.execute(action: "UpdateTopicPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateTopicPolicy请求参数结构体
    public struct UpdateTopicPolicyRequest: TCRequestModel {
        /// 产品ID
        public let productID: String
        
        /// 更新前Topic名
        public let topicName: String
        
        /// 更新后Topic名
        public let newTopicName: String
        
        /// Topic权限
        public let privilege: UInt64
        
        /// 代理订阅信息
        public let brokerSubscribe: BrokerSubscribe
        
        public init (productID: String, topicName: String, newTopicName: String, privilege: UInt64, brokerSubscribe: BrokerSubscribe) {
            self.productID = productID
            self.topicName = topicName
            self.newTopicName = newTopicName
            self.privilege = privilege
            self.brokerSubscribe = brokerSubscribe
        }
        
        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case topicName = "TopicName"
            case newTopicName = "NewTopicName"
            case privilege = "Privilege"
            case brokerSubscribe = "BrokerSubscribe"
        }
    }
    
    /// UpdateTopicPolicy返回参数结构体
    public struct UpdateTopicPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}