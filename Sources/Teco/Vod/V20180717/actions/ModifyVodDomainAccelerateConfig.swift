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
    /// ModifyVodDomainAccelerateConfig请求参数结构体
    public struct ModifyVodDomainAccelerateConfigRequest: TCRequestModel {
        /// 需要设置加速配置的域名。
        public let domain: String

        /// 区域，可选值：
        /// - Chinese Mainland：中国境内（不包含港澳台）。
        /// - Outside Chinese Mainland: 中国境外。
        /// - Global: 全球范围。
        public let area: String

        /// 开启或者关闭所选区域的域名加速，可选值：
        /// - Enabled: 开启。
        /// - Disabled：关闭。
        ///
        /// 开启中国境内加速的域名，需要先[备案域名](/document/product/243/18905)。
        public let status: String

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        public init(domain: String, area: String, status: String, subAppId: UInt64? = nil) {
            self.domain = domain
            self.area = area
            self.status = status
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case area = "Area"
            case status = "Status"
            case subAppId = "SubAppId"
        }
    }

    /// ModifyVodDomainAccelerateConfig返回参数结构体
    public struct ModifyVodDomainAccelerateConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开启或者关闭点播域名加速地域
    ///
    /// 该接口用于修改点播域名的加速区域。
    /// 1、域名部署状态为 Online 状态时才允许修改加速区域。
    @inlinable @discardableResult
    public func modifyVodDomainAccelerateConfig(_ input: ModifyVodDomainAccelerateConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVodDomainAccelerateConfigResponse> {
        self.client.execute(action: "ModifyVodDomainAccelerateConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启或者关闭点播域名加速地域
    ///
    /// 该接口用于修改点播域名的加速区域。
    /// 1、域名部署状态为 Online 状态时才允许修改加速区域。
    @inlinable @discardableResult
    public func modifyVodDomainAccelerateConfig(_ input: ModifyVodDomainAccelerateConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVodDomainAccelerateConfigResponse {
        try await self.client.execute(action: "ModifyVodDomainAccelerateConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启或者关闭点播域名加速地域
    ///
    /// 该接口用于修改点播域名的加速区域。
    /// 1、域名部署状态为 Online 状态时才允许修改加速区域。
    @inlinable @discardableResult
    public func modifyVodDomainAccelerateConfig(domain: String, area: String, status: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVodDomainAccelerateConfigResponse> {
        self.modifyVodDomainAccelerateConfig(.init(domain: domain, area: area, status: status, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 开启或者关闭点播域名加速地域
    ///
    /// 该接口用于修改点播域名的加速区域。
    /// 1、域名部署状态为 Online 状态时才允许修改加速区域。
    @inlinable @discardableResult
    public func modifyVodDomainAccelerateConfig(domain: String, area: String, status: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVodDomainAccelerateConfigResponse {
        try await self.modifyVodDomainAccelerateConfig(.init(domain: domain, area: area, status: status, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
