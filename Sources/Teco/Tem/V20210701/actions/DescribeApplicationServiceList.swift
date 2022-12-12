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
    /// DescribeApplicationServiceList请求参数结构体
    public struct DescribeApplicationServiceListRequest: TCRequestModel {
        /// namespace id
        public let environmentId: String
        
        /// 服务ID
        public let applicationId: String
        
        /// xx
        public let sourceChannel: Int64?
        
        public init (environmentId: String, applicationId: String, sourceChannel: Int64? = nil) {
            self.environmentId = environmentId
            self.applicationId = applicationId
            self.sourceChannel = sourceChannel
        }
        
        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case applicationId = "ApplicationId"
            case sourceChannel = "SourceChannel"
        }
    }
    
    /// DescribeApplicationServiceList返回参数结构体
    public struct DescribeApplicationServiceListResponse: TCResponseModel {
        /// 应用 EKS Service 列表
        public let result: EksService
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 查询应用访问方式列表
    @inlinable
    public func describeApplicationServiceList(_ input: DescribeApplicationServiceListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApplicationServiceListResponse > {
        self.client.execute(action: "DescribeApplicationServiceList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询应用访问方式列表
    @inlinable
    public func describeApplicationServiceList(_ input: DescribeApplicationServiceListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationServiceListResponse {
        try await self.client.execute(action: "DescribeApplicationServiceList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
