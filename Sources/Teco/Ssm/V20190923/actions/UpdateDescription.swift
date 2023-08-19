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

extension Ssm {
    /// UpdateDescription请求参数结构体
    public struct UpdateDescriptionRequest: TCRequest {
        /// 指定需要更新描述信息的凭据名。
        public let secretName: String

        /// 新的描述信息，最大长度2048个字节。
        public let description: String

        public init(secretName: String, description: String) {
            self.secretName = secretName
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case description = "Description"
        }
    }

    /// UpdateDescription返回参数结构体
    public struct UpdateDescriptionResponse: TCResponse {
        /// 凭据名称。
        public let secretName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case requestId = "RequestId"
        }
    }

    /// 更新凭据描述信息
    ///
    /// 该接口用于修改指定凭据的描述信息，仅能修改Enabled 和 Disabled 状态的凭据。
    @inlinable
    public func updateDescription(_ input: UpdateDescriptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDescriptionResponse> {
        self.client.execute(action: "UpdateDescription", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新凭据描述信息
    ///
    /// 该接口用于修改指定凭据的描述信息，仅能修改Enabled 和 Disabled 状态的凭据。
    @inlinable
    public func updateDescription(_ input: UpdateDescriptionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDescriptionResponse {
        try await self.client.execute(action: "UpdateDescription", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新凭据描述信息
    ///
    /// 该接口用于修改指定凭据的描述信息，仅能修改Enabled 和 Disabled 状态的凭据。
    @inlinable
    public func updateDescription(secretName: String, description: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDescriptionResponse> {
        self.updateDescription(.init(secretName: secretName, description: description), region: region, logger: logger, on: eventLoop)
    }

    /// 更新凭据描述信息
    ///
    /// 该接口用于修改指定凭据的描述信息，仅能修改Enabled 和 Disabled 状态的凭据。
    @inlinable
    public func updateDescription(secretName: String, description: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDescriptionResponse {
        try await self.updateDescription(.init(secretName: secretName, description: description), region: region, logger: logger, on: eventLoop)
    }
}
