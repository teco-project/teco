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

extension Gse {
    /// GetUploadFederationToken请求参数结构体
    public struct GetUploadFederationTokenRequest: TCRequestModel {
        public init() {
        }
    }

    /// GetUploadFederationToken返回参数结构体
    public struct GetUploadFederationTokenResponse: TCResponseModel {
        /// 临时证书的过期时间，Unix 时间戳，精确到秒
        public let expiredTime: UInt64

        /// 临时证书
        public let assetCredentials: AssetCredentials

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case expiredTime = "ExpiredTime"
            case assetCredentials = "AssetCredentials"
            case requestId = "RequestId"
        }
    }

    /// 获取上传的临时密钥
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（GetUploadFederationToken）用于 获取生成包上传所需要的临时密钥。
    @inlinable
    public func getUploadFederationToken(_ input: GetUploadFederationTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUploadFederationTokenResponse> {
        self.client.execute(action: "GetUploadFederationToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取上传的临时密钥
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（GetUploadFederationToken）用于 获取生成包上传所需要的临时密钥。
    @inlinable
    public func getUploadFederationToken(_ input: GetUploadFederationTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUploadFederationTokenResponse {
        try await self.client.execute(action: "GetUploadFederationToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取上传的临时密钥
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（GetUploadFederationToken）用于 获取生成包上传所需要的临时密钥。
    @inlinable
    public func getUploadFederationToken(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUploadFederationTokenResponse> {
        self.getUploadFederationToken(GetUploadFederationTokenRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取上传的临时密钥
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（GetUploadFederationToken）用于 获取生成包上传所需要的临时密钥。
    @inlinable
    public func getUploadFederationToken(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUploadFederationTokenResponse {
        try await self.getUploadFederationToken(GetUploadFederationTokenRequest(), region: region, logger: logger, on: eventLoop)
    }
}
