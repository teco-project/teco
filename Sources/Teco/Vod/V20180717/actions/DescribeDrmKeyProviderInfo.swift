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

extension Vod {
    /// DescribeDrmKeyProviderInfo请求参数结构体
    public struct DescribeDrmKeyProviderInfoRequest: TCRequestModel {
        /// 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        public let subAppId: UInt64?

        public init(subAppId: UInt64? = nil) {
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
        }
    }

    /// DescribeDrmKeyProviderInfo返回参数结构体
    public struct DescribeDrmKeyProviderInfoResponse: TCResponseModel {
        /// 华曦达（SDMC）相关的 DRM 密钥提供商信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sdmcInfo: SDMCDrmKeyProviderInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sdmcInfo = "SDMCInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询 DRM 密钥提供商信息
    ///
    /// 查询 DRM 密钥提供商信息。
    @inlinable
    public func describeDrmKeyProviderInfo(_ input: DescribeDrmKeyProviderInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDrmKeyProviderInfoResponse> {
        self.client.execute(action: "DescribeDrmKeyProviderInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询 DRM 密钥提供商信息
    ///
    /// 查询 DRM 密钥提供商信息。
    @inlinable
    public func describeDrmKeyProviderInfo(_ input: DescribeDrmKeyProviderInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDrmKeyProviderInfoResponse {
        try await self.client.execute(action: "DescribeDrmKeyProviderInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询 DRM 密钥提供商信息
    ///
    /// 查询 DRM 密钥提供商信息。
    @inlinable
    public func describeDrmKeyProviderInfo(subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDrmKeyProviderInfoResponse> {
        self.describeDrmKeyProviderInfo(.init(subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询 DRM 密钥提供商信息
    ///
    /// 查询 DRM 密钥提供商信息。
    @inlinable
    public func describeDrmKeyProviderInfo(subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDrmKeyProviderInfoResponse {
        try await self.describeDrmKeyProviderInfo(.init(subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
