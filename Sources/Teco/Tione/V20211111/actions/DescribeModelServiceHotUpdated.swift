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
    /// DescribeModelServiceHotUpdated请求参数结构体
    public struct DescribeModelServiceHotUpdatedRequest: TCRequestModel {
        /// 镜像信息，配置服务运行所需的镜像地址等信息
        public let imageInfo: ImageInfo
        
        /// 模型信息，需要挂载模型时填写
        public let modelInfo: ModelInfo?
        
        /// 挂载信息
        public let volumeMount: VolumeMount?
        
        public init (imageInfo: ImageInfo, modelInfo: ModelInfo? = nil, volumeMount: VolumeMount? = nil) {
            self.imageInfo = imageInfo
            self.modelInfo = modelInfo
            self.volumeMount = volumeMount
        }
        
        enum CodingKeys: String, CodingKey {
            case imageInfo = "ImageInfo"
            case modelInfo = "ModelInfo"
            case volumeMount = "VolumeMount"
        }
    }
    
    /// DescribeModelServiceHotUpdated返回参数结构体
    public struct DescribeModelServiceHotUpdatedResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 查询模型服务能否开启热更新
    ///
    /// 用于查询模型服务能否开启热更新
    @inlinable
    public func describeModelServiceHotUpdated(_ input: DescribeModelServiceHotUpdatedRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeModelServiceHotUpdatedResponse > {
        self.client.execute(action: "DescribeModelServiceHotUpdated", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询模型服务能否开启热更新
    ///
    /// 用于查询模型服务能否开启热更新
    @inlinable
    public func describeModelServiceHotUpdated(_ input: DescribeModelServiceHotUpdatedRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelServiceHotUpdatedResponse {
        try await self.client.execute(action: "DescribeModelServiceHotUpdated", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
