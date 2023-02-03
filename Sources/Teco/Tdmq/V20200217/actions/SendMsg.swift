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

extension Tdmq {
    /// SendMsg请求参数结构体
    public struct SendMsgRequest: TCRequestModel {
        /// 环境（命名空间）名称。
        public let environmentId: String

        /// 主题名称，如果是分区topic需要指定具体分区，如果没有指定则默认发到0分区，例如：my_topic-partition-0。
        public let topicName: String

        /// 消息内容，不能为空且大小不得大于5242880个byte。
        public let msgContent: String

        /// Pulsar 集群的ID
        public let clusterId: String?

        public init(environmentId: String, topicName: String, msgContent: String, clusterId: String? = nil) {
            self.environmentId = environmentId
            self.topicName = topicName
            self.msgContent = msgContent
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case topicName = "TopicName"
            case msgContent = "MsgContent"
            case clusterId = "ClusterId"
        }
    }

    /// SendMsg返回参数结构体
    public struct SendMsgResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 发送消息
    ///
    /// 此接口仅用于测试发生消息，不能作为现网正式生产使用
    @inlinable @discardableResult
    public func sendMsg(_ input: SendMsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendMsgResponse> {
        self.client.execute(action: "SendMsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发送消息
    ///
    /// 此接口仅用于测试发生消息，不能作为现网正式生产使用
    @inlinable @discardableResult
    public func sendMsg(_ input: SendMsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendMsgResponse {
        try await self.client.execute(action: "SendMsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发送消息
    ///
    /// 此接口仅用于测试发生消息，不能作为现网正式生产使用
    @inlinable @discardableResult
    public func sendMsg(environmentId: String, topicName: String, msgContent: String, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendMsgResponse> {
        let input = SendMsgRequest(environmentId: environmentId, topicName: topicName, msgContent: msgContent, clusterId: clusterId)
        return self.client.execute(action: "SendMsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发送消息
    ///
    /// 此接口仅用于测试发生消息，不能作为现网正式生产使用
    @inlinable @discardableResult
    public func sendMsg(environmentId: String, topicName: String, msgContent: String, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendMsgResponse {
        let input = SendMsgRequest(environmentId: environmentId, topicName: topicName, msgContent: msgContent, clusterId: clusterId)
        return try await self.client.execute(action: "SendMsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
