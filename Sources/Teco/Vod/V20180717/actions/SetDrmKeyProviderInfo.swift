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
    /// SetDrmKeyProviderInfo请求参数结构体
    public struct SetDrmKeyProviderInfoRequest: TCRequestModel {
        /// 华曦达（SDMC）相关的 DRM 密钥提供商信息。
        public let sdmcInfo: SDMCDrmKeyProviderInfo?

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        public init(sdmcInfo: SDMCDrmKeyProviderInfo? = nil, subAppId: UInt64? = nil) {
            self.sdmcInfo = sdmcInfo
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case sdmcInfo = "SDMCInfo"
            case subAppId = "SubAppId"
        }
    }

    /// SetDrmKeyProviderInfo返回参数结构体
    public struct SetDrmKeyProviderInfoResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置 DRM 密钥提供商信息
    ///
    /// 设置 DRM 密钥提供商信息。
    @inlinable @discardableResult
    public func setDrmKeyProviderInfo(_ input: SetDrmKeyProviderInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetDrmKeyProviderInfoResponse> {
        self.client.execute(action: "SetDrmKeyProviderInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置 DRM 密钥提供商信息
    ///
    /// 设置 DRM 密钥提供商信息。
    @inlinable @discardableResult
    public func setDrmKeyProviderInfo(_ input: SetDrmKeyProviderInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetDrmKeyProviderInfoResponse {
        try await self.client.execute(action: "SetDrmKeyProviderInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置 DRM 密钥提供商信息
    ///
    /// 设置 DRM 密钥提供商信息。
    @inlinable @discardableResult
    public func setDrmKeyProviderInfo(sdmcInfo: SDMCDrmKeyProviderInfo? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetDrmKeyProviderInfoResponse> {
        self.setDrmKeyProviderInfo(.init(sdmcInfo: sdmcInfo, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 设置 DRM 密钥提供商信息
    ///
    /// 设置 DRM 密钥提供商信息。
    @inlinable @discardableResult
    public func setDrmKeyProviderInfo(sdmcInfo: SDMCDrmKeyProviderInfo? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetDrmKeyProviderInfoResponse {
        try await self.setDrmKeyProviderInfo(.init(sdmcInfo: sdmcInfo, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
