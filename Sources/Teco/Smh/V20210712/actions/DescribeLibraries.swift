//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Smh {
    /// DescribeLibraries请求参数结构体
    public struct DescribeLibrariesRequest: TCRequestModel {
        /// 按照一个或者多个媒体库 ID 查询，每次请求的上限为 100 个。
        public let libraryIds: [String]?

        /// 页码，整型，配合 PageSize 使用，默认值为 1。
        public let pageNumber: UInt64?

        /// 每页数目，整型，配合 PageNumber 使用，默认值为 20，最大值为 100。
        public let pageSize: UInt64?

        public init(libraryIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil) {
            self.libraryIds = libraryIds
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case libraryIds = "LibraryIds"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }
    }

    /// DescribeLibraries返回参数结构体
    public struct DescribeLibrariesResponse: TCResponseModel {
        /// 媒体库列表
        public let list: [Library]

        /// 总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询媒体库
    ///
    /// 查询 PaaS 服务媒体库列表
    @inlinable
    public func describeLibraries(_ input: DescribeLibrariesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLibrariesResponse > {
        self.client.execute(action: "DescribeLibraries", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询媒体库
    ///
    /// 查询 PaaS 服务媒体库列表
    @inlinable
    public func describeLibraries(_ input: DescribeLibrariesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLibrariesResponse {
        try await self.client.execute(action: "DescribeLibraries", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询媒体库
    ///
    /// 查询 PaaS 服务媒体库列表
    @inlinable
    public func describeLibraries(libraryIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLibrariesResponse > {
        self.describeLibraries(DescribeLibrariesRequest(libraryIds: libraryIds, pageNumber: pageNumber, pageSize: pageSize), logger: logger, on: eventLoop)
    }

    /// 查询媒体库
    ///
    /// 查询 PaaS 服务媒体库列表
    @inlinable
    public func describeLibraries(libraryIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLibrariesResponse {
        try await self.describeLibraries(DescribeLibrariesRequest(libraryIds: libraryIds, pageNumber: pageNumber, pageSize: pageSize), logger: logger, on: eventLoop)
    }
}
