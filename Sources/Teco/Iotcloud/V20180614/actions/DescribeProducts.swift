//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iotcloud {
    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出产品列表。 
    @inlinable
    public func describeProducts(_ input: DescribeProductsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProductsResponse > {
        self.client.execute(action: "DescribeProducts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取产品列表
    ///
    /// 本接口（DescribeProducts）用于列出产品列表。 
    @inlinable
    public func describeProducts(_ input: DescribeProductsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductsResponse {
        try await self.client.execute(action: "DescribeProducts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeProducts请求参数结构体
    public struct DescribeProductsRequest: TCRequestModel {
        /// 偏移量，Offset从0开始
        public let offset: UInt64
        
        /// 分页大小，当前页面中显示的最大数量，值范围 10-250。
        public let limit: UInt64
        
        public init (offset: UInt64, limit: UInt64) {
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeProducts返回参数结构体
    public struct DescribeProductsResponse: TCResponseModel {
        /// 产品总数
        public let totalCount: UInt64
        
        /// 产品详细信息列表
        public let products: [ProductInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case products = "Products"
            case requestId = "RequestId"
        }
    }
}