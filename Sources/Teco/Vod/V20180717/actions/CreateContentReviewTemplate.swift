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
    /// CreateContentReviewTemplate请求参数结构体
    public struct CreateContentReviewTemplateRequest: TCRequest {
        /// 音视频审核结果是否进入音视频审核墙（对识别结果进行人工复核）的开关。
        /// - ON：是；
        /// - OFF：否。
        public let reviewWallSwitch: String

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 内容审核模板名称，长度限制：64 个字符。
        public let name: String?

        /// 内容审核模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 令人反感的信息的控制参数。
        public let pornConfigure: PornConfigureInfo?

        /// 令人不安全的信息的控制参数。
        public let terrorismConfigure: TerrorismConfigureInfo?

        /// 令人不适宜的控制参数。
        public let politicalConfigure: PoliticalConfigureInfo?

        /// 违禁控制参数。违禁内容包括：
        /// - 谩骂；
        /// - 涉毒违法。
        public let prohibitedConfigure: ProhibitedConfigureInfo?

        /// 用户自定义内容审核控制参数。
        public let userDefineConfigure: UserDefineConfigureInfo?

        /// 截帧间隔，单位为秒。当不填时，默认截帧间隔为 1 秒，最小值为 0.5 秒。
        public let screenshotInterval: Float?

        public init(reviewWallSwitch: String, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, pornConfigure: PornConfigureInfo? = nil, terrorismConfigure: TerrorismConfigureInfo? = nil, politicalConfigure: PoliticalConfigureInfo? = nil, prohibitedConfigure: ProhibitedConfigureInfo? = nil, userDefineConfigure: UserDefineConfigureInfo? = nil, screenshotInterval: Float? = nil) {
            self.reviewWallSwitch = reviewWallSwitch
            self.subAppId = subAppId
            self.name = name
            self.comment = comment
            self.pornConfigure = pornConfigure
            self.terrorismConfigure = terrorismConfigure
            self.politicalConfigure = politicalConfigure
            self.prohibitedConfigure = prohibitedConfigure
            self.userDefineConfigure = userDefineConfigure
            self.screenshotInterval = screenshotInterval
        }

        enum CodingKeys: String, CodingKey {
            case reviewWallSwitch = "ReviewWallSwitch"
            case subAppId = "SubAppId"
            case name = "Name"
            case comment = "Comment"
            case pornConfigure = "PornConfigure"
            case terrorismConfigure = "TerrorismConfigure"
            case politicalConfigure = "PoliticalConfigure"
            case prohibitedConfigure = "ProhibitedConfigure"
            case userDefineConfigure = "UserDefineConfigure"
            case screenshotInterval = "ScreenshotInterval"
        }
    }

    /// CreateContentReviewTemplate返回参数结构体
    public struct CreateContentReviewTemplateResponse: TCResponse {
        /// 音视频内容审核模板唯一标识。
        public let definition: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case requestId = "RequestId"
        }
    }

    /// 创建音视频内容审核模板
    ///
    /// 该 API 已经_不再维护_，新版审核模板支持音视频审核和图片审核，详细请参考 [创建审核模板](https://cloud.tencent.com/document/api/266/84391)。
    /// 创建用户自定义音视频内容审核模板，数量上限：50。
    @inlinable
    public func createContentReviewTemplate(_ input: CreateContentReviewTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateContentReviewTemplateResponse> {
        self.client.execute(action: "CreateContentReviewTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建音视频内容审核模板
    ///
    /// 该 API 已经_不再维护_，新版审核模板支持音视频审核和图片审核，详细请参考 [创建审核模板](https://cloud.tencent.com/document/api/266/84391)。
    /// 创建用户自定义音视频内容审核模板，数量上限：50。
    @inlinable
    public func createContentReviewTemplate(_ input: CreateContentReviewTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateContentReviewTemplateResponse {
        try await self.client.execute(action: "CreateContentReviewTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建音视频内容审核模板
    ///
    /// 该 API 已经_不再维护_，新版审核模板支持音视频审核和图片审核，详细请参考 [创建审核模板](https://cloud.tencent.com/document/api/266/84391)。
    /// 创建用户自定义音视频内容审核模板，数量上限：50。
    @inlinable
    public func createContentReviewTemplate(reviewWallSwitch: String, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, pornConfigure: PornConfigureInfo? = nil, terrorismConfigure: TerrorismConfigureInfo? = nil, politicalConfigure: PoliticalConfigureInfo? = nil, prohibitedConfigure: ProhibitedConfigureInfo? = nil, userDefineConfigure: UserDefineConfigureInfo? = nil, screenshotInterval: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateContentReviewTemplateResponse> {
        self.createContentReviewTemplate(.init(reviewWallSwitch: reviewWallSwitch, subAppId: subAppId, name: name, comment: comment, pornConfigure: pornConfigure, terrorismConfigure: terrorismConfigure, politicalConfigure: politicalConfigure, prohibitedConfigure: prohibitedConfigure, userDefineConfigure: userDefineConfigure, screenshotInterval: screenshotInterval), region: region, logger: logger, on: eventLoop)
    }

    /// 创建音视频内容审核模板
    ///
    /// 该 API 已经_不再维护_，新版审核模板支持音视频审核和图片审核，详细请参考 [创建审核模板](https://cloud.tencent.com/document/api/266/84391)。
    /// 创建用户自定义音视频内容审核模板，数量上限：50。
    @inlinable
    public func createContentReviewTemplate(reviewWallSwitch: String, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, pornConfigure: PornConfigureInfo? = nil, terrorismConfigure: TerrorismConfigureInfo? = nil, politicalConfigure: PoliticalConfigureInfo? = nil, prohibitedConfigure: ProhibitedConfigureInfo? = nil, userDefineConfigure: UserDefineConfigureInfo? = nil, screenshotInterval: Float? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateContentReviewTemplateResponse {
        try await self.createContentReviewTemplate(.init(reviewWallSwitch: reviewWallSwitch, subAppId: subAppId, name: name, comment: comment, pornConfigure: pornConfigure, terrorismConfigure: terrorismConfigure, politicalConfigure: politicalConfigure, prohibitedConfigure: prohibitedConfigure, userDefineConfigure: userDefineConfigure, screenshotInterval: screenshotInterval), region: region, logger: logger, on: eventLoop)
    }
}
