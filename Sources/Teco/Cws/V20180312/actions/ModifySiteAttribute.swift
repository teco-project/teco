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

extension Cws {
    /// ModifySiteAttribute请求参数结构体
    public struct ModifySiteAttributeRequest: TCRequestModel {
        /// 站点ID
        public let siteId: UInt64

        /// 站点名称
        public let name: String?

        /// 网站是否需要登录扫描：0-未知；-1-不需要；1-需要
        public let needLogin: Int64?

        /// 登录后的cookie
        public let loginCookie: String?

        /// 用于测试cookie是否有效的URL
        public let loginCheckUrl: String?

        /// 用于测试cookie是否有效的关键字
        public let loginCheckKw: String?

        /// 禁止扫描器扫描的目录关键字
        public let scanDisallow: String?

        public init(siteId: UInt64, name: String? = nil, needLogin: Int64? = nil, loginCookie: String? = nil, loginCheckUrl: String? = nil, loginCheckKw: String? = nil, scanDisallow: String? = nil) {
            self.siteId = siteId
            self.name = name
            self.needLogin = needLogin
            self.loginCookie = loginCookie
            self.loginCheckUrl = loginCheckUrl
            self.loginCheckKw = loginCheckKw
            self.scanDisallow = scanDisallow
        }

        enum CodingKeys: String, CodingKey {
            case siteId = "SiteId"
            case name = "Name"
            case needLogin = "NeedLogin"
            case loginCookie = "LoginCookie"
            case loginCheckUrl = "LoginCheckUrl"
            case loginCheckKw = "LoginCheckKw"
            case scanDisallow = "ScanDisallow"
        }
    }

    /// ModifySiteAttribute返回参数结构体
    public struct ModifySiteAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改站点的属性
    ///
    /// 本接口 (ModifySiteAttribute) 用于修改站点的属性。
    @inlinable @discardableResult
    public func modifySiteAttribute(_ input: ModifySiteAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySiteAttributeResponse> {
        self.client.execute(action: "ModifySiteAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改站点的属性
    ///
    /// 本接口 (ModifySiteAttribute) 用于修改站点的属性。
    @inlinable @discardableResult
    public func modifySiteAttribute(_ input: ModifySiteAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySiteAttributeResponse {
        try await self.client.execute(action: "ModifySiteAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改站点的属性
    ///
    /// 本接口 (ModifySiteAttribute) 用于修改站点的属性。
    @inlinable @discardableResult
    public func modifySiteAttribute(siteId: UInt64, name: String? = nil, needLogin: Int64? = nil, loginCookie: String? = nil, loginCheckUrl: String? = nil, loginCheckKw: String? = nil, scanDisallow: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySiteAttributeResponse> {
        self.modifySiteAttribute(.init(siteId: siteId, name: name, needLogin: needLogin, loginCookie: loginCookie, loginCheckUrl: loginCheckUrl, loginCheckKw: loginCheckKw, scanDisallow: scanDisallow), region: region, logger: logger, on: eventLoop)
    }

    /// 修改站点的属性
    ///
    /// 本接口 (ModifySiteAttribute) 用于修改站点的属性。
    @inlinable @discardableResult
    public func modifySiteAttribute(siteId: UInt64, name: String? = nil, needLogin: Int64? = nil, loginCookie: String? = nil, loginCheckUrl: String? = nil, loginCheckKw: String? = nil, scanDisallow: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySiteAttributeResponse {
        try await self.modifySiteAttribute(.init(siteId: siteId, name: name, needLogin: needLogin, loginCookie: loginCookie, loginCheckUrl: loginCheckUrl, loginCheckKw: loginCheckKw, scanDisallow: scanDisallow), region: region, logger: logger, on: eventLoop)
    }
}
