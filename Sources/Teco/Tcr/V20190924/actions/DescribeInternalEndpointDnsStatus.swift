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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tcr {
    /// DescribeInternalEndpointDnsStatus请求参数结构体
    public struct DescribeInternalEndpointDnsStatusRequest: TCRequestModel {
        /// vpc列表
        public let vpcSet: [VpcAndDomainInfo]

        public init(vpcSet: [VpcAndDomainInfo]) {
            self.vpcSet = vpcSet
        }

        enum CodingKeys: String, CodingKey {
            case vpcSet = "VpcSet"
        }
    }

    /// DescribeInternalEndpointDnsStatus返回参数结构体
    public struct DescribeInternalEndpointDnsStatusResponse: TCResponseModel {
        /// vpc私有域名解析状态列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcSet: [VpcPrivateDomainStatus]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vpcSet = "VpcSet"
            case requestId = "RequestId"
        }
    }

    /// 查询私有域名解析状态
    ///
    /// 批量查询vpc是否已经添加私有域名解析
    @inlinable
    public func describeInternalEndpointDnsStatus(_ input: DescribeInternalEndpointDnsStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInternalEndpointDnsStatusResponse> {
        self.client.execute(action: "DescribeInternalEndpointDnsStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询私有域名解析状态
    ///
    /// 批量查询vpc是否已经添加私有域名解析
    @inlinable
    public func describeInternalEndpointDnsStatus(_ input: DescribeInternalEndpointDnsStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInternalEndpointDnsStatusResponse {
        try await self.client.execute(action: "DescribeInternalEndpointDnsStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询私有域名解析状态
    ///
    /// 批量查询vpc是否已经添加私有域名解析
    @inlinable
    public func describeInternalEndpointDnsStatus(vpcSet: [VpcAndDomainInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInternalEndpointDnsStatusResponse> {
        self.describeInternalEndpointDnsStatus(.init(vpcSet: vpcSet), region: region, logger: logger, on: eventLoop)
    }

    /// 查询私有域名解析状态
    ///
    /// 批量查询vpc是否已经添加私有域名解析
    @inlinable
    public func describeInternalEndpointDnsStatus(vpcSet: [VpcAndDomainInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInternalEndpointDnsStatusResponse {
        try await self.describeInternalEndpointDnsStatus(.init(vpcSet: vpcSet), region: region, logger: logger, on: eventLoop)
    }
}
