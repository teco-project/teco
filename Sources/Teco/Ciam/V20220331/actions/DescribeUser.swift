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

extension Ciam {
    /// DescribeUser请求参数结构体
    public struct DescribeUserRequest: TCRequestModel {
        /// 用户目录ID
        public let userStoreId: String

        /// 分页数据
        public let pageable: Pageable

        /// 查询条件，根据propertycode和propertykey
        public let filters: [QueryUserFilter]?

        /// 是否返回明文
        public let original: Bool?

        /// 排序设置
        public let sort: Sort?

        public init(userStoreId: String, pageable: Pageable, filters: [QueryUserFilter]? = nil, original: Bool? = nil, sort: Sort? = nil) {
            self.userStoreId = userStoreId
            self.pageable = pageable
            self.filters = filters
            self.original = original
            self.sort = sort
        }

        enum CodingKeys: String, CodingKey {
            case userStoreId = "UserStoreId"
            case pageable = "Pageable"
            case filters = "Filters"
            case original = "Original"
            case sort = "Sort"
        }
    }

    /// DescribeUser返回参数结构体
    public struct DescribeUserResponse: TCResponseModel {
        /// 总条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 分页对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageable: Pageable?

        /// 用户列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let content: [User]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case pageable = "Pageable"
            case content = "Content"
            case requestId = "RequestId"
        }
    }

    /// 查询用户信息
    ///
    /// 多条件查询用户信息
    @inlinable
    public func describeUser(_ input: DescribeUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResponse> {
        self.client.execute(action: "DescribeUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户信息
    ///
    /// 多条件查询用户信息
    @inlinable
    public func describeUser(_ input: DescribeUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResponse {
        try await self.client.execute(action: "DescribeUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户信息
    ///
    /// 多条件查询用户信息
    @inlinable
    public func describeUser(userStoreId: String, pageable: Pageable, filters: [QueryUserFilter]? = nil, original: Bool? = nil, sort: Sort? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResponse> {
        let input = DescribeUserRequest(userStoreId: userStoreId, pageable: pageable, filters: filters, original: original, sort: sort)
        return self.client.execute(action: "DescribeUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户信息
    ///
    /// 多条件查询用户信息
    @inlinable
    public func describeUser(userStoreId: String, pageable: Pageable, filters: [QueryUserFilter]? = nil, original: Bool? = nil, sort: Sort? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResponse {
        let input = DescribeUserRequest(userStoreId: userStoreId, pageable: pageable, filters: filters, original: original, sort: sort)
        return try await self.client.execute(action: "DescribeUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
