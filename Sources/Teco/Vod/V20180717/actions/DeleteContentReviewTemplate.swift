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

extension Vod {
    /// DeleteContentReviewTemplate请求参数结构体
    public struct DeleteContentReviewTemplateRequest: TCRequestModel {
        /// 内容审核模板唯一标识。
        public let definition: Int64

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        public init(definition: Int64, subAppId: UInt64? = nil) {
            self.definition = definition
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case subAppId = "SubAppId"
        }
    }

    /// DeleteContentReviewTemplate返回参数结构体
    public struct DeleteContentReviewTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除音视频内容审核模板
    ///
    /// 删除用户自定义音视频内容审核模板。
    @inlinable
    public func deleteContentReviewTemplate(_ input: DeleteContentReviewTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteContentReviewTemplateResponse> {
        self.client.execute(action: "DeleteContentReviewTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除音视频内容审核模板
    ///
    /// 删除用户自定义音视频内容审核模板。
    @inlinable
    public func deleteContentReviewTemplate(_ input: DeleteContentReviewTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteContentReviewTemplateResponse {
        try await self.client.execute(action: "DeleteContentReviewTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除音视频内容审核模板
    ///
    /// 删除用户自定义音视频内容审核模板。
    @inlinable
    public func deleteContentReviewTemplate(definition: Int64, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteContentReviewTemplateResponse> {
        self.deleteContentReviewTemplate(DeleteContentReviewTemplateRequest(definition: definition, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除音视频内容审核模板
    ///
    /// 删除用户自定义音视频内容审核模板。
    @inlinable
    public func deleteContentReviewTemplate(definition: Int64, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteContentReviewTemplateResponse {
        try await self.deleteContentReviewTemplate(DeleteContentReviewTemplateRequest(definition: definition, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
