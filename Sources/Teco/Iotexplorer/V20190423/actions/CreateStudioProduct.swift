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

extension Iotexplorer {
    /// 新建产品
    ///
    /// 为用户提供新建产品的能力，用于管理用户的设备
    @inlinable
    public func createStudioProduct(_ input: CreateStudioProductRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateStudioProductResponse > {
        self.client.execute(action: "CreateStudioProduct", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 新建产品
    ///
    /// 为用户提供新建产品的能力，用于管理用户的设备
    @inlinable
    public func createStudioProduct(_ input: CreateStudioProductRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStudioProductResponse {
        try await self.client.execute(action: "CreateStudioProduct", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateStudioProduct请求参数结构体
    public struct CreateStudioProductRequest: TCRequestModel {
        /// 产品名称，名称不能和已经存在的产品名称重复。命名规则：[a-zA-Z0-9:_-]{1,32}
        public let productName: String
        
        /// 产品分组模板ID , ( 自定义模板填写1 , 控制台调用会使用预置的其他ID)
        public let categoryId: Int64
        
        /// 产品类型 填写 ( 0 普通产品 )
        public let productType: Int64
        
        /// 加密类型 加密类型，1表示证书认证，2表示签名认证。
        public let encryptionType: String
        
        /// 连接类型 可以填写 wifi cellular else
        public let netType: String
        
        /// 数据协议 (1 使用物模型 2 为自定义)
        public let dataProtocol: Int64
        
        /// 产品描述
        public let productDesc: String
        
        /// 产品的项目ID
        public let projectId: String
        
        public init (productName: String, categoryId: Int64, productType: Int64, encryptionType: String, netType: String, dataProtocol: Int64, productDesc: String, projectId: String) {
            self.productName = productName
            self.categoryId = categoryId
            self.productType = productType
            self.encryptionType = encryptionType
            self.netType = netType
            self.dataProtocol = dataProtocol
            self.productDesc = productDesc
            self.projectId = projectId
        }
        
        enum CodingKeys: String, CodingKey {
            case productName = "ProductName"
            case categoryId = "CategoryId"
            case productType = "ProductType"
            case encryptionType = "EncryptionType"
            case netType = "NetType"
            case dataProtocol = "DataProtocol"
            case productDesc = "ProductDesc"
            case projectId = "ProjectId"
        }
    }
    
    /// CreateStudioProduct返回参数结构体
    public struct CreateStudioProductResponse: TCResponseModel {
        /// 产品描述
        public let product: ProductEntry
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case requestId = "RequestId"
        }
    }
}