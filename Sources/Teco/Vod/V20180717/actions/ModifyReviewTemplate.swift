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
    /// ModifyReviewTemplate请求参数结构体
    public struct ModifyReviewTemplateRequest: TCRequestModel {
        /// 审核模板唯一标识。
        public let definition: Int64

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 审核模板名称，长度限制：64 个字符。
        public let name: String?

        /// 审核模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 需要返回的违规标签列表，可选值为：
        /// - Porn：色情；
        /// - Terror：暴力；
        /// - Polity：不适宜的信息；
        /// - Illegal：违法；
        /// - Abuse：谩骂；
        /// - Ad：广告；
        /// - Moan：娇喘。
        ///
        /// 注意：不填表示不更新。
        public let labels: [String]?

        public init(definition: Int64, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, labels: [String]? = nil) {
            self.definition = definition
            self.subAppId = subAppId
            self.name = name
            self.comment = comment
            self.labels = labels
        }

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case subAppId = "SubAppId"
            case name = "Name"
            case comment = "Comment"
            case labels = "Labels"
        }
    }

    /// ModifyReviewTemplate返回参数结构体
    public struct ModifyReviewTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改审核模板
    ///
    /// 修改用户自定义审核模板。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    @inlinable @discardableResult
    public func modifyReviewTemplate(_ input: ModifyReviewTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReviewTemplateResponse> {
        self.client.execute(action: "ModifyReviewTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改审核模板
    ///
    /// 修改用户自定义审核模板。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    @inlinable @discardableResult
    public func modifyReviewTemplate(_ input: ModifyReviewTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyReviewTemplateResponse {
        try await self.client.execute(action: "ModifyReviewTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改审核模板
    ///
    /// 修改用户自定义审核模板。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    @inlinable @discardableResult
    public func modifyReviewTemplate(definition: Int64, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, labels: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReviewTemplateResponse> {
        self.modifyReviewTemplate(.init(definition: definition, subAppId: subAppId, name: name, comment: comment, labels: labels), region: region, logger: logger, on: eventLoop)
    }

    /// 修改审核模板
    ///
    /// 修改用户自定义审核模板。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    @inlinable @discardableResult
    public func modifyReviewTemplate(definition: Int64, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, labels: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyReviewTemplateResponse {
        try await self.modifyReviewTemplate(.init(definition: definition, subAppId: subAppId, name: name, comment: comment, labels: labels), region: region, logger: logger, on: eventLoop)
    }
}
