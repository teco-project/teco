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

extension Dcdb {
    /// ModifyAccountConfig请求参数结构体
    public struct ModifyAccountConfigRequest: TCRequest {
        /// 实例 ID，格式如：tdsqlshard-kpkvq5oj，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 账号的名称
        public let userName: String

        /// 账号的域名
        public let host: String

        /// 配置列表，每一个元素是Config和Value的组合
        public let configs: [ConfigValue]

        public init(instanceId: String, userName: String, host: String, configs: [ConfigValue]) {
            self.instanceId = instanceId
            self.userName = userName
            self.host = host
            self.configs = configs
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userName = "UserName"
            case host = "Host"
            case configs = "Configs"
        }
    }

    /// ModifyAccountConfig返回参数结构体
    public struct ModifyAccountConfigResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改账号配置
    ///
    /// 修改账号的一些配置，比如 max_user_connections
    @inlinable @discardableResult
    public func modifyAccountConfig(_ input: ModifyAccountConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountConfigResponse> {
        self.client.execute(action: "ModifyAccountConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改账号配置
    ///
    /// 修改账号的一些配置，比如 max_user_connections
    @inlinable @discardableResult
    public func modifyAccountConfig(_ input: ModifyAccountConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountConfigResponse {
        try await self.client.execute(action: "ModifyAccountConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改账号配置
    ///
    /// 修改账号的一些配置，比如 max_user_connections
    @inlinable @discardableResult
    public func modifyAccountConfig(instanceId: String, userName: String, host: String, configs: [ConfigValue], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountConfigResponse> {
        self.modifyAccountConfig(.init(instanceId: instanceId, userName: userName, host: host, configs: configs), region: region, logger: logger, on: eventLoop)
    }

    /// 修改账号配置
    ///
    /// 修改账号的一些配置，比如 max_user_connections
    @inlinable @discardableResult
    public func modifyAccountConfig(instanceId: String, userName: String, host: String, configs: [ConfigValue], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountConfigResponse {
        try await self.modifyAccountConfig(.init(instanceId: instanceId, userName: userName, host: host, configs: configs), region: region, logger: logger, on: eventLoop)
    }
}
