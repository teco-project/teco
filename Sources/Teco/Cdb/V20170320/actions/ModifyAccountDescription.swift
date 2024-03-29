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

extension Cdb {
    /// ModifyAccountDescription请求参数结构体
    public struct ModifyAccountDescriptionRequest: TCRequest {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 云数据库账号。
        public let accounts: [Account]

        /// 数据库账号的备注信息。
        public let description: String?

        public init(instanceId: String, accounts: [Account], description: String? = nil) {
            self.instanceId = instanceId
            self.accounts = accounts
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case accounts = "Accounts"
            case description = "Description"
        }
    }

    /// ModifyAccountDescription返回参数结构体
    public struct ModifyAccountDescriptionResponse: TCResponse {
        /// 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 修改云数据库实例账号的备注信息
    ///
    /// 本接口(ModifyAccountDescription)用于修改云数据库账户的备注信息。
    @inlinable
    public func modifyAccountDescription(_ input: ModifyAccountDescriptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountDescriptionResponse> {
        self.client.execute(action: "ModifyAccountDescription", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改云数据库实例账号的备注信息
    ///
    /// 本接口(ModifyAccountDescription)用于修改云数据库账户的备注信息。
    @inlinable
    public func modifyAccountDescription(_ input: ModifyAccountDescriptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountDescriptionResponse {
        try await self.client.execute(action: "ModifyAccountDescription", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改云数据库实例账号的备注信息
    ///
    /// 本接口(ModifyAccountDescription)用于修改云数据库账户的备注信息。
    @inlinable
    public func modifyAccountDescription(instanceId: String, accounts: [Account], description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAccountDescriptionResponse> {
        self.modifyAccountDescription(.init(instanceId: instanceId, accounts: accounts, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 修改云数据库实例账号的备注信息
    ///
    /// 本接口(ModifyAccountDescription)用于修改云数据库账户的备注信息。
    @inlinable
    public func modifyAccountDescription(instanceId: String, accounts: [Account], description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountDescriptionResponse {
        try await self.modifyAccountDescription(.init(instanceId: instanceId, accounts: accounts, description: description), region: region, logger: logger, on: eventLoop)
    }
}
