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

extension Vpc {
    /// DescribeVpcEndPointServiceWhiteList请求参数结构体
    public struct DescribeVpcEndPointServiceWhiteListRequest: TCRequestModel {
        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 单页返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// 过滤条件。
        /// <li> user-uin String - （过滤条件）用户UIN。</li>
        /// <li> end-point-service-id String - （过滤条件）终端节点服务ID。</li>
        public let filters: [Filter]?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }

    /// DescribeVpcEndPointServiceWhiteList返回参数结构体
    public struct DescribeVpcEndPointServiceWhiteListResponse: TCResponseModel {
        /// 白名单对象数组。
        public let vpcEndpointServiceUserSet: [VpcEndPointServiceUser]

        /// 符合条件的白名单个数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vpcEndpointServiceUserSet = "VpcEndpointServiceUserSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询终端节点服务的服务白名单列表
    ///
    /// 查询终端节点服务的服务白名单列表。
    @inlinable
    public func describeVpcEndPointServiceWhiteList(_ input: DescribeVpcEndPointServiceWhiteListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVpcEndPointServiceWhiteListResponse > {
        self.client.execute(action: "DescribeVpcEndPointServiceWhiteList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询终端节点服务的服务白名单列表
    ///
    /// 查询终端节点服务的服务白名单列表。
    @inlinable
    public func describeVpcEndPointServiceWhiteList(_ input: DescribeVpcEndPointServiceWhiteListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcEndPointServiceWhiteListResponse {
        try await self.client.execute(action: "DescribeVpcEndPointServiceWhiteList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询终端节点服务的服务白名单列表
    ///
    /// 查询终端节点服务的服务白名单列表。
    @inlinable
    public func describeVpcEndPointServiceWhiteList(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVpcEndPointServiceWhiteListResponse > {
        self.describeVpcEndPointServiceWhiteList(DescribeVpcEndPointServiceWhiteListRequest(offset: offset, limit: limit, filters: filters), logger: logger, on: eventLoop)
    }

    /// 查询终端节点服务的服务白名单列表
    ///
    /// 查询终端节点服务的服务白名单列表。
    @inlinable
    public func describeVpcEndPointServiceWhiteList(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcEndPointServiceWhiteListResponse {
        try await self.describeVpcEndPointServiceWhiteList(DescribeVpcEndPointServiceWhiteListRequest(offset: offset, limit: limit, filters: filters), logger: logger, on: eventLoop)
    }
}
