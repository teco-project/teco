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

extension Apigateway {
    /// DisableApiKey请求参数结构体
    public struct DisableApiKeyRequest: TCRequestModel {
        /// 待禁用的密钥 ID。
        public let accessKeyId: String

        public init(accessKeyId: String) {
            self.accessKeyId = accessKeyId
        }

        enum CodingKeys: String, CodingKey {
            case accessKeyId = "AccessKeyId"
        }
    }

    /// DisableApiKey返回参数结构体
    public struct DisableApiKeyResponse: TCResponseModel {
        /// 禁用密钥操作是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 禁用密钥
    ///
    /// 本接口（DisableApiKey）用于禁用一对 API 密钥。
    @inlinable
    public func disableApiKey(_ input: DisableApiKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableApiKeyResponse> {
        self.client.execute(action: "DisableApiKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用密钥
    ///
    /// 本接口（DisableApiKey）用于禁用一对 API 密钥。
    @inlinable
    public func disableApiKey(_ input: DisableApiKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableApiKeyResponse {
        try await self.client.execute(action: "DisableApiKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁用密钥
    ///
    /// 本接口（DisableApiKey）用于禁用一对 API 密钥。
    @inlinable
    public func disableApiKey(accessKeyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableApiKeyResponse> {
        self.disableApiKey(DisableApiKeyRequest(accessKeyId: accessKeyId), region: region, logger: logger, on: eventLoop)
    }

    /// 禁用密钥
    ///
    /// 本接口（DisableApiKey）用于禁用一对 API 密钥。
    @inlinable
    public func disableApiKey(accessKeyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableApiKeyResponse {
        try await self.disableApiKey(DisableApiKeyRequest(accessKeyId: accessKeyId), region: region, logger: logger, on: eventLoop)
    }
}
