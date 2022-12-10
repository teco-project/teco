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

extension Tione {
    /// 模型版本列表
    @inlinable
    public func describeTrainingModelVersions(_ input: DescribeTrainingModelVersionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTrainingModelVersionsResponse > {
        self.client.execute(action: "DescribeTrainingModelVersions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 模型版本列表
    @inlinable
    public func describeTrainingModelVersions(_ input: DescribeTrainingModelVersionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingModelVersionsResponse {
        try await self.client.execute(action: "DescribeTrainingModelVersions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTrainingModelVersions请求参数结构体
    public struct DescribeTrainingModelVersionsRequest: TCRequestModel {
        /// 模型ID
        public let trainingModelId: String
        
        /// 过滤条件
        /// Filter.Name: 枚举值:
        ///     TrainingModelVersionId (模型版本ID)
        ///     ModelVersionType (模型版本类型) 其值支持: NORMAL(通用) ACCELERATE (加速)
        ///     ModelFormat（模型格式）其值Filter.Values支持：
        /// TORCH_SCRIPT/PYTORCH/DETECTRON2/SAVED_MODEL/FROZEN_GRAPH/PMML
        ///     AlgorithmFramework (算法框架) 其值Filter.Values支持：TENSORFLOW/PYTORCH/DETECTRON2
        /// Filter.Values: 当长度为1时，支持模糊查询; 不为1时，精确查询
        /// 每次请求的Filters的上限为10，Filter.Values的上限为100
        public let filters: [Filter]?
        
        public init (trainingModelId: String, filters: [Filter]?) {
            self.trainingModelId = trainingModelId
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case trainingModelId = "TrainingModelId"
            case filters = "Filters"
        }
    }
    
    /// DescribeTrainingModelVersions返回参数结构体
    public struct DescribeTrainingModelVersionsResponse: TCResponseModel {
        /// 模型版本列表
        public let trainingModelVersions: [TrainingModelVersionDTO]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case trainingModelVersions = "TrainingModelVersions"
            case requestId = "RequestId"
        }
    }
}
