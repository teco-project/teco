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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Ckafka {
    /// CreateToken请求参数结构体
    public struct CreateTokenRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 用户名
        public let user: String

        public init(instanceId: String, user: String) {
            self.instanceId = instanceId
            self.user = user
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case user = "User"
        }
    }

    /// CreateToken返回参数结构体
    public struct CreateTokenResponse: TCResponseModel {
        /// token串
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建token
    ///
    /// 创建最高权限的token
    @inlinable
    public func createToken(_ input: CreateTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTokenResponse> {
        self.client.execute(action: "CreateToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建token
    ///
    /// 创建最高权限的token
    @inlinable
    public func createToken(_ input: CreateTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTokenResponse {
        try await self.client.execute(action: "CreateToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建token
    ///
    /// 创建最高权限的token
    @inlinable
    public func createToken(instanceId: String, user: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTokenResponse> {
        self.createToken(.init(instanceId: instanceId, user: user), region: region, logger: logger, on: eventLoop)
    }

    /// 创建token
    ///
    /// 创建最高权限的token
    @inlinable
    public func createToken(instanceId: String, user: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTokenResponse {
        try await self.createToken(.init(instanceId: instanceId, user: user), region: region, logger: logger, on: eventLoop)
    }
}
