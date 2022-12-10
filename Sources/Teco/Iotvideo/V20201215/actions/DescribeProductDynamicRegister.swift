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

extension Iotvideo {
    /// 获取产品动态注册详情
    @inlinable
    public func describeProductDynamicRegister(_ input: DescribeProductDynamicRegisterRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProductDynamicRegisterResponse > {
        self.client.execute(action: "DescribeProductDynamicRegister", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取产品动态注册详情
    @inlinable
    public func describeProductDynamicRegister(_ input: DescribeProductDynamicRegisterRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductDynamicRegisterResponse {
        try await self.client.execute(action: "DescribeProductDynamicRegister", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeProductDynamicRegister请求参数结构体
    public struct DescribeProductDynamicRegisterRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        public init (productId: String) {
            self.productId = productId
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }
    
    /// DescribeProductDynamicRegister返回参数结构体
    public struct DescribeProductDynamicRegisterResponse: TCResponseModel {
        /// 动态注册类型，0-关闭 1-预创建设备 2-自动创建设备
        public let registerType: UInt64
        
        /// 动态注册产品密钥
        public let productSecret: String
        
        /// 动态注册设备上限
        public let registerLimit: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case registerType = "RegisterType"
            case productSecret = "ProductSecret"
            case registerLimit = "RegisterLimit"
            case requestId = "RequestId"
        }
    }
}
