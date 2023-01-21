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
    /// DeleteGrafanaInstance请求参数结构体
    public struct DeleteGrafanaInstanceRequest: TCRequestModel {
        /// 实例名数组
        public let instanceIDs: [String]

        public init(instanceIDs: [String]) {
            self.instanceIDs = instanceIDs
        }

        enum CodingKeys: String, CodingKey {
            case instanceIDs = "InstanceIDs"
        }
    }

    /// DeleteGrafanaInstance返回参数结构体
    public struct DeleteGrafanaInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除 Grafana 实例
    @inlinable @discardableResult
    public func deleteGrafanaInstance(_ input: DeleteGrafanaInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGrafanaInstanceResponse> {
        self.client.execute(action: "DeleteGrafanaInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除 Grafana 实例
    @inlinable @discardableResult
    public func deleteGrafanaInstance(_ input: DeleteGrafanaInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGrafanaInstanceResponse {
        try await self.client.execute(action: "DeleteGrafanaInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除 Grafana 实例
    @inlinable @discardableResult
    public func deleteGrafanaInstance(instanceIDs: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGrafanaInstanceResponse> {
        self.deleteGrafanaInstance(DeleteGrafanaInstanceRequest(instanceIDs: instanceIDs), region: region, logger: logger, on: eventLoop)
    }

    /// 删除 Grafana 实例
    @inlinable @discardableResult
    public func deleteGrafanaInstance(instanceIDs: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGrafanaInstanceResponse {
        try await self.deleteGrafanaInstance(DeleteGrafanaInstanceRequest(instanceIDs: instanceIDs), region: region, logger: logger, on: eventLoop)
    }
}
