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
    /// CreateSSOAccount请求参数结构体
    public struct CreateSSOAccountRequest: TCRequestModel {
        /// Grafana 实例 ID，例如：grafana-abcdefgh
        public let instanceId: String

        /// 用户账号 ID ，例如：10000000
        public let userId: String

        /// 权限
        public let role: [GrafanaAccountRole]

        /// 备注
        public let notes: String?

        public init(instanceId: String, userId: String, role: [GrafanaAccountRole], notes: String? = nil) {
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

    /// CreateSSOAccount返回参数结构体
    public struct CreateSSOAccountResponse: TCResponseModel {
        /// 已添加的用户 UIN
        public let userId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case requestId = "RequestId"
        }
    }

    /// 授权腾讯云用户
    ///
    /// Grafana实例授权其他腾讯云用户
    @inlinable
    public func createSSOAccount(_ input: CreateSSOAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSSOAccountResponse> {
        self.client.execute(action: "CreateSSOAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 授权腾讯云用户
    ///
    /// Grafana实例授权其他腾讯云用户
    @inlinable
    public func createSSOAccount(_ input: CreateSSOAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSSOAccountResponse {
        try await self.client.execute(action: "CreateSSOAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 授权腾讯云用户
    ///
    /// Grafana实例授权其他腾讯云用户
    @inlinable
    public func createSSOAccount(instanceId: String, userId: String, role: [GrafanaAccountRole], notes: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSSOAccountResponse> {
        let input = CreateSSOAccountRequest(instanceId: instanceId, userId: userId, role: role, notes: notes)
        return self.client.execute(action: "CreateSSOAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 授权腾讯云用户
    ///
    /// Grafana实例授权其他腾讯云用户
    @inlinable
    public func createSSOAccount(instanceId: String, userId: String, role: [GrafanaAccountRole], notes: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSSOAccountResponse {
        let input = CreateSSOAccountRequest(instanceId: instanceId, userId: userId, role: role, notes: notes)
        return try await self.client.execute(action: "CreateSSOAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
