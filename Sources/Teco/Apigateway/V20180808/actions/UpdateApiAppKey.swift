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
    /// UpdateApiAppKey请求参数结构体
    public struct UpdateApiAppKeyRequest: TCRequestModel {
        /// 应用唯一 ID。
        public let apiAppId: String

        /// 应用的Key。
        public let apiAppKey: String

        /// 应用的Secret。
        public let apiAppSecret: String?

        public init(apiAppId: String, apiAppKey: String, apiAppSecret: String? = nil) {
            self.apiAppId = apiAppId
            self.apiAppKey = apiAppKey
            self.apiAppSecret = apiAppSecret
        }

        enum CodingKeys: String, CodingKey {
            case apiAppId = "ApiAppId"
            case apiAppKey = "ApiAppKey"
            case apiAppSecret = "ApiAppSecret"
        }
    }

    /// UpdateApiAppKey返回参数结构体
    public struct UpdateApiAppKeyResponse: TCResponseModel {
        /// 更新操作是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 更新应用密钥
    ///
    /// 本接口（UpdateApiAppKey）用于更新应用密钥。
    @inlinable
    public func updateApiAppKey(_ input: UpdateApiAppKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApiAppKeyResponse> {
        self.client.execute(action: "UpdateApiAppKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新应用密钥
    ///
    /// 本接口（UpdateApiAppKey）用于更新应用密钥。
    @inlinable
    public func updateApiAppKey(_ input: UpdateApiAppKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApiAppKeyResponse {
        try await self.client.execute(action: "UpdateApiAppKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新应用密钥
    ///
    /// 本接口（UpdateApiAppKey）用于更新应用密钥。
    @inlinable
    public func updateApiAppKey(apiAppId: String, apiAppKey: String, apiAppSecret: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApiAppKeyResponse> {
        self.updateApiAppKey(.init(apiAppId: apiAppId, apiAppKey: apiAppKey, apiAppSecret: apiAppSecret), region: region, logger: logger, on: eventLoop)
    }

    /// 更新应用密钥
    ///
    /// 本接口（UpdateApiAppKey）用于更新应用密钥。
    @inlinable
    public func updateApiAppKey(apiAppId: String, apiAppKey: String, apiAppSecret: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApiAppKeyResponse {
        try await self.updateApiAppKey(.init(apiAppId: apiAppId, apiAppKey: apiAppKey, apiAppSecret: apiAppSecret), region: region, logger: logger, on: eventLoop)
    }
}
