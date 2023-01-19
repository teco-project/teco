//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Ape {
    /// DescribeAuthUsers请求参数结构体
    public struct DescribeAuthUsersRequest: TCRequestModel {
        /// 分页大小
        public let limit: Int64

        /// 页偏移量
        public let offset: Int64

        public init(limit: Int64, offset: Int64) {
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeAuthUsers返回参数结构体
    public struct DescribeAuthUsersResponse: TCResponseModel {
        /// 授权人信息数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let users: [AuthInfo]?

        /// 总记录数
        public let totalCount: Int64

        /// 是否是老策略用户
        public let oldUser: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case users = "Users"
            case totalCount = "TotalCount"
            case oldUser = "OldUser"
            case requestId = "RequestId"
        }
    }

    /// 查询授权人列表
    ///
    /// 分页查询授权人列表
    @inlinable
    public func describeAuthUsers(_ input: DescribeAuthUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuthUsersResponse> {
        self.client.execute(action: "DescribeAuthUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询授权人列表
    ///
    /// 分页查询授权人列表
    @inlinable
    public func describeAuthUsers(_ input: DescribeAuthUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuthUsersResponse {
        try await self.client.execute(action: "DescribeAuthUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询授权人列表
    ///
    /// 分页查询授权人列表
    @inlinable
    public func describeAuthUsers(limit: Int64, offset: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuthUsersResponse> {
        self.describeAuthUsers(DescribeAuthUsersRequest(limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询授权人列表
    ///
    /// 分页查询授权人列表
    @inlinable
    public func describeAuthUsers(limit: Int64, offset: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuthUsersResponse {
        try await self.describeAuthUsers(DescribeAuthUsersRequest(limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
