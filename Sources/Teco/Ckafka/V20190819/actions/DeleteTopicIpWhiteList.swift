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

extension Ckafka {
    /// DeleteTopicIpWhiteList请求参数结构体
    public struct DeleteTopicIpWhiteListRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 主题名称
        public let topicName: String

        /// ip白名单列表
        public let ipWhiteList: [String]

        public init(instanceId: String, topicName: String, ipWhiteList: [String]) {
            self.instanceId = instanceId
            self.topicName = topicName
            self.ipWhiteList = ipWhiteList
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case topicName = "TopicName"
            case ipWhiteList = "IpWhiteList"
        }
    }

    /// DeleteTopicIpWhiteList返回参数结构体
    public struct DeleteTopicIpWhiteListResponse: TCResponseModel {
        /// 删除主题IP白名单结果
        public let result: JgwOperateResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除主题IP白名单
    @inlinable
    public func deleteTopicIpWhiteList(_ input: DeleteTopicIpWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTopicIpWhiteListResponse> {
        self.client.execute(action: "DeleteTopicIpWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除主题IP白名单
    @inlinable
    public func deleteTopicIpWhiteList(_ input: DeleteTopicIpWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTopicIpWhiteListResponse {
        try await self.client.execute(action: "DeleteTopicIpWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除主题IP白名单
    @inlinable
    public func deleteTopicIpWhiteList(instanceId: String, topicName: String, ipWhiteList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTopicIpWhiteListResponse> {
        self.deleteTopicIpWhiteList(DeleteTopicIpWhiteListRequest(instanceId: instanceId, topicName: topicName, ipWhiteList: ipWhiteList), region: region, logger: logger, on: eventLoop)
    }

    /// 删除主题IP白名单
    @inlinable
    public func deleteTopicIpWhiteList(instanceId: String, topicName: String, ipWhiteList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTopicIpWhiteListResponse {
        try await self.deleteTopicIpWhiteList(DeleteTopicIpWhiteListRequest(instanceId: instanceId, topicName: topicName, ipWhiteList: ipWhiteList), region: region, logger: logger, on: eventLoop)
    }
}
