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

extension Ivld {
    /// DeleteMedia请求参数结构体
    public struct DeleteMediaRequest: TCRequestModel {
        /// 媒资文件在系统中的ID
        public let mediaId: String

        public init(mediaId: String) {
            self.mediaId = mediaId
        }

        enum CodingKeys: String, CodingKey {
            case mediaId = "MediaId"
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

    /// 删除媒资文件
    ///
    /// 将MediaId对应的媒资文件从系统中删除。
    /// **请注意，本接口仅删除媒资文件，媒资文件对应的视频分析结果不会被删除**。如您需要删除结构化分析结果，请调用DeleteTask接口。
    @inlinable
    public func deleteMedia(_ input: DeleteMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMediaResponse> {
        self.client.execute(action: "DeleteMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除媒资文件
    ///
    /// 将MediaId对应的媒资文件从系统中删除。
    /// **请注意，本接口仅删除媒资文件，媒资文件对应的视频分析结果不会被删除**。如您需要删除结构化分析结果，请调用DeleteTask接口。
    @inlinable
    public func deleteMedia(_ input: DeleteMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMediaResponse {
        try await self.client.execute(action: "DeleteMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除媒资文件
    ///
    /// 将MediaId对应的媒资文件从系统中删除。
    /// **请注意，本接口仅删除媒资文件，媒资文件对应的视频分析结果不会被删除**。如您需要删除结构化分析结果，请调用DeleteTask接口。
    @inlinable
    public func deleteMedia(mediaId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMediaResponse> {
        self.deleteMedia(DeleteMediaRequest(mediaId: mediaId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除媒资文件
    ///
    /// 将MediaId对应的媒资文件从系统中删除。
    /// **请注意，本接口仅删除媒资文件，媒资文件对应的视频分析结果不会被删除**。如您需要删除结构化分析结果，请调用DeleteTask接口。
    @inlinable
    public func deleteMedia(mediaId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMediaResponse {
        try await self.deleteMedia(DeleteMediaRequest(mediaId: mediaId), region: region, logger: logger, on: eventLoop)
    }
}
