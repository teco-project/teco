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

extension Monitor {
    /// CleanGrafanaInstance请求参数结构体
    public struct CleanGrafanaInstanceRequest: TCRequestModel {
        /// Grafana 实例 ID，例如：grafana-abcdefgh
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// CleanGrafanaInstance返回参数结构体
    public struct CleanGrafanaInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 强制销毁 Grafana 实例
    @inlinable @discardableResult
    public func cleanGrafanaInstance(_ input: CleanGrafanaInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CleanGrafanaInstanceResponse> {
        self.client.execute(action: "CleanGrafanaInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 强制销毁 Grafana 实例
    @inlinable @discardableResult
    public func cleanGrafanaInstance(_ input: CleanGrafanaInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CleanGrafanaInstanceResponse {
        try await self.client.execute(action: "CleanGrafanaInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 强制销毁 Grafana 实例
    @inlinable @discardableResult
    public func cleanGrafanaInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CleanGrafanaInstanceResponse> {
        self.cleanGrafanaInstance(CleanGrafanaInstanceRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 强制销毁 Grafana 实例
    @inlinable @discardableResult
    public func cleanGrafanaInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CleanGrafanaInstanceResponse {
        try await self.cleanGrafanaInstance(CleanGrafanaInstanceRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
