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

extension Dnspod {
    /// DescribeUserDetail请求参数结构体
    public struct DescribeUserDetailRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeUserDetail返回参数结构体
    public struct DescribeUserDetailResponse: TCResponseModel {
        /// 帐户信息
        public let userInfo: UserInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userInfo = "UserInfo"
            case requestId = "RequestId"
        }
    }

    /// 获取帐户信息
    @inlinable
    public func describeUserDetail(_ input: DescribeUserDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserDetailResponse> {
        self.client.execute(action: "DescribeUserDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取帐户信息
    @inlinable
    public func describeUserDetail(_ input: DescribeUserDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserDetailResponse {
        try await self.client.execute(action: "DescribeUserDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取帐户信息
    @inlinable
    public func describeUserDetail(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserDetailResponse> {
        self.describeUserDetail(DescribeUserDetailRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取帐户信息
    @inlinable
    public func describeUserDetail(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserDetailResponse {
        try await self.describeUserDetail(DescribeUserDetailRequest(), region: region, logger: logger, on: eventLoop)
    }
}
