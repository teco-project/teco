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
    /// VerifyRootAccount请求参数结构体
    public struct VerifyRootAccountRequest: TCRequest {
        /// 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 实例 ROOT 账号的密码。
        public let password: String

        public init(instanceId: String, password: String) {
            self.instanceId = instanceId
            self.password = password
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case password = "Password"
        }
    }

    /// VerifyRootAccount返回参数结构体
    public struct VerifyRootAccountResponse: TCResponse {
        /// 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 验证root账号权限
    ///
    /// 本接口(VerifyRootAccount)用于校验云数据库实例的 ROOT 账号是否有足够的权限进行授权操作。
    @inlinable
    public func verifyRootAccount(_ input: VerifyRootAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyRootAccountResponse> {
        self.client.execute(action: "VerifyRootAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 验证root账号权限
    ///
    /// 本接口(VerifyRootAccount)用于校验云数据库实例的 ROOT 账号是否有足够的权限进行授权操作。
    @inlinable
    public func verifyRootAccount(_ input: VerifyRootAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyRootAccountResponse {
        try await self.client.execute(action: "VerifyRootAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 验证root账号权限
    ///
    /// 本接口(VerifyRootAccount)用于校验云数据库实例的 ROOT 账号是否有足够的权限进行授权操作。
    @inlinable
    public func verifyRootAccount(instanceId: String, password: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyRootAccountResponse> {
        self.verifyRootAccount(.init(instanceId: instanceId, password: password), region: region, logger: logger, on: eventLoop)
    }

    /// 验证root账号权限
    ///
    /// 本接口(VerifyRootAccount)用于校验云数据库实例的 ROOT 账号是否有足够的权限进行授权操作。
    @inlinable
    public func verifyRootAccount(instanceId: String, password: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyRootAccountResponse {
        try await self.verifyRootAccount(.init(instanceId: instanceId, password: password), region: region, logger: logger, on: eventLoop)
    }
}
