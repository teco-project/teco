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
    /// ModifyHeadTailTemplate请求参数结构体
    public struct ModifyHeadTailTemplateRequest: TCRequest {
        /// 片头片尾模板号。
        public let definition: Int64

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 模板名，长度限制 64 个字符。不传代表不修改。
        public let name: String?

        /// 模板描述，长度限制 256 个字符。不传代表不修改，传空代表清空。
        public let comment: String?

        /// 片头候选列表，填写视频的 FileId。转码时将自动选择与正片宽高比最接近的一个片头（相同宽高比时，靠前的候选项优先）。最多支持 5 个候选片头。不传代表不修改，传空数组代表清空。
        public let headCandidateSet: [String]?

        /// 片尾候选列表，填写视频的 FileId。转码时将自动选择与正片宽高比最接近的一个片尾（相同宽高比时，靠前的候选项优先）。最多支持 5 个候选片头。不传代表不修改，传空数组代表清空。
        public let tailCandidateSet: [String]?

        /// 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        /// - stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；
        /// - gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊；
        /// - white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充；
        /// - black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。
        ///
        /// 默认值为不修改。
        public let fillType: String?

        public init(definition: Int64, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, headCandidateSet: [String]? = nil, tailCandidateSet: [String]? = nil, fillType: String? = nil) {
            self.definition = definition
            self.subAppId = subAppId
            self.name = name
            self.comment = comment
            self.headCandidateSet = headCandidateSet
            self.tailCandidateSet = tailCandidateSet
            self.fillType = fillType
        }

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case subAppId = "SubAppId"
            case name = "Name"
            case comment = "Comment"
            case headCandidateSet = "HeadCandidateSet"
            case tailCandidateSet = "TailCandidateSet"
            case fillType = "FillType"
        }
    }

    /// ModifyHeadTailTemplate返回参数结构体
    public struct ModifyHeadTailTemplateResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改片头片尾模板
    ///
    /// 修改片头片尾模板。
    @inlinable @discardableResult
    public func modifyHeadTailTemplate(_ input: ModifyHeadTailTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyHeadTailTemplateResponse> {
        self.client.execute(action: "ModifyHeadTailTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改片头片尾模板
    ///
    /// 修改片头片尾模板。
    @inlinable @discardableResult
    public func modifyHeadTailTemplate(_ input: ModifyHeadTailTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHeadTailTemplateResponse {
        try await self.client.execute(action: "ModifyHeadTailTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改片头片尾模板
    ///
    /// 修改片头片尾模板。
    @inlinable @discardableResult
    public func modifyHeadTailTemplate(definition: Int64, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, headCandidateSet: [String]? = nil, tailCandidateSet: [String]? = nil, fillType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyHeadTailTemplateResponse> {
        self.modifyHeadTailTemplate(.init(definition: definition, subAppId: subAppId, name: name, comment: comment, headCandidateSet: headCandidateSet, tailCandidateSet: tailCandidateSet, fillType: fillType), region: region, logger: logger, on: eventLoop)
    }

    /// 修改片头片尾模板
    ///
    /// 修改片头片尾模板。
    @inlinable @discardableResult
    public func modifyHeadTailTemplate(definition: Int64, subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, headCandidateSet: [String]? = nil, tailCandidateSet: [String]? = nil, fillType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyHeadTailTemplateResponse {
        try await self.modifyHeadTailTemplate(.init(definition: definition, subAppId: subAppId, name: name, comment: comment, headCandidateSet: headCandidateSet, tailCandidateSet: tailCandidateSet, fillType: fillType), region: region, logger: logger, on: eventLoop)
    }
}
