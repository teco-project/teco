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

extension Dayu {
    /// DescribeResIpList请求参数结构体
    public struct DescribeResIpListRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String

        /// 资源ID, 如果不填，则获取用户所有资源的IP
        public let idList: [String]?

        public init(business: String, idList: [String]? = nil) {
            self.business = business
            self.idList = idList
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case idList = "IdList"
        }
    }

    /// DescribeResIpList返回参数结构体
    public struct DescribeResIpListResponse: TCResponseModel {
        /// 资源的IP列表
        public let resource: [ResourceIp]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resource = "Resource"
            case requestId = "RequestId"
        }
    }

    /// 获取资源的IP列表
    @inlinable
    public func describeResIpList(_ input: DescribeResIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResIpListResponse> {
        self.client.execute(action: "DescribeResIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取资源的IP列表
    @inlinable
    public func describeResIpList(_ input: DescribeResIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResIpListResponse {
        try await self.client.execute(action: "DescribeResIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取资源的IP列表
    @inlinable
    public func describeResIpList(business: String, idList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResIpListResponse> {
        self.describeResIpList(.init(business: business, idList: idList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取资源的IP列表
    @inlinable
    public func describeResIpList(business: String, idList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResIpListResponse {
        try await self.describeResIpList(.init(business: business, idList: idList), region: region, logger: logger, on: eventLoop)
    }
}
