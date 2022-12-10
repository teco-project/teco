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
    /// 单环境下所有应用状态查看
    @inlinable
    public func describeApplicationsStatus(_ input: DescribeApplicationsStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApplicationsStatusResponse > {
        self.client.execute(action: "DescribeApplicationsStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 单环境下所有应用状态查看
    @inlinable
    public func describeApplicationsStatus(_ input: DescribeApplicationsStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationsStatusResponse {
        try await self.client.execute(action: "DescribeApplicationsStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeApplicationsStatus请求参数结构体
    public struct DescribeApplicationsStatusRequest: TCRequestModel {
        /// 来源渠道
        public let sourceChannel: Int64?
        
        /// 环境ID
        public let environmentId: String?
        
        public init (sourceChannel: Int64?, environmentId: String?) {
            self.sourceChannel = sourceChannel
            self.environmentId = environmentId
        }
        
        enum CodingKeys: String, CodingKey {
            case sourceChannel = "SourceChannel"
            case environmentId = "EnvironmentId"
        }
    }
    
    /// DescribeApplicationsStatus返回参数结构体
    public struct DescribeApplicationsStatusResponse: TCResponseModel {
        /// 返回结果
        public let result: [ServiceVersionBrief]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
