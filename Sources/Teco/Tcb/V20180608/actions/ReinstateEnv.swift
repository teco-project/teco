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
    /// ReinstateEnv请求参数结构体
    public struct ReinstateEnvRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        public init(envId: String) {
            self.envId = envId
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
        }
    }

    /// ReinstateEnv返回参数结构体
    public struct ReinstateEnvResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 恢复环境，解除隔离状态
    ///
    /// 针对已隔离的免费环境，可以通过本接口将其恢复访问。
    @inlinable @discardableResult
    public func reinstateEnv(_ input: ReinstateEnvRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReinstateEnvResponse> {
        self.client.execute(action: "ReinstateEnv", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 恢复环境，解除隔离状态
    ///
    /// 针对已隔离的免费环境，可以通过本接口将其恢复访问。
    @inlinable @discardableResult
    public func reinstateEnv(_ input: ReinstateEnvRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReinstateEnvResponse {
        try await self.client.execute(action: "ReinstateEnv", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 恢复环境，解除隔离状态
    ///
    /// 针对已隔离的免费环境，可以通过本接口将其恢复访问。
    @inlinable @discardableResult
    public func reinstateEnv(envId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReinstateEnvResponse> {
        self.reinstateEnv(ReinstateEnvRequest(envId: envId), region: region, logger: logger, on: eventLoop)
    }

    /// 恢复环境，解除隔离状态
    ///
    /// 针对已隔离的免费环境，可以通过本接口将其恢复访问。
    @inlinable @discardableResult
    public func reinstateEnv(envId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReinstateEnvResponse {
        try await self.reinstateEnv(ReinstateEnvRequest(envId: envId), region: region, logger: logger, on: eventLoop)
    }
}
