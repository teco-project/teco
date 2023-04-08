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

extension Gaap {
    /// DescribeProxyGroupDetails请求参数结构体
    public struct DescribeProxyGroupDetailsRequest: TCRequestModel {
        /// 通道组ID。
        public let groupId: String

        public init(groupId: String) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// DescribeProxyGroupDetails返回参数结构体
    public struct DescribeProxyGroupDetailsResponse: TCResponseModel {
        /// 通道组详细信息。
        public let proxyGroupDetail: ProxyGroupDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case proxyGroupDetail = "ProxyGroupDetail"
            case requestId = "RequestId"
        }
    }

    /// 查询通道组详情
    ///
    /// 本接口（DescribeProxyGroupDetails）用于查询通道组详情。
    @inlinable
    public func describeProxyGroupDetails(_ input: DescribeProxyGroupDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProxyGroupDetailsResponse> {
        self.client.execute(action: "DescribeProxyGroupDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询通道组详情
    ///
    /// 本接口（DescribeProxyGroupDetails）用于查询通道组详情。
    @inlinable
    public func describeProxyGroupDetails(_ input: DescribeProxyGroupDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxyGroupDetailsResponse {
        try await self.client.execute(action: "DescribeProxyGroupDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询通道组详情
    ///
    /// 本接口（DescribeProxyGroupDetails）用于查询通道组详情。
    @inlinable
    public func describeProxyGroupDetails(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProxyGroupDetailsResponse> {
        self.describeProxyGroupDetails(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询通道组详情
    ///
    /// 本接口（DescribeProxyGroupDetails）用于查询通道组详情。
    @inlinable
    public func describeProxyGroupDetails(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxyGroupDetailsResponse {
        try await self.describeProxyGroupDetails(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
