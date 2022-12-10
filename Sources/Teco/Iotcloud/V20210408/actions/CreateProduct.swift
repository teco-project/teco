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
    /// 创建产品
    ///
    /// 本接口（CreateProduct）用于创建一个新的物联网通信产品 
    @inlinable
    public func createProduct(_ input: CreateProductRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateProductResponse > {
        self.client.execute(action: "CreateProduct", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建产品
    ///
    /// 本接口（CreateProduct）用于创建一个新的物联网通信产品 
    @inlinable
    public func createProduct(_ input: CreateProductRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProductResponse {
        try await self.client.execute(action: "CreateProduct", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateProduct请求参数结构体
    public struct CreateProductRequest: TCRequestModel {
        /// 产品名称，名称不能和已经存在的产品名称重复。命名规则：[a-zA-Z0-9:_-]{1,32}
        public let productName: String
        
        /// 产品属性
        public let productProperties: ProductProperties
        
        /// 创建CLAA产品时，需要Skey
        public let skey: String?
        
        public init (productName: String, productProperties: ProductProperties, skey: String?) {
            self.productName = productName
            self.productProperties = productProperties
            self.skey = skey
        }
        
        enum CodingKeys: String, CodingKey {
            case productName = "ProductName"
            case productProperties = "ProductProperties"
            case skey = "Skey"
        }
    }
    
    /// CreateProduct返回参数结构体
    public struct CreateProductResponse: TCResponseModel {
        /// 产品名称
        public let productName: String
        
        /// 产品 ID，腾讯云生成全局唯一 ID
        public let productId: String
        
        /// 产品属性
        public let productProperties: ProductProperties
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case productName = "ProductName"
            case productId = "ProductId"
            case productProperties = "ProductProperties"
            case requestId = "RequestId"
        }
    }
}