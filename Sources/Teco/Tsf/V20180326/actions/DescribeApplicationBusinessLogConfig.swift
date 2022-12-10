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

extension Tsf {
    /// 查询应用关联日志配置项信息
    @inlinable
    public func describeApplicationBusinessLogConfig(_ input: DescribeApplicationBusinessLogConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApplicationBusinessLogConfigResponse > {
        self.client.execute(action: "DescribeApplicationBusinessLogConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询应用关联日志配置项信息
    @inlinable
    public func describeApplicationBusinessLogConfig(_ input: DescribeApplicationBusinessLogConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationBusinessLogConfigResponse {
        try await self.client.execute(action: "DescribeApplicationBusinessLogConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeApplicationBusinessLogConfig请求参数结构体
    public struct DescribeApplicationBusinessLogConfigRequest: TCRequestModel {
        /// TSF应用ID
        public let applicationId: String
        
        public init (applicationId: String) {
            self.applicationId = applicationId
        }
        
        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
        }
    }
    
    /// DescribeApplicationBusinessLogConfig返回参数结构体
    public struct DescribeApplicationBusinessLogConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
