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

extension Iotexplorer {
    /// ModifyTopicPolicy请求参数结构体
    public struct ModifyTopicPolicyRequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        /// 更新前Topic名
        public let topicName: String

        /// 更新后Topic名
        public let newTopicName: String

        /// Topic权限
        public let privilege: UInt64

        public init(productId: String, topicName: String, newTopicName: String, privilege: UInt64) {
            self.productId = productId
            self.topicName = topicName
            self.newTopicName = newTopicName
            self.privilege = privilege
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case topicName = "TopicName"
            case newTopicName = "NewTopicName"
            case privilege = "Privilege"
        }
    }

    /// ModifyTopicPolicy返回参数结构体
    public struct ModifyTopicPolicyResponse: TCResponseModel {
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
    public func modifyTopicPolicy(_ input: ModifyTopicPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTopicPolicyResponse> {
        self.client.execute(action: "ModifyTopicPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新Topic
    ///
    /// 本接口（UpdateTopicPolicy）用于更新Topic信息
    @inlinable @discardableResult
    public func modifyTopicPolicy(_ input: ModifyTopicPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTopicPolicyResponse {
        try await self.client.execute(action: "ModifyTopicPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新Topic
    ///
    /// 本接口（UpdateTopicPolicy）用于更新Topic信息
    @inlinable @discardableResult
    public func modifyTopicPolicy(productId: String, topicName: String, newTopicName: String, privilege: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTopicPolicyResponse> {
        self.modifyTopicPolicy(ModifyTopicPolicyRequest(productId: productId, topicName: topicName, newTopicName: newTopicName, privilege: privilege), region: region, logger: logger, on: eventLoop)
    }

    /// 更新Topic
    ///
    /// 本接口（UpdateTopicPolicy）用于更新Topic信息
    @inlinable @discardableResult
    public func modifyTopicPolicy(productId: String, topicName: String, newTopicName: String, privilege: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTopicPolicyResponse {
        try await self.modifyTopicPolicy(ModifyTopicPolicyRequest(productId: productId, topicName: topicName, newTopicName: newTopicName, privilege: privilege), region: region, logger: logger, on: eventLoop)
    }
}
