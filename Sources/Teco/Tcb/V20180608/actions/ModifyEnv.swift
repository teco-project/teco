//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tcb {
    /// ModifyEnv请求参数结构体
    public struct ModifyEnvRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        /// 环境备注名，要以a-z开头，不能包含 a-zA-z0-9- 以外的字符
        public let alias: String?

        public init(envId: String, alias: String? = nil) {
            self.envId = envId
            self.alias = alias
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case alias = "Alias"
        }
    }

    /// ModifyEnv返回参数结构体
    public struct ModifyEnvResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新环境信息
    @inlinable @discardableResult
    public func modifyEnv(_ input: ModifyEnvRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEnvResponse> {
        self.client.execute(action: "ModifyEnv", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新环境信息
    @inlinable @discardableResult
    public func modifyEnv(_ input: ModifyEnvRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEnvResponse {
        try await self.client.execute(action: "ModifyEnv", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新环境信息
    @inlinable @discardableResult
    public func modifyEnv(envId: String, alias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEnvResponse> {
        self.modifyEnv(ModifyEnvRequest(envId: envId, alias: alias), region: region, logger: logger, on: eventLoop)
    }

    /// 更新环境信息
    @inlinable @discardableResult
    public func modifyEnv(envId: String, alias: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEnvResponse {
        try await self.modifyEnv(ModifyEnvRequest(envId: envId, alias: alias), region: region, logger: logger, on: eventLoop)
    }
}
