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

extension Cdb {
    /// ModifyAccountHost请求参数结构体
    public struct ModifyAccountHostRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 账户的名称
        public let user: String

        /// 账户的旧主机
        public let host: String

        /// 账户的新主机
        public let newHost: String

        public init(instanceId: String, user: String, host: String, newHost: String) {
            self.instanceId = instanceId
            self.user = user
            self.host = host
            self.newHost = newHost
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case user = "User"
            case host = "Host"
            case newHost = "NewHost"
        }
    }

    /// ModifyAccountHost返回参数结构体
    public struct ModifyAccountHostResponse: TCResponseModel {
        /// 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 修改云数据库实例账号的主机
    ///
    /// 本接口(ModifyAccountHost)用于修改云数据库账户的主机。
    @inlinable
    public func modifyAccountHost(_ input: ModifyAccountHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountHostResponse> {
        self.client.execute(action: "ModifyAccountHost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云数据库实例账号的主机
    ///
    /// 本接口(ModifyAccountHost)用于修改云数据库账户的主机。
    @inlinable
    public func modifyAccountHost(_ input: ModifyAccountHostRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountHostResponse {
        try await self.client.execute(action: "ModifyAccountHost", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云数据库实例账号的主机
    ///
    /// 本接口(ModifyAccountHost)用于修改云数据库账户的主机。
    @inlinable
    public func modifyAccountHost(instanceId: String, user: String, host: String, newHost: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountHostResponse> {
        self.modifyAccountHost(.init(instanceId: instanceId, user: user, host: host, newHost: newHost), region: region, logger: logger, on: eventLoop)
    }

    /// 修改云数据库实例账号的主机
    ///
    /// 本接口(ModifyAccountHost)用于修改云数据库账户的主机。
    @inlinable
    public func modifyAccountHost(instanceId: String, user: String, host: String, newHost: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountHostResponse {
        try await self.modifyAccountHost(.init(instanceId: instanceId, user: user, host: host, newHost: newHost), region: region, logger: logger, on: eventLoop)
    }
}
