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

extension Iotcloud {
    /// CreateTopicPolicy请求参数结构体
    public struct CreateTopicPolicyRequest: TCRequestModel {
        /// 产品自身ID
        public let productID: String

        /// Topic名称
        public let topicName: String

        /// Topic权限，1发布，2订阅，3订阅和发布
        public let privilege: UInt64

        /// 代理订阅信息，网关产品为绑定的子产品创建topic时需要填写，内容为子产品的ID和设备信息。
        public let brokerSubscribe: BrokerSubscribe?

        public init(productID: String, topicName: String, privilege: UInt64, brokerSubscribe: BrokerSubscribe? = nil) {
            self.productID = productID
            self.topicName = topicName
            self.privilege = privilege
            self.brokerSubscribe = brokerSubscribe
        }

        enum CodingKeys: String, CodingKey {
            case productID = "ProductID"
            case topicName = "TopicName"
            case privilege = "Privilege"
            case brokerSubscribe = "BrokerSubscribe"
        }
    }

    /// CreateTopicPolicy返回参数结构体
    public struct CreateTopicPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建Topic
    ///
    /// 本接口（CreateTopicPolicy）用于创建一个Topic
    @inlinable
    public func createTopicPolicy(_ input: CreateTopicPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTopicPolicyResponse> {
        self.client.execute(action: "CreateTopicPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建Topic
    ///
    /// 本接口（CreateTopicPolicy）用于创建一个Topic
    @inlinable
    public func createTopicPolicy(_ input: CreateTopicPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTopicPolicyResponse {
        try await self.client.execute(action: "CreateTopicPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建Topic
    ///
    /// 本接口（CreateTopicPolicy）用于创建一个Topic
    @inlinable
    public func createTopicPolicy(productID: String, topicName: String, privilege: UInt64, brokerSubscribe: BrokerSubscribe? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTopicPolicyResponse> {
        self.createTopicPolicy(CreateTopicPolicyRequest(productID: productID, topicName: topicName, privilege: privilege, brokerSubscribe: brokerSubscribe), region: region, logger: logger, on: eventLoop)
    }

    /// 创建Topic
    ///
    /// 本接口（CreateTopicPolicy）用于创建一个Topic
    @inlinable
    public func createTopicPolicy(productID: String, topicName: String, privilege: UInt64, brokerSubscribe: BrokerSubscribe? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTopicPolicyResponse {
        try await self.createTopicPolicy(CreateTopicPolicyRequest(productID: productID, topicName: topicName, privilege: privilege, brokerSubscribe: brokerSubscribe), region: region, logger: logger, on: eventLoop)
    }
}
