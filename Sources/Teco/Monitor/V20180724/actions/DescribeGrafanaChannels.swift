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

extension Monitor {
    /// DescribeGrafanaChannels请求参数结构体
    public struct DescribeGrafanaChannelsRequest: TCRequestModel {
        /// 实例 ID
        public let instanceId: String
        
        /// 偏移量
        public let offset: Int64
        
        /// 查询数量
        public let limit: Int64
        
        /// 渠道名
        public let channelName: String?
        
        /// 渠道 ID
        public let channelIds: [String]?
        
        /// 状态
        public let channelState: Int64?
        
        public init (instanceId: String, offset: Int64, limit: Int64, channelName: String? = nil, channelIds: [String]? = nil, channelState: Int64? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
            self.channelName = channelName
            self.channelIds = channelIds
            self.channelState = channelState
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
            case channelName = "ChannelName"
            case channelIds = "ChannelIds"
            case channelState = "ChannelState"
        }
    }
    
    /// DescribeGrafanaChannels返回参数结构体
    public struct DescribeGrafanaChannelsResponse: TCResponseModel {
        /// 告警通道数组
        public let notificationChannelSet: [GrafanaChannel]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case notificationChannelSet = "NotificationChannelSet"
            case requestId = "RequestId"
        }
    }
    
    /// 列出 Grafana 所有告警通道
    @inlinable
    public func describeGrafanaChannels(_ input: DescribeGrafanaChannelsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGrafanaChannelsResponse > {
        self.client.execute(action: "DescribeGrafanaChannels", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 列出 Grafana 所有告警通道
    @inlinable
    public func describeGrafanaChannels(_ input: DescribeGrafanaChannelsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGrafanaChannelsResponse {
        try await self.client.execute(action: "DescribeGrafanaChannels", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
