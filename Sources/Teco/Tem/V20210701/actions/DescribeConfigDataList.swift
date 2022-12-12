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
    /// DescribeConfigDataList请求参数结构体
    public struct DescribeConfigDataListRequest: TCRequestModel {
        /// 环境 ID
        public let environmentId: String
        
        /// 来源渠道
        public let sourceChannel: Int64?
        
        /// 查询游标
        public let continueToken: String?
        
        /// 分页 limit
        public let limit: Int64?
        
        public init (environmentId: String, sourceChannel: Int64? = nil, continueToken: String? = nil, limit: Int64? = nil) {
            self.environmentId = environmentId
            self.sourceChannel = sourceChannel
            self.continueToken = continueToken
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case sourceChannel = "SourceChannel"
            case continueToken = "ContinueToken"
            case limit = "Limit"
        }
    }
    
    /// DescribeConfigDataList返回参数结构体
    public struct DescribeConfigDataListResponse: TCResponseModel {
        /// 配置列表
        public let result: DescribeConfigDataListPage
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 查询配置列表
    @inlinable
    public func describeConfigDataList(_ input: DescribeConfigDataListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeConfigDataListResponse > {
        self.client.execute(action: "DescribeConfigDataList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询配置列表
    @inlinable
    public func describeConfigDataList(_ input: DescribeConfigDataListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigDataListResponse {
        try await self.client.execute(action: "DescribeConfigDataList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
