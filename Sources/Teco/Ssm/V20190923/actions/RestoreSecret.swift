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
    /// RestoreSecret请求参数结构体
    public struct RestoreSecretRequest: TCRequestModel {
        /// 指定需要恢复的凭据名称。
        public let secretName: String

        public init(secretName: String) {
            self.secretName = secretName
        }

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
        }
    }

    /// RestoreSecret返回参数结构体
    public struct RestoreSecretResponse: TCResponseModel {
        /// 凭据名称。
        public let secretName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case requestId = "RequestId"
        }
    }

    /// 恢复计划删除中的凭据
    ///
    /// 该接口用于恢复计划删除（PendingDelete状态）中的凭据，取消计划删除。取消计划删除的凭据将处于Disabled 状态，如需恢复使用，通过EnableSecret 接口开启凭据。
    @inlinable
    public func restoreSecret(_ input: RestoreSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestoreSecretResponse> {
        self.client.execute(action: "RestoreSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 恢复计划删除中的凭据
    ///
    /// 该接口用于恢复计划删除（PendingDelete状态）中的凭据，取消计划删除。取消计划删除的凭据将处于Disabled 状态，如需恢复使用，通过EnableSecret 接口开启凭据。
    @inlinable
    public func restoreSecret(_ input: RestoreSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestoreSecretResponse {
        try await self.client.execute(action: "RestoreSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 恢复计划删除中的凭据
    ///
    /// 该接口用于恢复计划删除（PendingDelete状态）中的凭据，取消计划删除。取消计划删除的凭据将处于Disabled 状态，如需恢复使用，通过EnableSecret 接口开启凭据。
    @inlinable
    public func restoreSecret(secretName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestoreSecretResponse> {
        self.restoreSecret(.init(secretName: secretName), region: region, logger: logger, on: eventLoop)
    }

    /// 恢复计划删除中的凭据
    ///
    /// 该接口用于恢复计划删除（PendingDelete状态）中的凭据，取消计划删除。取消计划删除的凭据将处于Disabled 状态，如需恢复使用，通过EnableSecret 接口开启凭据。
    @inlinable
    public func restoreSecret(secretName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestoreSecretResponse {
        try await self.restoreSecret(.init(secretName: secretName), region: region, logger: logger, on: eventLoop)
    }
}
