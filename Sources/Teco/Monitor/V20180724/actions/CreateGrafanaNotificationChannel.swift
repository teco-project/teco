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

import TecoCore

extension Monitor {
    /// CreateGrafanaNotificationChannel请求参数结构体
    public struct CreateGrafanaNotificationChannelRequest: TCRequestModel {
        /// Grafana 实例 ID，例如：grafana-abcdefgh
        public let instanceId: String

        /// 告警通道名称，例如：test
        public let channelName: String

        /// 默认为1，已废弃，请使用 OrganizationIds
        public let orgId: Int64

        /// 接受告警通道 ID 数组
        public let receivers: [String]

        /// 额外组织 ID 数组，已废弃，请使用 OrganizationIds
        public let extraOrgIds: [String]?

        /// 生效的所有组织 ID 数组，默认为 ["1"]
        public let organizationIds: [String]?

        public init(instanceId: String, channelName: String, orgId: Int64, receivers: [String], extraOrgIds: [String]? = nil, organizationIds: [String]? = nil) {
            self.instanceId = instanceId
            self.channelName = channelName
            self.orgId = orgId
            self.receivers = receivers
            self.extraOrgIds = extraOrgIds
            self.organizationIds = organizationIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case channelName = "ChannelName"
            case orgId = "OrgId"
            case receivers = "Receivers"
            case extraOrgIds = "ExtraOrgIds"
            case organizationIds = "OrganizationIds"
        }
    }

    /// CreateGrafanaNotificationChannel返回参数结构体
    public struct CreateGrafanaNotificationChannelResponse: TCResponseModel {
        /// 通道 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let channelId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case channelId = "ChannelId"
            case requestId = "RequestId"
        }
    }

    /// 创建 Grafana 告警通道
    @inlinable
    public func createGrafanaNotificationChannel(_ input: CreateGrafanaNotificationChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGrafanaNotificationChannelResponse> {
        self.client.execute(action: "CreateGrafanaNotificationChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建 Grafana 告警通道
    @inlinable
    public func createGrafanaNotificationChannel(_ input: CreateGrafanaNotificationChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGrafanaNotificationChannelResponse {
        try await self.client.execute(action: "CreateGrafanaNotificationChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建 Grafana 告警通道
    @inlinable
    public func createGrafanaNotificationChannel(instanceId: String, channelName: String, orgId: Int64, receivers: [String], extraOrgIds: [String]? = nil, organizationIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGrafanaNotificationChannelResponse> {
        self.createGrafanaNotificationChannel(.init(instanceId: instanceId, channelName: channelName, orgId: orgId, receivers: receivers, extraOrgIds: extraOrgIds, organizationIds: organizationIds), region: region, logger: logger, on: eventLoop)
    }

    /// 创建 Grafana 告警通道
    @inlinable
    public func createGrafanaNotificationChannel(instanceId: String, channelName: String, orgId: Int64, receivers: [String], extraOrgIds: [String]? = nil, organizationIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGrafanaNotificationChannelResponse {
        try await self.createGrafanaNotificationChannel(.init(instanceId: instanceId, channelName: channelName, orgId: orgId, receivers: receivers, extraOrgIds: extraOrgIds, organizationIds: organizationIds), region: region, logger: logger, on: eventLoop)
    }
}
