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

extension Iotvideo {
    /// 删除产品
    ///
    /// 删除产品
    @inlinable
    public func deleteProduct(_ input: DeleteProductRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteProductResponse > {
        self.client.execute(action: "DeleteProduct", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除产品
    ///
    /// 删除产品
    @inlinable
    public func deleteProduct(_ input: DeleteProductRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProductResponse {
        try await self.client.execute(action: "DeleteProduct", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteProduct请求参数结构体
    public struct DeleteProductRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        public init (productId: String) {
            self.productId = productId
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }
    
    /// DeleteProduct返回参数结构体
    public struct DeleteProductResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}