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

import TecoPaginationHelpers

extension Tsf {
    /// DescribePkgs请求参数结构体
    public struct DescribePkgsRequest: TCPaginatedRequest {
        /// 应用ID（只传入应用ID，返回该应用下所有软件包信息）
        public let applicationId: String

        /// 查询关键字（支持根据包ID，包名，包版本号搜索）
        public let searchWord: String?

        /// 排序关键字（默认为"UploadTime"：上传时间）
        public let orderBy: String?

        /// 升序：0/降序：1（默认降序）
        public let orderType: UInt64?

        /// 查询起始偏移
        public let offset: UInt64?

        /// 返回数量限制
        public let limit: UInt64?

        /// 程序包仓库类型
        public let repositoryType: String?

        /// 程序包仓库id
        public let repositoryId: String?

        /// 程序包类型数组支持（fatjar jar war tar.gz zip）
        public let packageTypeList: [String]?

        public init(applicationId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, repositoryType: String? = nil, repositoryId: String? = nil, packageTypeList: [String]? = nil) {
            self.applicationId = applicationId
            self.searchWord = searchWord
            self.orderBy = orderBy
            self.orderType = orderType
            self.offset = offset
            self.limit = limit
            self.repositoryType = repositoryType
            self.repositoryId = repositoryId
            self.packageTypeList = packageTypeList
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case searchWord = "SearchWord"
            case orderBy = "OrderBy"
            case orderType = "OrderType"
            case offset = "Offset"
            case limit = "Limit"
            case repositoryType = "RepositoryType"
            case repositoryId = "RepositoryId"
            case packageTypeList = "PackageTypeList"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribePkgsResponse) -> DescribePkgsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePkgsRequest(applicationId: self.applicationId, searchWord: self.searchWord, orderBy: self.orderBy, orderType: self.orderType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, repositoryType: self.repositoryType, repositoryId: self.repositoryId, packageTypeList: self.packageTypeList)
        }
    }

    /// DescribePkgs返回参数结构体
    public struct DescribePkgsResponse: TCPaginatedResponse {
        /// 符合查询程序包信息列表
        public let result: PkgList

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PkgInfo] {
            self.result.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 获取某个应用的程序包信息列表
    ///
    /// 无
    @inlinable
    public func describePkgs(_ input: DescribePkgsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePkgsResponse> {
        self.client.execute(action: "DescribePkgs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取某个应用的程序包信息列表
    ///
    /// 无
    @inlinable
    public func describePkgs(_ input: DescribePkgsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePkgsResponse {
        try await self.client.execute(action: "DescribePkgs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取某个应用的程序包信息列表
    ///
    /// 无
    @inlinable
    public func describePkgs(applicationId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, repositoryType: String? = nil, repositoryId: String? = nil, packageTypeList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePkgsResponse> {
        let input = DescribePkgsRequest(applicationId: applicationId, searchWord: searchWord, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit, repositoryType: repositoryType, repositoryId: repositoryId, packageTypeList: packageTypeList)
        return self.client.execute(action: "DescribePkgs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取某个应用的程序包信息列表
    ///
    /// 无
    @inlinable
    public func describePkgs(applicationId: String, searchWord: String? = nil, orderBy: String? = nil, orderType: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, repositoryType: String? = nil, repositoryId: String? = nil, packageTypeList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePkgsResponse {
        let input = DescribePkgsRequest(applicationId: applicationId, searchWord: searchWord, orderBy: orderBy, orderType: orderType, offset: offset, limit: limit, repositoryType: repositoryType, repositoryId: repositoryId, packageTypeList: packageTypeList)
        return try await self.client.execute(action: "DescribePkgs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取某个应用的程序包信息列表
    ///
    /// 无
    @inlinable
    public func describePkgsPaginated(_ input: DescribePkgsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [PkgInfo])> {
        self.client.paginate(input: input, region: region, command: self.describePkgs, logger: logger, on: eventLoop)
    }

    /// 获取某个应用的程序包信息列表
    ///
    /// 无
    @inlinable @discardableResult
    public func describePkgsPaginated(_ input: DescribePkgsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePkgsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePkgs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取某个应用的程序包信息列表
    ///
    /// 无
    ///
    /// - Returns: `AsyncSequence`s of `PkgInfo` and `DescribePkgsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePkgsPaginator(_ input: DescribePkgsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePkgsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePkgs, logger: logger, on: eventLoop)
    }
}
