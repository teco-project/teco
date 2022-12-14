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

extension Ciam {
    /// DescribeUserById请求参数结构体
    public struct DescribeUserByIdRequest: TCRequestModel {
        /// 用户目录ID
        public let userStoreId: String

        /// 用户ID
        public let userId: String

        /// 返回信息是否为原文
        /// <li> **false** </li>	默认，返回信息为脱敏信息
        /// <li> **true** </li>	返回用户信息原文
        public let original: Bool?

        public init(userStoreId: String, userId: String, original: Bool? = nil) {
            self.userStoreId = userStoreId
            self.userId = userId
            self.original = original
        }

        enum CodingKeys: String, CodingKey {
            case userStoreId = "UserStoreId"
            case userId = "UserId"
            case original = "Original"
        }
    }

    /// DescribeUserById返回参数结构体
    public struct DescribeUserByIdResponse: TCResponseModel {
        /// 用户信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let user: User?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case user = "User"
            case requestId = "RequestId"
        }
    }

    /// 根据ID查询用户信息
    @inlinable
    public func describeUserById(_ input: DescribeUserByIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUserByIdResponse > {
        self.client.execute(action: "DescribeUserById", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据ID查询用户信息
    @inlinable
    public func describeUserById(_ input: DescribeUserByIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserByIdResponse {
        try await self.client.execute(action: "DescribeUserById", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据ID查询用户信息
    @inlinable
    public func describeUserById(userStoreId: String, userId: String, original: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUserByIdResponse > {
        self.describeUserById(DescribeUserByIdRequest(userStoreId: userStoreId, userId: userId, original: original), logger: logger, on: eventLoop)
    }

    /// 根据ID查询用户信息
    @inlinable
    public func describeUserById(userStoreId: String, userId: String, original: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserByIdResponse {
        try await self.describeUserById(DescribeUserByIdRequest(userStoreId: userStoreId, userId: userId, original: original), logger: logger, on: eventLoop)
    }
}
