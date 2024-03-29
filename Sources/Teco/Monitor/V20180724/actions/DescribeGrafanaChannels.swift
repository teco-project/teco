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

extension Monitor {
    /// DescribeGrafanaChannels请求参数结构体
    public struct DescribeGrafanaChannelsRequest: TCPaginatedRequest {
        /// Grafana 实例 ID，例如：grafana-12345678
        public let instanceId: String

        /// 偏移量
        public let offset: Int64

        /// 查询数量
        public let limit: Int64

        /// 告警通道名称，例如：test
        public let channelName: String?

        /// 告警通道 ID，例如：nchannel-abcd1234
        public let channelIds: [String]?

        /// 告警通道状态
        public let channelState: Int64?

        public init(instanceId: String, offset: Int64, limit: Int64, channelName: String? = nil, channelIds: [String]? = nil, channelState: Int64? = nil) {
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

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGrafanaChannelsResponse) -> DescribeGrafanaChannelsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(instanceId: self.instanceId, offset: self.offset + .init(response.getItems().count), limit: self.limit, channelName: self.channelName, channelIds: self.channelIds, channelState: self.channelState)
        }
    }

    /// DescribeGrafanaChannels返回参数结构体
    public struct DescribeGrafanaChannelsResponse: TCPaginatedResponse {
        /// 告警通道数组
        public let notificationChannelSet: [GrafanaChannel]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case notificationChannelSet = "NotificationChannelSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``GrafanaChannel`` list from the paginated response.
        public func getItems() -> [GrafanaChannel] {
            self.notificationChannelSet
        }
    }

    /// 列出 Grafana 所有告警通道
    @inlinable
    public func describeGrafanaChannels(_ input: DescribeGrafanaChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGrafanaChannelsResponse> {
        self.client.execute(action: "DescribeGrafanaChannels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出 Grafana 所有告警通道
    @inlinable
    public func describeGrafanaChannels(_ input: DescribeGrafanaChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGrafanaChannelsResponse {
        try await self.client.execute(action: "DescribeGrafanaChannels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出 Grafana 所有告警通道
    @inlinable
    public func describeGrafanaChannels(instanceId: String, offset: Int64, limit: Int64, channelName: String? = nil, channelIds: [String]? = nil, channelState: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGrafanaChannelsResponse> {
        self.describeGrafanaChannels(.init(instanceId: instanceId, offset: offset, limit: limit, channelName: channelName, channelIds: channelIds, channelState: channelState), region: region, logger: logger, on: eventLoop)
    }

    /// 列出 Grafana 所有告警通道
    @inlinable
    public func describeGrafanaChannels(instanceId: String, offset: Int64, limit: Int64, channelName: String? = nil, channelIds: [String]? = nil, channelState: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGrafanaChannelsResponse {
        try await self.describeGrafanaChannels(.init(instanceId: instanceId, offset: offset, limit: limit, channelName: channelName, channelIds: channelIds, channelState: channelState), region: region, logger: logger, on: eventLoop)
    }

    /// 列出 Grafana 所有告警通道
    @inlinable
    public func describeGrafanaChannelsPaginated(_ input: DescribeGrafanaChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [GrafanaChannel])> {
        self.client.paginate(input: input, region: region, command: self.describeGrafanaChannels, logger: logger, on: eventLoop)
    }

    /// 列出 Grafana 所有告警通道
    @inlinable @discardableResult
    public func describeGrafanaChannelsPaginated(_ input: DescribeGrafanaChannelsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGrafanaChannelsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGrafanaChannels, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 列出 Grafana 所有告警通道
    ///
    /// - Returns: `AsyncSequence`s of ``GrafanaChannel`` and ``DescribeGrafanaChannelsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeGrafanaChannelsPaginator(_ input: DescribeGrafanaChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGrafanaChannelsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGrafanaChannels, logger: logger, on: eventLoop)
    }
}
