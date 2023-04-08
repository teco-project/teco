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

extension Iotvideo {
    /// DescribeCloudStorageUsers请求参数结构体
    public struct DescribeCloudStorageUsersRequest: TCPaginatedRequest {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 分页拉取数量
        public let limit: UInt64

        /// 分页拉取偏移
        public let offset: UInt64

        public init(productId: String, deviceName: String, limit: UInt64, offset: UInt64) {
            self.productId = productId
            self.deviceName = deviceName
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCloudStorageUsersResponse) -> DescribeCloudStorageUsersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCloudStorageUsersRequest(productId: self.productId, deviceName: self.deviceName, limit: self.limit, offset: self.offset + .init(response.getItems().count))
        }
    }

    /// DescribeCloudStorageUsers返回参数结构体
    public struct DescribeCloudStorageUsersResponse: TCPaginatedResponse {
        /// 用户总数
        public let totalCount: UInt64

        /// 用户信息
        public let users: [CloudStorageUserInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case users = "Users"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CloudStorageUserInfo] {
            self.users
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 拉取云存用户列表
    @inlinable
    public func describeCloudStorageUsers(_ input: DescribeCloudStorageUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudStorageUsersResponse> {
        self.client.execute(action: "DescribeCloudStorageUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取云存用户列表
    @inlinable
    public func describeCloudStorageUsers(_ input: DescribeCloudStorageUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudStorageUsersResponse {
        try await self.client.execute(action: "DescribeCloudStorageUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取云存用户列表
    @inlinable
    public func describeCloudStorageUsers(productId: String, deviceName: String, limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudStorageUsersResponse> {
        self.describeCloudStorageUsers(.init(productId: productId, deviceName: deviceName, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取云存用户列表
    @inlinable
    public func describeCloudStorageUsers(productId: String, deviceName: String, limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudStorageUsersResponse {
        try await self.describeCloudStorageUsers(.init(productId: productId, deviceName: deviceName, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取云存用户列表
    @inlinable
    public func describeCloudStorageUsersPaginated(_ input: DescribeCloudStorageUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CloudStorageUserInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeCloudStorageUsers, logger: logger, on: eventLoop)
    }

    /// 拉取云存用户列表
    @inlinable @discardableResult
    public func describeCloudStorageUsersPaginated(_ input: DescribeCloudStorageUsersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCloudStorageUsersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCloudStorageUsers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取云存用户列表
    ///
    /// - Returns: `AsyncSequence`s of `CloudStorageUserInfo` and `DescribeCloudStorageUsersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCloudStorageUsersPaginator(_ input: DescribeCloudStorageUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCloudStorageUsersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCloudStorageUsers, logger: logger, on: eventLoop)
    }
}
