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

extension Vod {
    /// ProcessImage请求参数结构体
    public struct ProcessImageRequest: TCRequestModel {
        /// 媒体文件 ID，即该文件在云点播上的全局唯一标识符。本接口要求媒体文件必须是图片格式。
        public let fileId: String

        /// 操作类型。现在仅支持填 ContentReview，表示内容智能识别。
        public let operation: String

        /// 图片内容智能识别参数，当 Operation 为 ContentReview 时该字段有效。
        public let contentReviewInput: ImageContentReviewInput?

        /// 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        public let subAppId: UInt64?

        public init(fileId: String, operation: String, contentReviewInput: ImageContentReviewInput? = nil, subAppId: UInt64? = nil) {
            self.fileId = fileId
            self.operation = operation
            self.contentReviewInput = contentReviewInput
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case operation = "Operation"
            case contentReviewInput = "ContentReviewInput"
            case subAppId = "SubAppId"
        }
    }

    /// ProcessImage返回参数结构体
    public struct ProcessImageResponse: TCResponseModel {
        /// 图片内容智能识别任务结果。
        public let contentReviewResultSet: [ContentReviewResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case contentReviewResultSet = "ContentReviewResultSet"
            case requestId = "RequestId"
        }
    }

    /// 图片处理
    ///
    /// 该 API 已经<font color='red'>不再维护</font>，智能识别任务请使用图片智能识别 [ReviewImage](https://cloud.tencent.com/document/api/266/73217) 接口。
    /// 对点播中的图片文件发起处理任务，功能包括：
    /// 1. 智能识别（令人反感的信息、不安全的信息、不适宜的信息）;
    /// ><li>图片文件大小支持：文件 < 5M；</li>
    /// ><li>图片文件分辨率支持：建议分辨率大于256x256，否则可能会影响识别效果；</li>
    /// ><li>图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式。</li>
    @inlinable
    public func processImage(_ input: ProcessImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProcessImageResponse> {
        self.client.execute(action: "ProcessImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 图片处理
    ///
    /// 该 API 已经<font color='red'>不再维护</font>，智能识别任务请使用图片智能识别 [ReviewImage](https://cloud.tencent.com/document/api/266/73217) 接口。
    /// 对点播中的图片文件发起处理任务，功能包括：
    /// 1. 智能识别（令人反感的信息、不安全的信息、不适宜的信息）;
    /// ><li>图片文件大小支持：文件 < 5M；</li>
    /// ><li>图片文件分辨率支持：建议分辨率大于256x256，否则可能会影响识别效果；</li>
    /// ><li>图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式。</li>
    @inlinable
    public func processImage(_ input: ProcessImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ProcessImageResponse {
        try await self.client.execute(action: "ProcessImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 图片处理
    ///
    /// 该 API 已经<font color='red'>不再维护</font>，智能识别任务请使用图片智能识别 [ReviewImage](https://cloud.tencent.com/document/api/266/73217) 接口。
    /// 对点播中的图片文件发起处理任务，功能包括：
    /// 1. 智能识别（令人反感的信息、不安全的信息、不适宜的信息）;
    /// ><li>图片文件大小支持：文件 < 5M；</li>
    /// ><li>图片文件分辨率支持：建议分辨率大于256x256，否则可能会影响识别效果；</li>
    /// ><li>图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式。</li>
    @inlinable
    public func processImage(fileId: String, operation: String, contentReviewInput: ImageContentReviewInput? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProcessImageResponse> {
        self.processImage(ProcessImageRequest(fileId: fileId, operation: operation, contentReviewInput: contentReviewInput, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 图片处理
    ///
    /// 该 API 已经<font color='red'>不再维护</font>，智能识别任务请使用图片智能识别 [ReviewImage](https://cloud.tencent.com/document/api/266/73217) 接口。
    /// 对点播中的图片文件发起处理任务，功能包括：
    /// 1. 智能识别（令人反感的信息、不安全的信息、不适宜的信息）;
    /// ><li>图片文件大小支持：文件 < 5M；</li>
    /// ><li>图片文件分辨率支持：建议分辨率大于256x256，否则可能会影响识别效果；</li>
    /// ><li>图片文件支持格式：PNG、JPG、JPEG、BMP、GIF、WEBP格式。</li>
    @inlinable
    public func processImage(fileId: String, operation: String, contentReviewInput: ImageContentReviewInput? = nil, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ProcessImageResponse {
        try await self.processImage(ProcessImageRequest(fileId: fileId, operation: operation, contentReviewInput: contentReviewInput, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
