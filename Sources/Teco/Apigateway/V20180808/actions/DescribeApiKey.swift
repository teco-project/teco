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
    /// DescribeApiKey请求参数结构体
    public struct DescribeApiKeyRequest: TCRequest {
        /// API 密钥 ID。
        public let accessKeyId: String

        public init(accessKeyId: String) {
            self.accessKeyId = accessKeyId
        }

        enum CodingKeys: String, CodingKey {
            case accessKeyId = "AccessKeyId"
        }
    }

    /// DescribeApiKey返回参数结构体
    public struct DescribeApiKeyResponse: TCResponse {
        /// 密钥详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApiKey?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询密钥详情
    ///
    /// 本接口（DescribeApiKey）用于查询密钥详情。
    /// 用户在创建密钥后，可用此接口查询一个 API 密钥的详情，该接口会显示密钥 Key。
    @inlinable
    public func describeApiKey(_ input: DescribeApiKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiKeyResponse> {
        self.client.execute(action: "DescribeApiKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询密钥详情
    ///
    /// 本接口（DescribeApiKey）用于查询密钥详情。
    /// 用户在创建密钥后，可用此接口查询一个 API 密钥的详情，该接口会显示密钥 Key。
    @inlinable
    public func describeApiKey(_ input: DescribeApiKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiKeyResponse {
        try await self.client.execute(action: "DescribeApiKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询密钥详情
    ///
    /// 本接口（DescribeApiKey）用于查询密钥详情。
    /// 用户在创建密钥后，可用此接口查询一个 API 密钥的详情，该接口会显示密钥 Key。
    @inlinable
    public func describeApiKey(accessKeyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApiKeyResponse> {
        self.describeApiKey(.init(accessKeyId: accessKeyId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询密钥详情
    ///
    /// 本接口（DescribeApiKey）用于查询密钥详情。
    /// 用户在创建密钥后，可用此接口查询一个 API 密钥的详情，该接口会显示密钥 Key。
    @inlinable
    public func describeApiKey(accessKeyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiKeyResponse {
        try await self.describeApiKey(.init(accessKeyId: accessKeyId), region: region, logger: logger, on: eventLoop)
    }
}
