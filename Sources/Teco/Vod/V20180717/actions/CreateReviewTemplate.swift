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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Vod {
    /// CreateReviewTemplate请求参数结构体
    public struct CreateReviewTemplateRequest: TCRequestModel {
        /// 需要返回的违规标签列表，可选值为：
        /// <li>Porn：色情；</li>
        /// <li>Terror：暴力；</li>
        /// <li>Polity：不适宜的信息；</li>
        /// <li>Illegal：违法；</li>
        /// <li>Abuse：谩骂；</li>
        /// <li>Ad：广告；</li>
        /// <li>Moan：娇喘。</li>
        public let labels: [String]

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: String?

        /// 审核模板名称，长度限制：64 个字符。
        public let name: String?

        /// 审核模板描述信息，长度限制：256 个字符。
        public let comment: String?

        public init(labels: [String], subAppId: String? = nil, name: String? = nil, comment: String? = nil) {
            self.labels = labels
            self.subAppId = subAppId
            self.name = name
            self.comment = comment
        }

        enum CodingKeys: String, CodingKey {
            case labels = "Labels"
            case subAppId = "SubAppId"
            case name = "Name"
            case comment = "Comment"
        }
    }

    /// CreateReviewTemplate返回参数结构体
    public struct CreateReviewTemplateResponse: TCResponseModel {
        /// 审核模板唯一标识。
        public let definition: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case requestId = "RequestId"
        }
    }

    /// 创建审核模板
    ///
    /// 创建用户自定义审核模板，数量上限：50。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    @inlinable
    public func createReviewTemplate(_ input: CreateReviewTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReviewTemplateResponse> {
        self.client.execute(action: "CreateReviewTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建审核模板
    ///
    /// 创建用户自定义审核模板，数量上限：50。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    @inlinable
    public func createReviewTemplate(_ input: CreateReviewTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReviewTemplateResponse {
        try await self.client.execute(action: "CreateReviewTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建审核模板
    ///
    /// 创建用户自定义审核模板，数量上限：50。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    @inlinable
    public func createReviewTemplate(labels: [String], subAppId: String? = nil, name: String? = nil, comment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateReviewTemplateResponse> {
        self.createReviewTemplate(.init(labels: labels, subAppId: subAppId, name: name, comment: comment), region: region, logger: logger, on: eventLoop)
    }

    /// 创建审核模板
    ///
    /// 创建用户自定义审核模板，数量上限：50。
    /// >模板仅适用于 [音视频审核(ReviewAudioVideo)](https://cloud.tencent.com/document/api/266/80283) 和 [图片审核(ReviewImage)](https://cloud.tencent.com/document/api/266/73217) 接口。
    @inlinable
    public func createReviewTemplate(labels: [String], subAppId: String? = nil, name: String? = nil, comment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReviewTemplateResponse {
        try await self.createReviewTemplate(.init(labels: labels, subAppId: subAppId, name: name, comment: comment), region: region, logger: logger, on: eventLoop)
    }
}
