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

extension Yinsuda {
    /// DescribeUserInfo请求参数结构体
    public struct DescribeUserInfoRequest: TCRequestModel {
        /// 应用名称。
        public let appName: String

        /// 用户标识。
        public let userId: String

        public init(appName: String, userId: String) {
            self.appName = appName
            self.userId = userId
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case userId = "UserId"
        }
    }

    /// DescribeUserInfo返回参数结构体
    public struct DescribeUserInfoResponse: TCResponseModel {
        /// 用户信息。
        public let userInfo: UserInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userInfo = "UserInfo"
            case requestId = "RequestId"
        }
    }

    /// 获取用户信息
    ///
    /// 获取用户信息，包括是否为直播会员，及直播会员信息等
    @inlinable
    public func describeUserInfo(_ input: DescribeUserInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserInfoResponse> {
        self.client.execute(action: "DescribeUserInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户信息
    ///
    /// 获取用户信息，包括是否为直播会员，及直播会员信息等
    @inlinable
    public func describeUserInfo(_ input: DescribeUserInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserInfoResponse {
        try await self.client.execute(action: "DescribeUserInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户信息
    ///
    /// 获取用户信息，包括是否为直播会员，及直播会员信息等
    @inlinable
    public func describeUserInfo(appName: String, userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserInfoResponse> {
        self.describeUserInfo(.init(appName: appName, userId: userId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户信息
    ///
    /// 获取用户信息，包括是否为直播会员，及直播会员信息等
    @inlinable
    public func describeUserInfo(appName: String, userId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserInfoResponse {
        try await self.describeUserInfo(.init(appName: appName, userId: userId), region: region, logger: logger, on: eventLoop)
    }
}
