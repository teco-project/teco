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
    /// 获取环境状态
    @inlinable
    public func describeEnvironmentStatus(_ input: DescribeEnvironmentStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEnvironmentStatusResponse > {
        self.client.execute(action: "DescribeEnvironmentStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取环境状态
    @inlinable
    public func describeEnvironmentStatus(_ input: DescribeEnvironmentStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvironmentStatusResponse {
        try await self.client.execute(action: "DescribeEnvironmentStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEnvironmentStatus请求参数结构体
    public struct DescribeEnvironmentStatusRequest: TCRequestModel {
        /// 命名空间id
        public let environmentIds: [String]
        
        /// 来源Channel
        public let sourceChannel: Int64?
        
        public init (environmentIds: [String], sourceChannel: Int64?) {
            self.environmentIds = environmentIds
            self.sourceChannel = sourceChannel
        }
        
        enum CodingKeys: String, CodingKey {
            case environmentIds = "EnvironmentIds"
            case sourceChannel = "SourceChannel"
        }
    }
    
    /// DescribeEnvironmentStatus返回参数结构体
    public struct DescribeEnvironmentStatusResponse: TCResponseModel {
        /// 返回状态列表
        public let result: [NamespaceStatusInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
