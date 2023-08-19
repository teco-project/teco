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

extension Wedata {
    /// DescribeResourceManagePathTrees请求参数结构体
    public struct DescribeResourceManagePathTreesRequest: TCRequest {
        /// 项目ID
        public let projectId: String?

        /// 名字，供搜索
        public let name: String?

        /// 文件类型
        public let fileType: String?

        /// 文件路径
        public let filePath: String?

        /// 文件夹类型
        public let dirType: String?

        public init(projectId: String? = nil, name: String? = nil, fileType: String? = nil, filePath: String? = nil, dirType: String? = nil) {
            self.projectId = projectId
            self.name = name
            self.fileType = fileType
            self.filePath = filePath
            self.dirType = dirType
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case name = "Name"
            case fileType = "FileType"
            case filePath = "FilePath"
            case dirType = "DirType"
        }
    }

    /// DescribeResourceManagePathTrees返回参数结构体
    public struct DescribeResourceManagePathTreesResponse: TCResponse {
        /// 响应数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [ResourcePathTree]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取资源管理目录树
    @inlinable
    public func describeResourceManagePathTrees(_ input: DescribeResourceManagePathTreesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceManagePathTreesResponse> {
        self.client.execute(action: "DescribeResourceManagePathTrees", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资源管理目录树
    @inlinable
    public func describeResourceManagePathTrees(_ input: DescribeResourceManagePathTreesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceManagePathTreesResponse {
        try await self.client.execute(action: "DescribeResourceManagePathTrees", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资源管理目录树
    @inlinable
    public func describeResourceManagePathTrees(projectId: String? = nil, name: String? = nil, fileType: String? = nil, filePath: String? = nil, dirType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceManagePathTreesResponse> {
        self.describeResourceManagePathTrees(.init(projectId: projectId, name: name, fileType: fileType, filePath: filePath, dirType: dirType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资源管理目录树
    @inlinable
    public func describeResourceManagePathTrees(projectId: String? = nil, name: String? = nil, fileType: String? = nil, filePath: String? = nil, dirType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceManagePathTreesResponse {
        try await self.describeResourceManagePathTrees(.init(projectId: projectId, name: name, fileType: fileType, filePath: filePath, dirType: dirType), region: region, logger: logger, on: eventLoop)
    }
}
