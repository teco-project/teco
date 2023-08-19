//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

import Logging
import NIOCore
import TecoCore

extension Iotcloud {
    /// UpdateTopicPolicy请求参数结构体
    public struct UpdateTopicPolicyRequest: TCRequest {
        /// 产品ID
        public let productId: String

        /// 更新前Topic名
        public let topicName: String

        /// 更新后Topic名
        public let newTopicName: String

        /// Topic权限
        public let privilege: UInt64

        /// 代理订阅信息
        public let brokerSubscribe: BrokerSubscribe?

        public init(productId: String, topicName: String, newTopicName: String, privilege: UInt64, brokerSubscribe: BrokerSubscribe? = nil) {
            self.productId = productId
            self.topicName = topicName
            self.newTopicName = newTopicName
            self.privilege = privilege
            self.brokerSubscribe = brokerSubscribe
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case topicName = "TopicName"
            case newTopicName = "NewTopicName"
            case privilege = "Privilege"
            case brokerSubscribe = "BrokerSubscribe"
        }
    }

    /// UpdateTopicPolicy返回参数结构体
    public struct UpdateTopicPolicyResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新Topic
    ///
    /// 本接口（UpdateTopicPolicy）用于更新Topic信息
    @inlinable @discardableResult
    public func updateTopicPolicy(_ input: UpdateTopicPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTopicPolicyResponse> {
        self.client.execute(action: "UpdateTopicPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新Topic
    ///
    /// 本接口（UpdateTopicPolicy）用于更新Topic信息
    @inlinable @discardableResult
    public func updateTopicPolicy(_ input: UpdateTopicPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTopicPolicyResponse {
        try await self.client.execute(action: "UpdateTopicPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新Topic
    ///
    /// 本接口（UpdateTopicPolicy）用于更新Topic信息
    @inlinable @discardableResult
    public func updateTopicPolicy(productId: String, topicName: String, newTopicName: String, privilege: UInt64, brokerSubscribe: BrokerSubscribe? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTopicPolicyResponse> {
        self.updateTopicPolicy(.init(productId: productId, topicName: topicName, newTopicName: newTopicName, privilege: privilege, brokerSubscribe: brokerSubscribe), region: region, logger: logger, on: eventLoop)
    }

    /// 更新Topic
    ///
    /// 本接口（UpdateTopicPolicy）用于更新Topic信息
    @inlinable @discardableResult
    public func updateTopicPolicy(productId: String, topicName: String, newTopicName: String, privilege: UInt64, brokerSubscribe: BrokerSubscribe? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTopicPolicyResponse {
        try await self.updateTopicPolicy(.init(productId: productId, topicName: topicName, newTopicName: newTopicName, privilege: privilege, brokerSubscribe: brokerSubscribe), region: region, logger: logger, on: eventLoop)
    }
}
