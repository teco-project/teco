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

extension Chdfs {
    /// DescribeResourceTags请求参数结构体
    public struct DescribeResourceTagsRequest: TCRequestModel {
        /// 文件系统ID
        public let fileSystemId: String

        public init(fileSystemId: String) {
            self.fileSystemId = fileSystemId
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
        }
    }

    /// DescribeResourceTags返回参数结构体
    public struct DescribeResourceTagsResponse: TCResponseModel {
        /// 资源标签列表
        public let tags: [Tag]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tags = "Tags"
            case requestId = "RequestId"
        }
    }

    /// 查看资源标签列表
    ///
    /// 通过文件系统ID查看资源标签列表。
    @inlinable
    public func describeResourceTags(_ input: DescribeResourceTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceTagsResponse> {
        self.client.execute(action: "DescribeResourceTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看资源标签列表
    ///
    /// 通过文件系统ID查看资源标签列表。
    @inlinable
    public func describeResourceTags(_ input: DescribeResourceTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceTagsResponse {
        try await self.client.execute(action: "DescribeResourceTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看资源标签列表
    ///
    /// 通过文件系统ID查看资源标签列表。
    @inlinable
    public func describeResourceTags(fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceTagsResponse> {
        self.describeResourceTags(.init(fileSystemId: fileSystemId), region: region, logger: logger, on: eventLoop)
    }

    /// 查看资源标签列表
    ///
    /// 通过文件系统ID查看资源标签列表。
    @inlinable
    public func describeResourceTags(fileSystemId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceTagsResponse {
        try await self.describeResourceTags(.init(fileSystemId: fileSystemId), region: region, logger: logger, on: eventLoop)
    }
}
