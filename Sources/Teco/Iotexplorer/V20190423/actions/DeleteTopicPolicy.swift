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

extension Iotexplorer {
    /// DeleteTopicPolicy请求参数结构体
    public struct DeleteTopicPolicyRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// Topic名称
        public let topicName: String

        public init(productId: String, topicName: String) {
            self.productId = productId
            self.topicName = topicName
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case topicName = "TopicName"
        }
    }

    /// DeleteTopicPolicy返回参数结构体
    public struct DeleteTopicPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除Topic
    ///
    /// 本接口（DeleteTopicPolicy）用于删除Topic 
    @inlinable
    public func deleteTopicPolicy(_ input: DeleteTopicPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTopicPolicyResponse > {
        self.client.execute(action: "DeleteTopicPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除Topic
    ///
    /// 本接口（DeleteTopicPolicy）用于删除Topic 
    @inlinable
    public func deleteTopicPolicy(_ input: DeleteTopicPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTopicPolicyResponse {
        try await self.client.execute(action: "DeleteTopicPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除Topic
    ///
    /// 本接口（DeleteTopicPolicy）用于删除Topic 
    @inlinable
    public func deleteTopicPolicy(productId: String, topicName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTopicPolicyResponse > {
        self.deleteTopicPolicy(DeleteTopicPolicyRequest(productId: productId, topicName: topicName), logger: logger, on: eventLoop)
    }

    /// 删除Topic
    ///
    /// 本接口（DeleteTopicPolicy）用于删除Topic 
    @inlinable
    public func deleteTopicPolicy(productId: String, topicName: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTopicPolicyResponse {
        try await self.deleteTopicPolicy(DeleteTopicPolicyRequest(productId: productId, topicName: topicName), logger: logger, on: eventLoop)
    }
}
