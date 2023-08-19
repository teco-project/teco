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

extension Tcr {
    /// ModifyServiceAccount请求参数结构体
    public struct ModifyServiceAccountRequest: TCRequest {
        /// 实例Id
        public let registryId: String

        /// 服务级账号名
        public let name: String

        /// 服务级账号描述
        public let description: String?

        /// 有效期(单位：天)，从当前时间开始计算，优先级高于ExpiresAt
        public let duration: Int64?

        /// 过期时间（时间戳，单位:毫秒）
        public let expiresAt: Int64?

        /// 是否禁用服务级账号
        public let disable: Bool?

        /// 策略列表
        public let permissions: [Permission]?

        public init(registryId: String, name: String, description: String? = nil, duration: Int64? = nil, expiresAt: Int64? = nil, disable: Bool? = nil, permissions: [Permission]? = nil) {
            self.registryId = registryId
            self.name = name
            self.description = description
            self.duration = duration
            self.expiresAt = expiresAt
            self.disable = disable
            self.permissions = permissions
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case name = "Name"
            case description = "Description"
            case duration = "Duration"
            case expiresAt = "ExpiresAt"
            case disable = "Disable"
            case permissions = "Permissions"
        }
    }

    /// ModifyServiceAccount返回参数结构体
    public struct ModifyServiceAccountResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新服务级账号
    @inlinable @discardableResult
    public func modifyServiceAccount(_ input: ModifyServiceAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyServiceAccountResponse> {
        self.client.execute(action: "ModifyServiceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新服务级账号
    @inlinable @discardableResult
    public func modifyServiceAccount(_ input: ModifyServiceAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyServiceAccountResponse {
        try await self.client.execute(action: "ModifyServiceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新服务级账号
    @inlinable @discardableResult
    public func modifyServiceAccount(registryId: String, name: String, description: String? = nil, duration: Int64? = nil, expiresAt: Int64? = nil, disable: Bool? = nil, permissions: [Permission]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyServiceAccountResponse> {
        self.modifyServiceAccount(.init(registryId: registryId, name: name, description: description, duration: duration, expiresAt: expiresAt, disable: disable, permissions: permissions), region: region, logger: logger, on: eventLoop)
    }

    /// 更新服务级账号
    @inlinable @discardableResult
    public func modifyServiceAccount(registryId: String, name: String, description: String? = nil, duration: Int64? = nil, expiresAt: Int64? = nil, disable: Bool? = nil, permissions: [Permission]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyServiceAccountResponse {
        try await self.modifyServiceAccount(.init(registryId: registryId, name: name, description: description, duration: duration, expiresAt: expiresAt, disable: disable, permissions: permissions), region: region, logger: logger, on: eventLoop)
    }
}
