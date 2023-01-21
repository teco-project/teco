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

extension Monitor {
    /// UpdateGrafanaNotificationChannel请求参数结构体
    public struct UpdateGrafanaNotificationChannelRequest: TCRequestModel {
        /// 通道 ID，例如：nchannel-abcd1234
        public let channelId: String

        /// Grafana 实例 ID，例如：grafana-12345678
        public let instanceId: String

        /// 告警通道名称，例如：test
        public let channelName: String

        /// 接受告警通道 ID 数组
        public let receivers: [String]

        /// 已废弃，请使用 OrganizationIds
        public let extraOrgIds: [String]?

        /// 生效的组织 ID 数组
        public let organizationIds: [String]?

        public init(channelId: String, instanceId: String, channelName: String, receivers: [String], extraOrgIds: [String]? = nil, organizationIds: [String]? = nil) {
            self.channelId = channelId
            self.instanceId = instanceId
            self.channelName = channelName
            self.receivers = receivers
            self.extraOrgIds = extraOrgIds
            self.organizationIds = organizationIds
        }

        enum CodingKeys: String, CodingKey {
            case channelId = "ChannelId"
            case instanceId = "InstanceId"
            case channelName = "ChannelName"
            case receivers = "Receivers"
            case extraOrgIds = "ExtraOrgIds"
            case organizationIds = "OrganizationIds"
        }
    }

    /// UpdateGrafanaNotificationChannel返回参数结构体
    public struct UpdateGrafanaNotificationChannelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新 Grafana 告警通道
    @inlinable @discardableResult
    public func updateGrafanaNotificationChannel(_ input: UpdateGrafanaNotificationChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGrafanaNotificationChannelResponse> {
        self.client.execute(action: "UpdateGrafanaNotificationChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新 Grafana 告警通道
    @inlinable @discardableResult
    public func updateGrafanaNotificationChannel(_ input: UpdateGrafanaNotificationChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGrafanaNotificationChannelResponse {
        try await self.client.execute(action: "UpdateGrafanaNotificationChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新 Grafana 告警通道
    @inlinable @discardableResult
    public func updateGrafanaNotificationChannel(channelId: String, instanceId: String, channelName: String, receivers: [String], extraOrgIds: [String]? = nil, organizationIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGrafanaNotificationChannelResponse> {
        self.updateGrafanaNotificationChannel(UpdateGrafanaNotificationChannelRequest(channelId: channelId, instanceId: instanceId, channelName: channelName, receivers: receivers, extraOrgIds: extraOrgIds, organizationIds: organizationIds), region: region, logger: logger, on: eventLoop)
    }

    /// 更新 Grafana 告警通道
    @inlinable @discardableResult
    public func updateGrafanaNotificationChannel(channelId: String, instanceId: String, channelName: String, receivers: [String], extraOrgIds: [String]? = nil, organizationIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGrafanaNotificationChannelResponse {
        try await self.updateGrafanaNotificationChannel(UpdateGrafanaNotificationChannelRequest(channelId: channelId, instanceId: instanceId, channelName: channelName, receivers: receivers, extraOrgIds: extraOrgIds, organizationIds: organizationIds), region: region, logger: logger, on: eventLoop)
    }
}
