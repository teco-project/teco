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

extension Iotcloud {
    /// DescribeProduct请求参数结构体
    public struct DescribeProductRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        public init (productId: String) {
            self.productId = productId
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }
    
    /// DescribeProduct返回参数结构体
    public struct DescribeProductResponse: TCResponseModel {
        /// 产品ID
        public let productId: String
        
        /// 产品名
        public let productName: String
        
        /// 产品元数据
        public let productMetadata: ProductMetadata
        
        /// 产品属性
        public let productProperties: ProductProperties
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case productName = "ProductName"
            case productMetadata = "ProductMetadata"
            case productProperties = "ProductProperties"
            case requestId = "RequestId"
        }
    }
    
    /// 查看产品详情
    ///
    /// 本接口（DescribeProduct）用于查看产品详情
    @inlinable
    public func describeProduct(_ input: DescribeProductRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProductResponse > {
        self.client.execute(action: "DescribeProduct", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看产品详情
    ///
    /// 本接口（DescribeProduct）用于查看产品详情
    @inlinable
    public func describeProduct(_ input: DescribeProductRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductResponse {
        try await self.client.execute(action: "DescribeProduct", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
