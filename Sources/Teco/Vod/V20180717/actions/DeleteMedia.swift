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
    /// DeleteMedia请求参数结构体
    public struct DeleteMediaRequest: TCRequestModel {
        /// 媒体文件的唯一标识。
        public let fileId: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 指定本次需要删除的部分。默认值为 "[]", 表示删除媒体及其对应的全部视频处理文件。
        public let deleteParts: [MediaDeleteItem]?

        public init(fileId: String, subAppId: UInt64? = nil, deleteParts: [MediaDeleteItem]? = nil) {
            self.fileId = fileId
            self.subAppId = subAppId
            self.deleteParts = deleteParts
        }

        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case subAppId = "SubAppId"
            case deleteParts = "DeleteParts"
        }
    }

    /// DeleteMedia返回参数结构体
    public struct DeleteMediaResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除媒体
    ///
    /// * 删除媒体及其对应的视频处理文件（原始文件、如转码视频、雪碧图、截图、微信发布视频等）；
    /// * 可单独删除指定 ID 的视频文件下的原文件、转码视频、微信发布视频等；
    /// * 注意：原文件删除后，无法发起转码、微信发布等任何视频处理操作。
    @inlinable @discardableResult
    public func deleteMedia(_ input: DeleteMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMediaResponse> {
        self.client.execute(action: "DeleteMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除媒体
    ///
    /// * 删除媒体及其对应的视频处理文件（原始文件、如转码视频、雪碧图、截图、微信发布视频等）；
    /// * 可单独删除指定 ID 的视频文件下的原文件、转码视频、微信发布视频等；
    /// * 注意：原文件删除后，无法发起转码、微信发布等任何视频处理操作。
    @inlinable @discardableResult
    public func deleteMedia(_ input: DeleteMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMediaResponse {
        try await self.client.execute(action: "DeleteMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除媒体
    ///
    /// * 删除媒体及其对应的视频处理文件（原始文件、如转码视频、雪碧图、截图、微信发布视频等）；
    /// * 可单独删除指定 ID 的视频文件下的原文件、转码视频、微信发布视频等；
    /// * 注意：原文件删除后，无法发起转码、微信发布等任何视频处理操作。
    @inlinable @discardableResult
    public func deleteMedia(fileId: String, subAppId: UInt64? = nil, deleteParts: [MediaDeleteItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMediaResponse> {
        self.deleteMedia(DeleteMediaRequest(fileId: fileId, subAppId: subAppId, deleteParts: deleteParts), region: region, logger: logger, on: eventLoop)
    }

    /// 删除媒体
    ///
    /// * 删除媒体及其对应的视频处理文件（原始文件、如转码视频、雪碧图、截图、微信发布视频等）；
    /// * 可单独删除指定 ID 的视频文件下的原文件、转码视频、微信发布视频等；
    /// * 注意：原文件删除后，无法发起转码、微信发布等任何视频处理操作。
    @inlinable @discardableResult
    public func deleteMedia(fileId: String, subAppId: UInt64? = nil, deleteParts: [MediaDeleteItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMediaResponse {
        try await self.deleteMedia(DeleteMediaRequest(fileId: fileId, subAppId: subAppId, deleteParts: deleteParts), region: region, logger: logger, on: eventLoop)
    }
}
