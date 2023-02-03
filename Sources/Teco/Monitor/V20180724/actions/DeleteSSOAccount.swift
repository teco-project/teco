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
    /// DeleteSSOAccount请求参数结构体
    public struct DeleteSSOAccountRequest: TCRequestModel {
        /// Grafana 实例 ID，例如：grafana-abcdefgh
        public let instanceId: String

        /// 用户账号 ID ，例如：10000000
        public let userId: String

        public init(instanceId: String, userId: String) {
            self.instanceId = instanceId
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userId = "UserId"
        }
    }

    /// DeleteSSOAccount返回参数结构体
    public struct DeleteSSOAccountResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除授权用户
    ///
    /// Grafana可视化服务 删除授权用户
    @inlinable @discardableResult
    public func deleteSSOAccount(_ input: DeleteSSOAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSSOAccountResponse> {
        self.client.execute(action: "DeleteSSOAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除授权用户
    ///
    /// Grafana可视化服务 删除授权用户
    @inlinable @discardableResult
    public func deleteSSOAccount(_ input: DeleteSSOAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSSOAccountResponse {
        try await self.client.execute(action: "DeleteSSOAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除授权用户
    ///
    /// Grafana可视化服务 删除授权用户
    @inlinable @discardableResult
    public func deleteSSOAccount(instanceId: String, userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSSOAccountResponse> {
        let input = DeleteSSOAccountRequest(instanceId: instanceId, userId: userId)
        return self.client.execute(action: "DeleteSSOAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除授权用户
    ///
    /// Grafana可视化服务 删除授权用户
    @inlinable @discardableResult
    public func deleteSSOAccount(instanceId: String, userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSSOAccountResponse {
        let input = DeleteSSOAccountRequest(instanceId: instanceId, userId: userId)
        return try await self.client.execute(action: "DeleteSSOAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
