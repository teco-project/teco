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
    /// UpdateSSOAccount请求参数结构体
    public struct UpdateSSOAccountRequest: TCRequestModel {
        /// Grafana 实例 ID，例如：grafana-abcdefgh
        public let instanceId: String

        /// 用户账号 ID ，例如：10000000
        public let userId: String

        /// 权限
        public let role: [GrafanaAccountRole]?

        /// 备注
        public let notes: String?

        public init(instanceId: String, userId: String, role: [GrafanaAccountRole]? = nil, notes: String? = nil) {
            self.instanceId = instanceId
            self.userId = userId
            self.role = role
            self.notes = notes
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userId = "UserId"
            case role = "Role"
            case notes = "Notes"
        }
    }

    /// UpdateSSOAccount返回参数结构体
    public struct UpdateSSOAccountResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新账号信息
    ///
    /// 更新已授权账号的备注、权限信息，会直接覆盖原有的信息，不传则不会更新。
    @inlinable @discardableResult
    public func updateSSOAccount(_ input: UpdateSSOAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSSOAccountResponse> {
        self.client.execute(action: "UpdateSSOAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新账号信息
    ///
    /// 更新已授权账号的备注、权限信息，会直接覆盖原有的信息，不传则不会更新。
    @inlinable @discardableResult
    public func updateSSOAccount(_ input: UpdateSSOAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSSOAccountResponse {
        try await self.client.execute(action: "UpdateSSOAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新账号信息
    ///
    /// 更新已授权账号的备注、权限信息，会直接覆盖原有的信息，不传则不会更新。
    @inlinable @discardableResult
    public func updateSSOAccount(instanceId: String, userId: String, role: [GrafanaAccountRole]? = nil, notes: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSSOAccountResponse> {
        let input = UpdateSSOAccountRequest(instanceId: instanceId, userId: userId, role: role, notes: notes)
        return self.client.execute(action: "UpdateSSOAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新账号信息
    ///
    /// 更新已授权账号的备注、权限信息，会直接覆盖原有的信息，不传则不会更新。
    @inlinable @discardableResult
    public func updateSSOAccount(instanceId: String, userId: String, role: [GrafanaAccountRole]? = nil, notes: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSSOAccountResponse {
        let input = UpdateSSOAccountRequest(instanceId: instanceId, userId: userId, role: role, notes: notes)
        return try await self.client.execute(action: "UpdateSSOAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
