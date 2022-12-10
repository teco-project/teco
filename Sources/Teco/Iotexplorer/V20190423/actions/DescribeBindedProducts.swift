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

extension Iotexplorer {
    /// 获取网关产品已经绑定的子产品
    @inlinable
    public func describeBindedProducts(_ input: DescribeBindedProductsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBindedProductsResponse > {
        self.client.execute(action: "DescribeBindedProducts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取网关产品已经绑定的子产品
    @inlinable
    public func describeBindedProducts(_ input: DescribeBindedProductsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindedProductsResponse {
        try await self.client.execute(action: "DescribeBindedProducts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBindedProducts请求参数结构体
    public struct DescribeBindedProductsRequest: TCRequestModel {
        /// 网关产品ID
        public let gatewayProductId: String
        
        /// 分页偏移量
        public let offset: Int64
        
        /// 分页大小
        public let limit: Int64
        
        /// 是否跨账号绑定产品
        public let productSource: Int64?
        
        public init (gatewayProductId: String, offset: Int64, limit: Int64, productSource: Int64?) {
            self.gatewayProductId = gatewayProductId
            self.offset = offset
            self.limit = limit
            self.productSource = productSource
        }
        
        enum CodingKeys: String, CodingKey {
            case gatewayProductId = "GatewayProductId"
            case offset = "Offset"
            case limit = "Limit"
            case productSource = "ProductSource"
        }
    }
    
    /// DescribeBindedProducts返回参数结构体
    public struct DescribeBindedProductsResponse: TCResponseModel {
        /// 当前分页的子产品数组
        public let products: [BindProductInfo]
        
        /// 绑定的子产品总数量
        public let total: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case products = "Products"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}
