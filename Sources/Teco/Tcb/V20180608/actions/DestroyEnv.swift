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

import TecoCore

extension Tcb {
    /// DestroyEnv请求参数结构体
    public struct DestroyEnvRequest: TCRequestModel {
        /// 环境Id
        public let envId: String

        /// 针对预付费 删除隔离中的环境时要传true 正常环境直接跳过隔离期删除
        public let isForce: Bool?

        /// 是否绕过资源检查，资源包等额外资源，默认为false，如果为true，则不检查资源是否有数据，直接删除。
        public let bypassCheck: Bool?

        public init(envId: String, isForce: Bool? = nil, bypassCheck: Bool? = nil) {
            self.envId = envId
            self.isForce = isForce
            self.bypassCheck = bypassCheck
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case isForce = "IsForce"
            case bypassCheck = "BypassCheck"
        }
    }

    /// DestroyEnv返回参数结构体
    public struct DestroyEnvResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 销毁环境
    @inlinable @discardableResult
    public func destroyEnv(_ input: DestroyEnvRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyEnvResponse> {
        self.client.execute(action: "DestroyEnv", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁环境
    @inlinable @discardableResult
    public func destroyEnv(_ input: DestroyEnvRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyEnvResponse {
        try await self.client.execute(action: "DestroyEnv", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁环境
    @inlinable @discardableResult
    public func destroyEnv(envId: String, isForce: Bool? = nil, bypassCheck: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyEnvResponse> {
        self.destroyEnv(.init(envId: envId, isForce: isForce, bypassCheck: bypassCheck), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁环境
    @inlinable @discardableResult
    public func destroyEnv(envId: String, isForce: Bool? = nil, bypassCheck: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyEnvResponse {
        try await self.destroyEnv(.init(envId: envId, isForce: isForce, bypassCheck: bypassCheck), region: region, logger: logger, on: eventLoop)
    }
}
