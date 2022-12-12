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
    /// DescribeIotModel请求参数结构体
    public struct DescribeIotModelRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 物模型版本号， -1表示最新编辑的（未发布）
        public let revision: Int64
        
        public init (productId: String, revision: Int64) {
            self.productId = productId
            self.revision = revision
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case revision = "Revision"
        }
    }
    
    /// DescribeIotModel返回参数结构体
    public struct DescribeIotModelResponse: TCResponseModel {
        /// 物模型定义，json格式的字符串
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 获取物模型定义
    ///
    /// 本接口（DescribeIotModel）用于获取物模型定义详情。
    @inlinable
    public func describeIotModel(_ input: DescribeIotModelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeIotModelResponse > {
        self.client.execute(action: "DescribeIotModel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取物模型定义
    ///
    /// 本接口（DescribeIotModel）用于获取物模型定义详情。
    @inlinable
    public func describeIotModel(_ input: DescribeIotModelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIotModelResponse {
        try await self.client.execute(action: "DescribeIotModel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
