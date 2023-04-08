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

extension Bmvpc {
    /// DescribeVpcView请求参数结构体
    public struct DescribeVpcViewRequest: TCRequestModel {
        /// 私有网络唯一ID
        public let vpcId: String

        public init(vpcId: String) {
            self.vpcId = vpcId
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
        }
    }

    /// DescribeVpcView返回参数结构体
    public struct DescribeVpcViewResponse: TCResponseModel {
        /// VPC视图信息
        public let vpcView: VpcViewInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vpcView = "VpcView"
            case requestId = "RequestId"
        }
    }

    /// 查询黑石VPC视图
    ///
    /// 本接口（DescribeVpcView）用于查询VPC网络拓扑视图。
    @inlinable
    public func describeVpcView(_ input: DescribeVpcViewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcViewResponse> {
        self.client.execute(action: "DescribeVpcView", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询黑石VPC视图
    ///
    /// 本接口（DescribeVpcView）用于查询VPC网络拓扑视图。
    @inlinable
    public func describeVpcView(_ input: DescribeVpcViewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcViewResponse {
        try await self.client.execute(action: "DescribeVpcView", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询黑石VPC视图
    ///
    /// 本接口（DescribeVpcView）用于查询VPC网络拓扑视图。
    @inlinable
    public func describeVpcView(vpcId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcViewResponse> {
        self.describeVpcView(.init(vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询黑石VPC视图
    ///
    /// 本接口（DescribeVpcView）用于查询VPC网络拓扑视图。
    @inlinable
    public func describeVpcView(vpcId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcViewResponse {
        try await self.describeVpcView(.init(vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }
}
