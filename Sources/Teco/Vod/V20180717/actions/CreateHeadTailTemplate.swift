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
    /// CreateHeadTailTemplate请求参数结构体
    public struct CreateHeadTailTemplateRequest: TCRequestModel {
        /// 模板名，长度限制 64 个字符。
        public let name: String

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 模板描述信息，长度限制 256 个字符。
        public let comment: String?

        /// 片头候选列表，填写视频的 FileId。转码时将自动选择与正片宽高比最接近的一个片头（相同宽高比时，靠前的候选项优先）。最多支持 5 个候选片头。
        public let headCandidateSet: [String]?

        /// 片尾候选列表，填写视频的 FileId。转码时将自动选择与正片宽高比最接近的一个片尾（相同宽高比时，靠前的候选项优先）。最多支持 5 个候选片尾。
        public let tailCandidateSet: [String]?

        /// 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        /// - stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；
        /// - gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊；
        /// - white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充；
        /// - black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。
        ///
        /// 默认值：stretch 。
        public let fillType: String?

        public init(name: String, subAppId: UInt64? = nil, comment: String? = nil, headCandidateSet: [String]? = nil, tailCandidateSet: [String]? = nil, fillType: String? = nil) {
            self.name = name
            self.subAppId = subAppId
            self.comment = comment
            self.headCandidateSet = headCandidateSet
            self.tailCandidateSet = tailCandidateSet
            self.fillType = fillType
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case subAppId = "SubAppId"
            case comment = "Comment"
            case headCandidateSet = "HeadCandidateSet"
            case tailCandidateSet = "TailCandidateSet"
            case fillType = "FillType"
        }
    }

    /// CreateHeadTailTemplate返回参数结构体
    public struct CreateHeadTailTemplateResponse: TCResponseModel {
        /// 片头片尾模板号。
        public let definition: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case requestId = "RequestId"
        }
    }

    /// 创建片头片尾模板
    ///
    /// 创建片头片尾模板。
    @inlinable
    public func createHeadTailTemplate(_ input: CreateHeadTailTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHeadTailTemplateResponse> {
        self.client.execute(action: "CreateHeadTailTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建片头片尾模板
    ///
    /// 创建片头片尾模板。
    @inlinable
    public func createHeadTailTemplate(_ input: CreateHeadTailTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHeadTailTemplateResponse {
        try await self.client.execute(action: "CreateHeadTailTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建片头片尾模板
    ///
    /// 创建片头片尾模板。
    @inlinable
    public func createHeadTailTemplate(name: String, subAppId: UInt64? = nil, comment: String? = nil, headCandidateSet: [String]? = nil, tailCandidateSet: [String]? = nil, fillType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHeadTailTemplateResponse> {
        self.createHeadTailTemplate(.init(name: name, subAppId: subAppId, comment: comment, headCandidateSet: headCandidateSet, tailCandidateSet: tailCandidateSet, fillType: fillType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建片头片尾模板
    ///
    /// 创建片头片尾模板。
    @inlinable
    public func createHeadTailTemplate(name: String, subAppId: UInt64? = nil, comment: String? = nil, headCandidateSet: [String]? = nil, tailCandidateSet: [String]? = nil, fillType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHeadTailTemplateResponse {
        try await self.createHeadTailTemplate(.init(name: name, subAppId: subAppId, comment: comment, headCandidateSet: headCandidateSet, tailCandidateSet: tailCandidateSet, fillType: fillType), region: region, logger: logger, on: eventLoop)
    }
}
