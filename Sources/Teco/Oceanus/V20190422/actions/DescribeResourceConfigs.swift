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

extension Oceanus {
    /// 描述资源配置接口
    ///
    /// 描述资源配置接口
    @inlinable
    public func describeResourceConfigs(_ input: DescribeResourceConfigsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeResourceConfigsResponse > {
        self.client.execute(action: "DescribeResourceConfigs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 描述资源配置接口
    ///
    /// 描述资源配置接口
    @inlinable
    public func describeResourceConfigs(_ input: DescribeResourceConfigsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceConfigsResponse {
        try await self.client.execute(action: "DescribeResourceConfigs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeResourceConfigs请求参数结构体
    public struct DescribeResourceConfigsRequest: TCRequestModel {
        /// 资源ID
        public let resourceId: String?
        
        /// 偏移量，仅当设置 Limit 时该参数有效
        public let offset: Int64?
        
        /// 返回值大小，不填则返回全量数据
        public let limit: Int64?
        
        /// 资源配置Versions集合
        public let resourceConfigVersions: [Int64]?
        
        /// 作业配置版本
        public let jobConfigVersion: Int64?
        
        /// 作业ID
        public let jobId: String?
        
        /// 工作空间 SerialId
        public let workSpaceId: String?
        
        public init (resourceId: String?, offset: Int64?, limit: Int64?, resourceConfigVersions: [Int64]?, jobConfigVersion: Int64?, jobId: String?, workSpaceId: String?) {
            self.resourceId = resourceId
            self.offset = offset
            self.limit = limit
            self.resourceConfigVersions = resourceConfigVersions
            self.jobConfigVersion = jobConfigVersion
            self.jobId = jobId
            self.workSpaceId = workSpaceId
        }
        
        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case offset = "Offset"
            case limit = "Limit"
            case resourceConfigVersions = "ResourceConfigVersions"
            case jobConfigVersion = "JobConfigVersion"
            case jobId = "JobId"
            case workSpaceId = "WorkSpaceId"
        }
    }
    
    /// DescribeResourceConfigs返回参数结构体
    public struct DescribeResourceConfigsResponse: TCResponseModel {
        /// 资源配置描述数组
        public let resourceConfigSet: [ResourceConfigItem]
        
        /// 资源配置数量
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case resourceConfigSet = "ResourceConfigSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}