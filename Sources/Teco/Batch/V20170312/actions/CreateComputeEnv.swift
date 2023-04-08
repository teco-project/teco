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

extension Batch {
    /// CreateComputeEnv请求参数结构体
    public struct CreateComputeEnvRequest: TCRequestModel {
        /// 计算环境信息
        public let computeEnv: NamedComputeEnv

        /// 位置信息
        public let placement: Placement

        /// 用于保证请求幂等性的字符串。该字符串由用户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        public let clientToken: String?

        public init(computeEnv: NamedComputeEnv, placement: Placement, clientToken: String? = nil) {
            self.computeEnv = computeEnv
            self.placement = placement
            self.clientToken = clientToken
        }

        enum CodingKeys: String, CodingKey {
            case computeEnv = "ComputeEnv"
            case placement = "Placement"
            case clientToken = "ClientToken"
        }
    }

    /// CreateComputeEnv返回参数结构体
    public struct CreateComputeEnvResponse: TCResponseModel {
        /// 计算环境ID
        public let envId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case requestId = "RequestId"
        }
    }

    /// 创建计算环境
    ///
    /// 用于创建计算环境
    @inlinable
    public func createComputeEnv(_ input: CreateComputeEnvRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateComputeEnvResponse> {
        self.client.execute(action: "CreateComputeEnv", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建计算环境
    ///
    /// 用于创建计算环境
    @inlinable
    public func createComputeEnv(_ input: CreateComputeEnvRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateComputeEnvResponse {
        try await self.client.execute(action: "CreateComputeEnv", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建计算环境
    ///
    /// 用于创建计算环境
    @inlinable
    public func createComputeEnv(computeEnv: NamedComputeEnv, placement: Placement, clientToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateComputeEnvResponse> {
        self.createComputeEnv(.init(computeEnv: computeEnv, placement: placement, clientToken: clientToken), region: region, logger: logger, on: eventLoop)
    }

    /// 创建计算环境
    ///
    /// 用于创建计算环境
    @inlinable
    public func createComputeEnv(computeEnv: NamedComputeEnv, placement: Placement, clientToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateComputeEnvResponse {
        try await self.createComputeEnv(.init(computeEnv: computeEnv, placement: placement, clientToken: clientToken), region: region, logger: logger, on: eventLoop)
    }
}
