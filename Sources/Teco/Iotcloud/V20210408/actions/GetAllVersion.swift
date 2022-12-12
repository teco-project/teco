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
    /// GetAllVersion请求参数结构体
    public struct GetAllVersionRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        public init (productId: String) {
            self.productId = productId
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }
    
    /// GetAllVersion返回参数结构体
    public struct GetAllVersionResponse: TCResponseModel {
        /// 版本号列表
        public let version: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case version = "Version"
            case requestId = "RequestId"
        }
    }
    
    /// 获取所有版本列表
    ///
    /// 本接口（GetAllVersion）用于获取所有的版本列表 
    @inlinable
    public func getAllVersion(_ input: GetAllVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetAllVersionResponse > {
        self.client.execute(action: "GetAllVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取所有版本列表
    ///
    /// 本接口（GetAllVersion）用于获取所有的版本列表 
    @inlinable
    public func getAllVersion(_ input: GetAllVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAllVersionResponse {
        try await self.client.execute(action: "GetAllVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
