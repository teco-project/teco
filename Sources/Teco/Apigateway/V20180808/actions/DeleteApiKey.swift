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

extension Apigateway {
    /// DeleteApiKey请求参数结构体
    public struct DeleteApiKeyRequest: TCRequest {
        /// 待删除的密钥 ID。
        public let accessKeyId: String

        public init(accessKeyId: String) {
            self.accessKeyId = accessKeyId
        }

        enum CodingKeys: String, CodingKey {
            case accessKeyId = "AccessKeyId"
        }
    }

    /// DeleteApiKey返回参数结构体
    public struct DeleteApiKeyResponse: TCResponse {
        /// 删除操作是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除密钥
    ///
    /// 本接口（DeleteApiKey）用于删除一对 API 密钥。
    @inlinable
    public func deleteApiKey(_ input: DeleteApiKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApiKeyResponse> {
        self.client.execute(action: "DeleteApiKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除密钥
    ///
    /// 本接口（DeleteApiKey）用于删除一对 API 密钥。
    @inlinable
    public func deleteApiKey(_ input: DeleteApiKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApiKeyResponse {
        try await self.client.execute(action: "DeleteApiKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除密钥
    ///
    /// 本接口（DeleteApiKey）用于删除一对 API 密钥。
    @inlinable
    public func deleteApiKey(accessKeyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApiKeyResponse> {
        self.deleteApiKey(.init(accessKeyId: accessKeyId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除密钥
    ///
    /// 本接口（DeleteApiKey）用于删除一对 API 密钥。
    @inlinable
    public func deleteApiKey(accessKeyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApiKeyResponse {
        try await self.deleteApiKey(.init(accessKeyId: accessKeyId), region: region, logger: logger, on: eventLoop)
    }
}
