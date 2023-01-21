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

extension Tsf {
    /// DeleteImageTags请求参数结构体
    public struct DeleteImageTagsRequest: TCRequestModel {
        /// 镜像版本数组
        public let imageTags: [DeleteImageTag]

        /// 企业: tcr ；个人: personal或者不填
        public let repoType: String?

        public init(imageTags: [DeleteImageTag], repoType: String? = nil) {
            self.imageTags = imageTags
            self.repoType = repoType
        }

        enum CodingKeys: String, CodingKey {
            case imageTags = "ImageTags"
            case repoType = "RepoType"
        }
    }

    /// DeleteImageTags返回参数结构体
    public struct DeleteImageTagsResponse: TCResponseModel {
        /// 批量删除操作是否成功。
        /// true：成功。
        /// false：失败。
        public let result: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 批量删除镜像版本
    @inlinable
    public func deleteImageTags(_ input: DeleteImageTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImageTagsResponse> {
        self.client.execute(action: "DeleteImageTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除镜像版本
    @inlinable
    public func deleteImageTags(_ input: DeleteImageTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageTagsResponse {
        try await self.client.execute(action: "DeleteImageTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除镜像版本
    @inlinable
    public func deleteImageTags(imageTags: [DeleteImageTag], repoType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImageTagsResponse> {
        self.deleteImageTags(DeleteImageTagsRequest(imageTags: imageTags, repoType: repoType), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除镜像版本
    @inlinable
    public func deleteImageTags(imageTags: [DeleteImageTag], repoType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageTagsResponse {
        try await self.deleteImageTags(DeleteImageTagsRequest(imageTags: imageTags, repoType: repoType), region: region, logger: logger, on: eventLoop)
    }
}
