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

import TecoCore
import TecoPaginationHelpers

extension Wedata {
    /// DescribeFolderList请求参数结构体
    public struct DescribeFolderListRequest: TCPaginatedRequest {
        /// 项目Id
        public let projectId: String

        /// 文件夹ID
        public let parentsFolderId: String

        /// 关键字
        public let keyWords: String?

        /// 页码，默认1
        public let pageNumber: Int64?

        /// 页大小，默认10
        public let pageSize: Int64?

        public init(projectId: String, parentsFolderId: String, keyWords: String? = nil, pageNumber: Int64? = nil, pageSize: Int64? = nil) {
            self.projectId = projectId
            self.parentsFolderId = parentsFolderId
            self.keyWords = keyWords
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case parentsFolderId = "ParentsFolderId"
            case keyWords = "KeyWords"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeFolderListResponse) -> DescribeFolderListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeFolderListRequest(projectId: self.projectId, parentsFolderId: self.parentsFolderId, keyWords: self.keyWords, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeFolderList返回参数结构体
    public struct DescribeFolderListResponse: TCPaginatedResponse {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DescribeFolderListData?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Folder] {
            self.data?.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data?.totalCount
        }
    }

    /// 拉取文件夹目录【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 拉取文件夹目录
    @inlinable
    public func describeFolderList(_ input: DescribeFolderListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFolderListResponse> {
        self.client.execute(action: "DescribeFolderList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取文件夹目录【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 拉取文件夹目录
    @inlinable
    public func describeFolderList(_ input: DescribeFolderListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFolderListResponse {
        try await self.client.execute(action: "DescribeFolderList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取文件夹目录【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 拉取文件夹目录
    @inlinable
    public func describeFolderList(projectId: String, parentsFolderId: String, keyWords: String? = nil, pageNumber: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFolderListResponse> {
        self.describeFolderList(.init(projectId: projectId, parentsFolderId: parentsFolderId, keyWords: keyWords, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取文件夹目录【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 拉取文件夹目录
    @inlinable
    public func describeFolderList(projectId: String, parentsFolderId: String, keyWords: String? = nil, pageNumber: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFolderListResponse {
        try await self.describeFolderList(.init(projectId: projectId, parentsFolderId: parentsFolderId, keyWords: keyWords, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取文件夹目录【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 拉取文件夹目录
    @inlinable
    public func describeFolderListPaginated(_ input: DescribeFolderListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Folder])> {
        self.client.paginate(input: input, region: region, command: self.describeFolderList, logger: logger, on: eventLoop)
    }

    /// 拉取文件夹目录【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 拉取文件夹目录
    @inlinable @discardableResult
    public func describeFolderListPaginated(_ input: DescribeFolderListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeFolderListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeFolderList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取文件夹目录【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 拉取文件夹目录
    ///
    /// - Returns: `AsyncSequence`s of `Folder` and `DescribeFolderListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeFolderListPaginator(_ input: DescribeFolderListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeFolderListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeFolderList, logger: logger, on: eventLoop)
    }
}
