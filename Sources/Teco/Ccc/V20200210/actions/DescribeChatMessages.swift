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

extension Ccc {
    /// DescribeChatMessages请求参数结构体
    public struct DescribeChatMessagesRequest: TCRequestModel {
        /// 实例 ID（废弃）
        public let instanceId: Int64?

        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: Int64?

        /// 服务记录ID（废弃）
        public let cdrId: String?

        /// 返回记录条数，最大为100 默认20
        public let limit: Int64?

        /// 返回记录偏移，默认为 0
        public let offset: Int64?

        /// 1为从早到晚，2为从晚到早，默认为2
        public let order: Int64?

        /// 服务记录 SessionID（必填）
        public let sessionId: String?

        public init(instanceId: Int64? = nil, sdkAppId: Int64? = nil, cdrId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, order: Int64? = nil, sessionId: String? = nil) {
            self.instanceId = instanceId
            self.sdkAppId = sdkAppId
            self.cdrId = cdrId
            self.limit = limit
            self.offset = offset
            self.order = order
            self.sessionId = sessionId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case sdkAppId = "SdkAppId"
            case cdrId = "CdrId"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case sessionId = "SessionId"
        }
    }

    /// DescribeChatMessages返回参数结构体
    public struct DescribeChatMessagesResponse: TCResponseModel {
        /// 总记录数
        public let totalCount: Int64

        /// 消息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let messages: [MessageBody]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case messages = "Messages"
            case requestId = "RequestId"
        }
    }

    /// 查询服务的聊天记录
    ///
    /// 获取指定服务记录文本聊天内容，需要先使用查询在线客服记录（DescribeIMCdrs） API 获取服务记录 SessionId。
    ///
    /// 文本聊天记录只保存了 1 年内的，1 年之前会自动清理。
    @inlinable
    public func describeChatMessages(_ input: DescribeChatMessagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChatMessagesResponse> {
        self.client.execute(action: "DescribeChatMessages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务的聊天记录
    ///
    /// 获取指定服务记录文本聊天内容，需要先使用查询在线客服记录（DescribeIMCdrs） API 获取服务记录 SessionId。
    ///
    /// 文本聊天记录只保存了 1 年内的，1 年之前会自动清理。
    @inlinable
    public func describeChatMessages(_ input: DescribeChatMessagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChatMessagesResponse {
        try await self.client.execute(action: "DescribeChatMessages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务的聊天记录
    ///
    /// 获取指定服务记录文本聊天内容，需要先使用查询在线客服记录（DescribeIMCdrs） API 获取服务记录 SessionId。
    ///
    /// 文本聊天记录只保存了 1 年内的，1 年之前会自动清理。
    @inlinable
    public func describeChatMessages(instanceId: Int64? = nil, sdkAppId: Int64? = nil, cdrId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, order: Int64? = nil, sessionId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChatMessagesResponse> {
        let input = DescribeChatMessagesRequest(instanceId: instanceId, sdkAppId: sdkAppId, cdrId: cdrId, limit: limit, offset: offset, order: order, sessionId: sessionId)
        return self.client.execute(action: "DescribeChatMessages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务的聊天记录
    ///
    /// 获取指定服务记录文本聊天内容，需要先使用查询在线客服记录（DescribeIMCdrs） API 获取服务记录 SessionId。
    ///
    /// 文本聊天记录只保存了 1 年内的，1 年之前会自动清理。
    @inlinable
    public func describeChatMessages(instanceId: Int64? = nil, sdkAppId: Int64? = nil, cdrId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, order: Int64? = nil, sessionId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChatMessagesResponse {
        let input = DescribeChatMessagesRequest(instanceId: instanceId, sdkAppId: sdkAppId, cdrId: cdrId, limit: limit, offset: offset, order: order, sessionId: sessionId)
        return try await self.client.execute(action: "DescribeChatMessages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
