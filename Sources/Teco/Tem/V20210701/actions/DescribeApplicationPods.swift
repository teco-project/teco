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

extension Tem {
    /// DescribeApplicationPods请求参数结构体
    public struct DescribeApplicationPodsRequest: TCRequestModel {
        /// 环境id
        public let environmentId: String
        
        /// 应用id
        public let applicationId: String
        
        /// 单页条数，默认值20
        public let limit: Int64?
        
        /// 分页下标，默认值0
        public let offset: Int64?
        
        /// 实例状态 
        /// - Running 
        /// - Pending 
        /// - Error
        public let status: String?
        
        /// 实例名字
        public let podName: String?
        
        /// 来源渠道
        public let sourceChannel: Int64?
        
        public init (environmentId: String, applicationId: String, limit: Int64? = nil, offset: Int64? = nil, status: String? = nil, podName: String? = nil, sourceChannel: Int64? = nil) {
            self.environmentId = environmentId
            self.applicationId = applicationId
            self.limit = limit
            self.offset = offset
            self.status = status
            self.podName = podName
            self.sourceChannel = sourceChannel
        }
        
        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case applicationId = "ApplicationId"
            case limit = "Limit"
            case offset = "Offset"
            case status = "Status"
            case podName = "PodName"
            case sourceChannel = "SourceChannel"
        }
    }
    
    /// DescribeApplicationPods返回参数结构体
    public struct DescribeApplicationPodsResponse: TCResponseModel {
        /// 返回结果
        public let result: DescribeRunPodPage
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 获取应用实例列表
    @inlinable
    public func describeApplicationPods(_ input: DescribeApplicationPodsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApplicationPodsResponse > {
        self.client.execute(action: "DescribeApplicationPods", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取应用实例列表
    @inlinable
    public func describeApplicationPods(_ input: DescribeApplicationPodsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationPodsResponse {
        try await self.client.execute(action: "DescribeApplicationPods", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
