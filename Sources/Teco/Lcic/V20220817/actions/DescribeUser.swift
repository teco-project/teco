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

extension Lcic {
    /// DescribeUser请求参数结构体
    public struct DescribeUserRequest: TCRequestModel {
        /// 用户Id。
        public let userId: String

        public init(userId: String) {
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
        }
    }

    /// DescribeUser返回参数结构体
    public struct DescribeUserResponse: TCResponseModel {
        /// 应用Id。
        public let sdkAppId: UInt64

        /// 用户Id。
        public let userId: String

        /// 用户昵称。
        public let name: String

        /// 用户头像Url。
        public let avatar: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case userId = "UserId"
            case name = "Name"
            case avatar = "Avatar"
            case requestId = "RequestId"
        }
    }

    /// 获取用户信息
    @inlinable
    public func describeUser(_ input: DescribeUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResponse> {
        self.client.execute(action: "DescribeUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户信息
    @inlinable
    public func describeUser(_ input: DescribeUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResponse {
        try await self.client.execute(action: "DescribeUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户信息
    @inlinable
    public func describeUser(userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserResponse> {
        let input = DescribeUserRequest(userId: userId)
        return self.client.execute(action: "DescribeUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户信息
    @inlinable
    public func describeUser(userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResponse {
        let input = DescribeUserRequest(userId: userId)
        return try await self.client.execute(action: "DescribeUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
