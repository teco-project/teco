//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date

extension Vod {
    /// 修改音视频内容审核模板
    ///
    /// 修改用户自定义音视频内容审核模板。
    @inlinable
    public func modifyContentReviewTemplate(_ input: ModifyContentReviewTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyContentReviewTemplateResponse > {
        self.client.execute(action: "ModifyContentReviewTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改音视频内容审核模板
    ///
    /// 修改用户自定义音视频内容审核模板。
    @inlinable
    public func modifyContentReviewTemplate(_ input: ModifyContentReviewTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyContentReviewTemplateResponse {
        try await self.client.execute(action: "ModifyContentReviewTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyContentReviewTemplate请求参数结构体
    public struct ModifyContentReviewTemplateRequest: TCRequestModel {
        /// 内容审核模板唯一标识。
        public let definition: Int64
        
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?
        
        /// 内容审核模板名称，长度限制：64 个字符。
        public let name: String?
        
        /// 内容审核模板描述信息，长度限制：256 个字符。
        public let comment: String?
        
        /// 令人不安全的信息的控制参数。
        public let terrorismConfigure: TerrorismConfigureInfoForUpdate
        
        /// 令人反感的信息的控制参数。
        public let pornConfigure: PornConfigureInfoForUpdate
        
        /// 令人不适宜的信息控制参数。
        public let politicalConfigure: PoliticalConfigureInfoForUpdate
        
        /// 违禁控制参数。违禁内容包括：
        /// <li>谩骂；</li>
        /// <li>涉毒违法。</li>
        public let prohibitedConfigure: ProhibitedConfigureInfoForUpdate
        
        /// 用户自定义内容审核控制参数。
        public let userDefineConfigure: UserDefineConfigureInfoForUpdate
        
        /// 截帧间隔，单位为秒，最小值为 0.5 秒。
        public let screenshotInterval: Float?
        
        /// 审核结果是否进入审核墙（对审核结果进行人工识别）的开关。
        /// <li>ON：是；</li>
        /// <li>OFF：否。</li>
        public let reviewWallSwitch: String?
        
        public init (definition: Int64, subAppId: UInt64?, name: String?, comment: String?, terrorismConfigure: TerrorismConfigureInfoForUpdate, pornConfigure: PornConfigureInfoForUpdate, politicalConfigure: PoliticalConfigureInfoForUpdate, prohibitedConfigure: ProhibitedConfigureInfoForUpdate, userDefineConfigure: UserDefineConfigureInfoForUpdate, screenshotInterval: Float?, reviewWallSwitch: String?) {
            self.definition = definition
            self.subAppId = subAppId
            self.name = name
            self.comment = comment
            self.terrorismConfigure = terrorismConfigure
            self.pornConfigure = pornConfigure
            self.politicalConfigure = politicalConfigure
            self.prohibitedConfigure = prohibitedConfigure
            self.userDefineConfigure = userDefineConfigure
            self.screenshotInterval = screenshotInterval
            self.reviewWallSwitch = reviewWallSwitch
        }
        
        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case subAppId = "SubAppId"
            case name = "Name"
            case comment = "Comment"
            case terrorismConfigure = "TerrorismConfigure"
            case pornConfigure = "PornConfigure"
            case politicalConfigure = "PoliticalConfigure"
            case prohibitedConfigure = "ProhibitedConfigure"
            case userDefineConfigure = "UserDefineConfigure"
            case screenshotInterval = "ScreenshotInterval"
            case reviewWallSwitch = "ReviewWallSwitch"
        }
    }
    
    /// ModifyContentReviewTemplate返回参数结构体
    public struct ModifyContentReviewTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
