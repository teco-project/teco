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
    /// 拉取AI模型列表
    @inlinable
    public func describeAIModels(_ input: DescribeAIModelsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAIModelsResponse > {
        self.client.execute(action: "DescribeAIModels", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 拉取AI模型列表
    @inlinable
    public func describeAIModels(_ input: DescribeAIModelsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAIModelsResponse {
        try await self.client.execute(action: "DescribeAIModels", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAIModels请求参数结构体
    public struct DescribeAIModelsRequest: TCRequestModel {
        /// 模型ID
        public let modelId: String
        
        /// 申请状态：1-已申请；2-已取消；3-已拒绝；4-已通过
        public let status: UInt64
        
        /// 偏移量，Offset从0开始
        public let offset: UInt64
        
        /// 分页的大小，最大100
        public let limit: UInt64
        
        public init (modelId: String, status: UInt64, offset: UInt64, limit: UInt64) {
            self.modelId = modelId
            self.status = status
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case modelId = "ModelId"
            case status = "Status"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeAIModels返回参数结构体
    public struct DescribeAIModelsResponse: TCResponseModel {
        /// AI模型数量
        public let totalCount: UInt64
        
        /// AI模型信息数组
        public let models: [AIModelInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case models = "Models"
            case requestId = "RequestId"
        }
    }
}
