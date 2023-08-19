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

extension Lcic {
    /// DescribeSdkAppIdUsers请求参数结构体
    public struct DescribeSdkAppIdUsersRequest: TCRequest {
        /// 应用ID
        public let sdkAppId: UInt64

        /// 分页，默认值为1
        public let page: Int64?

        /// 分页数据限制，默认值为20
        public let limit: Int64?

        public init(sdkAppId: UInt64, page: Int64? = nil, limit: Int64? = nil) {
            self.sdkAppId = sdkAppId
            self.page = page
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case page = "Page"
            case limit = "Limit"
        }
    }

    /// DescribeSdkAppIdUsers返回参数结构体
    public struct DescribeSdkAppIdUsersResponse: TCResponse {
        /// 用户总数
        public let total: UInt64

        /// 当前获取用户信息数组列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let users: [UserInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case users = "Users"
            case requestId = "RequestId"
        }
    }

    /// 获取应用ID下用户列表
    ///
    /// 此接口用于获取指定应用ID下用户列表
    @inlinable
    public func describeSdkAppIdUsers(_ input: DescribeSdkAppIdUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSdkAppIdUsersResponse> {
        self.client.execute(action: "DescribeSdkAppIdUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用ID下用户列表
    ///
    /// 此接口用于获取指定应用ID下用户列表
    @inlinable
    public func describeSdkAppIdUsers(_ input: DescribeSdkAppIdUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSdkAppIdUsersResponse {
        try await self.client.execute(action: "DescribeSdkAppIdUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用ID下用户列表
    ///
    /// 此接口用于获取指定应用ID下用户列表
    @inlinable
    public func describeSdkAppIdUsers(sdkAppId: UInt64, page: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSdkAppIdUsersResponse> {
        self.describeSdkAppIdUsers(.init(sdkAppId: sdkAppId, page: page, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用ID下用户列表
    ///
    /// 此接口用于获取指定应用ID下用户列表
    @inlinable
    public func describeSdkAppIdUsers(sdkAppId: UInt64, page: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSdkAppIdUsersResponse {
        try await self.describeSdkAppIdUsers(.init(sdkAppId: sdkAppId, page: page, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
