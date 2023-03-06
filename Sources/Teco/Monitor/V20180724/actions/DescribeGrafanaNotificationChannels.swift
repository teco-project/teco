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

import TecoPaginationHelpers

extension Monitor {
    /// DescribeGrafanaNotificationChannels请求参数结构体
    public struct DescribeGrafanaNotificationChannelsRequest: TCPaginatedRequest {
        /// Grafana 实例 ID，例如：grafana-12345678
        public let instanceId: String

        /// 偏移量
        public let offset: Int64

        /// 查询数量
        public let limit: Int64

        /// 告警通道名称，例如：test
        public let channelName: String?

        /// 告警通道 ID，例如：nchannel-abcd1234
        public let channelIDs: [String]?

        /// 告警通道状态
        public let channelState: Int64?

        public init(instanceId: String, offset: Int64, limit: Int64, channelName: String? = nil, channelIDs: [String]? = nil, channelState: Int64? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
            self.channelName = channelName
            self.channelIDs = channelIDs
            self.channelState = channelState
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
            case channelName = "ChannelName"
            case channelIDs = "ChannelIDs"
            case channelState = "ChannelState"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGrafanaNotificationChannelsResponse) -> DescribeGrafanaNotificationChannelsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeGrafanaNotificationChannelsRequest(instanceId: self.instanceId, offset: self.offset + .init(response.getItems().count), limit: self.limit, channelName: self.channelName, channelIDs: self.channelIDs, channelState: self.channelState)
        }
    }

    /// DescribeGrafanaNotificationChannels返回参数结构体
    public struct DescribeGrafanaNotificationChannelsResponse: TCPaginatedResponse {
        /// 告警通道数组
        public let notificationChannelSet: [GrafanaNotificationChannel]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case notificationChannelSet = "NotificationChannelSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [GrafanaNotificationChannel] {
            self.notificationChannelSet
        }
    }

    /// 列出 Grafana 告警通道
    @inlinable
    public func describeGrafanaNotificationChannels(_ input: DescribeGrafanaNotificationChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGrafanaNotificationChannelsResponse> {
        self.client.execute(action: "DescribeGrafanaNotificationChannels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出 Grafana 告警通道
    @inlinable
    public func describeGrafanaNotificationChannels(_ input: DescribeGrafanaNotificationChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGrafanaNotificationChannelsResponse {
        try await self.client.execute(action: "DescribeGrafanaNotificationChannels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出 Grafana 告警通道
    @inlinable
    public func describeGrafanaNotificationChannels(instanceId: String, offset: Int64, limit: Int64, channelName: String? = nil, channelIDs: [String]? = nil, channelState: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGrafanaNotificationChannelsResponse> {
        let input = DescribeGrafanaNotificationChannelsRequest(instanceId: instanceId, offset: offset, limit: limit, channelName: channelName, channelIDs: channelIDs, channelState: channelState)
        return self.client.execute(action: "DescribeGrafanaNotificationChannels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出 Grafana 告警通道
    @inlinable
    public func describeGrafanaNotificationChannels(instanceId: String, offset: Int64, limit: Int64, channelName: String? = nil, channelIDs: [String]? = nil, channelState: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGrafanaNotificationChannelsResponse {
        let input = DescribeGrafanaNotificationChannelsRequest(instanceId: instanceId, offset: offset, limit: limit, channelName: channelName, channelIDs: channelIDs, channelState: channelState)
        return try await self.client.execute(action: "DescribeGrafanaNotificationChannels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出 Grafana 告警通道
    @inlinable
    public func describeGrafanaNotificationChannelsPaginated(_ input: DescribeGrafanaNotificationChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [GrafanaNotificationChannel])> {
        self.client.paginate(input: input, region: region, command: self.describeGrafanaNotificationChannels, logger: logger, on: eventLoop)
    }

    /// 列出 Grafana 告警通道
    @inlinable @discardableResult
    public func describeGrafanaNotificationChannelsPaginated(_ input: DescribeGrafanaNotificationChannelsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGrafanaNotificationChannelsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGrafanaNotificationChannels, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 列出 Grafana 告警通道
    ///
    /// - Returns: `AsyncSequence`s of `GrafanaNotificationChannel` and `DescribeGrafanaNotificationChannelsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeGrafanaNotificationChannelsPaginator(_ input: DescribeGrafanaNotificationChannelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGrafanaNotificationChannelsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGrafanaNotificationChannels, logger: logger, on: eventLoop)
    }
}
