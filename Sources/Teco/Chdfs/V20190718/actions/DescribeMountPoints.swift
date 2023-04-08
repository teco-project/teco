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
import TecoPaginationHelpers

extension Chdfs {
    /// DescribeMountPoints请求参数结构体
    public struct DescribeMountPointsRequest: TCPaginatedRequest {
        /// 文件系统ID
        /// 注意：若根据AccessGroupId查看挂载点列表，则无需设置FileSystemId
        public let fileSystemId: String?

        /// 权限组ID
        /// 注意：若根据FileSystemId查看挂载点列表，则无需设置AccessGroupId
        public let accessGroupId: String?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为所有
        public let limit: UInt64?

        public init(fileSystemId: String? = nil, accessGroupId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.fileSystemId = fileSystemId
            self.accessGroupId = accessGroupId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case accessGroupId = "AccessGroupId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMountPointsResponse) -> DescribeMountPointsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMountPointsRequest(fileSystemId: self.fileSystemId, accessGroupId: self.accessGroupId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeMountPoints返回参数结构体
    public struct DescribeMountPointsResponse: TCPaginatedResponse {
        /// 挂载点列表
        public let mountPoints: [MountPoint]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case mountPoints = "MountPoints"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [MountPoint] {
            self.mountPoints
        }
    }

    /// 查看挂载点列表
    ///
    /// 通过文件系统ID或者权限组ID查看挂载点列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeMountPoints(_ input: DescribeMountPointsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMountPointsResponse> {
        self.client.execute(action: "DescribeMountPoints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看挂载点列表
    ///
    /// 通过文件系统ID或者权限组ID查看挂载点列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeMountPoints(_ input: DescribeMountPointsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMountPointsResponse {
        try await self.client.execute(action: "DescribeMountPoints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看挂载点列表
    ///
    /// 通过文件系统ID或者权限组ID查看挂载点列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeMountPoints(fileSystemId: String? = nil, accessGroupId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMountPointsResponse> {
        self.describeMountPoints(.init(fileSystemId: fileSystemId, accessGroupId: accessGroupId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看挂载点列表
    ///
    /// 通过文件系统ID或者权限组ID查看挂载点列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeMountPoints(fileSystemId: String? = nil, accessGroupId: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMountPointsResponse {
        try await self.describeMountPoints(.init(fileSystemId: fileSystemId, accessGroupId: accessGroupId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看挂载点列表
    ///
    /// 通过文件系统ID或者权限组ID查看挂载点列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeMountPointsPaginated(_ input: DescribeMountPointsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [MountPoint])> {
        self.client.paginate(input: input, region: region, command: self.describeMountPoints, logger: logger, on: eventLoop)
    }

    /// 查看挂载点列表
    ///
    /// 通过文件系统ID或者权限组ID查看挂载点列表。
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable @discardableResult
    public func describeMountPointsPaginated(_ input: DescribeMountPointsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMountPointsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMountPoints, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看挂载点列表
    ///
    /// 通过文件系统ID或者权限组ID查看挂载点列表。
    ///
    /// - Returns: `AsyncSequence`s of `MountPoint` and `DescribeMountPointsResponse` that can be iterated over asynchronously on demand.
    @available(*, deprecated, message: "云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。")
    @inlinable
    public func describeMountPointsPaginator(_ input: DescribeMountPointsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMountPointsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMountPoints, logger: logger, on: eventLoop)
    }
}
