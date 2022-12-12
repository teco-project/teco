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
    /// DescribeDirectConnectGateways请求参数结构体
    public struct DescribeDirectConnectGatewaysRequest: TCRequestModel {
        /// 专线网关唯一`ID`，形如：`dcg-9o233uri`。
        public let directConnectGatewayIds: [String]?
        
        /// 过滤条件，参数不支持同时指定`DirectConnectGatewayIds`和`Filters`。
        /// <li>direct-connect-gateway-id - String - 专线网关唯一`ID`，形如：`dcg-9o233uri`。</li>
        /// <li>direct-connect-gateway-name - String - 专线网关名称，默认模糊查询。</li>
        /// <li>direct-connect-gateway-ip - String - 专线网关`IP`。</li>
        /// <li>gateway-type - String - 网关类型，可选值：`NORMAL`（普通型）、`NAT`（NAT型）。</li>
        /// <li>network-type- String - 网络类型，可选值：`VPC`（私有网络类型）、`CCN`（云联网类型）。</li>
        /// <li>ccn-id - String - 专线网关所在云联网`ID`。</li>
        /// <li>vpc-id - String - 专线网关所在私有网络`ID`。</li>
        public let filters: [Filter]?
        
        /// 偏移量。
        public let offset: UInt64?
        
        /// 返回数量。
        public let limit: UInt64?
        
        public init (directConnectGatewayIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.directConnectGatewayIds = directConnectGatewayIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case directConnectGatewayIds = "DirectConnectGatewayIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeDirectConnectGateways返回参数结构体
    public struct DescribeDirectConnectGatewaysResponse: TCResponseModel {
        /// 符合条件的对象数。
        public let totalCount: UInt64
        
        /// 专线网关对象数组。
        public let directConnectGatewaySet: [DirectConnectGateway]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case directConnectGatewaySet = "DirectConnectGatewaySet"
            case requestId = "RequestId"
        }
    }
    
    /// 查询专线网关
    ///
    /// 本接口（DescribeDirectConnectGateways）用于查询专线网关。
    @inlinable
    public func describeDirectConnectGateways(_ input: DescribeDirectConnectGatewaysRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDirectConnectGatewaysResponse > {
        self.client.execute(action: "DescribeDirectConnectGateways", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询专线网关
    ///
    /// 本接口（DescribeDirectConnectGateways）用于查询专线网关。
    @inlinable
    public func describeDirectConnectGateways(_ input: DescribeDirectConnectGatewaysRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDirectConnectGatewaysResponse {
        try await self.client.execute(action: "DescribeDirectConnectGateways", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
