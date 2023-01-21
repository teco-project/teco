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
    /// UpdateGrafanaWhiteList请求参数结构体
    public struct UpdateGrafanaWhiteListRequest: TCRequestModel {
        /// Grafana 实例 ID，例如：grafana-abcdefgh
        public let instanceId: String

        /// 白名单数组，输入公网域名 IP ，例如：127.0.0.1，可通过接口 DescribeGrafanaWhiteList 查看
        public let whitelist: [String]

        public init(instanceId: String, whitelist: [String]) {
            self.instanceId = instanceId
            self.whitelist = whitelist
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case whitelist = "Whitelist"
        }
    }

    /// UpdateGrafanaWhiteList返回参数结构体
    public struct UpdateGrafanaWhiteListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新 Grafana 白名单
    @inlinable @discardableResult
    public func updateGrafanaWhiteList(_ input: UpdateGrafanaWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGrafanaWhiteListResponse> {
        self.client.execute(action: "UpdateGrafanaWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新 Grafana 白名单
    @inlinable @discardableResult
    public func updateGrafanaWhiteList(_ input: UpdateGrafanaWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGrafanaWhiteListResponse {
        try await self.client.execute(action: "UpdateGrafanaWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新 Grafana 白名单
    @inlinable @discardableResult
    public func updateGrafanaWhiteList(instanceId: String, whitelist: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGrafanaWhiteListResponse> {
        self.updateGrafanaWhiteList(UpdateGrafanaWhiteListRequest(instanceId: instanceId, whitelist: whitelist), region: region, logger: logger, on: eventLoop)
    }

    /// 更新 Grafana 白名单
    @inlinable @discardableResult
    public func updateGrafanaWhiteList(instanceId: String, whitelist: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGrafanaWhiteListResponse {
        try await self.updateGrafanaWhiteList(UpdateGrafanaWhiteListRequest(instanceId: instanceId, whitelist: whitelist), region: region, logger: logger, on: eventLoop)
    }
}
