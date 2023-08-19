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

extension Ess {
    /// CreateWebThemeConfig请求参数结构体
    public struct CreateWebThemeConfigRequest: TCRequest {
        /// 操作人信息
        public let `operator`: UserInfo

        /// 主题类型
        ///
        /// EMBED_WEB_THEME：嵌入式主题
        ///
        /// 目前只支持EMBED_WEB_THEME，web页面嵌入的主题风格配置
        public let themeType: String

        /// 主题配置
        public let webThemeConfig: WebThemeConfig

        public init(operator: UserInfo, themeType: String, webThemeConfig: WebThemeConfig) {
            self.operator = `operator`
            self.themeType = themeType
            self.webThemeConfig = webThemeConfig
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case themeType = "ThemeType"
            case webThemeConfig = "WebThemeConfig"
        }
    }

    /// CreateWebThemeConfig返回参数结构体
    public struct CreateWebThemeConfigResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建页面主题配置
    ///
    /// 用来创建页面主题配置
    @inlinable @discardableResult
    public func createWebThemeConfig(_ input: CreateWebThemeConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWebThemeConfigResponse> {
        self.client.execute(action: "CreateWebThemeConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建页面主题配置
    ///
    /// 用来创建页面主题配置
    @inlinable @discardableResult
    public func createWebThemeConfig(_ input: CreateWebThemeConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWebThemeConfigResponse {
        try await self.client.execute(action: "CreateWebThemeConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建页面主题配置
    ///
    /// 用来创建页面主题配置
    @inlinable @discardableResult
    public func createWebThemeConfig(operator: UserInfo, themeType: String, webThemeConfig: WebThemeConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWebThemeConfigResponse> {
        self.createWebThemeConfig(.init(operator: `operator`, themeType: themeType, webThemeConfig: webThemeConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 创建页面主题配置
    ///
    /// 用来创建页面主题配置
    @inlinable @discardableResult
    public func createWebThemeConfig(operator: UserInfo, themeType: String, webThemeConfig: WebThemeConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWebThemeConfigResponse {
        try await self.createWebThemeConfig(.init(operator: `operator`, themeType: themeType, webThemeConfig: webThemeConfig), region: region, logger: logger, on: eventLoop)
    }
}
