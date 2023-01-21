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

extension Chdfs {
    /// ModifyResourceTags请求参数结构体
    public struct ModifyResourceTagsRequest: TCRequestModel {
        /// 文件系统ID
        public let fileSystemId: String

        /// 多个资源标签，可以为空数组
        public let tags: [Tag]?

        public init(fileSystemId: String, tags: [Tag]? = nil) {
            self.fileSystemId = fileSystemId
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case tags = "Tags"
        }
    }

    /// ModifyResourceTags返回参数结构体
    public struct ModifyResourceTagsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改资源标签列表
    ///
    /// 修改资源标签列表，全量覆盖。
    @inlinable @discardableResult
    public func modifyResourceTags(_ input: ModifyResourceTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyResourceTagsResponse> {
        self.client.execute(action: "ModifyResourceTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改资源标签列表
    ///
    /// 修改资源标签列表，全量覆盖。
    @inlinable @discardableResult
    public func modifyResourceTags(_ input: ModifyResourceTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyResourceTagsResponse {
        try await self.client.execute(action: "ModifyResourceTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改资源标签列表
    ///
    /// 修改资源标签列表，全量覆盖。
    @inlinable @discardableResult
    public func modifyResourceTags(fileSystemId: String, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyResourceTagsResponse> {
        self.modifyResourceTags(ModifyResourceTagsRequest(fileSystemId: fileSystemId, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 修改资源标签列表
    ///
    /// 修改资源标签列表，全量覆盖。
    @inlinable @discardableResult
    public func modifyResourceTags(fileSystemId: String, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyResourceTagsResponse {
        try await self.modifyResourceTags(ModifyResourceTagsRequest(fileSystemId: fileSystemId, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
