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
    /// ReviewImage请求参数结构体
    public struct ReviewImageRequest: TCRequestModel {
        /// 媒体文件 ID，即该文件在云点播上的全局唯一标识符。本接口要求媒体文件必须是图片格式。
        public let fileId: String

        /// 图片审核模板 ID，当前固定填 10。
        public let definition: UInt64

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        public init(fileId: String, definition: UInt64, subAppId: UInt64? = nil) {
            self.fileId = fileId
            self.definition = definition
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case definition = "Definition"
            case subAppId = "SubAppId"
        }
    }

    /// ReviewImage返回参数结构体
    public struct ReviewImageResponse: TCResponseModel {
        /// 图片审核任务结果。
        public let reviewResultSet: [ContentReviewResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case reviewResultSet = "ReviewResultSet"
            case requestId = "RequestId"
        }
    }

    /// 图片审核
    ///
    /// 对点播中的图片文件发起审核（令人反感的信息、不安全的信息、不适宜的信息）任务。
    /// ><li>图片文件大小支持：文件 < 5M；</li>
    /// ><li>图片文件分辨率支持：建议分辨率大于256x256，否则可能会影响审核效果；</li>
    /// ><li>图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式。</li>
    @inlinable
    public func reviewImage(_ input: ReviewImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReviewImageResponse> {
        self.client.execute(action: "ReviewImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 图片审核
    ///
    /// 对点播中的图片文件发起审核（令人反感的信息、不安全的信息、不适宜的信息）任务。
    /// ><li>图片文件大小支持：文件 < 5M；</li>
    /// ><li>图片文件分辨率支持：建议分辨率大于256x256，否则可能会影响审核效果；</li>
    /// ><li>图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式。</li>
    @inlinable
    public func reviewImage(_ input: ReviewImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReviewImageResponse {
        try await self.client.execute(action: "ReviewImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 图片审核
    ///
    /// 对点播中的图片文件发起审核（令人反感的信息、不安全的信息、不适宜的信息）任务。
    /// ><li>图片文件大小支持：文件 < 5M；</li>
    /// ><li>图片文件分辨率支持：建议分辨率大于256x256，否则可能会影响审核效果；</li>
    /// ><li>图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式。</li>
    @inlinable
    public func reviewImage(fileId: String, definition: UInt64, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReviewImageResponse> {
        self.reviewImage(ReviewImageRequest(fileId: fileId, definition: definition, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 图片审核
    ///
    /// 对点播中的图片文件发起审核（令人反感的信息、不安全的信息、不适宜的信息）任务。
    /// ><li>图片文件大小支持：文件 < 5M；</li>
    /// ><li>图片文件分辨率支持：建议分辨率大于256x256，否则可能会影响审核效果；</li>
    /// ><li>图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式。</li>
    @inlinable
    public func reviewImage(fileId: String, definition: UInt64, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReviewImageResponse {
        try await self.reviewImage(ReviewImageRequest(fileId: fileId, definition: definition, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
