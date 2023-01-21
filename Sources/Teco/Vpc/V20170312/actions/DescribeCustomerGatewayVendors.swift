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

extension Vpc {
    /// DescribeCustomerGatewayVendors请求参数结构体
    public struct DescribeCustomerGatewayVendorsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeCustomerGatewayVendors返回参数结构体
    public struct DescribeCustomerGatewayVendorsResponse: TCResponseModel {
        /// 对端网关厂商信息对象。
        public let customerGatewayVendorSet: [CustomerGatewayVendor]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case customerGatewayVendorSet = "CustomerGatewayVendorSet"
            case requestId = "RequestId"
        }
    }

    /// 查询可支持的对端网关厂商信息
    ///
    /// 本接口（DescribeCustomerGatewayVendors）用于查询可支持的对端网关厂商信息。
    @inlinable
    public func describeCustomerGatewayVendors(_ input: DescribeCustomerGatewayVendorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomerGatewayVendorsResponse> {
        self.client.execute(action: "DescribeCustomerGatewayVendors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询可支持的对端网关厂商信息
    ///
    /// 本接口（DescribeCustomerGatewayVendors）用于查询可支持的对端网关厂商信息。
    @inlinable
    public func describeCustomerGatewayVendors(_ input: DescribeCustomerGatewayVendorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomerGatewayVendorsResponse {
        try await self.client.execute(action: "DescribeCustomerGatewayVendors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询可支持的对端网关厂商信息
    ///
    /// 本接口（DescribeCustomerGatewayVendors）用于查询可支持的对端网关厂商信息。
    @inlinable
    public func describeCustomerGatewayVendors(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCustomerGatewayVendorsResponse> {
        self.describeCustomerGatewayVendors(DescribeCustomerGatewayVendorsRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询可支持的对端网关厂商信息
    ///
    /// 本接口（DescribeCustomerGatewayVendors）用于查询可支持的对端网关厂商信息。
    @inlinable
    public func describeCustomerGatewayVendors(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomerGatewayVendorsResponse {
        try await self.describeCustomerGatewayVendors(DescribeCustomerGatewayVendorsRequest(), region: region, logger: logger, on: eventLoop)
    }
}
